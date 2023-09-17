-- Databricks notebook source
CREATE OR REPLACE VIEW VIEW_BERKA
AS
SELECT
    l.payments,
    l.duration,
    l.amount,
    l.status,
    a.account_id,
    d.A1,
    d.A11,
    c.birth_number,
    (2000 - (1900 + CAST(SUBSTRING(c.birth_number, 1, 2) AS INT))) AS edad
FROM
    loan l
JOIN
    account a ON a.account_id = l.account_id
JOIN
    district d ON d.A1 = a.district_id
JOIN
    client c ON c.district_id = d.A1;

-- COMMAND ----------

select * 
from view_berka
