# Databricks notebook source
# MAGIC %md
# MAGIC ## Creando las tablas

# COMMAND ----------

# Creando la tabla de Accounts
account_df = spark.read.csv("/FileStore/practica-1/account.asc", header=True, sep=";")
spark.sql("DROP TABLE IF EXISTS ACCOUNT")
account_df.write.saveAsTable("account")

# Creando la tabla de Cards
card_df = spark.read.csv("/FileStore/practica-1/card.asc", header=True, sep=";")
spark.sql("DROP TABLE IF EXISTS CARD")
card_df.write.saveAsTable("CARD")

# Creando la tabla de Clients
client_df = spark.read.csv("/FileStore/practica-1/client.asc", header=True, sep=";")
spark.sql("DROP TABLE IF EXISTS CLIENT")
client_df.write.saveAsTable("CLIENT")

# Creando la tabla de Disps
disp_df = spark.read.csv("/FileStore/practica-1/disp.asc", header=True, sep=";")
spark.sql("DROP TABLE IF EXISTS DISP")
disp_df.write.saveAsTable("DISP")

# Creando la tabla de Districts
district_df = spark.read.csv("/FileStore/practica-1/district.asc", header=True, sep=";")
spark.sql("DROP TABLE IF EXISTS DISTRICT")
district_df.write.saveAsTable("DISTRICT")

# Creando la tabla de Loans
loan_df = spark.read.csv("/FileStore/practica-1/loan.asc", header=True, sep=";")
spark.sql("DROP TABLE IF EXISTS LOAN")
loan_df.write.saveAsTable("LOAN")

# Creando la tabla de Orders
order_df = spark.read.csv("/FileStore/practica-1/order.asc", header=True, sep=";")
spark.sql("DROP TABLE IF EXISTS ORDERS")
order_df.write.saveAsTable("ORDERS")

# Creando la tabla de Loans
trans_df = spark.read.csv("/FileStore/practica-1/trans.asc", header=True, sep=";")
spark.sql("DROP TABLE IF EXISTS TRANS")
trans_df.write.saveAsTable("TRANS")

# COMMAND ----------

# MAGIC %md
# MAGIC ## Describiendo los datos de cada tabla

# COMMAND ----------

# MAGIC %sql
# MAGIC describe account

# COMMAND ----------

# MAGIC %sql
# MAGIC describe card

# COMMAND ----------

# MAGIC %sql
# MAGIC describe client

# COMMAND ----------

# MAGIC %sql
# MAGIC describe disp

# COMMAND ----------

# MAGIC %sql
# MAGIC describe district

# COMMAND ----------

# MAGIC %sql
# MAGIC describe loan

# COMMAND ----------

# MAGIC %sql
# MAGIC describe orders

# COMMAND ----------

# MAGIC %sql
# MAGIC describe trans

# COMMAND ----------

# MAGIC %md
# MAGIC Consultas de Prueba

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT * FROM account;
