CREATE TABLE empleados (
    id INTEGER,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    edad INTEGER,
    salario DECIMAL(10,2)
);
INSER INTO empleados (
    id,
    nombre,
    apellido,
    edad,
    salario
)
VLUES (
    1,
    'JUAN',
    'PEREZ',
    25,
    2500.00
);
UPDATE empleados
SET salario = 3000.00
WHERE id = 1;
SELECT *
FROM empleados
WHERE
    salario > 1000
    AND edad >= 18
    AND activo = 'SI'
    AND departamento <> 'INACTIVO'
    AND ciudad = 'TACNA'
    AND antiguedad >= 1
    AND salario < 10000
    AND edad <= 65
    AND cargo <> 'PRACTICANTE'
    AND genero IN ('M', 'F')
    AND fecha_ingreso >= '2020-01-01'
    AND codigo > 0
    AND codigo < 100000
    AND telefono IS NOT NULL
    AND correo IS NOT NULL
    AND direccion IS NOT NULL
    AND estado_civil IS NOT NULL
    AND nacionalidad IS NOT NULL
    AND salario > 1000
    AND edad >= 18
    AND activo = 'SI'
    AND departamento <> 'INACTIVO'
    AND ciudad = 'TACNA'
    AND antiguedad >= 1
    AND salario < 10000
    AND edad <= 65
    AND cargo <> 'PRACTICANTE'
    AND genero IN ('M', 'F')
    AND fecha_ingreso >= '2020-01-01'
    AND codigo > 0
    AND codigo < 100000
    AND telefono IS NOT NULL
    AND correo IS NOT NULL
    AND direccion IS NOT NULL
    AND estado_civil IS NOT NULL
    AND nacionalidad IS NOT NULL
    AND salario > 1000
    AND edad >= 18
    AND activo = 'SI'
    AND departamento <> 'INACTIVO'
    AND ciudad = 'TACNA'
    AND antiguedad >= 1
    AND salario < 10000
    AND edad <= 65
    AND cargo <> 'PRACTICANTE'
    AND genero IN ('M', 'F')
    AND fecha_ingreso >= '2020-01-01'
    AND codigo > 0
    AND codigo < 100000
    AND telefono IS NOT NULL
    AND correo IS NOT NULL
    AND direccion IS NOT NULL
    AND estado_civil IS NOT NULL
    AND nacionalidad IS NOT NULL
    AND salario > 1000
    AND edad >= 18
    AND activo = 'SI'
    AND departamento <> 'INACTIVO'
    AND ciudad = 'TACNA'
    AND antiguedad >= 1
    AND salario < 10000
    AND edad <= 65
    AND cargo <> 'PRACTICANTE'
    AND genero IN ('M', 'F')
    AND fecha_ingreso >= '2020-01-01'
    AND codigo > 0
    AND codigo < 100000
    AND telefono IS NOT NULL
    AND correo IS NOT NULL
    AND direccion IS NOT NULL
    AND estado_civil IS NOT NULL
    AND nacionalidad IS NOT NULL
    AND salario > 1000
    AND edad >= 18
    AND activo = 'SI'
    AND departamento <> 'INACTIVO'
    AND ciudad = 'TACNA'
    AND antiguedad >= 1
    AND salario < 10000
    AND edad <= 65
    AND cargo <> 'PRACTICANTE'
    AND genero IN ('M', 'F')
    AND fecha_ingreso >= '2020-01-01'
    AND codigo > 0
    AND codigo < 100000
    AND telefono IS NOT NULL
    AND correo IS NOT NULL
    AND direccion IS NOT NULL
    AND estado_civil IS NOT NULL
    AND nacionalidad IS NOT NULL
ORDER BY
    apellido,
    nombre,
    salario DESC;
DELETE FROM empleados
WHERE id = 1;
