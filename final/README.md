Note:
    create.sql and populate.sql are in the db_initialization folder.



Version:
    Python 3.7, bottle, psycopg2


Search: (Example key word: Order ID: 10, Name: James, Category: skirt)
    (no invalid input handler because there is a must-choose value on "category")
    You can search order details with ID, Name (case insensitive), Category or any pair of them.
    The Category has default value so you can even do search without any input.

Search Result:
    The result shows brief information of each valid order, like Order ID, Customer Name, Commodity
    Also, there are some buttons to allow the user modify of see more detailed information about the order.
    Such as View Detail, Update, Add, Delete


New Record: (with invalid input handler)
    There is a "New Customer" button on the top of the web page which allows uses to add a new Customer into the system.
    But keep in mind, a valid user must has a name, if the input has no name attribute, the web will return ERROR information.a


View/Update Record:
    There is a button "View/Update" in result page to show detail information and allow user to update some of them.
    User can modify the customer_name, customer_email, order_amount, order_date on each order record.

Delete Record:
    There is a "Delete Record" button by click which can delete the record.

View Related Record:
    There is a "View Related" button to show all order record of the user.

Add Related Record: (with invalid input handler)
    There is a "Add Order" which can be used to add a order record to that user.


