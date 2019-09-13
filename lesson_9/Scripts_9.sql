

/*
 * 1.	В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
 
START TRANSACTION
	delete from sample.user where id=1;	
	insert into sample.user (id, user) 
	select id, name from shop.users	where id=1;
	delete from shop.users  where id=1;
COMMIT;


2.	Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW shop.v_product AS 
Select p.id id, p.name product, c.name catalog 
from shop.products p left join shop.catalogs c on p.catalog_id=c.id;

3.	по желанию) Пусть имеется таблица с календарным полем created_at. В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.

DROP PROCEDURE IF EXISTS dowhile; 

CREATE PROCEDURE dowhile()
BEGIN
	DROP TABLE IF EXISTS tt;
	CREATE TEMPORARY TABLE tt (d date);
  	SET @datestart := '2018-08-01';
	While @datestart <= '2018-08-30' DO	
		insert into tt (d) VALUES(@datestart);
		set @datestart := DATE_ADD(@datestart, INTERVAL 1 DAY);
	END WHILE;
	Select d date, case when d in ('2018-08-01', '2016-08-04', '2018-08-17', '2018-08-16') 
			then 1 else 0 end _check from tt;
END;

CALL sys.dowhile();

	
4.	(по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

delete FROM vk.USERS WHERE id NOT IN ( 
  SELECT id 
  FROM ( 
    SELECT id 
    FROM vk.USERS 
    ORDER BY created_at 
    LIMIT 5
  ) x 
);
Практическое задание по теме “Администрирование MySQL” (эта тема изучается по вашему желанию)
1.Создайте двух пользователей которые имеют доступ к базе данных shop. Первому пользователю shop_read должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.
		CREATE USER 'user_select'@'localhost' IDENTIFIED BY '123';
		GRANT SELECT ON shop . * TO 'user_select'@'localhost';
		FLUSH PRIVILEGES;
		
		CREATE USER 'user_all_PRIVILEGES'@'localhost' IDENTIFIED BY '123';
		GRANT ALL PRIVILEGES ON shop . * TO 'user_all_PRIVILEGES'@'localhost';
		FLUSH PRIVILEGES;
2.(по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.
	CREATE VIEW shop.v_username as SELECT id , name from shop.accounts;
	
	CREATE USER 'user_2_2'@'localhost' IDENTIFIED BY '123';
	GRANT SELECT ON shop.v_username TO 'user_2_2'@'localhost';
	FLUSH PRIVILEGES;
	
Практическое задание по теме “Хранимые процедуры и функции, триггеры"
1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP FUNCTION IF EXISTS get_version;

CREATE FUNCTION hello ()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  RETURN (Select case when DATE_FORMAT(NOW(),'%H') BETWEEN 6 and 11 THEN 'Доброе утро' 
			when DATE_FORMAT(NOW(),'%H') BETWEEN 12 and 17 THEN 'Добрый день' 
			when DATE_FORMAT(NOW(),'%H') BETWEEN 18 and 23 THEN 'Добрый вечер' 
			when DATE_FORMAT(NOW(),'%H') BETWEEN 0 and 5 THEN 'Добрый вечер'
	 END);
END;

Select get_version();
2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
Допустимо присутствие обоих полей или одно из них. 
Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
При попытке присвоить полям NULL-значение необходимо отменить операцию.

DROP TRIGGER IF EXISTS tr_insert_check_name_and_descr;

CREATE TRIGGER tr_insert_check_name_and_descr BEFORE INSERT
ON products FOR EACH ROW 
IF (IFNULL(NEW.name,'') = '' and IFNULL(NEW.description,'') = '') THEN
   SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Внимание: Не заполнены текстовые поля "name" и "description"';
 END IF;

DROP TRIGGER IF EXISTS tr_update_check_name_and_descr;

CREATE TRIGGER tr_update_check_name_and_descr BEFORE UPDATE
ON products FOR EACH ROW 
IF (IFNULL(NEW.name,'') = '' and IFNULL(NEW.description,'') = '') THEN
   SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Внимание: Не заполнены текстовые поля "name" и "description"';
 END IF;
 
 
3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55.

первый вариант

DROP PROCEDURE IF EXISTS vk.fibonachi;

CREATE PROCEDURE vk.fibonachi()
BEGIN 
	#Сделано на обычной таблице так как на временной есть проблемы
	#https://dev.mysql.com/doc/refman/8.0/en/temporary-table-problems.html
	DROP TABLE IF EXISTS vk.tt;
	CREATE TABLE vk.tt (d int);
	SET @item := 9;
	insert into vk.tt (d) VALUES (0),(1);
	While @item > 0 DO	
		set @item := @item - 1;
		set @sum := 0;
		insert into vk.tt (d)
		select sum(d) from (select d from vk.tt order by d desc limit 2) a;
	END WHILE;
	Select d as f from vk.tt;
end;

call vk.fibonachi()


#Хотел прочитать есть ли СТЕ в mysql и наткнулся уже на готовый код
#https://dev.mysql.com/doc/refman/8.0/en/with.html
WITH RECURSIVE fibonacci (n, fib_n, next_fib_n) AS
(
  SELECT 1, 0, 1
  UNION ALL
  SELECT n + 1, next_fib_n, fib_n + next_fib_n
    FROM fibonacci WHERE n < 11
)
SELECT fib_n FROM fibonacci;


**/

/**/







