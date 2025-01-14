/*https://sqlbolt.com/lesson/filtering_sorting_query_results*/

/*
List all directors of Pixar movies (alphabetically), without duplicates
*/

SELECT DISTINCT Director FROM movies
ORDER BY Director ASC;

/*
LIMIT и OFFSET — это операторы SQL, которые используются для управления количеством возвращаемых строк 
в результате выполнения запроса.

LIMIT num_limit : Указывает максимальное количество строк, которые должны быть возвращены. 
Например, LIMIT 10 вернет только первые 10 строк результата.
OFFSET num_offset : Определяет количество строк, которые должны быть пропущены прежде чем начать 
возвращать строки результата. Это позволяет пропускать определенное количество строк и возвращать 
данные начиная с определенной позиции. Например, OFFSET 5 пропустит первые 5 строк и начнет возвращать данные 
с шестой строки.
*/
/*
List the last four Pixar movies released (ordered from most recent to least)
*/
SELECT title
FROM movies
ORDER BY year DESC
LIMIT 4;


/*
List the first five Pixar movies sorted alphabetically
*/
SELECT title
FROM movies
ORDER BY title ASC
LIMIT 5;

/*List the next five Pixar movies sorted alphabetically*/

SELECT title
FROM movies
ORDER BY title ASC
LIMIT 5
OFFSET 5
;
