

let

    Source = Sql.Database("cpt.database.windows.net", "WingtipSalesDB"),
    
    CustomersTableIdentifier = [ Item="Customers" ],

    Output = Source{CustomersTableIdentifier}

in
    Output