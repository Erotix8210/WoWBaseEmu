-- support for Where the Wild Thing Roams - quest 12111 by Tank

-- kill credit on spell hit - Snowfall Elk

DELETE from creature_ai_scripts where id=2661502;
INSERT INTO `creature_ai_scripts` VALUES
(2661502, 26615, 8, 0, 100, 0, 47628, -1, 0, 0, 11, 47675, 0, 7, 33, 26895, 6, 0, 0, 0, 0, 0, 'Snowfall Elk - Cast Recently Inoculated on Wildlife Inoculation Spellhit');

DELETE FROM `creature_ai_scripts` WHERE id = 2648201;
INSERT INTO creature_ai_scripts VALUES (2648201,26482,8,0,100,0,47628,-1,0,0,11,47675,0,7,33,26882,6,0,0,0,0,0,'Arctic Grizzly - Cast Recently Inoculated & Kill Credit on Wildlife Inoculation Spellhit');

UPDATE creature_template SET AIName='EventAI' WHERE entry = 26482;
