-- Fix for quests 12185 (Alliance) and 12203 (Horde) (by Bastek)

UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 27212;
UPDATE gameobject_template SET data2 = 60046 WHERE entry = 188596;

DELETE FROM event_scripts WHERE id = 60046;
INSERT INTO event_scripts VALUES
(60046, 0, 10, 27212, 120000, 0, 0, 0, 0, 0, 0, 0, 3404.324219, -5394.511230, 270.199677, 1.148978, 'Image of Loken - Spawn'),
(60046, 22, 8, 27212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Loken Podest - Quest Credit');

DELETE FROM creature_ai_scripts WHERE creature_id = 27212;
INSERT INTO creature_ai_scripts VALUES
(2721201, 27212, 1, 0, 100, 0, 1000, 1000, 0, 0, 1, -2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Image of Loken - Text'),
(2721202, 27212, 1, 0, 100, 0, 6000, 6000, 0, 0, 1, -2001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Image of Loken - Text'),
(2721203, 27212, 1, 0, 100, 0, 11000, 11000, 0, 0, 1, -2002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Image of Loken - Text'),
(2721204, 27212, 1, 0, 100, 0, 16000, 16000, 0, 0, 1, -2003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Image of Loken - Text'),
(2721205, 27212, 1, 0, 100, 0, 21000, 21000, 0, 0, 1, -2004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Image of Loken - Text');

DELETE FROM creature_ai_texts WHERE entry IN (-2000, -2001, -2002, -2003, -2004);
INSERT INTO creature_ai_texts VALUES
(-2000, 'You''re late, overseer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(-2001, 'Destiny will not wait. Your craftsmen must increase their production of the war golems before the stone giant leader and his army reach Ulduar.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(-2002, 'Tell your rune-smiths to continue converting what stone giants you can. Those that will not submit must be destroyed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(-2003, 'If the stone giants interfere with our work at Ulduar, I will hold you and your thane responsible. Mortal must not be allowed to come to the aid of the giants.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(-2004, 'Return to your duties, overseer. Be certain to impress upon your workers the urgency of their tasks.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);