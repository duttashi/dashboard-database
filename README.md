[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/duttashi/dashboard-database/graphs/commit-activity) 
![stability-experimental](https://img.shields.io/badge/stability-experimental-orange.svg)
[![Issues](https://img.shields.io/github/issues/duttashi/dashboard-database)](https://github.com/duttashi/dashboard-database/issues?q=is%3Aopen+is%3Aissue)
[![Popularity Score](https://img.shields.io/github/forks/duttashi/dashboard-database)](https://github.com/duttashi/dashboard-database/network/members)
[![Interested](https://img.shields.io/github/stars/duttashi/dashboard-database)](https://github.com/duttashi/dashboard-database/stargazers)
[![License](https://img.shields.io/github/license/duttashi/dashboard-database)](https://github.com/duttashi/dashboard-database/blob/master/LICENSE)


# dashboard-database
This repository contains scripts for database interfacing. Primarily, the database will be SQL based `MySql 8.0.19` and NoSQL based `MongoDB`. The interfacing programming languages are `python 3.7` and `R 3.6.1`.

## General information

### Summary

The world wide web is full of data that are of great interest to scientists and businesses alike. Firms, public institutions, and private users provide every imaginable type of information, and new channels of communication generate vast amounts of data on human behavior. But how to efficiently use the data present in either offline or online database's, is an interesting question. I will answer such questions by creating effective solutions in this repository.

### Project navigation structure

The root folder contains four sub-folders, namely;

- `data-models`- anythig related to data modelling like ER diagrams etc.
- `db-notes` - anything related to database notes or documentation.
- `db-scripts-python-r`- anything related to database interfacing using programming languages like python and r. It has four sub-folders, namely;
	- `scripts_pymsql`: mysql database interfacing with python 3.x
	- `scripts_rmysql`: mysql database interfacing with R 4.x.x
	- `scripts_pypostgresql`: postgresql interfacing with python 3.x
	- `scripts_rpostgresql`: postgresql interfacing with R 4.x.x
	- `scripts_pymongodb`: mongodb interfacing with python 3.x
	- `scripts_rmongodb`: mongodb interfacing with R 4.x.x 
- `db-scripts`- anything related to database interfacing using database programming languages like `sql`, `postgresql`, or `nosql`.
- `db-scripts-powerbi`- anything related to database interfacing and dashboards in powerbi.
	

### Script naming convention

It's important to highlight the essence of script naming convention. The underlying hope is that several months from now, if I need any such recipe, I should be able to determine what the recipe does, by simply looking at its name.

- If the task involves getting data out of mysql and passing it to python or r, then the script name will begin with `mysqlpy` or `mysqlr` followed by a string of self-explanatory words separated by underscores.
- If the task involves using python or r to save data into mysql then the script name will begin with `pymysql` or `rmysql` followed by a string of self-explanatory words separated by underscores.


### Result reproducibility

Please read the [requirements.txt](https://github.com/duttashi/dashboard-database/blob/master/requirements.txt) file. This file provides a listing of the necessary packages used in this repository. 

**Helpful commands**

Execute the following commands in command prompt window

- To see the list of installed python packages, `> pip list`
- To see the list of outdated python packages: `> pip list --outdated`
- To upgrade a particular python package: `> pip install [package] --upgrade`. Substitute the `[package]` with `package name`.
- To automatically generate the `requirements.txt` file, open a terminal window in the repository and type the command, `pip3 freeze > requirements.txt`. See this helpful [SO post](https://stackoverflow.com/questions/31684375/automatically-create-requirements-txt) on the same. 

### Contact
If you'd like to contact me regarding bugs, questions, or general consulting, feel free to drop me a line at `ashishdutt@yahoo.com.my`

### Donate

If this project help you reduce time to develop, you can give me a cup of coffee :)

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/ashishdutt)