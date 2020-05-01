-- If same "INSERT" code is executed more than once, then values will be added in the column twice, thrice or more.

/*
INSERT INTO account(username, password, email, created_on)
VALUES ('Jose', 'lol', 'jose@mail.com', CURRENT_TIMESTAMP),
       ('Ram', 'www', 'ram@mail.com', CURRENT_TIMESTAMP)
*/

SELECT * FROM account;


/*
INSERT INTO job(job_name)
VALUES ('Software Engineer')

INSERT INTO job(job_name)
VALUES ('SQL Developer')
*/
SELECT * FROM job;


/*
INSERT INTO account_job(user_id, job_id, hire_date)
VALUES (1, 1, CURRENT_TIMESTAMP)

INSERT INTO account_job(user_id, job_id)
SELECT user_id, job_id FROM account, job
WHERE user_id = job_id
*/
SELECT * FROM account_job;
