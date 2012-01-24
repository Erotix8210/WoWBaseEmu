UPDATE `creature_template` SET `MovementType`='0', `ScriptName`='npc_Vindicator_Sedai' WHERE (`entry`='17404');
UPDATE `creature_template` SET `MovementType`='0' WHERE entry IN(17417, 17418, 17405);

DELETE FROM `event_scripts` WHERE id = 10745;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`, `comments`) VALUES
('10745', '0', '10', '17404', '100000', '222.715', '4120.338', '81.67', '2.35', 'Seer Vision - Summon Sedai'),
('10745', '20', '8', '17413', '0', '0', '0', '0', '0', 'Seer Relic - Kill Credit'),
('10745', '90', '7', '9545', '75', '0', '0', '0', '0', 'Seer Relic - Quest Complete');
