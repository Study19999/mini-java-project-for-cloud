
CREATE TABLE IF NOT EXISTS product (
    id INTEGER PRIMARY KEY,
    title CHARACTER VARYING,
    price BIGINT,
    stock INTEGER
);

INSERT INTO product (title, price, stock) VALUES
    ('Product 1', 19.99, 100),
    ('Product 2', 29.99, 50),
    ('Product 3', 9.99, 200);