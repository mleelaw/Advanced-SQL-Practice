SELECT
    e.first_name || ' ' || e.last_name AS full_name,
    d.business_name
FROM
    employees e
INNER JOIN dealershipemployees de ON e.employee_id = de.employee_id
INNER JOIN dealerships d ON de.dealership_id = d.dealership_id
WHERE
    d.business_name LIKE '%Christophe Autos%' OR d.business_name LIKE '%Andrysiak Autos%' OR d.business_name LIKE '%Claypool Autos%'