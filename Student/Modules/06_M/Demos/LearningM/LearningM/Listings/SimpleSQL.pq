

let

    Source = Sql.Database("cpt.database.windows.net", "WingtipSalesDB"),
    
    CustomersTableIdentifier = [ Item="Customers" ],

    CustomersTable = Source{CustomersTableIdentifier}[Data],

    FilteredRows = Table.SelectRows(CustomersTable, each [CustomerId] <= 10),
    
    ColumnsToRetrive = {"CustomerId", "FirstName", "LastName"},

    SelectedColumns = Table.SelectColumns(FilteredRows, ColumnsToRetrive),
    
    MergedColumns = Table.CombineColumns(SelectedColumns,
                                         {"FirstName", "LastName"},
                                         Combiner.CombineTextByDelimiter(" ", QuoteStyle.None),
                                         "Customer"),
    Output = MergedColumns    
in
    Output