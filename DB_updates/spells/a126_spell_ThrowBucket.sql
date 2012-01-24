-- Headless Horseman fire bunny
UPDATE creature_template SET unit_flags = 0, AIName = 'EventAI' WHERE entry = 23686;

INSERT INTO creature_ai_scripts (id,creature_id,event_type,event_chance,action1_type,action1_param1) VALUES
-- visual fire aura on initial spawn
(2368601,23686,11,100,11,42075),
-- evade immediately after receiving bucket hit
(2368602,23686,4,100,24,0);
