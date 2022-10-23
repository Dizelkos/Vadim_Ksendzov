-- Таблица employees
 -- 1) Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar (50) unique not null
)

select * from employees; 

-- 2) Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
values ('Ivan'),
	('Kolya'),
	('Bogdan'),
	('Grisha'),
	('Egor'),
	('Oleksandr'),
	('Misha'),
	('Elena'),
	('Nastya'),
	('Eva'),
	('Sergey'),
	('Tolya'),
	('Ruslan'),
	('Nikita'),
	('Nina');

-- 3) Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
)

select * from salary;

-- 4) Наполнить таблицу salary 15 строками:

insert into salary (monthly_salary) 
values (1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400);

-- 5) Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary (
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
)

select * from employee_salary;

-- 6) Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id



-- 7) Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int unique not null
)

select * from roles;

-- 8) Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30) ;

-- 9)Наполнить таблицу roles 20 строками:

insert into roles (role_name)
values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');

-- 10) Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null unique,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
)

select * from roles_employee;

-- 11) Наполнить таблицу roles_employee 40 строками:

insert into roles_employee  (employee_id, role_id)
values (7, 2),
	(20, 8),
	(3, 9),
	(5, 13),
	(23, 5),
	(11, 2),
	(10, 1),
	(22, 13),
	(21, 3),
	(34, 6),
	(6, 7);


alter table roles
add column parking int;

alter table roles
rename column role_nam to role_name;


alter table roles
drop column taxi;

drop table roles_salary;

insert into roles_salary (id_role, id_salary)
values (1, 1),
	(2, 3),
	(3, 7);

drop table roles;

update salary
set monthly_salary = 1700
where id = 8;

delete from salary 
where id = 7;

