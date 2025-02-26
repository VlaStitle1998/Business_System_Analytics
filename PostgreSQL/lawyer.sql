CREATE TABLE lawyer (
lawyer_id INT,
lawyer_fullname VARCHAR(64),
lawyer_contacts VARCHAR(16)
);
INSERT INTO lawyer (lawyer_id, lawyer_fullname, lawyer_contacts) VALUES
(1, 'Соколова Марина Михайловна', '7-901-815-42-79'),
(2, 'Лесов Сергей Васильевич', '7-961-342-53-68'),
(3, 'Градов Виктор Андреевич', '7-920-658-64-57'),
(4, 'Смирнова Валерия Александровна', '7-926-621-75-46'),
(5, 'Павлов Алексей Всеволодович', '7-909-723-86-35');
SELECT * FROM lawyer; 
