-- Fix for quest Weakness to Lightning (by Bastek)
DELETE FROM creature_ai_scripts WHERE id IN (2575202, 2575203, 2575204, 2575302, 2575303, 2575304, 2575803, 2575804, 2575805);

INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action2_type, action2_param1, action2_param2, comment) VALUES
(2575202, 25752, 11, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 28, 0, 46432,"Scavenge-bot 004-A8: phase 1"),
(2575203, 25752, 23, 0, 100, 0, 46432, 1, 0, 0, 22, 1, 0, 0, 0, 0, "Scavenge-bot 004-A8: phase 2"),
(2575204, 25752, 6, 1, 100, 0, 0, 0, 0, 0, 33, 26082, 6, 0, 0, 0, "Scavenge-bot 004-A8: quest credit"),
(2575302, 25753, 11, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 28, 0, 46432, "Sentry-Bot 57-K: phase 1"),
(2575303, 25753, 23, 0, 100, 0, 46432, 1, 0, 0, 22, 1, 0, 0, 0, 0, "Sentry-Bot 57-K: phase 2"),
(2575304, 25753, 6, 1, 100, 0, 0, 0, 0, 0, 33, 26082, 6, 0, 0, 0, "Sentry-Bot 57-K; quest credit"),
(2575803, 25758, 11, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 28, 0, 46432, "Defendo-tank 66D: Phase 1"),
(2575804, 25758, 23, 0, 100, 0, 46432, 1, 0, 0, 22, 1, 0, 0, 0, 0, "Defendo-tank 66D: phase 2"),
(2575805, 25758, 6, 1, 100, 0, 0, 0, 0, 0, 33, 26082, 6, 0, 0, 0, "Defendo-tank 66D: quest credit");
