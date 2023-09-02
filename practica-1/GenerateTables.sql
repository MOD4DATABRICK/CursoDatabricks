-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Creando tabla para Accounts

-- COMMAND ----------

DROP TABLE IF EXISTS ACCOUNT;

CREATE TABLE ACCOUNT
USING text
OPTIONS ( 
  path "/FileStore/practica-1/account.asc",
  delimiter ";",
  header "true"
);


-- COMMAND ----------

describe account

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Creando tabla para Cards

-- COMMAND ----------

DROP TABLE IF EXISTS CARD;

CREATE TABLE CARD
USING text
OPTIONS ( 
  'path' '/FileStore/practica-1/card.asc',
  'delimiter' ';'
);


-- COMMAND ----------

describe card

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Creando tabla para Clients

-- COMMAND ----------

DROP TABLE IF EXISTS CLIENT;

CREATE TABLE CLIENT
USING text
OPTIONS ( 
  'path' '/FileStore/practica-1/client.asc',
  'delimiter' ';'
);


-- COMMAND ----------

describe client

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Creando tabla para Disps

-- COMMAND ----------

DROP TABLE IF EXISTS DISP;

CREATE TABLE DISP
USING text
OPTIONS ( 
  'path' '/FileStore/practica-1/disp.asc',
  'delimiter' ';'
);


-- COMMAND ----------

describe disp

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Creando tabla para Districts

-- COMMAND ----------

DROP TABLE IF EXISTS DISTRICT;

CREATE TABLE DISTRICT
USING text
OPTIONS ( 
  'path' '/FileStore/practica-1/district.asc',
  'delimiter' ';'
);


-- COMMAND ----------

describe district

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Creando tabla para Loans

-- COMMAND ----------

DROP TABLE IF EXISTS LOAN;

CREATE TABLE LOAN
USING text
OPTIONS ( 
  'path' '/FileStore/practica-1/loan.asc',
  'delimiter' ';'
);


-- COMMAND ----------

describe loan

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Creando tabla para Orders

-- COMMAND ----------

DROP TABLE IF EXISTS ORDERS;

CREATE TABLE ORDERS
USING text
OPTIONS ( 
  'path' '/FileStore/practica-1/orders.asc',
  'delimiter' ';'
);


-- COMMAND ----------

describe orders

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Creando tabla para Trans

-- COMMAND ----------

DROP TABLE IF EXISTS TRANS;

CREATE TABLE TRANS
USING text
OPTIONS ( 
  'path' '/FileStore/practica-1/trans.asc',
  'delimiter' ';'
);


-- COMMAND ----------

describe trans
