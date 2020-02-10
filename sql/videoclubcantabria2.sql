USE videoclubcantabria;
SELECT p.Género , COUNT(*) AS 'total' FROM peliculas p GROUP BY p.Género ;
SELECT p.Género, AVG(año) FROM peliculas p GROUP BY p.Género;
SELECT p.Género,AVG(año) FROM peliculas p GROUP BY p.Género HAVING AVG(año)>1980;