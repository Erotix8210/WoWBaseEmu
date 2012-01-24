UPDATE `creature_template` SET `gossip_menu_id`='12541',`npcflag`=npcflag |1 WHERE (`entry`='22019');

DELETE FROM `gossip_menu` WHERE `entry` IN (12541, 12542, 12543, 12544, 12545, 12546);

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
('12541', '10539'),
('12542', '10541'),
('12543', '10542'),
('12544', '10543'),
('12545', '10544'),
('12546', '10545');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (12541, 12542, 12543, 12544, 12545, 12546);

INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`) VALUES
('12541', 'I\'m fine, thank you. You asked for me?', '1', '1', '12542'),
('12542', 'Oh, it\'s not my fault. I can assure you.', '1', '1', '12543'),
('12543', 'Um, no...no, I don\'t want that at all.', '1', '1', '12544'),
('12544', 'Impressive. When do we attack?', '1', '1', '12545');

INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_script_id`) VALUES ('12545', 'Absolutely!', '1', '1', '12546', '10722');
INSERT INTO `gossip_menu_option` (`menu_id`) VALUES ('12546');

DELETE FROM `gossip_scripts` WHERE `id` = 10722;

INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `datalong2`, `comments`) VALUES ('10722', '7', '10722', '50', 'Quest Complete - Gossip complete');
