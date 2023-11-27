DO $$ 
BEGIN
   RAISE NOTICE 'Executing CREATE TABLE statement...';
   CREATE TABLE IF NOT EXISTS product (
       id integer NOT null GENERATED ALWAYS AS IDENTITY (INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1),
       title character varying,
       price bigint,
       stock integer
   );
   RAISE NOTICE 'CREATE TABLE statement executed successfully.';

   RAISE NOTICE 'Inserting data into the product table...';
   INSERT INTO product (title, price, stock) VALUES
       ('Product 1', 19.99, 100),
       ('Product 2', 29.99, 50),
       ('Product 3', 9.99, 200);
   RAISE NOTICE 'Data inserted successfully.';
END $$;
