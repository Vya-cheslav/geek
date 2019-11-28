# Очень странный запрос
# Видимо хотели посчитать общее количество лайков для 10 самых старых пользователей 
SELECT SUM(count) as overall FROM (
#Так как в верху агрегат , то снизу нет никакого смысла в конкатенации и вычисления возраста - 
#это только застастаыляет сервер избыточно вычислять 
SELECT
CONCAT(u.firstname, ' ', u.lastname) as user,
count(l.id) as count,
TIMESTAMPDIFF(YEAR, p.birthday, NOW()) AS age
#Пользователь должен быть вычеслин предварительно и передан через IN списком
FROM users AS u
INNER JOIN profiles AS p
ON p.user_id = u.id
LEFT JOIN media as m
ON m.user_id = u.id
LEFT JOIN messages as t
ON t.from_user_id = u.id
LEFT JOIN
likes AS l
ON l.post_id = u.id AND l.like_type_id = 2
OR l.post_id = m.id AND l.like_type_id = 1
OR l.post_id = t.id AND l.like_type_id = 3
GROUP BY u.id
ORDER BY p.birthday DESC
LIMIT 10) AS likes;




CREATE INDEX posts_IDX USING BTREE ON vk.posts (id, user_id,created_at);
CREATE INDEX likes_IDX USING BTREE ON vk.likes (id, user_id,like_type_id,post_id);
CREATE INDEX likes_types_IDX USING BTREE ON vk.likes_types (id);
CREATE INDEX agg_IDX USING BTREE ON vk.agg (likes_post_id);
CREATE INDEX communities_IDX USING BTREE ON vk.communities (id);
CREATE INDEX communities_users_IDX USING BTREE ON vk.communities_users (community_id,user_id);
CREATE INDEX friendship_IDX USING BTREE ON vk.friendship (user_id,friend_id,status);
CREATE INDEX media_IDX USING BTREE ON vk.media (id,media_type_id,user_id,filename);
CREATE INDEX media_types_IDX USING BTREE ON vk.media_types (id);
CREATE INDEX messages_IDX USING BTREE ON vk.messages (id,from_user_id,to_user_id,created_at);
CREATE INDEX profiles_IDX USING BTREE ON vk.profiles (user_id,sex,birthday,birthday_year,birthday_month,birthday_day);
CREATE INDEX users_IDX USING BTREE ON vk.users (id,firstname,lastname,email,phone);










