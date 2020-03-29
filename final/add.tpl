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
                <form action="/add/{{e[0]}}", method="post">
                    <p> Name: {{e[1]}} </p>
                    <p> Date: <input type="text" name="date" value="xxxx-xx-xx"><td></tr> </p>
                    Amount: <select name="amount">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
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
                    <br>

                    <input type="submit" value="Add">
                </form>
                %end

            </div>
        </div>
    </body>
</html>
