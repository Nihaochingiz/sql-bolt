/*https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_2*/
/*Find the number of Artists in the studio (without a HAVING clause)*/
SELECT
    COUNT(*)
FROM
    employees
WHERE
    ROLE = 'Artist';

/*Find the number of Employees of each role in the studio*/
SELECT
    role,
    COUNT(*)
FROM
    employees
GROUP BY
    role;

/*Find the total number of years employed by all Engineers*/
SELECT
   SELECT DISTINCT director
FROM
    employees
WHERE
    ROLE = 'Engineer';