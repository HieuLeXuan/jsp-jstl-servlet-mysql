use jsp_servlet_ban_hang;

create table Categories (
	id int not null auto_increment,
    name nvarchar(255),
    primary key (id)
);

create table Products(
	id int not null auto_increment,
    name nvarchar(255),
    image nvarchar(255),
    price double,
    title nvarchar(255),
    description nvarchar(255),
    primary key (id),
    account_id int not null,
    category_id int not null
);
-- 1 account - n product - accout_id
alter table Products
add constraint FK_Product_Account
foreign key (account_id)
references Accounts(id);

create table Accounts (
	id int not null auto_increment,
    username nvarchar(255),
    password nvarchar(255),
    isSell bit(1),
    isAdmin bit(1),
    primary key (id)
);

-- 1 category - n product - category_id
alter table Products
add constraint FK_Product_Category
foreign key (category_id)
references Categories(id);

INSERT INTO Categories (name) VALUES ('NIKE');
INSERT INTO Categories (name) VALUES ('CONVERSE');
INSERT INTO Categories (name) VALUES ('ADIDAS');
INSERT INTO Categories (name) VALUES ('CROS');

INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Court Vision Low Sneaker', 
'https://www.famousfootwear.com/blob/product-images/20000/74/51/9/74519_pair_large.jpg', 
100.0000, 
'Women''s Court Vision Low Sneaker', 
'
Get old-school style in the Women''s Nike Court Vision Low Sneaker,
Leather upper in a lifestyle sneaker style,
Lace-up closure',
1, 1);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Court Legacy Lift Sneaker', 
'https://www.famousfootwear.com/blob/product-images/20000/96/90/6/96906_pair_large.jpg', 
120.0000, 
'Women''s Court Legacy Lift Sneaker',
'
Elevate your style with the Women''s Nike Court Legacy Lift Sneaker,
Faux leather upper in a platform sneaker style with a round toe,
Lace up front', 
1, 1);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Japan S Platform Sneaker',
'https://www.famousfootwear.com/blob/product-images/20000/38/45/1/38451_pair_large.jpg',
130.0000, 
'Women''s Japan S Platform Sneaker',
'
Heritage style and classic sportiness meet with the Women''s Asics Japan S Platform Sneaker,
Leather upper in a platform sneaker style with a round toe,
Lace up front,
Perforated toe box and side panels for added airflow,
Padded collar and tongue', 
1, 1);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Legend Essential 2 Training Shoe', 
'https://www.famousfootwear.com/blob/product-images/20000/95/53/0/95530_pair_large.jpg', 
140.0000, 
'Women''s Legend Essential 2 Training Shoe', 
'Hit the gym in the Women''s Nike Legend Essential 2 Training Shoe,
High-abrasion honeycomb mesh upper in a training sneaker style with a round toe,
Lace-up closure',
1, 1);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Men''s Air Max SC Sneaker', 
'https://www.famousfootwear.com/blob/product-images/20000/96/03/0/96030_pair_large.jpg', 
150.0000, 
'Men''s Air Max SC Sneaker', 
'Get an old school look in the Men''s Nike Air Max SC Sneaker,
Leather, textile and mesh upper in a fashion sneaker style with a round toe,
Lace-up closure',
1, 1);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Chuck Taylor All Star Move High Top Shoe', 
'https://www.famousfootwear.com/blob/product-images/20000/57/31/1/57311_pair_large.jpg', 
160.0000, 
'Women''s Chuck Taylor All Star Move High Top Shoe',
'Walk boldly in the Women''s Converse Chuck Taylor All Star Move High Top Shoe,
Canvas upper in an platform high top sneaker style with a round, cap toe,
Lace-up closure with metal eyelets', 
2, 2);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Chuck Taylor All Star Hi Lift Platform Sneaker', 
'https://www.famousfootwear.com/blob/product-images/20000/53/21/1/53211_pair_large.jpg', 
170.0000, 
'Women''s Chuck Taylor All Star Hi Lift Platform Sneaker',
'Get the classic Converse look with a twist in the Women''s Converse Chuck Taylor All Star Hi Lift Platform Sneaker,
Canvas upper in a high-top platform sneaker style with a round, cap toe,
Lace-up closure', 
2, 2);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Chuck Taylor All Star Madison High Top Sneaker', 
'https://www.famousfootwear.com/blob/product-images/20000/97/14/4/97144_pair_large.jpg', 
150.0000, 
'Women''s Chuck Taylor All Star Madison High Top Sneaker', 
'High, low and everywhere in between; the Women’s Converse Chuck Taylor All Star Madison High Top Sneaker,
Canvas upper in a fashion sneaker style with a round rubber toe,
Lace-up style', 
2, 2);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s CTAS Rave Sneaker', 
'https://www.famousfootwear.com/blob/product-images/20000/46/14/3/46143_pair_large.jpg', 
180.0000, 
'Women''s CTAS Rave Sneaker',
'The Women''s Converse CTAS Rave Sneaker are designed for all day comfort and versatility,
Canvas upper in a sneaker style with a round toe,
Lace up front', 
2, 2);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Chuck Taylor All Star Shoreline Low Top Sneaker', 
'https://www.famousfootwear.com/blob/product-images/20000/95/30/6/95306_pair_large.jpg', 
180.0000, 
'Women''s Chuck Taylor All Star Shoreline Low Top Sneaker', 
'Slip on a classic look and get on your way in the Chuck Taylor All Star Shoreline Slip On Sneaker from Converse,
Canvas upper in a slip-on style', 
2, 2);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Bravada High Top Shoe', 
'https://www.famousfootwear.com/blob/product-images/20000/35/75/7/35757_pair_large.jpg', 
150.0000, 
'Women''s Bravada High Top Shoe',
'The perfect style to pair with anything: the Women''s adidas Bravada High Top Shoe,
Canvas upper in a high-top sneaker style with a round toe,
Lace-up closure',
3, 12);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Men''s Hoops 3.0 Mid Winter Sneaker', 
'https://www.famousfootwear.com/blob/product-images/20000/40/55/2/40552_pair_large.jpg', 
165.0000, 
'Men''s Hoops 3.0 Mid Winter Sneaker', 
'Take your look from the court to the street with the Men''s Adidas Hoops 3.0 Mid Winter Sneaker,
Nubuck upper in a mid top sneaker style with a round toe,
Lace up front', 
3, 12);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Dame Extply 2 Basketball Shoe', 
'https://www.famousfootwear.com/blob/product-images/20000/13/88/3/13883_pair_large.jpg', 
185.0000, 
'Dame Extply 2 Basketball Shoe', 
'Inspired by Damian Lillard''s style, the Adidas Dame Extply 2 Basketball Shoe,
Synthetic upper in a basketball style with a round toe,
Secure lace up closure', 
3, 12);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Men''s Harden Stepback 3 Basketball Shoe', 
'https://www.famousfootwear.com/blob/product-images/20000/40/57/1/40571_pair_large.jpg', 
200.0000, 
'Men''s Harden Stepback 3 Basketball Shoe',   
'Step up your game in the Men''s Adidas Harden Stepback 3 Basketball Shoe,
Mesh upper in a basketball shoe style with a round toe,
Lace up front,
Reinforced mesh cage for a breathable and secure fit', 
3, 12);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Men''s Own the Game Basketball Shoe', 
'https://www.famousfootwear.com/blob/product-images/20000/05/49/9/05499_pair_large.jpg', 
100.0000, 
'Men''s Own the Game Basketball Shoe', 
'Adidas brings genuine leather and an understated profile to the Men''s Own the Game Basketball Shoe,
Leather and mesh upper in a basketball style high top sneaker with a round toe,
Lace up entry', 
3, 12);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Kids'' Classic Clog Toddler', 
'https://www.famousfootwear.com/blob/product-images/20000/38/08/7/38087_pair_large.jpg', 
120.0000, 
'Kid''s Classic Clog Toddler', 
'Get the easy comfort you want for the little ones with the Kids'' Crocs Classic Clog,
Croslite upper in a clog style with a round toe,
Easy slip on entry with heel strap for a secure fit,
Toe-Box ventilation for a nice feel', 
4, 12);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Kids'' Classic Sandal Toddler', 
'https://www.famousfootwear.com/blob/product-images/20000/38/09/8/38098_pair_large.jpg', 
100.0000, 
'Kids'' Classic Sandal Toddler', 
'Get classic Crocs comfort in the Kids'' Classic Sandal - now customizable with Jibbitz™ charms,
EVA, double-strap upper in a slide sandal style with an open toe,
Slip-on entry', 
4, 12);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Kids'' Classic Sandal Little Kid', 
'https://www.famousfootwear.com/blob/product-images/20000/58/47/4/58474_pair_large.jpg', 
120.0000, 
'Kids'' Classic Sandal Little Kid', 
'Get classic Crocs comfort in the Kids'' Classic Sandal - now customizable with Jibbitz™ charms,
EVA, double-strap upper in a slide sandal style with an open toe,
Slip-on entry', 
4, 12);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Classic Sandal', 
'https://www.famousfootwear.com/blob/product-images/20000/91/10/6/91106_pair_large.jpg', 
120.0000, 
'Women''s Classic Sandal', 
'Get classic Crocs comfort in the Women''s Classic Sandal - now customizable with Jibbitz™ charms,
EVA, double-strap upper in a slide sandal style with an open toe,
Slip-on entry', 
4, 12);
INSERT INTO Products (name, image, price, title, description, category_id, account_id) VALUES (
'Women''s Classic Crocs Flip Sandal', 
'https://www.famousfootwear.com/blob/product-images/20000/73/85/3/73853_pair_large.jpg', 
120.0000, 
'Women''s Classic Crocs Flip Sandal',
'Introducing the Women''s Crocs Classic Crocs Flip Sandal, a stylish revamp of a classic,
Fully-molded Croslite™ upper in a flip flop sandal style with an open toe,
Backless slip on entry', 
4, 12);