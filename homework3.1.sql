INSERT INTO Artists (Name) VALUES ('Metallica');
INSERT INTO Artists (Name) VALUES ('Journey');
INSERT INTO Artists (Name) VALUES ('Eminem');
INSERT INTO Artists (Name) VALUES ('Jay-z');
INSERT INTO Artists (Name) VALUES ('Louis Armstrong');
INSERT INTO Artists (Name) VALUES ('APPA');
INSERT INTO Artists (Name) VALUES ('Michael Jackson');
INSERT INTO Artists (Name) VALUES ('Duft Punk');

INSERT INTO Genres (Name) VALUES ('Rap');
INSERT INTO Genres (Name) VALUES ('Rock');
INSERT INTO Genres (Name) VALUES ('Jazz');
INSERT INTO Genres (Name) VALUES ('Disco');
INSERT INTO Genres (Name) VALUES ('Techno');

INSERT INTO Genres_categories VALUES (1, 3), (1, 4), (2, 1), (2, 2), (3, 5), (1, 6), (4, 6), (4, 7), (5, 8);

INSERT INTO Albums (Name, Year) VALUES ('Metallica', 1991);
INSERT INTO Albums (Name, Year) VALUES ('Escape', 1981);
INSERT INTO Albums (Name, Year) VALUES ('The Eminem Show', 2002);
INSERT INTO Albums (Name, Year) VALUES ('The Blueprint', 2001);
INSERT INTO Albums (Name, Year) VALUES ('Ella and Louis', 1956);
INSERT INTO Albums (Name, Year) VALUES ('The Visitor', 2020);
INSERT INTO Albums (Name, Year) VALUES ('Bad', 1987);
INSERT INTO Albums (Name, Year) VALUES ('Discovery', 2001);

INSERT INTO Albums_categories VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8);

INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Enter Sandman', 332, 1);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Sad But True', 335, 1);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Dont''t Stop Believin''', 251, 2);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Escape', 317, 2);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Till I Collapse', 298, 3);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Without Me', 290, 3);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Heart of the City', 223, 4);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('U Don''t Know', 200, 4);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Cheek to Cheek', 352, 5);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Tenderly', 307, 5);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('One of Us', 237, 6);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Bad', 247, 7);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Smooth Criminal', 258, 7);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Harder Better Faster Stronger', 225, 8);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('One More Time', 320, 8);
INSERT INTO Tracks (Name, Duration, Albums_id) VALUES ('Last game', 332, 1);

INSERT INTO Collections (Name, Year) VALUES ('Garage Inc.', 1998);
INSERT INTO Collections (Name, Year) VALUES ('Time3', 1992);
INSERT INTO Collections (Name, Year) VALUES ('Curtain Call: The Hits', 2005);
INSERT INTO Collections (Name, Year) VALUES ('The Hits Collection, Vol. 1', 2010);
INSERT INTO Collections (Name, Year) VALUES ('Ella & Louis Christmas', 2016);
INSERT INTO Collections (Name, Year) VALUES ('The Essential Collection', 2012);
INSERT INTO Collections (Name, Year) VALUES ('Scream', 2017);
INSERT INTO Collections (Name, Year) VALUES ('Daft Club', 2003);

INSERT INTO Tracks_categories VALUES (1, 1), (2, 1), (3, 2), (4, 2), (5, 3), (6, 3), (7, 4), (8, 4), (9, 5), (10, 5), (11, 6), (12, 7), (13, 7), (14, 8), (15, 8);