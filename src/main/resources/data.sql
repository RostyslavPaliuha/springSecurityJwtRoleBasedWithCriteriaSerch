/*drop table if exists role
drop table if exists user
drop table if exists user_roles
create table role (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=MyISAM
create table user (id bigint not null auto_increment, age integer, password varchar(255), salary bigint, username varchar(255), primary key (id)) engine=MyISAM
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=MyISAM
alter table user_roles add constraint FKrhfovtciq1l558cw6udg0h0d3 foreign key (role_id) references role (id)
alter table user_roles add constraint FK55itppkw3i07do3h7qoclqd4k foreign key (user_id) references user (id)*/

/*Fill user table*/
INSERT INTO user (id, username, password, salary, age) VALUES (1,'user1', '$2a$10$o187jPtbtt3qEanqGQdfa.o59/ZmmtZTpk40ev0m.bwsz5gez8HCi', 3456, 33);
INSERT INTO user (id, username, password, salary, age) VALUES (2,'user2', '$2a$10$o187jPtbtt3qEanqGQdfa.o59/ZmmtZTpk40ev0m.bwsz5gez8HCi', 7823, 23);
/*Fill role table*/
INSERT INTO role (id,description, name) VALUES (1,'Admin role', 'ADMIN');
INSERT INTO role (id,description, name) VALUES (2,'User role', 'USER');
/*Fill user_role table*/
INSERT INTO user_roles (user_id, role_id) VALUES (1, 1);
INSERT INTO user_roles (user_id, role_id) VALUES (2, 2);
/*Fill contact table*/
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (1,'Rostyslav','Paliuha','IF','Nadvirnyanska St','MOBILE','+3(8095) 721-4132','rostyslavpaliuha@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (2,'Johny','Doe','LA','Fourth St','MOBILE','+1 (888) 555-4654','john@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (3,'Aaron','Paul','ID','Fourth St','MOBILE','+1 (888) 555-4654','johndoe3@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (4,'Andy','Garfield','LA','Fourth St','MOBILE','+1 (888) 555-4654','andy@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (5,'Abigail',' Klein','DA','Fourth St','MOBILE','+1 (888) 555-4654','johndoe5@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (6,'Alan','Arkin','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe6@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (7,'Alice','Hewkin','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe7@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (8,'Bill','Fichtner','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe8@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (9,'Carol','Burnett','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe9@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (10,'Gabrielle','Richens','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndo10e@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (11,'Bruce','Willis','IO','Fourth St','MOBILE','+1 (888) 555-4654','johndoe11@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (12,'Zoe','Saldana','NJ','Fourth St','MOBILE','+1 (888) 555-4654','johndoe12@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (13,'Chester','Bennington','AR','Fourth St','MOBILE','+1 (888) 555-4654','johndoe13@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (14,'Helga','Wretman','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe14@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (15,'Ingrid','Bisu','BH','Fourth St','MOBILE','+1 (888) 555-4654','johndoe15@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (16,'Dexter','Darden','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe16@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (17,'Jenny','Aniston','CA','Fourth St','MOBILE','+1 (888) 555-4654','johndoe17@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (18,'Elvis','Presley','TP','Fourth St','MOBILE','+1 (888) 555-4654','johndoe18@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (19,'Jessica','Alba','CA','Fourth St','MOBILE','+1 (888) 555-4654','johndoe19@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (20,'Homer','Simpson','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe20@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (21,'Karen','Civil','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe21@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (22,'Jason','Momoa','HN','Fourth St','MOBILE','+1 (888) 555-4654','johndoe22@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (23,'Lisa','Kudrow','CA','Fourth St','MOBILE','+1 (888) 555-4654','johndoe23@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (24,'Kevin','Smith','NJ','Fourth St','MOBILE','+1 (888) 555-4654','johndoe24@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (25,'Mary Elizabeth','Winstead','NC','Fourth St','MOBILE','+1 (888) 555-4654','johndoe25@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (26,'Linus Benedict', 'Torvalds','HEL','Fourth St','MOBILE','+1 (888) 555-4654','johndoe26@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (27,'Molly','Baker','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe27@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (28,'Morgan','Freeman','TEN','Fourth St','MOBILE','+1 (888) 555-4654','johndoe28@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (29,'Nina','Wisner','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe29@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (30,'Quentin','Tarantino','TEN','Fourth St','MOBILE','+1 (888) 555-4654','johndoe30@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (31,'Pamela','Anderson','CO','Fourth St','MOBILE','+1 (888) 555-4654','johndoe31@gmail.com');
INSERT INTO contact (id,firstName,lastName,city,street,phoneType,phoneNumber,email) VALUES (32,'Sheldon','Cooper','NY','Fourth St','MOBILE','+1 (888) 555-4654','johndoe32@gmail.com');