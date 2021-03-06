SET FOREIGN_KEY_CHECKS=0;
truncate table heroku_99c76e843a759c6.client;
truncate table heroku_99c76e843a759c6.product;
truncate table heroku_99c76e843a759c6.wishlist;
truncate table heroku_99c76e843a759c6.wishlist_product;
SET FOREIGN_KEY_CHECKS=1;

INSERT INTO client (name, cpf, birthday, number, email, password) VALUES ('Caroline Ribeiro', '12883424462', '17/07/1999','94449195', 'carol@gmail.com', 'senha123');
INSERT INTO client (name, cpf, birthday, number, email, password) VALUES ('Alice Pizetta', '14785236987', '25/05/2000','91952328', 'alice@gmail.com', 'senha123');
INSERT INTO client (name, cpf, birthday, number, email, password) VALUES ('Jacqueline Sales', '21458963774', '01/08/1990','93072327', 'jack@gmail.com', 'senha123');
INSERT INTO client (name, cpf, birthday, number, email, password) VALUES ('Raissa Vieira', '74185296354', '14/07/2001','91107299', 'raissa@gmail.com', 'senha123');
INSERT INTO client (name, cpf, birthday, number, email, password) VALUES ('Juliany Moraisa', '54800956099', '10/04/2001','91103890', 'juliany@gmail.com', 'senha123');
INSERT INTO client (name, cpf, birthday, number, email, password) VALUES ('Sthephani Monteiro', '80442716001', '28/03/1995','91259301', 'sthe@gmail.com', 'senha123');

INSERT INTO product (name, price, description) VALUES ('Sofá', '2050.00', 'Design moderno e cor que combina facilmente com estilos variados de decorações.');
INSERT INTO product (name, price, description) VALUES ('Iphone XR', '3700.00', 'O iPhone XR tem tela Liquid Retina de 6,1 polegadas** e seis lindas cores.');
INSERT INTO product (name, price, description) VALUES ('Armário', '3500.00', 'Design moderno e cor que combina facilmente com estilos variados de decorações.');
INSERT INTO product (name, price, description) VALUES ('Panela Inox', '130.00', 'Facilita o cozimento dos seus alimentos.');
INSERT INTO product (name, price, description) VALUES ('Churrasqueira', '300.00', 'Portátil e fácil de manusear.');
INSERT INTO product (name, price, description) VALUES ('Sanduicheira', '50.00', 'Prepara o seu café da manhã com mais facilidade.');

INSERT INTO wishlist (id_client) VALUES ((select id from client where cpf = '12883424462' limit 1));
INSERT INTO wishlist (id_client) VALUES ((select id from client where cpf = '14785236987' limit 1));
INSERT INTO wishlist (id_client) VALUES ((select id from client where cpf = '21458963774' limit 1));
INSERT INTO wishlist (id_client) VALUES ((select id from client where cpf = '74185296354' limit 1));
INSERT INTO wishlist (id_client) VALUES ((select id from client where cpf = '54800956099' limit 1));
INSERT INTO wishlist (id_client) VALUES ((select id from client where cpf = '80442716001' limit 1));

INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '12883424462' limit 1),
                                                              (select id from product where name = 'Sofá' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '12883424462' limit 1),
                                                              (select id from product where name = 'Iphone XR' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '14785236987' limit 1),
                                                              (select id from product where name = 'Armário' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '14785236987' limit 1),
                                                              (select id from product where name = 'Sofá' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '21458963774' limit 1),
                                                              (select id from product where name = 'Armário' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '21458963774' limit 1),
                                                              (select id from product where name = 'Sofá' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '74185296354' limit 1),
                                                              (select id from product where name = 'Armário' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '74185296354' limit 1),
                                                              (select id from product where name = 'Sofá' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '54800956099' limit 1),
                                                              (select id from product where name = 'Armário' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '54800956099' limit 1),
                                                              (select id from product where name = 'Sofá' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '80442716001' limit 1),
                                                              (select id from product where name = 'Armário' limit 1));
INSERT INTO wishlist_product (wishlist_id, product_id) VALUES ((select w.id from client c inner join wishlist w on c.id = w.id_client where cpf = '80442716001' limit 1),
                                                              (select id from product where name = 'Sofá' limit 1));



