CREATE TABLE Empleados (
    IdEmpleado INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Cargo VARCHAR(100),
    Salario DECIMAL(10,2),
    FechaIngreso DATE
);

SELECT
    IdEmpleado,
    Nombre,
    Apellido,
    Cargo,
    Salario
FROM Empleados
WHERE Salario > 1500
ORDER BY Nombre;

INSERT INTO Empleados (
    Nombre,
    Apellido,
    Cargo,
    Salario
)
VALUES (
    'Juan',
    'Perez',
    'Analista',
    2500
);

UPDATE Empleados
SET Salario = 3000
WHERE IdEmpleado = 1;

DELETE FROM Empleados
WHERE IdEmpleado = 1;

SELECT
    e.IdEmpleado,
    e.Nombre,
    d.NombreDepartamento
FROM Empleados e
INNER JOIN Departamentos d
    ON e.IdDepartamento = d.IdDepartamento;
    SELECT
    Cargo,
    COUNT(*) AS TotalEmpleados,
    AVG(Salario) AS PromedioSalario
FROM Empleados
GROUP BY Cargo;
SELECT
    Nombre,
    Salario
FROM Empleados
WHERE Salario >
(
    SELECT AVG(Salario)
    FROM Empleados
);

SELECT *
FROM Empleados
WHERE Salario > 1000
    AND Activo = 1
    AND Edad >= 18
    AND Edad <= 65
    AND Ciudad = 'Tacna'
    AND Cargo <> 'Practicante'
    AND FechaIngreso >= '2020-01-01'
    AND Telefono IS NOT NULL
    AND Correo IS NOT NULL
    AND Salario > 1000
    AND Activo = 1
    AND Edad >= 18
    AND Edad <= 65
    AND Ciudad = 'Tacna'
    AND Cargo <> 'Practicante'
    AND FechaIngreso >= '2020-01-01'
    AND Telefono IS NOT NULL
    AND Correo IS NOT NULL
    AND Salario > 1000
    AND Activo = 1
    AND Edad >= 18
    AND Edad <= 65
    AND Ciudad = 'Tacna'
    AND Cargo <> 'Practicante'
    AND FechaIngreso >= '2020-01-01'
    AND Telefono IS NOT NULL
    AND Correo IS NOT NULL
    AND Salario > 1000
    AND Activo = 1
    AND Edad >= 18
    AND Edad <= 65
    AND Ciudad = 'Tacna'
    AND Cargo <> 'Practicante'
    AND FechaIngreso >= '2020-01-01'
    AND Telefono IS NOT NULL
    AND Correo IS NOT NULL
    AND Salario > 1000
    AND Activo = 1
    AND Edad >= 18
    AND Edad <= 65
    AND Ciudad = 'Tacna'
    AND Cargo <> 'Practicante'
    AND FechaIngreso >= '2020-01-01'
    AND Telefono IS NOT NULL
    AND Correo IS NOT NULL
    AND Salario > 1000
    AND Activo = 1
    AND Edad >= 18
    AND Edad <= 65
    AND Ciudad = 'Tacna'
    AND Cargo <> 'Practicante'
    AND FechaIngreso >= '2020-01-01'
    AND Telefono IS NOT NULL
    AND Correo IS NOT NULL
ORDER BY Nombre;