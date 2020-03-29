import psycopg2

class Connection:
    def __init__(self):
        self.url = "mpcs53001-3-pub.cs.uchicago.edu"
        self.database = "tliu77"
        self.user = "tliu77"
        self.password = "Liu19960215!"

    def connectDB(self):
        connection = psycopg2.connect(host=self.url,
                                      database=self.database,
                                      user=self.user,
                                      password=self.password)
        return connection