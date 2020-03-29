<!DOCTYPE html>
<html>
    <head>
        <title>mpcs 53001 example</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    </head>
    <body>
        <!-- Nav Bar-->
        <div id="navbar" class="collapse navbar-collapse navbar-inverse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="/">Home</a></li>
            <li><a href="/insert">New Customer</a></li>
        </ul>
        </div><!--/.nav-collapse -->


        <div class="container">
            <div class="starter-template">
                <!-- Main content should go here-->
                <h1>Order Search</h1>

                <form action="/result", method="post">
                    Order ID: <input type="text" name="orderID">
                    Customer Name: <input type="text" name="name">
                    Category: <select name="category">
                        <option>skirt</option>
                        <option>T-shirt</option>
                        <option>coat</option>
                        <option>shorts</option>
                        <option>hoodie</option>
                        <option>pants</option>
                        <option>shoes</option>
                        <option>accessory</option>
                        <option>jacket</option>
                        <option>raincoat</option>
                        <option>parka</option>
                        <option>bomber</option>
                        <option>vest</option>
                        <option>knit</option>
                        <option>glove</option>
                        <option>hat</option>
                        <option>mitt</option>
                        <option>scarf</option>
                        <option>other</option>
                    </select>

                    <input type="submit">
                </form>
            </div>
        </div>
    </body>
</html>