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