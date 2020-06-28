-- Below are a few ways to populate your mysql database, or move content from 
-- one location to another, which may be needed if you have multiple environments.
-- Here is a walkthrough of this process: https://drive.google.com/file/d/18XO3RjJq_bCuStcwmP2QGmRdj3OFiUJv/view

-- LOCALLY
-- -----------

-- To your local db, you can populate two ways:

-- 1) through the UI at http://localhost:3001

-- 2) through Insomnia through POST, PUT and DELETE API endpoints


-- REMOTELY
-- ----------

-- This app creates the tables through Sequelize onto the Heroku JawsDB add-on, however, the tables are empty. How to seed these tables?


-- 1) Locally first: Add posts to the application. Login with various users and make posts, comments, etc, ie updating the local mysql db.

-- 2) Then run a backup of your local db, with mysqldump 

--         mysqldump -u root -p techly_db > techly_db.sql

--     in terminal bash on your local mysql DB, then you can look within the sql script for just the INSERT statements

-- 3) Store those insert statements from that mysqldump in a notepad, then 

-- 4) Open Heroku > jawsdb to gain the db connection info, ie, hostname\username\password\database name, 

-- 5) Then download mysql workbench, and create a connection to the jawsDB with those credentials, 

-- 6) Then open the connection in the workbench to view the heroku db remotely.  In the SQL editor window type in the database ID string as seen in Jawdb (some big number - not the db name - like USE p38u2538u4345; to login for example.) 

-- Then you can INSERT and SELECT on the db tables remotely per your original script you created in step 1 & 2.

-- 7) Again if this step is too cumbersome (really it's meant for seeding larger db's) you can also setup the inserts or posts from Insomnia, if you only have a few users or posts as well.
