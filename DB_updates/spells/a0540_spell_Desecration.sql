-- Desecration: proc from Scourge Strike
UPDATE spell_proc_event SET SpellFamilyMaskB0 = SpellFamilyMaskB0 | 134217728 WHERE entry = 55666;
