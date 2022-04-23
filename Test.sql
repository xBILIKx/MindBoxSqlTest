CREATE TABLE Products (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products
VALUES
	(1, 'Milk'),
	(2, 'Apple'),
	(3, 'Tomato');

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Categories
VALUES
	(1, 'Lactic'),
	(2, 'Fruit'),
	(3, 'Vegetables');

CREATE TABLE ProductCategories (
    ProductId INT,
    CategoryId iNT,
	FOREIGN KEY (ProductId)  REFERENCES Products(Id),
	FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);

INSERT INTO ProductCategories
VALUES
	(1, 1),
	(1, 3),
	(2, 4);

SELECT P."Name", C."Name"
FROM ProductCategories PC
LEFT JOIN Products P
    ON P.Id = PC.ProductId
LEFT JOIN Categories C
    ON C.Id = PC.CategoryId;
