--INSERT INTO products (name, category, price, quantity, discount_percent) VALUES
--('Ноутбук', 'Электроника', 45000, 3, 10),
--('Мышь', 'Аксессуары', 1500, 15, 0),
--('Монитор', 'Электроника', 12000, 7, 5),
--('Клавиатура', 'Аксессуары', 2500, 12, 15),
--('Наушники', 'Аксессуары', 3500, 8, 20),
--('Системный блок', 'Электроника', 35000, 2, 0),
--('Коврик для мыши', 'Аксессуары', 500, 20, 0),
--('Веб-камера', 'Аксессуары', 2800, 4, 10);

--SELECT * FROM products;

--SELECT name, category, price FROM products;
--SELECT * FROM products;

--SELECT * FROM products WHERE price > 10000;
--SELECT * FROM products;

--SELECT * FROM products WHERE quantity > 5;
--SELECT * FROM products;

--SELECT * FROM products WHERE price > 5000 AND discount_percent > 0;
--SELECT * FROM products;

--SELECT * FROM products WHERE category = 'Аксессуары' OR price < 3000;
--SELECT * FROM products;

--SELECT * FROM products ORDER BY price DESC;
--SELECT * FROM products;

--SELECT * FROM products ORDER BY quantity DESC;
--SELECT * FROM products;

--SELECT * FROM products LIMIT 3;
--SELECT * FROM products;

--SELECT * FROM products LIMIT 3 OFFSET 2;
--SELECT * FROM products;

--SELECT * FROM products WHERE id = 5;
--SELECT * FROM products;

--SELECT COUNT(*) AS total_products FROM products;
--SELECT * FROM products;

--SELECT COUNT(*) AS products_with_discount FROM products WHERE discount_percent > 0;
--SELECT * FROM products;

--SELECT SUM(price) AS total_price FROM products;
--SELECT * FROM products;

--SELECT AVG(price) AS average_price FROM products;
--SELECT * FROM products;

--SELECT MAX(price) AS max_price FROM products;
--SELECT * FROM products;

--SELECT * FROM products WHERE price = (SELECT MAX(price) FROM products);
--SELECT * FROM products;

--SELECT ROUND(AVG(price), 1) AS rounded_avg_price FROM products;
--SELECT * FROM products;

--SELECT * FROM products WHERE quantity = (SELECT MAX(quantity) FROM products);
--SELECT * FROM products;


--SELECT * FROM products;
