DELETE FROM creature_ai_scripts WHERE creature_id = 33211;
INSERT INTO creature_ai_scripts VALUES 
(3321101,33211, 22, 0, 30, 1, 58, 1, 62574, 0, 11, 62550, 0, 0, 1, -332111, 0, 0, 11, 62554, 6, 6, 'On Kiss with Balsam - Transform and give sword'),
(3321102, 33211, 22, 0, 70, 1, 58, 1, 62574, 0, 11, 62537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'On Kiss with Balsam - Love'),
(3321103, 33211, 22, 0, 100, 1, 58, 0, 0, 0, 11, 62581, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'On Kiss without Balsam - Warts!');

DELETE FROM creature_ai_texts WHERE entry = -332111;
INSERT INTO creature_ai_texts VALUES (-332111, 'Can not be! Am I finally being free?', null, null, null, null, null, null, null,'', 0, 0, 0, 0, 33211);

UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 33211;
