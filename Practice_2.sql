SELECT 
c."first_name",
c."last_name",
s."price",
s."purchase_date",
st."sales_type_name"
FROM "customers" AS c
INNER JOIN "sales" AS s
ON s."customer_id" = c."customer_id"
INNER JOIN "salestypes" AS st
ON s."sales_type_id" = st."sales_type_id"
WHERE s."price" > 50000