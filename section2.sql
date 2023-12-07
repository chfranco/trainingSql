-- CREATE TABLE users (
-- 	name VARCHAR(10) UNIQUE
-- );

SELECT
	name, 
	SUBSTRING("name", 0 , 5 ),
	POSITION(' ' in name),
	SUBSTRING("name", 0 , POSITION(' ' in name) ) as first_name,
	SUBSTRING("name", POSITION(' ' in name ) + 1 ) as Secound_name,
	TRIM( SUBSTRING("name", POSITION(' ' in name ) )) as trimmed_last_name
from users;


UPDATE
	users
SET
	first_name = SUBSTRING("name", 0 , POSITION(' ' in name) ),
	last_name = SUBSTRING("name", POSITION(' ' in name ) + 1 );
	
SELECT * from users;
