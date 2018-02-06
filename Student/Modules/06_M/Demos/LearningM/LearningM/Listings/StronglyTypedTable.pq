
 let

  output = #table(type table [FirstName = text, LastName = text, Instrument = text],
    {  
      { "John", "Lennon", "Guitar" },
      { "Paul", "McCartney", "Bass Guitar" },
      { "George", "Harrison", "Guitar" },
      { "Ringo", "Starr", "Drums"} 
    }
  )
in 
  output