UPDATE creature_template SET
AIName='EventAI'
WHERE entry=24746;

DELETE from creature_ai_scripts where creature_id=24746;
INSERT INTO creature_ai_scripts VALUES
(2474601,24746,8,0,100,0,44323,-1,0,0,41,0,0,0,0,0,0,0,0,0,0,0,'Fjord Turkey - despawn after spellhit');


DELETE from item_required_target WHERE entry=34111;
INSERT into item_required_target VALUES
(34111,1,24746);


DELETE from spell_scripts where id=44323;
INSERT into spell_scripts (id,delay,command,datalong,datalong2,comments) VALUES
(44323,1,15,44327,1,'');