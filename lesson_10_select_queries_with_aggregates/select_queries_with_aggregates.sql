/*https://sqlbolt.com/lesson/select_queries_with_aggregates*/
/*
Агрегатные функции в SQL — это специальные функции, 
которые выполняют вычисления над множеством значений и возвращают одно значение. 
Эти функции используются в основном для анализа данных, чтобы получить сводную информацию о наборе строк. 
Агрегатные функции часто используются с оператором GROUP BY, который позволяет группировать строки с одинаковыми значениями в указанных столбцах.
Примеры:

SELECT COUNT(*) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT MIN(salary) FROM employees;
SELECT MAX(salary) FROM employees;
 */
/*
Find the longest time that an employee has been at the studio
 */
SELECT
    MAX(years_employed)
FROM
    employees;

/*For each role, find the average number of years employed by employees in that role*/
SELECT
    role,
    AVG(years_employed) AS average_years_employed
FROM
    employees
GROUP BY
    role;

/*Find the total number of employee years worked in each building*/
SELECT
    building,
    SUM(years_employed) AS average_years_employed
FROM
    employees
GROUP BY
    building;