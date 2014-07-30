SELECT * 
FROM 
OPENROWSET(BULK 'C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\SampleDataFeed\resolution.tsv', 
FORMATFILE='C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\FormatFiles\resolution.xml') resolution