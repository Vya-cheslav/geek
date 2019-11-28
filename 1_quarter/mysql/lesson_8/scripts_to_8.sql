--Использованные Скрипты


ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;

-- Для таблицы сообщений
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);
    
ALTER TABLE likes
  ADD CONSTRAINT likes_likes_type_id_fk 
    FOREIGN KEY (likes_type_id) REFERENCES likes_types(id),
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);
    
ALTER TABLE ranking
  ADD CONSTRAINT ranking_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);
    
ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
      
ALTER TABLE newsline
  ADD CONSTRAINT newsline_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
    
ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE CASCADE;
    
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE;
      
ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT communities_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE;




Select user_id, count(user_id)
from (
select from_user_id as user_id from messages
union ALL
select to_user_id from messages
union ALL
select user_id from likes
union ALL
select user_id from posts
union ALL
select user_id from media
) as a
group by a.user_id
order by count(user_id) ASC
limit 10;


use vk;

/*10 самых молодых из зарегистрированных пользователей*/ 
Select u.user_id , count(*)
from vk.likes as l inner join 
	vk.posts as p on l.post_id=p.id inner join
	(select user_id
	from vk.profiles
	order by timestampdiff(YEAR,birthday, NOW()) asc limit 10) as u on p.user_id=u.user_id
group by u.user_id;
	
	
/*10 самых молодых из публикующих посты*/ 
Select sum(_count) 
from (
	Select u.user_id, Count(*) _count 
	from vk.likes as l inner join 
		vk.posts as p on l.post_id=p.id inner join
		vk.profiles as u on p.user_id=u.user_id
	group by u.user_id
	order by timestampdiff(YEAR,birthday, NOW()) asc
	limit 10) as a;