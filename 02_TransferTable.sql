CREATE TABLE Shop.Products
(
    Id INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);
GO


INSERT INTO Shop.Products (Id, Name, Price)
VALUES
    (1, N'Ноутбук', 75000.00),
    (2, N'Мышь', 2500.00),
    (3, N'Клавиатура', 5000.00);
GO


ALTER SCHEMA Archive
TRANSFER Shop.Products;
GO


SELECT *
FROM Archive.Products;
GO
