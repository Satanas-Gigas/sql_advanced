INSERT INTO singer (name)
VALUES ('Metallica'), 
       ('Prodigy'),
       ('Eminem'),
       ('Michael Jackson'),
       ('Marilyn Manson'),
       ('DMX'),
       ('Slipknot'),
       ('Nightwish');
       
INSERT INTO genre (name)
VALUES ('rock'),
       ('electropunk'),
       ('rap'),
       ('pop'),
       ('alternative rock');

INSERT INTO album (name, year)
VALUES ('72 Seasons', '2023'),
       ('No Tourists', '2018'),
       ('Recovery', '2010'),
       ('Bad', '1987'),
       ('Eat Me, Drink Me', '2007'),
       ('Undisputed', '2012'),
       ('Iowa', '2001'),
       ('Imaginaerum', '2011');

INSERT INTO track (name, time, album_id)
VALUES ('72 Seasons', '459', '1'),
       ('Shadows Follow', '372', '1'),
       ('Lux Aeterna', '202', '1'),       
       ('Need Some1', '165', '2'),
       ('Light Up the Sky', '200', '2'),
       ('Timebomb Zone', '204', '2'),       
       ('Cold Wind Blows', '303', '3'),
       ('Talkin2 Myself', '300', '3'),
       ('On Fire', '213', '3'),       
       ('I Just Cant Stop Loving You', '252', '4'),
       ('Bad', '247', '4'),
       ('Smooth Criminal', '258', '4'),       
       ('If I Was Your Vampire', '339', '5'),
       ('Putting Holes in Happiness', '239', '5'),
       ('The Red Carpet Grave', '245', '5'),       
       ('What They Dont Know', '222', '6'),
       ('Cold World', '244', '6'),
       ('I Dont Dance', '207', '6'),      
	   ('Left Behind', '241', '7'),
       ('People = Shit', '216', '7'),
       ('Gently', '294', '7'),            
       ('Last Ride of the Day', '271', '8'),
       ('Turn Loose the Mermaids', '259', '8'),
       ('Ghost River', '325', '8');    


INSERT INTO collection (name, year)
VALUES ('ROCK ANTHEMS', '2008'),
       ('ROCK DRIVE', '2010'),
       ('SO HEAVY', '2012'),
       ('MIXTAPE', '2012'),
       ('FM HITS', '2014'),
       ('ELECTRIC UNIVERSE', '2015'),
       ('FORTRESS', '2021'),
       ('DRIFTER', '2022'); 

INSERT INTO genre_singer (genre_id, singer_id)
VALUES ('1', '1'),
       ('1', '7'),
       ('1', '8'),
       ('2', '2'),
       ('3', '3'),
       ('3', '6'),
       ('4', '4'),
       ('5', '5');
      
INSERT INTO singer_album (singer_id, album_id)
VALUES ('1', '1'),
       ('2', '2'),
       ('3', '3'),
       ('4', '4'),
       ('5', '5'),
       ('6', '6'),
       ('7', '7'), 	
       ('8', '8');

INSERT INTO track_collection (collection_id, track_id)
VALUES ('1', '24'),
       ('1', '17'),
       ('1', '4'),
       ('1', '21'),
       ('2', '14'),
       ('2', '18'),
       ('2', '9'),
       ('2', '11'),
       ('3', '13'),
       ('3', '5'),
       ('3', '16'),
       ('3', '23'),
       ('4', '7'),
       ('4', '2'),
       ('4', '20'),
       ('4', '12'),
       ('5', '6'),
       ('5', '10'),
       ('5', '8'),
       ('5', '3'),
       ('6', '19'),
       ('6', '15'),
       ('6', '1'),
       ('6', '14'),
       ('7', '19'),
       ('7', '10'),
       ('7', '6'),
       ('7', '4'),
       ('8', '20'),
       ('8', '23'),
       ('8', '18'),
       ('8', '7');  