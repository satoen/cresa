#!/usr/bin/env python

#import MySQLdb


class Db:
    def __init__(self):
        return
    
    def connect(self):
        return

    def query (self,qry):
        return

"""
conn = MySQLdb.connect (host = "localhost",
                user = "root",
                passwd = "testpass",
                    db = "test")
cursor = conn.cursor ()
cursor.execute ("SELECT VERSION()")
row = cursor.fetchone ()
print "server version:", row[0]
cursor.close ()
conn.close ()
"""