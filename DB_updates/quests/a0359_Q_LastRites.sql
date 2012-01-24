-- #### Quest: Last Rites ####
update creature_template set faction_A=974, faction_H=974, unit_flags=768, type_flags=268435564 where entry=26203;
update creature_template set faction_A=974, faction_H=974, unit_flags=768, type_flags=268435564 where entry=28189;
update creature_template set minhealth=61000, maxhealth=61000 where entry=28189;
update creature_template set minmana=120000, maxmana=120000 where entry=28189;
update creature_template set AIName='', Scriptname='npc_thassarian', gossip_menu_id=0 where entry=26170;
update creature_template set AIName='', Scriptname='npc_valanar' where entry=28189;
update creature_template set faction_A=1892, faction_H=1892 where entry=25251;
update creature_template set AIName='' where entry=25250;

-- Clean up world
DELETE FROM creature WHERE id IN (25250,25251);