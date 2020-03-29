from bottle import *
import psycopg2
from connection import Connection

connection = Connection()
connection = connection.connectDB()
cursor = connection.cursor()


@route('/')
def index():
    #return static_file("index.html", root = "/Users/tiandaliu/Documents/Python Projects/Scripts/DatabasesFinalProject/views")
    return template('index.tpl')

@post('/result')
def result():
    orderID = request.forms.get('orderID')
    name = request.forms.get('name')
    category = request.forms.get('category')

    # query test
    postgreSQL_select_Query = "select sell_id, customer_name, category_name from sell " \
                              "inner join customer using(customer_id) " \
                              "inner join commodity using(commodity_id) " \
                              "inner join category using(category_id) " \
                              "where (sell_id = '{0}' " \
                              "or customer_name ilike '%{1}%')" \
                              "and category_name = '{2}'" \
                              "limit 50".format(orderID ,name, category)
    cursor.execute(postgreSQL_select_Query)
    cur = {'info':cursor}
    return template('result.tpl', **cur)



@route("/delete/<orderid>")
def hello_name(orderid):
    query = "Delete from sell where sell_id = '{}'".format(orderid)
    cursor.execute(query)
    connection.commit()
    return template('deleteSuccess')

@route("/order_detail/<orderid>")
def view_detail(orderid):

    query = "select customer_name from sell " \
            "inner join customer using(customer_id) " \
            "inner join commodity using(commodity_id) " \
            "inner join category using(category_id) " \
            "where sell_id = '{}'".format(orderid)
    cursor.execute(query)
    record = cursor.fetchall()
    name = record[0][0]
    print(name)
    query = "select sell_id, customer_name, category_name, customer_phone, customer_email, sell_amount, sell_date from sell " \
            "inner join customer using(customer_id) " \
            "inner join commodity using(commodity_id) " \
            "inner join category using(category_id) " \
            "where customer_name ilike '%{}%'".format(name)
    cursor.execute(query)
    cur = {'info': cursor}
    return template('orderDetail.tpl', **cur)

@route("/update/<orderid>")
def update(orderid):
    query = "select sell_id, customer_name, category_name, customer_phone, customer_email, sell_amount, sell_date from sell " \
            "inner join customer using(customer_id) " \
            "inner join commodity using(commodity_id) " \
            "inner join category using(category_id) " \
            "where sell_id = '{}'".format(orderid)
    cursor.execute(query)
    cur = {'info': cursor}
    return template('update.tpl', **cur)

@post("/update/<orderid>")
def update(orderid):
    phone = request.forms.get('phone')
    email = request.forms.get('email')
    amount = request.forms.get('amount')
    date = request.forms.get('date')
    print(phone)
    print(email)

    query = "select sell_id, customer_id from sell " \
            "inner join customer using(customer_id) " \
            "inner join commodity using(commodity_id) " \
            "inner join category using(category_id) " \
            "where sell_id = '{}'".format(orderid)
    cursor.execute(query)
    record = cursor.fetchall()
    sell_id = record[0][0]
    customer_id = record[0][1]
    print(customer_id)
    query = "UPDATE customer SET customer_phone = '{0}' WHERE customer_id = '{1}';" \
            "UPDATE customer SET customer_email = '{2}' WHERE customer_id = '{3}';" \
            "UPDATE sell SET sell_amount = '{4}' WHERE sell_id = '{5}';" \
            "UPDATE sell SET sell_date = '{6}' WHERE sell_id = '{7}';".format(phone, customer_id, email, customer_id,
                                                                                  amount, sell_id, date, sell_id)
    cursor.execute(query)
    connection.commit()
    return template('updateSuccess.tpl')

@route("/insert")
def insert():
    return template('insert.tpl')

@post("/insert")
def insert():
    phone = request.forms.get('phone')
    name = request.forms.get('name')
    email = request.forms.get('email')
    if not name:
        return template('insert.tpl') + "Invalid Name!"
    query = "select count(customer_id) from customer"
    cursor.execute(query)
    maxId = int(cursor.fetchall()[0][0])
    query = "insert into customer values ('{0}', '{1}', '{2}', '{3}');".format(str(maxId + 1), name, phone, email)
    cursor.execute(query)
    connection.commit()

    return template('insertSuccess.tpl')

@route("/add/<orderid>")
def add(orderid):
    # query = "select sell_id, customer_id from sell " \
    #         "inner join customer using(customer_id) " \
    #         "inner join commodity using(commodity_id) " \
    #         "inner join category using(category_id) " \
    #         "where sell_id = '{}'".format(orderid)
    # cursor.execute(query)
    # record = cursor.fetchall()
    # sell_id = record[0][0]
    # customer_id = record[0][1]
    #
    # query = "select count(customer_id) from customer"
    # cursor.execute(query)
    # maxId = int(cursor.fetchall()[0][0]) + 100
    #
    query = "select sell_id, customer_name, category_name, customer_phone, customer_email, sell_amount, sell_date from sell " \
            "inner join customer using(customer_id) " \
            "inner join commodity using(commodity_id) " \
            "inner join category using(category_id) " \
            "where sell_id = '{}'".format(orderid)
    cursor.execute(query)
    cur = {'info': cursor}
    return template('add.tpl', **cur)

@post("/add/<orderid>")
def add(orderid):
    amount = request.forms.get('amount')
    date = request.forms.get('date')
    category = request.forms.get('category')
    if len(date.split("-")) != 3:
        query = "select sell_id, customer_name, category_name, customer_phone, customer_email, sell_amount, sell_date from sell " \
                "inner join customer using(customer_id) " \
                "inner join commodity using(commodity_id) " \
                "inner join category using(category_id) " \
                "where sell_id = '{}'".format(orderid)
        cursor.execute(query)
        cur = {'info': cursor}
        return template('add.tpl', **cur) + "Invalid Date!!!"

    return template('insertSuccess.tpl')

@error()
def error(error):
    return "Error!!!!"

run(host='localhost', port=8080, debug=True)

connection.close()
print("connection closed")