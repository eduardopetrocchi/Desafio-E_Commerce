USE ecommercerascunho;

SHOW TABLES;

SET @@autocommit = 0;

START TRANSACTION;

SELECT 
    @idProduct:=MAX(idProduct) + 1
FROM
    product;

INSERT INTO product VALUES (@idproduct, "Monitor", "Eletrônico", 5.0, "Monitor gamer", 999.00);

COMMIT;

-- start transaction;
DELIMITER //
CREATE PROCEDURE sql_error()
    BEGIN
        DECLARE exit HANDLER FOR SQLEXCEPTION
            BEGIN
                GET DIAGNOSTICS CONDITION 1
                    @p2 = MESSAGE_TEXT;
                SELECT @p2 AS transaction_error;
                ROLLBACK;
            END;

        START TRANSACTION;

        INSERT INTO product VALUES (@idproduct, "Teclado", 'Eletrônico', 3.0, "Teclado gamer", 299.99);

        COMMIT;
    END //
DELIMITER //

CALL sql_error();
