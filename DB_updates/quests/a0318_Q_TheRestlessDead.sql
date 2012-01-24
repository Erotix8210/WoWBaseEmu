-- Quest The Restless Dead
DELETE FROM item_required_target WHERE entry = 43153;
INSERT INTO item_required_target (entry, TYPE, targetEntry) VALUES
('43153', '2', '30202'),
('43153', '2', '31043');

DELETE FROM spell_script_target WHERE entry = 57806;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
('57806', '2', '30202'),
('57806', '2', '31043');

UPDATE creature_template SET ScriptName = 'spell_dummy_npc' WHERE entry IN (30202, 31043);
