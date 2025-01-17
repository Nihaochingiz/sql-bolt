/*https://sqlbolt.com/lesson/select_queries_with_nulls*/
/*Find the name and role of all employees who have not been assigned to a building*/
SELECT DISTINCT
    building_name
FROM
    buildings
    LEFT JOIN employees ON building_name = building
WHERE
    role IS NULL;