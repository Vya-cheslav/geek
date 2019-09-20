	
-- 1. Создайте таблицу logs типа Archive. 
-- 	Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, 
-- название таблицы, идентификатор первичного ключа и содержимое поля name. 
create table shop.logs (
 create_at datetime,
 table_name enum('users','catalogs','products'),
 id int,
 name varchar(255))
ENGINE=ARCHIVE	


DELIMITER $$
$$
CREATE TRIGGER tr_users_insert
AFTER INSERT
ON users FOR EACH ROW
insert into logs (create_at, table_name,id,name)
values (NOW(), 'users', NEW.id, NEW.name)
$$
DELIMITER ;



DELIMITER $$
$$
CREATE TRIGGER tr_catalogs_insert
AFTER INSERT
ON catalogs FOR EACH ROW
insert into logs (create_at, table_name,id,name)
values (NOW(), 'catalogs', NEW.id, NEW.name)
$$
DELIMITER ;

DELIMITER $$
$$
CREATE TRIGGER tr_products_insert
AFTER INSERT
ON products FOR EACH ROW
insert into logs (create_at, table_name,id,name)
values (NOW(), 'products', NEW.id, NEW.name)
$$
DELIMITER ;

INSERT INTO shop.users
(name, birthday_at, created_at, updated_at)
VALUES('new user', '2000-01-01', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

#Подготовка json для mongo
Select JSON_ARRAYAGG(JSON_OBJECT(
'id', p.id,
'name', p.name,
'ref', JSON_OBJECT(	'id', c.id, 
					'catalog', c.name, 
					'price', p.price, 
					'created_at', p.created_at
					)

))
from shop.products p left join shop.catalogs c
	on p.catalog_id=c.id
	
#[{"id": 1, "ref": {"id": 1, "price": 7890.00, "catalog": "Процессоры", "created_at": "2019-09-06 17:25:17.000000"}, "name": "Intel Core i3-8100"}, {"id": 2, "ref": {"id": 1, "price": 12700.00, "catalog": "Процессоры", "created_at": "2019-09-06 17:25:17.000000"}, "name": "Intel Core i5-7400"}, {"id": 3, "ref": {"id": 1, "price": 4780.00, "catalog": "Процессоры", "created_at": "2019-09-06 17:25:17.000000"}, "name": "AMD FX-8320E"}, {"id": 4, "ref": {"id": 1, "price": 7120.00, "catalog": "Процессоры", "created_at": "2019-09-06 17:25:17.000000"}, "name": "AMD FX-8320"}, {"id": 5, "ref": {"id": 2, "price": 19310.00, "catalog": "Материнские платы", "created_at": "2019-09-06 17:25:17.000000"}, "name": "ASUS ROG MAXIMUS X HERO"}, {"id": 6, "ref": {"id": 2, "price": 4790.00, "catalog": "Материнские платы", "created_at": "2019-09-06 17:25:17.000000"}, "name": "Gigabyte H310M S2H"}, {"id": 7, "ref": {"id": 2, "price": 5060.00, "catalog": "Материнские платы", "created_at": "2019-09-06 17:25:17.000000"}, "name": "MSI B250M GAMING PRO"}, {"id": 8, "ref": {"id": null, "price": 0.00, "catalog": null, "created_at": "2019-09-13 21:14:31.000000"}, "name": null}, {"id": 9, "ref": {"id": null, "price": 0.00, "catalog": null, "created_at": "2019-09-13 21:15:18.000000"}, "name": null}]

	
-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
-- Практическое задание тема №10
	
CREATE TABLE shop.tab_item (item int(2));
insert into shop.tab_item(item) values(1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

INSERT INTO shop.users
(name, birthday_at, created_at, updated_at)
Select 'здесь генерация имени', 'здесь генерация даты рождения', NOW(), NOW()
from 	shop.tab_item t1, 
		shop.tab_item t2,
		shop.tab_item t3,
		shop.tab_item t4,
		shop.tab_item t5,
		shop.tab_item t6

limit 10







