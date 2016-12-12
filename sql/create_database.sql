connect 'jdbc:derby:C:\Users\Chris\Documents\webtech\databases\mydb;create=true';
create table users(
	uid INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	email VARCHAR(35) NOT NULL,
	password VARCHAR(35) NOT NULL,
	forename VARCHAR(35) NOT NULL,
	surname VARCHAR(35) NOT NULL,
	dob DATE NOT NULL,
	mobile VARCHAR(15),
	homephone VARCHAR(15),
	PRIMARY KEY (uid)
);

create table address(
	aid INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	uid INT NOT NULL,
	line1 VARCHAR(35) NOT NULL,
	line2 VARCHAR(35) DEFAULT '',
	city VARCHAR(35) NOT NULL,
	county VARCHAR(35) NOT NULL,
	postcode VARCHAR(8) NOT NULL,
	PRIMARY KEY (aid),
	FOREIGN KEY (uid) REFERENCES users(uid)
);

create table product(
	pid INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	name VARCHAR(100) NOT NULL,
	type VARCHAR(35),
	description VARCHAR(1000) DEFAULT 'There is no description for this item',
	image VARCHAR(1000) DEFAULT 'no_image.png',
	price FLOAT NOT NULL,
	PRIMARY KEY (pid)
);
insert into product (name, type, description, image, price) values ('Beginner Juggling Balls','balls','Standard, light, multicoloured balls for beginners.', 'balls.png',5.99);
insert into product (name, type, description, price) values ('Light-up Juggling Balls','balls','Glowing balls!',19.99);
insert into product (name, type, description, price) values ('Fire Clubs','clubs','Show off your fire skills with these hot-off-the-market fire clubs! For over 18s only.',29.99);
insert into product (name, type, description, price) values ('Throwing Knives','knives','Not for the faint hearted! Over 18s only.',14.99);
insert into product (name, type, description, price) values ('Throwing frisbees','frisbees','Great for those looking to move on from juggling balls',9.99);
insert into product (name, type, price) values ('Multicoloured Sock Poi','sock_poi',18.99);
insert into product (name, type, price) values ('Light-up Poi','glow_poi',17.99);
insert into product (name, type, price) values ('Fire Poi','fire_poi',26.99);
insert into product (name, type, price) values ('Basic Staff','staffs',9.99);
insert into product (name, type, price) values ('Fibre-glass Staff','staffs',14.99);
insert into product (name, type, price) values ('Metal Staff','staffs',17.99);
insert into product (name, type, price) values ('Light-up Staff','glow_staffs',19.99);
insert into product (name, type, price) values ('Fire Staff','fire_staffs',19.99);
insert into product (name, type, price) values ('Neon Diabolo','diabolos',14.99);
insert into product (name, type, price) values ('Multicoloured Diabolo','diabolos',12.99);
insert into product (name, type, price) values ('Mini Diabolo','diabolos',7.99);
insert into product (name, type, price) values ('Basic Sticks','sticks',6.99);
insert into product (name, type, price) values ('Carbon Fibre sticks','sticks',14.99);
insert into product (name, type, price) values ('Basic Juggling DVD','dvds',9.99);
insert into product (name, type, price) values ('Be a Diabolo Pro! DVD','dvds',9.99);
insert into product (name, type, price) values ('Cirque du Sunny DVD','dvds',14.99);

create table orders(
	uid INT NOT NULL,
	aid INT NOT NULL,
	pid INT NOT NULL,
	date DATE NOT NULL,
	payment_type varchar(35) NOT NULL,
	FOREIGN KEY (uid) REFERENCES users(uid),
	FOREIGN KEY (aid) REFERENCES address(aid),
	FOREIGN KEY (pid) REFERENCES product(pid)
);
