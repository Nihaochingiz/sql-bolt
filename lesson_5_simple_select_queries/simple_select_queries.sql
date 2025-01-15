/*https://sqlbolt.com/lesson/select_queries_review*/
/*
List all the Canadian cities and their populations
 */
SELECT
    city,
    population
FROM
    north_american_cities
WHERE
    country = 'Canada';

/*
Order all the cities in the United States by their latitude from north to south
 */
SELECT
    city
FROM
    north_american_cities
WHERE
    country = 'United States'
ORDER BY
    latitude DESC;