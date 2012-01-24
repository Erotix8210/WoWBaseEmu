-- Fix for quest The Aspirant's Challenge [AT] (by Bastek)
UPDATE quest_template SET ReqCreatureOrGOId1 = 33448 WHERE entry = 13679;

UPDATE creature_template SET gossip_menu_id = 10340 WHERE entry = 33447;

UPDATE creature_template SET mindmg = 3500, maxdmg = 4500, AIName = 'EventAI' WHERE entry = 33448;

DELETE FROM gossip_menu_option WHERE menu_id = 10340;
INSERT INTO gossip_menu_option VALUES
(10340, 0, 0, 'I am ready to fight!', 1, 1, -1, 0, 50102, 0, 0, NULL, 9, 13679, 0, 0, 0, 0, 0, 0, 0);

UPDATE quest_template SET ReqCreatureOrGOId1 = 33448 WHERE entry = 13680;

DELETE FROM gossip_menu_option WHERE menu_id = 10340 AND id = 1;
INSERT INTO gossip_menu_option VALUES
(10340, 1, 0, 'I am ready to fight!', 1, 1, -1, 0, 50102, 0, 0, NULL, 9, 13680, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM gossip_scripts WHERE id = 50102;
INSERT INTO gossip_scripts VALUES
(50102, 1, 10, 33448, 120000, 0, 0, 0, 0, 0, 0, 0, 8596.984, 975.233, 547.554, 5.014466, 'Summon Argent Valiant');

DELETE FROM creature_template_addon WHERE entry = 33448;
INSERT INTO creature_template_addon (entry, mount) VALUES
(33448, 28918);

DELETE FROM creature_ai_scripts WHERE id = 3344801;
INSERT INTO creature_ai_scripts VALUES
(3344801, 33448, 4, 0, 100, 0, 0, 1, 1, 5, 11, 63010, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Argent Valiant - Cast Charge on Aggro');
