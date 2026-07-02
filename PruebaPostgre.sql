CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    edad INTEGER,
    salario NUMERIC(10,2),
    fecha_ingreso DATE,
    activo BOOLEAN DEFAULT TRUE
);

INSERT INTO empleados (
    nombre,
    apellido,
    edad,
    salario,
    fecha_ingreso
)
VALUES (
    'Juan',
    'Perez',
    25,
    2500.50,
    CURRENT_DATE
);

SELECT
    id,
    nombre,
    apellido,
    salario
FROM empleados
WHERE salario > 2000
ORDER BY salario DESC;

DELETE FROM empleados
WHERE edad > 65;

-- SERIAL
CREATE TABLE prueba (
    id SERIAL PRIMARY KEY
);

-- RETURNING
INSERT INTO empleados(nombre, apellido)
VALUES ('Ana', 'Lopez')
RETURNING id;

-- ILIKE
SELECT *
FROM empleados
WHERE nombre ILIKE '%juan%';

-- LIMIT y OFFSET
SELECT *
FROM empleados
ORDER BY id
LIMIT 10 OFFSET 20;

-- JSONB
SELECT '{"nombre":"Juan","edad":25}'::jsonb;
