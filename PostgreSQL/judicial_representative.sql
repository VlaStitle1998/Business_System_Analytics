CREATE TABLE judicial_representative (
judicial_representative_id INT,
judicial_representative_fullname VARCHAR(64),
judicial_representative_contacts VARCHAR(16)
);
INSERT INTO judicial_representative (judicial_representative_id, judicial_representative_fullname, judicial_representative_contacts) VALUES
(1, 'Винокурова Ольга Кирилловна', '7-901-415-28-97'),
(2, 'Лесов Сергей Васильевич', '7-961-352-34-87'),
(3, 'Баринов Глеб Станиславович', '7-920-654-86-75');
SELECT * FROM judicial_representative; 
