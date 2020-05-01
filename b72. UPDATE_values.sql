UPDATE account
SET last_login = CURRENT_TIMESTAMP
WHERE last_login IS NULL;

SELECT * FROM account;


UPDATE account_job
SET hire_date = CURRENT_TIMESTAMP;

SELECT * FROM account_job;


UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;

SELECT * FROM account_job;


UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login
