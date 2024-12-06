library(bigrquery)
bigrquery::bq_auth(path = "https://drive.google.com/file/d/1kN4JMI5_kIVgTvh6nIjsRH47zGPReOAi/view?usp=sharing/manajemen-data-442713-047977cef0c6.json")

con <- dbConnect(
  bigrquery::bigquery(),
  project = "manajemen-data-442713",
  dataset = "mandat",
  billing = "My First Project",
  use_legacy_sql = TRUE)

bigrquery::bq_dataset_tables(con)
