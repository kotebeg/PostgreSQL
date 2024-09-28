-- INNER JOIN
select url, username
from photos
join users on users.id = photos.user_id

-- LEFT JOIN
select url, username
from photos
left join users on users.id = photos.user_id


-- LEFT JOIN
select url as from_photos, username as from_users
from photos
left join users on users.id = photos.user_id

--  change order
select username,users.id as user_id_users,  url, photos.user_id as user_id_in_photos
from users
left join photos on photos.user_id = users.id 


-- right joins
select url, username
from photos
right join users on users.id = photos.user_id


-- full joun 
select url, username
from photos
full join users on users.id = photos.user_id






-- 57. Where with Join
-- users can comment on photos that they posted. list the url/photos and contents for very photos/comments where this occured 
--  so user comment own photoes
select photos.id, photos.url,  comments.id, comments.contents 

from comments join photos on photos.id = comments.photo_id

where comments.user_id = photos.user_id


-- 58. Three Way Joins
--  add also user names, join three tables, 
select photos.id, photos.url,  comments.id, comments.contents , users.id, users.username 

from comments
join photos on photos.id = comments.photo_id
join users on users.id = comments.photo_id and users.id = photos.user_id;


-- practice ------------###################################################

-- 1. Inner Join:
-- List all photos along with the username of the user who posted each photo.

SELECT photos.url, users.username
FROM photos INNER JOIN users ON photos.user_id = users.id;


-- 2. Left Join:
-- List all users and their photos, including users who haven't posted any photos.
select  users.username, photos.url
from users left join  photos on users.id = photos.user_id; 

-- 3. Right Join:
-- List all photos and their associated users, including photos that have no associated user (e.g., NULL user_id).

SELECT photos.url, users.username from users right join  photos on users.id = photos.user_id;


-- 4. Full Join:
-- List all users and photos, including users without photos and photos without associated users.

SELECT users.username, photos.url  from users full join  photos on users.id = photos.user_id;


--  5. Inner Join with Multiple Tables:
-- List all comments with the photo URL and the username of the user who posted the comment..

select comments.contents, photos.url, users.username
from comments
join photos on photos.id = comments.photo_id
join users on photos.user_id = users.id

-- 6. Left Join with WHERE:
-- List all users who have posted a comment, along with the comment contents.