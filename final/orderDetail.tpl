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
            <li><a href="/insert">New Customer</a></li>
        </ul>
        </div><!--/.nav-collapse -->


        <div class="container">
            <div class="starter-template">
                <!-- Main content should go here-->
                <h1>Order Infomation</h1>

                <table class="table table-striped">
                    <tr> <th colspan=2>Order ID</th> <th colspan=2>Name </th> <th colspan=2>Phone</th>  <th colspan=2>Email</th> <th colspan=2>Commodity</th> <th colspan=2>Amount</th> <th colspan=2>Order date</th></tr>
                    % for e in info:
                        <tr> <td>{{e[0]}}<td>
                        <td>{{e[1]}}<td>
                        <td>{{e[3]}}<td>
                        <td>{{e[4]}}<td>
                        <td>{{e[2]}}<td>
                        <td>{{e[5]}}<td>
                        <td>{{e[6]}}<td></tr>
                    %end

                </table>
            </div>
        </div>
    </body>
</html>
