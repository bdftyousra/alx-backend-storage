-- This SQL script creates a trigger named 'reduce_quantity' that runs after an insert on the 'orders' table.
-- The trigger reduces the quantity of an item in the 'items' table by the number of items ordered in the new 'orders' row.

DROP TRIGGER IF EXISTS reduce_quantity;
DELIMITER $$
CREATE TRIGGER reduce_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
        SET quantity = quantity - NEW.number
        WHERE name = NEW.item_name;
END $$
DELIMITER ;
