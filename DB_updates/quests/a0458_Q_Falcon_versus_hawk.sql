UPDATE creature_template SET
AIName='EventAI'
WHERE entry=24747;

DELETE from creature_ai_scripts where creature_id=24747;
INSERT INTO creature_ai_scripts VALUES
(2474701,24747,8,0,100,0,44407,-1,0,0,41,0,0,0,0,0,0,0,0,0,0,0,'Fjord Hawk - despawn after spellhit');


DELETE from item_required_target WHERE entry=34121;
INSERT into item_required_target VALUES
(34121,1,24747);


DELETE from spell_scripts where id=44407;
INSERT into spell_scripts (id,delay,command,datalong,datalong2,comments) VALUES
(44407,1,15,44408,1,'');