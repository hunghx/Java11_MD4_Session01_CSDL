create database if not exists qlbh;
use qlbh;
create table customer(
        id int primary key auto_increment,
        name varchar(100) ,
        phone varchar(11) unique,
        address varchar(255)
);
create table vender(
        id int primary key auto_increment,
        name varchar(50)
);
create table manufacturers(
        id int primary key auto_increment,
        name varchar(50)
);

create table shops(
        id int primary key auto_increment,
        name varchar(50),
        address varchar(255)
);

create table sales(
        id int primary key auto_increment,
        customer_id int not null,
        staff_id int not null,
        shop_id int not null,
        created_date datetime default now(),
        total_price float,
        foreign key (customer_id) references customer(id),
        foreign key (staff_id) references vender(id),
        foreign key (shop_id) references shops(id)
);

create table product(
        id int primary key auto_increment,
        name varchar(50),
        manufacturer_id int not null,
        type varchar(50),
        price float check (price >0),
        foreign key (manufacturer_id) references manufacturers(id)
);

create table sale_details(
        product_id int not null,
        sale_id int not null,
        quantity int ,
        unit_price float,
        primary key(product_id, sale_id),
        foreign key (product_id) references product(id),
        foreign key (sale_id) references sales(id)
);
create table stock(
        product_id int not null,
        shop_id int not null,
        quantity int ,
        primary key(product_id, shop_id),
        foreign key (product_id) references product(id),
        foreign key (shop_id) references shops(id)
);