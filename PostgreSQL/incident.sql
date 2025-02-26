CREATE TABLE incident (
incident_id INT,
incident_type VARCHAR(16),
incident_treaty INT,
incident_claim TIMESTAMP, 
incident_lawsuit VARCHAR(64)
);
INSERT INTO incident (incident_id, incident_type, incident_treaty, incident_claim, incident_lawsuit) VALUES
(1, 'Гражданское', 123, '2023-10-30 20:15:43', 'Установление отцовства'),
(2, 'Уголовное', 234, '2024-12-09 12:28:46', 'Подозрение в убийстве на почве ревности'),
(3, 'Уголовное', 345, '2024-03-18 18:34:17', 'Производство и сбыт поддельной алкогольной продукции'),
(4, 'Уголовное', 456, '2025-01-29 09:49:34', 'Захват виртуальной недвижимости'),
(5, 'Гражданское', 567, '2024-11-16 14:54:31', 'Получение наследства');
SELECT * FROM incident; 
