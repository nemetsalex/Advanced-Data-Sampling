-- Sting ('The soul cages')

INSERT INTO genre (name)
 VALUES('power pop');
 
INSERT INTO album (name, "year")
 VALUES('The soul cages', '2024-01-22');
 
INSERT INTO track (name, duration, album_id)
 VALUES('Island of souls', 401, '1'),
       ('All this time', 294, '1'),
       ('Mad about you', 233, '1'),
       ('Jeremiah blues', 294, '1'),
       ('Why should I cryfor you', 286, '1'),
       ('The wild wild rea', 163, '1'),
       ('The soul cages', 401, '1'),
       ('When the angels fall', 351, '1');
       
INSERT INTO performer (name)
 VALUES('Sting');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('1', '1');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('1', '1');
 
-- Alan Parsons ('I robot')

INSERT INTO genre (name)
 VALUES('progressive rock');
 
INSERT INTO album (name, "year")
 VALUES('I robot', '1977-06-01');
 
INSERT INTO track (name, duration, album_id)
 VALUES('I robot', 122, '2'),
       ('I would not want to be like you', 202, '2'),
       ('Some other time', 246, '2'),
       ('Breakdown', 230, '2'),
       ('Do not let it show', 264, '2'),
       ('The voice', 324, '2'),
       ('Nucleus', 211, '2'),
       ('Day after day (The show must go on)', 229, '2'),
       ('Total eclipse', 189, '2'),
       ('Genesis ch.1. v.32', 208, '2');
       
INSERT INTO performer (name)
 VALUES('Alan Parsons');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('2', '2');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('2', '2');

-- Van Halen ('1984')

INSERT INTO genre (name)
 VALUES('hard rock');
 
INSERT INTO album (name, "year")
 VALUES('1984', '1984-01-09');
 
INSERT INTO track (name, duration, album_id)
 VALUES('1984', 67, '3'),
       ('Jump', 241, '3'),
       ('Panama', 211, '3'),
       ('Top Jimmy', 179, '3'),
       ('Drop dead legs', 256, '3'),
       ('Hot for teacher', 282, '3'),
       ('I will wait', 280, '3'),
       ('Girl gone bad', 275, '3'),
       ('House of pain', 199, '3');
       
INSERT INTO performer (name)
 VALUES('Van Halen');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('3', '3');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('3', '3');

-- Deep Purple ('Machine Head')
 
INSERT INTO album (name, "year")
 VALUES('Machine Head', '1972-03-25');
 
INSERT INTO track (name, duration, album_id)
 VALUES('Highway star', 366, '4'),
       ('Maybe I am a leo', 296, '4'),
       ('Pictures of home', 303, '4'),
       ('Never before', 236, '4'),
       ('Smoke on the water', 340, '4'),
       ('Lazy', 439, '4'),
       ('Space truckin', 271, '4');
       
INSERT INTO performer (name)
 VALUES('Deep Purple');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('4', '3');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('4', '4');

-- AC/DC ('Ballbreaker')
 
INSERT INTO album (name, "year")
 VALUES('Ballbreaker', '1995-09-25');
 
INSERT INTO track (name, duration, album_id)
 VALUES('Hard as a rock', 271, '5'),
       ('Cover you in oil', 272, '5'),
       ('The furor', 250, '5'),
       ('Boogie man', 247, '5'),
       ('The noney roll', 334, '5'),
       ('Burnin alive', 305, '5'),
       ('Hail caesar', 314, '5'),
       ('Love bomb', 194, '5'),
       ('Caught with your pants down', 256, '5'),
       ('Whiskey on the rocks', 275, '5'),
       ('Ballbreaker', 271, '5');
       
INSERT INTO performer (name)
 VALUES('AC/DC');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('5', '3');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('5', '5');

-- Green Day ('Dookie')

INSERT INTO genre (name)
 VALUES('punk rock');
 
INSERT INTO album (name, "year")
 VALUES('Dookie', '1994-02-01');
 
INSERT INTO track (name, duration, album_id)
 VALUES('Burnout', 127, '6'),
       ('Having a blast', 164, '6'),
       ('Chump', 174, '6'),
       ('Longview', 239, '6'),
       ('Welcome to paradise', 224, '6'),
       ('Pulling teeth', 150, '6'),
       ('Basket case', 183, '6'),
       ('She', 134, '6'),
       ('Sassafras roots', 157, '6'),
       ('When I come around', 178, '6'),
       ('Coming clean', 94, '6'),
       ('Emenius sleepus', 103, '6'),
       ('In the end', 106, '6'),
       ('Fuck off and die', 346, '6');
       
INSERT INTO performer (name)
 VALUES('Green Day');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('6', '4');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('6', '6');

-- Pink Floyd ('The wall')
 
INSERT INTO album (name, "year")
 VALUES('The wall', '1979-11-30');
 
INSERT INTO track (name, duration, album_id)
 VALUES('In the flesh?', 199, '7'),
       ('The thin ice', 149, '7'),
       ('Another brick in the wall (part 1)', 190, '7'),
       ('The happiest days of our lives', 111, '7'),
       ('Another brick in the wall (part 2)', 240, '7'),
       ('Mother', 333, '7'),
       ('Goodbye blue sky', 169, '7'),
       ('Empty spaces', 127, '7'),
       ('Young lust', 213, '7'),
       ('One of my turns', 214, '7'),
       ('Do not leave me now', 256, '7'),
       ('Another brick in the wall (part 3)', 77, '7'),
       ('Goodbye cruel world', 74, '7'),
       ('Hey you', 281, '7'),
       ('Is there anybody out there?', 177, '7'),
       ('Nobody home', 192, '7'),
       ('Vera', 88, '7'),
       ('Bring the boys back home', 86, '7'),
       ('Comfortably numb', 386, '7'),
       ('The show must go on', 98, '7'),
       ('In the flesh', 253, '7'),
       ('Run like hell', 261, '7'),
       ('Waiting for the worms', 241, '7'),
       ('Stop', 31, '7'),
       ('The trial', 319, '7'),
       ('Outside the wall', 105, '7');
       
INSERT INTO performer (name)
 VALUES('Pink Floyd');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('7', '2');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('7', '7');

-- Queen ('The Miracle')
 
INSERT INTO album (name, "year")
 VALUES('The Miracle', '1989-05-22');
 
INSERT INTO track (name, duration, album_id)
 VALUES('Party', 145, '8'),
       ('Khashoggi ship', 165, '8'),
       ('The miracle', 300, '8'),
       ('I Want it all', 280, '8'),
       ('The invisible man', 237, '8'),
       ('Breakthru', 246, '8'),
       ('Rain must fall', 260, '8'),
       ('Scandal', 282, '8'),
       ('My baby does me', 202, '8'),
       ('Was it all worth it', 343, '8');
       
INSERT INTO performer (name)
 VALUES('Queen');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('8', '3');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('8', '8');

-- The Who ('Who')
 
INSERT INTO album (name, "year")
 VALUES('Who', '2019-12-06');
 
INSERT INTO track (name, duration, album_id)
 VALUES('All this music must fade', 200, '9'),
       ('Ball and chain', 269, '9'),
       ('I Do not wanna get wise', 234, '9'),
       ('Detour', 226, '9'),
       ('Beads on one string', 220, '9'),
       ('Hero ground zero', 292, '9'),
       ('Street song', 287, '9'),
       ('I will be back', 301, '9'),
       ('Break the news', 270, '9'),
       ('Rockin in rage', 244, '9'),
       ('She rocked my world', 202, '9');
       
INSERT INTO performer (name)
 VALUES('The Who');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('9', '1');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('9', '9');

-- Kiss ('Lick It Up')
 
INSERT INTO album (name, "year")
 VALUES('Lick It Up', '1983-09-18');
 
INSERT INTO track (name, duration, album_id)
 VALUES('Exciter', 250, '10'),
       ('Not for the innocent', 262, '10'),
       ('Lick it up', 236, '10'),
       ('Young and wasted', 245, '10'),
       ('Gimme more', 223, '10'),
       ('All hells breakin loose', 274, '10'),
       ('A million to one', 254, '10'),
       ('Fits like a glove', 244, '10'),
       ('Dance all over your face', 256, '10'),
       ('And on the 8th day', 242, '10');
       
INSERT INTO performer (name)
 VALUES('Kiss');
 
INSERT INTO performer_genre (performer_id, genre_id)
 VALUES('10', '3');
 
INSERT INTO album_performer (album_id, performer_id)
 VALUES('10', '10');

-- Сборники ('Hard rock (1)', Hard rock (2), Progressive, Power)
 
INSERT INTO collection (name, "year")
 VALUES('Hard rock (1)', '2001-10-05'),
	   ('Hard rock (2)', '2003-04-03'),
       ('Progressive', '2019-12-06'),
       ('Power', '2020-11-09');
      
 -- 'Hard rock (1)'      
        
INSERT INTO track_collection (collection_id, track_id)
 VALUES('1', '23'),
       ('1', '25'),
       ('1', '27'),
       ('1', '28'),
       ('1', '30'),
       ('1', '32'),
       ('1', '34'),
       ('1', '40'),
       ('1', '43'),
       ('1', '45');
      
 -- 'Hard rock (2)'       

INSERT INTO track_collection (collection_id, track_id)
 VALUES('2', '35'),
       ('2', '37'),
       ('2', '88'),
       ('2', '91'),
       ('2', '93'),
       ('2', '95'),
       ('2', '107'),
       ('2', '109'),
       ('2', '112'),
       ('2', '115');
      
-- 'Progressive'
      
INSERT INTO track_collection (collection_id, track_id)
 VALUES('3', '10'),
       ('3', '13'),
       ('3', '15'),
       ('3', '18'),
       ('3', '74'),
       ('3', '76'),
       ('3', '78'),
       ('3', '80');

-- 'Power'      
      
INSERT INTO track_collection (collection_id, track_id)
 VALUES('4', '2'),
       ('4', '4'),
       ('4', '6'),
       ('4', '8'),
       ('4', '96'),
       ('4', '99'),
       ('4', '100'),
       ('4', '103'),
       ('4', '106');
 