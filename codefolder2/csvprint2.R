
# Get content into a data frame
data <- read.csv("data1.csv", header = TRUE, sep = "\t")

print(data)


sc <- DBI::dbConnect(odbc::databricks(),httpPath = "/sql/1.0/warehouses/d23961ac3f527559")   

Sys.setenv("DATABRICKS_HOST" = "omni360-pna.cloud.databricks.com")
library(DBI)
library(dplyr)

query <- "SELECT * FROM marketing_engineering.opds.gcw_cdm_na_sales_sell_to_pos LIMIT 1000"

partners_sales_example <- DBI::dbGetQuery(sc, query)

head(partners_sales_example, 10)
