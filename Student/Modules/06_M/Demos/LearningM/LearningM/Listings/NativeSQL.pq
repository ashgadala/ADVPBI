let

  DatabaseServer = "cpt.database.windows.net",
  
  DatabaseName = "WingtipSalesDB",
  
  SQL = "SELECT CustomerId, FirstName, LastName" & 
       " FROM Customers" & 
       " WHERE CustomerId <= 10" & 
       " ORDER BY LastName, FirstName" ,

  Source = Sql.Database( DatabaseServer, DatabaseName , [Query=SQL] ),

  output = Source

in
  output