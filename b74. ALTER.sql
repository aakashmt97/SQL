/*
CREATE TABLE information
(	info_id SERIAL PRIMARY KEY,
	title VARCHAR(150) NOT NULL,
 	person VARCHAR(100) NOT NULL
)
*/

-- SELECT * FROM information;

/*
-- Renaming Table
ALTER TABLE information
RENAME TO new_info
*/

-- SELECT * FROM new_info

/*
-- Renaming Column
ALTER TABLE new_info
RENAME COLUMN person TO people
*/

-- SELECT * FROM new_info

/*
INSERT INTO new_info(title)
VALUES	('some new title')

Result: ERROR:  null value in column "people" violates not-null constraint
		DETAIL:  Failing row contains (1, some new title, null).
		SQL state: 23502
*/

/*
-- As "CONSTRAINT" of column "people" is "NOT NULL", Hence it is 
-- giving ERROR, So we need to change "CONSTRAINT" of column "people"
ALTER TABLE new_info
ALTER COLUMN people
DROP NOT NULL
*/

/*
-- Now again
INSERT INTO new_info(title)
VALUES	('some new title')
*/

SELECT * FROM new_info;
