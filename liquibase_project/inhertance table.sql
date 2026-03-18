--parent table--
CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price NUMERIC(10,2),
    category VARCHAR(50)
);
--child table 1--
CREATE TABLE men_clothing (
    size VARCHAR(10),
    fabric VARCHAR(50)
) INHERITS (product);
--child table 2--
CREATE TABLE women_clothing (
    style VARCHAR(50),
    brand VARCHAR(50)
) INHERITS (product);
--foreighn key--
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES product(product_id),
    quantity INT
);
