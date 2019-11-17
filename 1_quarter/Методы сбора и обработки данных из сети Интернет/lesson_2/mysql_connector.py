import mysql.connector



def conn():
    cnx = mysql.connector.connect(user='root', password='root',
                                  host='1.1.1.30', database = 'net',
                                  port='3307')
    return cnx

def close_conn(cnx):
    cnx.close()

def exec(conn, query, tuple):
    cursor = conn.cursor()
    cursor.execute(query,tuple)

    conn.commit()
    
def get_date(conn, query, tuple):
    cursor = conn.cursor()
    cursor.execute(query,tuple)

    return cursor.fetchall() 
