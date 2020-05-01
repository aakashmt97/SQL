-- "CREATE TABLE'S" code can be executed only once.

/*   CREATE TABLE players
     (   player_id SERIAL PRIMARY KEY,
		 age SMALLINT NOT NULL 
     );
*/
SELECT * FROM players;

/*	CREATE TABLE account
	(   user_id SERIAL PRIMARY KEY,
		username VARCHAR(30) UNIQUE NOT NULL,
		password VARCHAR(20) UNIQUE NOT NULL,
		email VARCHAR(30) UNIQUE NOT NULL,
		created_on TIMESTAMP NOT NULL,
		last_login TIMESTAMP
	);
*/
SELECT * FROM account;

/*  CREATE TABLE job
	(	job_id SERIAL PRIMARY KEY,
		job_name VARCHAR(150) UNIQUE NOT NULL
	);
*/
SELECT * FROM job;

/*  CREATE TABLE account_job
	(   user_id INTEGER REFERENCES account(user_id),
		job_id INTEGER REFERENCES job(job_id),
		hire_date TIMESTAMP 
	);
*/
SELECT * FROM account_job;

