<html>
    <head>
        <title>mpcs 53001 example</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
        <style>
    .container {
      margin: auto;
      width: 50%;
      height: 50%;
      border: 3px solid black;
      padding: 10px;
    }
    </style>
    </head>
    <body>
        <!-- Nav Bar-->
        <div id="navbar" class="collapse navbar-collapse navbar-inverse">
        <ul class="nav navbar-nav">
            <li><a href="/">Home</a></li>
            <li><a href="/insert">New Customer</a></li>
        </ul>
        </div><!--/.nav-collapse -->


        <div class="container">
            <div class="starter-template">
                <!-- Main content should go here-->
                <h1>Update Infomation</h1>


                % for e in info:
                <form action="/update/{{e[0]}}", method="post">
                    <p> <font size="2"> Order Id: {{e[0]}} </font> </p>
                    <p> Name: {{e[1]}} </p>
                    <p> Commodity: {{e[2]}}</p>
                    <p> Phone: <input type="text" name="phone" value={{e[3]}}> </p>
                    <p> Email: <input type="text" name="email" value={{e[4]}}> </p>
                    <p> Amount: <input type="text" name="amount" value={{e[5]}}> </p>
                    <p> Date: <input type="text" name="date" value={{e[6]}}><td></tr> </p>
                    <input type="submit">
                </form>
                %end

            </div>
        </div>
    </body>
</html>
