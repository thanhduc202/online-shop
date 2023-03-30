create database ProjectPrj3
go
use ProjectPrj3
go
create table Category(
	cid int not null identity(1,1) primary key,
	cname nvarchar(2500)
)


create table Product(
	[pid] int not null identity(1,1) primary key,
	[name] nvarchar(2000),
	price money ,
	title nvarchar(2000),
	img varchar(2000),
	[description] nvarchar(3500),
	cid int FOREIGN KEY REFERENCES Category(cid),
	[uID] int FOREIGN KEY REFERENCES Account(uID) 
)
alter table Product
alter column price money;

alter table Product
add img varchar(2000);




create table Account(
	uID int identity(1,1) Primary key not null,
	username varchar(500),
	[password] varchar(500),
	isSell int not null,
	isAdmin int not null
)
ALTER TABLE Account
ALTER COLUMN [description] nvarchar(3500);

create table [Image](
	id int not null identity(1,1) primary key,
	[sid] int foreign key references Product([pid]),
	image varchar(3000),
)

create table Orders(
	oid int not null identity(1,1) primary key,
	aid int foreign key references Account(uId),
	odate date,
	ostatus int,
	total float not null
)

create table  OrdersDetail(
	odid int not null primary key,
	[id] int not null foreign key references Product([id]),
	quantity int not null,
	total float not null
)
drop table OrdersDetail

create table Cart(
	cartid int not null identity(1,1) primary key,
	aid int foreign key references Account(uId),
	[name] nvarchar(200),
	price float not null,
	quantity int
)
create table Feedback(
	id int not null identity(1,1) primary key,
	[pid] int foreign key references Product([pid]),
	rate varchar(100),
	[description] nvarchar(500)
 )
 create table Discount(
	[pid] int not null foreign key references Product([pid]),
	discount float
 )


 /*Insert du lieu */

 INSERT INTO Account (username,[password],isSell,isAdmin)
VALUES ('admin',123,1,1);
INSERT INTO Account (username,[password],isSell,isAdmin)
VALUES ('sa',123,0,0);
INSERT INTO Account (username,[password],isSell,isAdmin)
VALUES ('saa',123,1,0);
INSERT INTO Account (username,[password],isSell,isAdmin)
VALUES ('sab',123,0,1);
INSERT INTO Account (username,[password],isSell,isAdmin)
VALUES ('sac',123,0,0);
INSERT INTO Account (username,[password],isSell,isAdmin)
VALUES ('affae',123,1,0);
INSERT INTO Account (username,[password],isSell,isAdmin)
VALUES ('aefe',123,0,1);
INSERT INTO Account (username,[password],isSell,isAdmin)
VALUES ('erw',123,0,0);
use ProjectPrj

Insert into Category( cname)
values
('Cổ trang'),
('Transformer'),
('Anime'),
('samurai')



use ProjectPrj
Insert into Product([name], title, price,[availability], [description], cid, uId)
values
( 'XS & Yang Studio - Big Mom', 
'Phát hành giới hạn 296 bản
-Thông tin sản phẩm:
-Kích thước: Cao ~21cm
-Hãng phát hành: XS & Yang Studio
-Vật liệu: Resin, PU
-Phát hành: Q3-4/2022',3.000, 2, 'b',3 , 1),
('RECAST - TƯỢNG GRIMLOCK PRIME 1', 
'Đẹp thôi rồi ae ạ! Bác Bảy có thể làm story thiếu muối nhưng riêng khoản kỹ xảo và tạo hình nhân vật thì vô địch. Ai đời đi tạo ra con khủng long máy đẹp như thế này thì ví tiền đỡ làm sao.
Đẹp thế nhưng nhẹ tiền lắm anh em ạ. Tất nhiên là nhẹ tiền khi so với con hàng gốc của prime 1 chứ từ PVC mà nhảy lên resin/ polystone thì căng lắm đó.
- Kích thước: Cao 60CM x Dài 89 CM x Rộng 35CM
- Chất liệu: POLYSTONE', N'16.300.000', 2, 'c',2 , 1)


use ProjectPrj
select * from Product where sid=1
select* from Category
