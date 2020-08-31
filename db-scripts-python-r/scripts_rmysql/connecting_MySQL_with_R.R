# script create date: 31-Aug-2020
# script last modified date: 31-Aug-2020

library(RMariaDB)
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

# data structure
str(df_grocery)
# disconnect to clean up the connection to the database.
dbDisconnect(logbookDB)
