CREATE DATABASE IF NOT EXISTS phasmotrivia CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE phasmotrivia;

DROP TABLE IF EXISTS opciones;
DROP TABLE IF EXISTS preguntas;

CREATE TABLE preguntas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto VARCHAR(255) NOT NULL
);

CREATE TABLE opciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pregunta_id INT NOT NULL,
    texto_respuesta VARCHAR(100) NOT NULL,
    es_correcta TINYINT(1) NOT NULL DEFAULT 0,
    FOREIGN KEY (pregunta_id) REFERENCES preguntas(id)
);

INSERT INTO preguntas (id, texto) VALUES
(1, '¿Cuál es aquel fantasma que tira muchos objetos?'),
(2, '¿Cuál es el mapa más grande de Phasmophobia?'),
(3, 'A este fantasma le gusta mucho el frío'),
(4, 'Este fantasma es parcialmente ciego'),
(5, '¿Cuál de estos fantasmas NO existe?'),
(6, '¿Qué objeto maldito te permite conocer la ubicación exacta de la habitación del fantasma a cambio de una gran cantidad de salud mental?'),
(7, 'Al utilizar las cartas de Tarot, ¿qué carta provoca una muerte instantánea al jugador que la roba?'),
(8, '¿En qué mapa se encuentra una zona de campamento con varias tiendas de campaña y una hoguera central?'),
(9, '¿Cuál de las siguientes entidades emite sonidos ultrasónicos que se pueden detectar con el Micrófono Parabólico?'),
(10, '¿Cuál es la velocidad de movimiento base (en metros por segundo) a la que se desplaza un Hantu durante una cacería en una habitación cuya temperatura es inferior a 0 °C?');

INSERT INTO opciones (pregunta_id, texto_respuesta, es_correcta) VALUES
(1, 'Revenant', 0), (1, 'Poltergeist', 1), (1, 'Obambo', 0),
(2, '13 Willow Street', 0), (2, 'Prison', 0), (2, 'Sunny Meadows Institution', 1),
(3, 'Yurei', 0), (3, 'Jinn', 0), (3, 'Hantu', 1),
(4, 'Kormos', 1), (4, 'Fonseca', 0), (4, 'Mare', 0),
(5, 'Lilith', 1), (5, 'Demon', 0), (5, 'Deildegast', 0),
(6, 'Tabla de Ouija', 0), (6, 'Espejo Encantado', 1), (6, 'Caja de Música', 0),
(7, 'Muerte', 0), (7, 'El Diablo', 0), (7, 'El Ahorcado', 1),
(8, 'Tanglewood Drive', 0), (8, 'Edgefield Road', 0), (8, 'Maple Lodge Campsite', 1),
(9, 'Deildegast', 0), (9, 'Aswang', 0), (9, 'Banshee', 1),
(10, '3.0 m/s', 0), (10, '2.5 m/s', 0), (10, '2.7 m/s', 1);
