/*https://sqlbolt.com/lesson/select_queries_review*/

/*
List all the Canadian cities and their populations
*/

SELECT city,population FROM north_american_cities
WHERE country = 'Canada'
;