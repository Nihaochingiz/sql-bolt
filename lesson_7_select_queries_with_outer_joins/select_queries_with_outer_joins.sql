/*https://sqlbolt.com/lesson/select_queries_with_outer_joins*/
/*Find the list of all buildings that have employees*/
/*DISTINCT используется для получения уникальных значений*/
SELECT DISTINCT
    building
FROM
    employees;

/*Find the list of all buildings and their capacity*/
SELECT
    building_name,
    capacity
FROM
    buildings;

/*List all buildings and the distinct employee roles in each building (including empty buildings)*/
SELECT DISTINCT building_name, role
FROM buildings
    LEFT JOIN employees
        ON building_name = building;