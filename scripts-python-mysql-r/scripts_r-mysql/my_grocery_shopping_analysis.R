library(RMariaDB)
library(magrittr) # %>%
library(tidyr) # separate()
library(tidyverse)
library(RColorBrewer) # for color palette
library(plyr) # for revalue
library(gridExtra)
library(grid) # for grid.rect()
library(ggpubr) # for annotate_figure()
library(ggthemes)

# clean the workspace
rm(list = ls())

# connect to mysql config file
rmariadb.settingsfile<-"C:\\ProgramData\\MySQL\\MySQL Server 8.0\\config_file_connect_mysql_to_r.cnf"

# set the schema to connect too
rmariadb.db<-"logbook"
# establish the connection
logbookDB<-dbConnect(RMariaDB::MariaDB(),
                     default.file=rmariadb.settingsfile,
                     group=rmariadb.db)

# list the table. This confirms we connected to the database.
dbListTables(logbookDB)

# query the database
res <- dbSendQuery(logbookDB, "select * from tbl_grocery") 
# fetch query result and return them as a data frame
df_grocery<- dbFetch(res)

# make a copy
df<- df_grocery

# data structure
str(df)

# Exploratory Data Analysis

# split date into year, month, day cols
df<- df %>%
  separate(shop_date, into = c("shop_year","shop_month","shop_date"))

df$shop_year<- as.numeric(df$shop_year)
df$shop_month<- factor(df$shop_month)
df$shop_date<- as.numeric(df$shop_date)
# convert shop month to factor and rename the levels to categories
df$shop_month<- revalue(df$shop_month, 
                        c("01"="Jan","02"="Feb","03"="Mar",
                          "04"="Apr","05"="May","06"="Jun",
                          "07"="Jul","08"="Aug", "09"="Sep"))

# change data type
str(df)
# choose all character data type cols
char_cols <- c("store_name","store_loc","item_type","item_desc")
df[char_cols]<- lapply(df[char_cols] , factor)

# create a new column to hold factor variable with several levels into small number of levels
table(df$item_type)
# beverage = coffee, tea; dairy produce = butter, 
# snacks = local toffee, chocolate, fruit
# cooking_item = cooking oil, spices, local_vegetable
# dry produce = seeds
# laundry = hair care, oral hygine
levels(df$item_type)<- list("beverage"=c("coffee","tea"),
                                    "snack"=c("local toffee", "chocolate", "fruit","snacks","butter"),
                                    "cook_item"=c("cooking oil","spices","local vegetable", "dairy produce"),
                                    "dry_prod"=c("dry produce","seeds"),
                                    "laundry"=c("laundry","oral hygine","hair care")
                                    )

levels(df$store_loc)<- list("Damansara"=c("Amcorp Mall, Taman Jaya",
                                          "Damansara"),
                            "PetalingJaya"= c("Jaya One","KL Gateway Universiti"),
                            "MidValley"="Mid Valley")
table(df$store_loc)
# Visualisation
# CREATING A MANUAL COLOR PALETTE
mycolors = c(brewer.pal(name="Set2", n = 8), 
             brewer.pal(name="Set1", n = 6))

df %>%
  drop_na(store_loc)%>%
  ggplot(aes(x = store_loc))+
  geom_bar(stat="count", color="black",aes(fill = store_name))+
  theme_few()+
  ggtitle("(a) Favorite shopping destination")

p<-ggplot(data = df, aes(x = store_loc))
p1<-p +geom_bar(stat = "count", color="black",aes(fill = store_name))+
  
  #theme_light()+
  theme_few()+
  ggtitle("(a) Favorite shopping destination")+
  scale_x_discrete(name="Store Location", labels=c("Amcorp Mall","Jaya One","KL Gateway","Mid Valley"))+
  scale_y_continuous(name = "store visit count")+
  scale_color_manual(values = mycolors)+
  scale_fill_discrete(name = "store location")

p<-ggplot(data = df, aes(x = item_type))
p2<-p +geom_bar(stat = "count", color="black",aes(fill = store_name))+
  #theme_light()+
  theme_few()+
  ggtitle("(b) Favorite shopping product")+
  scale_x_discrete(name="Item Type", labels=c("beverage","snacks","cooking item","dry produce","laundry"))+
  scale_y_continuous(name = "store visit count")+
  scale_color_manual(values = mycolors)+
  scale_fill_discrete(name = "store name")

p<-ggplot(data = df, aes(x = store_loc, y= item_cost))
p3<-p+geom_boxplot(outlier.colour = "red")+
  #theme_light()+
  theme_few()+
  ggtitle("(c) Cost vs Location")+
  scale_x_discrete(name="Store Location", labels=c("Amcorp Mall","Jaya One","KL Gateway","Mid Valley"))+
  scale_y_continuous(name = "Count of item cost")+
  scale_color_manual(values = mycolors)+
  scale_fill_discrete(name = "store location")

p<-ggplot(data = df, aes(x = store_loc, y= item_cost))
p4<-p+geom_boxplot(outlier.colour = "red")+
  #theme_light()+
  theme_few()+
  ggtitle("(c) Shop location vs Cost")+
  scale_x_discrete(name="Store Location", labels=c("Amcorp Mall","Jaya One","KL Gateway","Mid Valley"))+
  scale_y_continuous(name = "Count of item cost")+
  scale_color_manual(values = mycolors)+
  scale_fill_discrete(name = "store location")

p<-ggplot(data = df, aes(x = shop_month, y= item_cost))
p5<-p+geom_boxplot(outlier.colour = "red")+
  theme_light()+
  ggtitle("(d) Monthly grocery expense")+
  scale_x_discrete(name="Shopping month")+
  scale_y_continuous(name = "Count of item cost")+
  scale_color_manual(values = mycolors)+
  scale_fill_discrete(name = "shopping month")

# Arrange the plots in a 2x2 grid
fig1<- grid.arrange(p1,p2,p4,p5,ncol=2, nrow=2) # ensure the plot size is big enough, else there will be an error displayed in UseMethod("depth")

fig2<- grid.arrange(p5,p4,ncol=2)

# Annotate the arranged figure
# load this library before plotting otherwise when changing the font type will give a warning message, "ggplot2 font family not found in windows font database"
windowsFonts(Times=windowsFont("TT Times New Roman"))
extrafont::loadfonts(device="win")
annotate_figure(fig1
                ,top = text_grob("My Grocery Shopping, 2020", 
                                 color = "black", face = "bold", size = 12, family = "Arial")
                ,bottom = text_grob("Data source: \n mysql: grocery table\n", color = "brown",
                                    hjust = 1, x = 1, face = "italic", size = 10, family = "Times"))
# Add a black border around the 2x2 grid plot
grid.rect(width = 1.00, height = 0.99, 
          gp = gpar(lwd = 2, col = "black", fill=NA))

# clear the graphic device
grid.newpage()


# disconnect to clean up the connection to the database.
dbDisconnect(logbookDB)