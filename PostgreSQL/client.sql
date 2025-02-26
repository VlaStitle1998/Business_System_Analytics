CREATE TABLE client (
client_id INT,
client_fullname VARCHAR(64),
client_contacts VARCHAR(16)
);
INSERT INTO client (client_id, client_fullname, client_contacts) VALUES
(1, 'Салтыкова Дарья Сергеевна', '7-910-581-24-97'),
(2, 'Морозов Олег Иванович', '7-916-324-35-86'),
(3, 'Селиверстов Игорь Валентинович', '7-920-685-46-75'),
(4, 'Скворцова Екатерина Борисовна', '7-926-126-57-64'),
(5, 'Полосков Дмитрий Владимирович', '7-909-327-68-53');
SELECT * FROM client; 
