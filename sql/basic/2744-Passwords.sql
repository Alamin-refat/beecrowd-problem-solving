# 2744-Passwords

/*You were hired to be the consultant for a company. Analyzing the database, you noticed that the passwords are stored as text files and, as everyone knows, this is a terrible security practice as they are not encrypted.
Therefore you must convert every password to the MD5 format. Show the client id, the password before conversion and the new MD5.*/

SELECT
    id,
    password,
    MD5(password) AS MD5
FROM account
ORDER BY id;

