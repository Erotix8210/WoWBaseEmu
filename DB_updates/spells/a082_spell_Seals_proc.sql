-- paladin Seals - don't proc on absorb
UPDATE spell_proc_event SET procEx = procEx | 0x0080000 WHERE entry IN (20164, 20165, 20166);
