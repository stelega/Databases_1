CREATE TABLE osoba (
			ID		int	NOT NULL 	,
			name		varchar(32)		,
			surname		varchar(32)		,
			birth_date	date			,
			death_date	date			,
			birth_place	varchar(64)		,
			spouse_id	int			,
			mother_id	int			,
			father_id	int			,
			PRIMARY KEY (ID),
			FOREIGN KEY (spouse_id) REFERENCES osoba(ID),
			FOREIGN KEY (mother_id) REFERENCES osoba(ID),
			FOREIGN KEY (father_id) REFERENCES osoba(ID)
);



INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place ) values ( 1, 'Alina', 'Abacka', '1940-01-01', '1995-01-01', 'Zelków' );
INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place, spouse_id ) values ( 2, 'Bogusław', 'Babacki', '1938-01-01', '1995-01-01', 'Bolechowice', 1 );
UPDATE osoba SET spouse_id = 2 where ID = 1;


INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place ) values ( 3, 'Cecylia', 'Cacacka', '1940-02-02', '1995-01-01', 'Bysina' );
INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place, spouse_id ) values ( 4, 'Dobromid', 'Dadacki', '1938-02-02', '1995-01-01', 'Bysina', 3 );
UPDATE osoba SET spouse_id = 4 where ID = 3;


INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place ) values ( 5, 'Elżbieta', 'Ebacka', '1940-03-03', '1995-01-01', 'Bibice' );
INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place, spouse_id ) values ( 6, 'Franciszek', 'Fafacki', '1938-03-03', '1995-01-01', 'Zielonki', 5 );
UPDATE osoba SET spouse_id = 6 where ID = 5;


INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place ) values ( 7, 'Genowefa', 'Gagacka', '1940-04-04', '1995-01-01', 'Rząska' );
INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place, spouse_id ) values ( 8, 'Henryk', 'Hahacki', '1938-04-04', '1995-01-01', 'Szczyglice', 7 );
UPDATE osoba SET spouse_id = 8 where ID = 7;



INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place, mother_id, father_id ) values ( 9, 'Irena', 'Babacka', '1965-05-05', '1995-01-01', 'Zabierzów', 1, 2 );
INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place, spouse_id, mother_id, father_id ) values ( 10, 'Jeremi', 'Dadacki', '1965-06-06', '1995-01-01', 'Myślenice', 9, 3, 4 );
UPDATE osoba SET spouse_id = 10 where ID = 9;

INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place, mother_id, father_id ) values ( 11, 'Kleofas', 'Babacki', '1966-05-05', '1995-01-01', 'Zabierzów', 1, 2 );

INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place, mother_id, father_id ) values ( 12, 'Lucyna', 'Fafacka', '1966-07-07', '1995-01-01', 'Zielonki', 5, 6 );
INSERT INTO osoba (ID, name, surname, birth_date, death_date, birth_place, spouse_id, mother_id, father_id ) values ( 13, 'Łukasz', 'Hahacki', '1966-08-08', '1995-01-01', 'Rząska', 12, 7, 8 );
UPDATE osoba SET spouse_id = 13 where ID = 12;


INSERT INTO osoba (ID, name, surname, birth_date, birth_place, mother_id, father_id ) values ( 14, 'Monika', 'Dadacka', '1990-09-09', 'Karków', 10, 11 );
INSERT INTO osoba (ID, name, surname, birth_date, birth_place, spouse_id, mother_id, father_id ) values ( 15, 'Nikodem', 'Hahacki', '1992-10-10', 'Kraków', 14, 12, 13 );
UPDATE osoba SET spouse_id = 15 where ID = 14;


INSERT INTO osoba (ID, name, surname, birth_date, birth_place, mother_id, father_id ) values ( 16, 'Olaf', 'Hahacki', '2010-11-11', 'Kraków', 14, 15 );


SELECT * FROM osoba WHERE id = 16;									//  wypisujemy info o osobie z id=16.
SELECT o2.* FROM osoba o2 INNER JOIN osoba o1 ON o1.mother_id = o2.ID WHERE o1.ID = 16; 		//  wypisujemy info o matce osoby z id=16.
SELECT o2.* FROM osoba o2 INNER JOIN osoba o1 ON o1.father_id = o2.ID WHERE o1.ID = 16; 		//  wypisujemy info o ojcu osoby z id=16.

SELECT o1.name FROM osoba o1 INNER JOIN osoba o2 ON o1.mother_id = o2.id WHERE o1.mother_id = 1;	// wypisujemy imie dziecka które ma matke z id = 1.
SELECT o1.name FROM osoba o1 INNER JOIN osoba o2 ON o1.father_id = o2.id WHERE o1.father_id = 1;	// wypisujemy imie dziecka które ma ojca  z id = 1.




