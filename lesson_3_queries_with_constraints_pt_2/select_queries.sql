/*https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2*/

/*Find all the Toy Story movies*/
/*%	Used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE)*/
SELECT * FROM movies WHERE title LIKE "%Toy%";


/*Find all the movies directed by John Lasseter*/

SELECT * FROM movies WHERE Director LIKE "%John Lasseter%";