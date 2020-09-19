-- CREATE DATABASE peliculas;
-- \c peliculas;

-- CREATE TABLE peliculas(
--     id INT UNIQUE,
--     pelicula VARCHAR,
--     año_estreno INT,
--     director VARCHAR,
--     PRIMARY KEY (id)
-- );

-- CREATE TABLE reparto(
--     id_pelicula INT,
--     nombre VARCHAR,
--     FOREIGN KEY (id_pelicula) REFERENCES peliculas(id)
-- );
-- \copy peliculas FROM '~/Documentos/DESAFIO_LATAM/Modulo_3/desafio2/peliculas.csv' CSV HEADER;
-- \copy reparto FROM '~/Documentos/DESAFIO_LATAM/Modulo_3/desafio2/reparto.csv' CSV;
SELECT pelicula,año_estreno,director,nombre FROM peliculas FULL OUTER JOIN reparto on
peliculas.id=reparto.id_pelicula WHERE pelicula='Titanic';

SELECT pelicula FROM peliculas FULL OUTER JOIN reparto on
peliculas.id=reparto.id_pelicula WHERE nombre='Harrison Ford';

SELECT director, COUNT(*) FROM peliculas GROUP BY director ORDER BY COUNT DESC LIMIT 10;

SELECT COUNT (distinct nombre) FROM reparto;