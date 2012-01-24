
DELETE from event_scripts where id=17612;
INSERT into event_scripts VALUES
(17612, 2, 10, 26648, 55000, 0, 0, 0x01, 0, 0, 0, 0, 2411.74,1705.44,34.2161,0.324176, ''),
(17612, 16, 15, 47098, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');



UPDATE creature_template SET
minlevel=83,
maxlevel=83,
minhealth=1394500,
maxhealth=1394500,
minmana=851600,
maxmana=851600,
AIName='EventAI'
WHERE entry=26648;

-- event ai
DELETE FROM creature_ai_texts WHERE entry IN(-266480,-266481,-266482,-266483,-266484,-266485,-266486);
INSERT INTO creature_ai_texts (entry,content_default,type,comment) VALUES
(-266480,'Little, why do you call me forth? Are you working with the trolls of this land? Have you come to kill me and take my power as your own?',1,''),
(-266481,'I sense uncertainty in you, and I do not trust it whether you are with them, or not. If you wish my augury for the Kalu\'ak, you will have to prove yourself first.',1,''),
(-266482,'I will lay a mild compulsion upon you. Jump into the depths before me so that you put yourself into my element and thereby display your submission.',1,''),
(-266483,'Well done. Your display of respect is duly noted. Now, I have information for you that you must convey to the Kalu\'ak.',1,''),
(-266484,'Simply put, you must tell the tuskarr that they cannot run. If they do so, their spirits will be destroyed by the evil rising within Northrend.',1,''),
(-266485,'Tell the mystic that his people are to stand and fight alongside the Horde and Alliance against the forces of Malygos and the Lich King.',1,''),
(-266486,'Now swim back with the knowledge I have granted you. Do what you can for them.',1,'');


DELETE FROM creature_ai_scripts WHERE creature_id=26648;
INSERT INTO creature_ai_scripts VALUES
(2664800,26648,1,0,100,0,1000,1000,0,0,1,-266480,0,0,0,0,0,0,0,0,0,0,'Oachna-say '),
(2664801,26648,1,0,100,0,6000,6000,0,0,1,-266481,0,0,0,0,0,0,0,0,0,0,'Oachna-say '),
(2664802,26648,1,0,100,0,12000,12000,0,0,1,-266482,0,0,0,0,0,0,0,0,0,0,'Oachna-say '),
(2664803,26648,1,0,100,0,17000,17000,0,0,1,-266483,0,0,0,0,0,0,0,0,0,0,'Oachna-say '),
(2664804,26648,1,0,100,0,22000,22000,0,0,1,-266484,0,0,0,0,0,0,0,0,0,0,'Oachna-say '),
(2664805,26648,1,0,100,0,22000,22000,0,0,1,-266485,0,0,0,0,0,0,0,0,0,0,'Oachna-say '),
(2664806,26648,1,0,100,0,22000,22000,0,0,1,-266486,0,0,0,0,0,0,0,0,0,0,'Oachna-say '),
(2664807,26648,10,0,100,1,1,35,1000,1000,15,12032,6,0,0,0,0,0,0,0,0,0,'Oachna-kill credit ');