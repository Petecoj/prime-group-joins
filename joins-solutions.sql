


SELECT * FROM "customers"
JOIN "addresses" ON "customers".id = "addresses".id;

SELECT "orders".id AS "order id", "line_items".quantity AS "number_of_list_items" FROM "orders"
LEFT JOIN "line_items" ON "orders".id = "line_items".order_id;


SELECT "warehouse".warehouse, "products".description FROM "warehouse" 
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE description = 'cheetos';


Select "warehouse".warehouse ,"products".description FROM "warehouse" 
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "description" = 'diet pepsi';

SELECT  "customers".first_name, COUNT ("orders".address_id) FROM "orders" 
JOIN "addresses" ON "orders".address_id = "addresses".id
JOIN "customers" ON "addresses".customer_id = "customers".id
GROUP BY "customers".first_name;

SELECT count(*) AS "number of customers" FROM "customers";


SELECT count(*) AS "number of products" FROM "products";

SELECT "products".description, sum("warehouse_product".on_hand) FROM "products" 
JOIN "warehouse_product" ON "products".id = "warehouse_product".product_id
WHERE "description" = 'diet pepsi'
GROUP BY "products".description;
