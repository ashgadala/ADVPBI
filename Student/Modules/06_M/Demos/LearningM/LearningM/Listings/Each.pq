let

  Source = #table( {"Col1", "Col2"}, 
                   { {1, 2}, {3, 4} } ),

  AddColumn = Table.AddColumn(Source, "Col3", each [Col1] + [Col2] ),
  
  x = Lis

in
  AddColumn