ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName to musicianName;
ALTER TABLE musician add column role varchar(50) , add column bandName varchar(50);
update musician set role = 'vocals', bandName = 'Crazy Duo' where musicianName = 'Alina';
update musician set role = 'guitar', bandName = 'Mysterio' where musicianName = 'Mysterio';
update musician set role = 'percussion', bandName = 'Crazy Duo' where musicianName = 'Rainbow';
update musician set role = 'piano', bandName = 'Luna' where musicianName = 'Luna';
CREATE TABLE band (bandName VARCHAR(50), creation year, genre varchar(50), PRIMARY KEY (bandName));
INSERT INTO band (bandName, creation, genre) VALUES ('Crazy Duo',2015,'rock');
INSERT INTO band (bandName, creation, genre) VALUES ('Luna',2009,'classical');
INSERT INTO band (bandName, creation, genre) VALUES ('Mysterio',2019,'pop');
ALTER TABLE musician ADD CONSTRAINT fk_band_bandName FOREIGN KEY (bandName) REFERENCES band(bandName) ON DELETE SET NULL;


