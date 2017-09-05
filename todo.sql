createdb tododb

CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  title VARCHAR(250) NOT NULL,
  details TEXT,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at DATETIME() NOT NULL,
  completed_at DATETIME() NULL
);

INSERT INTO tododb
VALUES ('walk the dog', 'walk around the block', '1', '2017-09-05 11:30:22', '2017-09-05 11:35:25', ''
),
('shower', 'because you stink', '1', '2017-09-05 11:31:21', ''),
('do work', 'self explanatory', '1', '2017-09-05 11:38:21', ''),
('give the dog belly scratches', 'because why not',
'2', '2017-09-05 11:42:15', ''),
('sleep', '', '1', '2017-09-05 11:55:15');


SELECT * FROM tododb WHERE * = NULL;

SELECT * FROM tododb WHERE priority > 1;

UPDATE tododb
SET completed_at = '2017-09-05 12:32:55'
WHERE id = '2';

DELETE FROM tododb
WHERE completed_at NOT NULL;
