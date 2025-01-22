/*https://sqlbolt.com/lesson/select_queries_order_of_execution*/
/*Find the number of movies each director has directed*/
SELECT
    *,
    COUNT(id)
FROM
    Movies
GROUP BY
    Director;

/*Find the total domestic and international sales that can be attributed to each director*/
SELECT
    director,
    SUM(domestic_sales + international_sales) as total_sales
FROM
    Movies
    LEFT JOIN boxoffice ON Id = movie_id
GROUP BY
    director;