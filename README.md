# Latex-Transpose
This repo shows an Special function to convert R dataframes into latex tables (useful for researchers =))

## Usage 

toLatex(df, header=TRUE, row.names=FALSE, digits=3, ordering=NULL)

This function returns an String version of the table to be pasted into a Latex document. Parameters are as follows:

* **df**: Dataframe to be converted into a Latex table
* **header**: Whether the header should be included or not
* **row.names**: Whether the row names should be included
* **digits**: The number of significant decimals for printin purposes
* **ordering**: When included the order of the columns in the table; either a list of numeric or string indices with the expected order. If the variable is set to NULL, the table is plotted as sent.




