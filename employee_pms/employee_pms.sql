USE testdb;
SELECT * FROM k397_673e LIMIT 10;

# Total payroll
SELECT
  fiscal_year,
  agency_name,
  ROUND(SUM(regular_gross_paid + total_ot_paid + total_other_pay), 2) AS total_payroll
FROM k397_673e
GROUP BY fiscal_year, agency_name
ORDER BY fiscal_year, total_payroll DESC;

# Which title has the highest average salary?
SELECT
    title_description AS job_title,
    ROUND(AVG(base_salary), 2) AS avg_salary
FROM k397_673e
GROUP BY job_title
ORDER BY avg_salary DESC
LIMIT 10;

# Average salary by borough
SELECT
    work_location_borough AS borough,
    ROUND(AVG(base_salary), 2) AS avg_salary
FROM k397_673e
WHERE work_location_borough IS NOT NULL
GROUP BY borough
ORDER BY avg_salary DESC;

# Top 5 highest-paid employees
SELECT
    CONCAT(first_name, ' ', last_name) AS employee_name,
    title_description,
    base_salary
FROM k397_673e
ORDER BY base_salary DESC
LIMIT 5;

# Top average total pay by job title
SELECT
    title_description AS job_title,
    ROUND(AVG(base_salary), 2) AS avg_base_salary
FROM k397_673e
GROUP BY job_title
ORDER BY avg_base_salary DESC
LIMIT 20;

# Overtime ratio by job title
SELECT
    title_description AS job_title,
    ROUND(SUM(total_ot_paid) / NULLIF(SUM(regular_gross_paid + total_ot_paid + total_other_pay), 0), 4) AS overtime_ratio
FROM k397_673e
GROUP BY job_title
ORDER BY overtime_ratio DESC
LIMIT 15;


