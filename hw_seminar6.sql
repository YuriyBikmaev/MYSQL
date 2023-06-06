DROP DATABASE IF EXISTS  hw_seminar6;
CREATE DATABASE IF NOT EXISTS  hw_seminar6;
USE hw_seminar6;

-- 1. Создайте процедуру, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
delimiter //
CREATE PROCEDURE task1(num INT)
BEGIN
SET @result = CONCAT(num % 60,SPACE(1),'seconds'); -- рассчет секунд
SET @minutes = (num DIV 60) % 60; -- рассчет минут
SET @hours = (num DIV 3600) % 24; -- рассчет часов
SET @days = (num DIV 86400); -- рассчет дней
IF @minutes > 0 -- 
THEN
	SET @result = CONCAT(@minutes,SPACE(1),'minutes',SPACE(1),@result);
END IF;
IF @hours > 0 -- 
THEN
	SET @result = CONCAT(@hours,SPACE(1),'hours',SPACE(1),@result);
END IF;
IF @days > 0 -- 
THEN
	SET @result = CONCAT(@days,SPACE(1),'days',SPACE(1),@result);
END IF;
SELECT @result ;
END //
delimiter ;

CALL task1(123456);


-- 2. Создайте функцию, которая выводит только четные числа от 1 до 10. Пример: 2,4,6,8,10 
DROP FUNCTION task2;
delimiter //
CREATE FUNCTION task2()
RETURNS VARCHAR(45)
DETERMINISTIC
BEGIN
	SET @start_number = 1;
	SET @end_number = 10;
	SET @result = '';
		WHILE @start_number <= @end_number DO 
			IF @start_number % 2 = 0 
				THEN SET @result = CONCAT(@result, @start_number, ', ');
			END IF;
            SET @start_number = @start_number + 1;
		END WHILE;
	RETURN LEFT(@result, char_length(@result)-2); 
END //
delimiter ;

SELECT task2();