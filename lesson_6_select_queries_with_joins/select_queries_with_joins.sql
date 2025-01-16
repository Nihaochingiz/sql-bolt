/*https://sqlbolt.com/lesson/select_queries_with_joins*/
/*Find the domestic and international sales for each movie*/
SELECT
    title,
    domestic_sales,
    international_sales
FROM
    boxoffice
    INNER JOIN movies ON boxoffice.movie_id = movies.id;

/*Show the sales numbers for each movie that did better internationally rather than domestically*/
SELECT
    title,
    domestic_sales,
    international_sales
FROM
    boxoffice
    INNER JOIN movies ON boxoffice.movie_id = movies.id
WHERE
    international_sales > domestic_sales;

/*List all the movies by their ratings in descending order */
SELECT
    title,
    rating
FROM
    boxoffice
    INNER JOIN movies ON boxoffice.movie_id = movies.id
ORDER BY
    rating DESC