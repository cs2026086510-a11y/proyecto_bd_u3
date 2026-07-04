CREATE TABLE Producto (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Descripcion NVARCHAR(100),
    Marca NVARCHAR(100),
    Precio DECIMAL(10,2)
);

SELECT * FROM Producto


INSERT INTO Producto (Descripcion, Marca, Precio) VALUES
('Laptop Pavilion 15', 'HP', 2500.00),
('Laptop IdeaPad 3', 'Lenovo', 2200.00),
('Monitor 24 Pulgadas', 'Samsung', 650.00),
('Monitor Gamer 27', 'LG', 1200.00),
('Teclado Mecánico K552', 'Redragon', 180.00),
('Mouse Inalámbrico M185', 'Logitech', 75.00),
('Mouse Gamer G203', 'Logitech', 130.00),
('Auriculares Cloud Stinger', 'HyperX', 250.00),
('Disco SSD 500GB', 'Kingston', 220.00),
('Disco SSD 1TB', 'Samsung', 420.00),
('Memoria RAM 8GB DDR4', 'Corsair', 140.00),
('Memoria RAM 16GB DDR4', 'Kingston', 260.00),
('Impresora Multifuncional', 'Epson', 750.00),
('Webcam HD C270', 'Logitech', 120.00),
('Router WiFi AC1200', 'TP-Link', 210.00),
('Tablet Galaxy Tab A', 'Samsung', 950.00),
('Smartphone Redmi Note 13', 'Xiaomi', 1100.00),
('Smartphone Galaxy A35', 'Samsung', 1450.00),
('Parlante Bluetooth Flip 6', 'JBL', 480.00),
('Cable HDMI 2 Metros', 'Teros', 25.00),
('Adaptador USB WiFi', 'TP-Link', 65.00),
('Fuente Poder 650W', 'Cooler Master', 350.00),
('Case Gamer RGB', 'Antryx', 290.00),
('Procesador Ryzen 5 5600G', 'AMD', 680.00),
('Procesador Core i5 12400', 'Intel', 850.00),
('Tarjeta Gráfica RTX 4060', 'MSI', 1850.00),
('Silla Gamer Nitro', 'Antryx', 620.00),
('Micrófono USB Fifine', 'Fifine', 210.00),
('Disco Externo 2TB', 'Seagate', 340.00),
('UPS 1200VA', 'Forza', 560.00);
