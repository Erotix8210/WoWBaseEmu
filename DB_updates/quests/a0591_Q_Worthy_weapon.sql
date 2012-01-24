-- Fix for A Worthy Weapon [AT] (by Bastek)
-- Add Drak'Mar Offering Ring
DELETE FROM gameobject WHERE id = 300009;
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(300009, 571, 1, 1, 4602.82, -1598.86, 154.672, 1.37438, 0, 0, 0.634367, 0.773032, -120, 255, 1);
UPDATE creature_template SET InhabitType = 5 WHERE entry = 33273;
UPDATE gameobject SET spawntimesecs = -120 WHERE id IN (194238, 194239);
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 33273;
-- Add texts and scripts
DELETE FROM creature_ai_texts WHERE entry IN (-332731, -332732, -332733, -332734);
INSERT INTO creature_ai_texts (entry, content_default, comment) VALUES
(-332731, 'Are those winter hyacinths? For me?', 'Maiden of Drak\'Mar - say 1'),
(-332732, 'It\'s been so long since a traveler has come here bearing flowers.', 'Maiden of Drak\'Mar - say 2'),
(-332733, 'The lake has been too lonely these past years. The travelers stopped coming and evil came to these waters.', 'Maiden of Drak\'Mar - say 2'),
(-332734, 'Your gift is a rare kindness, traveler. Please take this blade with my gratitude. Long ago, another traveler left it here, but I have little use for it.', 'Maiden of Drak\'Mar - say 4');
DELETE FROM creature_ai_scripts WHERE id IN (3327301, 3327302, 3327303, 3327304, 3327305);
INSERT INTO creature_ai_scripts VALUES
(3327301, 33273, 11, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, ''),
(3327302, 33273, 1, 1, 100, 0, 0, 4000, 0, 0, 1, -332731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Maiden of Drak\'Mar - say 1'),
(3327303, 33273, 1, 1, 100, 0, 4000, 9000, 0, 0, 1, -332732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Maiden of Drak\'Mar - say2'),
(3327304, 33273, 1, 1, 100, 0, 9000, 14000, 0, 0, 1, -332733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Maiden of Drak\'Mar - say3'),
(3327305, 33273, 1, 1, 100, 0, 14000, 20000, 0, 0, 1, -332734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Maiden of Drak\'Mar - say4');
SET @guid1 = (SELECT guid FROM gameobject WHERE id = 194238);
SET @guid2 = (SELECT guid FROM gameobject WHERE id = 194239);
DELETE FROM event_scripts WHERE id = 20990;
INSERT INTO event_scripts VALUES
(20990, 0, 9, @guid1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn Blade of Drak\'Mar'),
(20990, 0, 9, @guid2, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn Drak\'mar Lily Pad'),
(20990, 0, 10, 33273, 20000, 0, 0, 0, 0, 0, 0, 0, 4603.330, -1600.077, 156.663, 0.605220, 'Summon Maiden of Drak\'Mar');
