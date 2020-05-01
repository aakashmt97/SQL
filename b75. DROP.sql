/*
ALTER TABLE new_info
DROP COLUMN people
*/

/*
-- Now executing the same code again
ALTER TABLE new_info
DROP COLUMN people

Result:- ERROR:  column "people" of relation "new_info" does not exist
		 SQL state: 42703
		
-- It gives ERROR, because the column "people" is already deleted
*/

/*
ALTER TABLE new_info
DROP COLUMN IF EXISTS people

Result:- NOTICE:  column "people" of relation "new_info" 
		 does not exist, skipping ALTER TABLE
*/

