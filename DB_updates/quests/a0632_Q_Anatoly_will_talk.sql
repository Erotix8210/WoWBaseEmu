-- suppor for Anatoly Will Talk - quest 12330

-- set EAI for Tatjana

DELETE FROM creature_ai_scripts WHERE id = 2762702;
INSERT INTO creature_ai_scripts (id,creature_id,event_type,event_inverse_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action1_type,action1_param1,action1_param2,action1_param3,action2_type,action2_param1,action2_param2,action2_param3,action3_type,action3_param1,action3_param2,action3_param3,comment) VALUES
(2762702,27627,8,0,100,0,49134,-1,0,0,15,12330,6,0,32,27632,0,27632,41,0,0,0,'quest credit & summon Unconscious Tatjana & despawn');

UPDATE creature_template SET  AIName='EventAI' WHERE entry = 27627;

-- set correct spell target, mounts, faction, lvl, hp

DELETE FROM spell_script_target WHERE entry = 49134;
INSERT INTO spell_script_target (entry, type, targetEntry)
VALUES (49134, 1, 27627);

DELETE FROM creature_template_addon WHERE entry IN (27627,27632);
INSERT INTO creature_template_addon(entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags) VALUES
(27627,25030,0,0,0,0,0),
(27632,25030,0,0,0,0,0);

UPDATE creature_template SET faction_A = 35, faction_H = 35 WHERE entry = 27626;
UPDATE creature_template SET  minlevel = 74, maxlevel = 74, minhealth = 10282, maxhealth = 10282  WHERE entry = 27632;

-- Unconscious Tatjana summon

DELETE FROM creature_ai_summons WHERE id = 27632;
INSERT INTO creature_ai_summons VALUES
(27632,4055.600, -4143.870, 211.4179, 2.1885, 60000,'Unconscious Tatjana - summon');
