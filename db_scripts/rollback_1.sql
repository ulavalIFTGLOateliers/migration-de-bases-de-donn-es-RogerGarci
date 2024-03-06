ALTER TABLE musician DROP FOREIGN KEY fk_band_bandName;
DROP TABLE band;
ALTER TABLE musician DROP COLUMN role, DROP COLUMN bandName;
ALTER TABLE musician RENAME COLUMN musicianName to singerName ;
ALTER TABLE musician RENAME TO singer;