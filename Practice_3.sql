SELECT 
c.first_name || ' ' || c.last_name AS customer,
v."vin",
e.first_name || ' ' || e.last_name AS employee,
d."city",
d."state",
d."business_name" AS business
FROM "customers" AS c
INNER JOIN "sales" AS s
ON s."customer_id" = c."customer_id"
INNER JOIN "vehicles" AS v
ON s.vehicle_id = v.vehicle_id 
INNER JOIN "employees" AS e
ON e."employee_id" = s."employee_id"
INNER JOIN "dealerships" AS d
ON s."dealership_id" = d."dealership_id" 

