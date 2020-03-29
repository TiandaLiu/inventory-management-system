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
            <li><a href="/">Home</a></li>
            <li class="active"><a href="/insert">New Customer</a></li>
        </ul>
        </div><!--/.nav-collapse -->


        <div class="container">
            <div class="starter-template">
                <!-- Main content should go here-->
                <h1>New Customer</h1>

                <form action="/insert", method="post">
                    Customer Name: <input type="text" name="name">
                    Phone Number: <input type="text" name="phone">
                    Email: <input type="text" name="email">
                    <input type="submit">
                </form>
            </div>
        </div>
    </body>
</html>