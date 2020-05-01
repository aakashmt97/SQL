/*
DELETE FROM account_job
WHERE user_id IN (1, 2);
*/

/*
INSERT INTO account(username, password, email, created_on)
VALUES  ('Tata', 'JRD', 'tata@mail.com', CURRENT_TIMESTAMP),
		('Adani', 'diamond', 'adani@mail.com', CURRENT_TIMESTAMP),
		('Ambani', 'reliance', 'ambani@mail.com', CURRENT_TIMESTAMP);
*/
SELECT * FROM account;

/*
DELETE FROM account
WHERE user_id IN (2, 5)
RETURNING  user_id, username;
*/
