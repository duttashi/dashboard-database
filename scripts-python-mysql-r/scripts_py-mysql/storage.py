# -*- coding: utf-8 -*-
"""
Created on Mon Apr 19 14:47:32 2021

@author: Ashish
"""

import configparser
import MySQLdb.cursors

config = configparser.ConfigParser()
config.read('config.ini')

def connect():
    
    return MySQLdb.connect(host = config['mysqlDB']['host'],
                           user = config['mysqlDB']['user'],
                           passwd = config['mysqlDB']['pass'],
                           db = config['mysqlDB']['logbook'])

