USE music_rec;

# 1. Suppose you currently work at a music streaming platform like Spotify, Apple Music or Tidal
# You have a large and active user base which have the ability to follow other users and like songs they've enjoyed.
# We want to design e recommendation engine which recommends songs that a user has not yet listened to,
# but the users this user is following have listened to and liked.alter
# Solution with BUGS

WITH all_users AS (
	SELECT user1_id AS user_id, user2_id AS friend_id FROM followers
    UNION
    SELECT user2_id AS user_id, user1_id AS friend_id FROM followers),
follower_likes AS (
	SELECT au.user_id, I.song_id, count(I.user_id) AS like_count
    FROM all_users AS au
    LEFT JOIN likes I ON au.friend_id = I.user_id
    GROUP BY au.user_id, I.song_id
    );
    
    SELECT fl.user_id, fl.song_id, fl.like_count, s.name, s.artist
    FROM followers_likes AS fl
    LEFT JOIN likes AS I ON fl.user_id = l.user_id AND fl.song_id = l.song_id
    INNER JOIN songs AS s ON s.song_id = fl.song_id
    WHERE l.song_id IS NULL
    ORDER BY fl.user_id, fl.like_count DESC;