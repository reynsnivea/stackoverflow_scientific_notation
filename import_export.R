
#My R Version:

# platform       x86_64-w64-mingw32          
# arch           x86_64                      
# os             mingw32                     
# system         x86_64, mingw32             
# status                                     
# major          3                           
# minor          4.1                         
# year           2017                        
# month          06                          
# day            30                          
# svn rev        72865                       
# language       R                           
# version.string R version 3.4.1 (2017-06-30)
# nickname       Single Candle 

#Option 1: use default scipen option value i.e. value of 0####

#Clear workspace

rm(list=ls())


#Load packages

library(openxlsx)
library(data.table)


#Set scientific notation to value 0

options(scipen=0)

#Print scientific notation settings

getOption("scipen")

#Import Excel

data <- read.xlsx(xlsxFile = "sample_data.xlsx", sheet = 1, colNames = TRUE, na.strings = "")

#structure

str(data)

#Print dataset to console

data

  #We find that the decimal number in cell A2 is not correctly imported (no decimals). 
  #Also, for Field 2, data is shown in scientific notation


#Export to CSV

write.csv(data, file = "option_1_export_write_csv.csv", row.names = FALSE, na = "")

  #Now in the export cel A1 is also shown in scientific notation while this was not shown in this notation in the console

#Option 2: use default scipen option value i.e. value of 999####

#Clear workspace

rm(list=ls())

#Set scipen option = 999

options(scipen=999)

#Show scipen option

getOption("scipen")


#Import Excel

data <- read.xlsx(xlsxFile = "sample_data.xlsx", sheet = 1, colNames = TRUE, na.strings = "")

#structure

str(data)

#Print dataset to console

data

  #Field 2 is OK.
  #The decimal number in cell A2 is not correctly imported (no decimals)

#Test export to csv

write.csv(data, file = "option_2_export_write_csv.csv", row.names = FALSE, na = "")

  #Export seems OK



