-- INSERT INTO teams (name, city, rating) VALUES
-- ('Byte Bears', 'Брянск', 4.8),
-- ('Cyber Foxes', 'Москва', 4.6),
-- ('Null Pointers', 'Опён', 4.2),
-- ('Pixel Wolves', 'Курск', 4.9),
-- ('Solo Players', 'Рига', 3.9),
-- ('Empty Team', 'Казань', 3.5);

-- INSERT INTO players (nickname, age, rating, coins, team_id) VALUES
-- ('kirill_dev', 15, 4.7, 1200, 1),
-- ('nikita_js', 16, 4.3, 800, 1),
-- ('anya_py', 15, 4.9, 1500, 2),
-- ('dima_sql', 17, 4.1, 650, 2),
-- ('max_bug', 14, 3.8, 300, 3),
-- ('sveta_ai', 16, 4.8, 1700, 4),
-- ('oleg_null', 15, 3.9, 400, NULL),
-- ('liza_web', 17, 4.5, 950, 4),
-- ('roma_git', 16, 4.0, 500, NULL),
-- ('masha_code', 14, 4.6, 1100, 5);

-- INSERT INTO tournaments (title, game_name, prize_pool, status, start_date) VALUES
-- ('Spring SQL Cup', 'SQL Arena', 50000, 'finished', '2026-03-10'),
-- ('Python Quest Junior', 'Python Quest', 30000, 'finished', '2026-04-15'),
-- ('Web Tycoon Battle', 'Web Tycoon', 40000, 'finished', '2026-05-20'),
-- ('Bug Hunter Night', 'Bug Hunter', 25000, 'active', '2026-06-01'),
-- ('Summer SQL Pro', 'SQL Arena', 70000, 'planned', '2026-07-10'),
-- ('Backend Masters', 'Java Backend', 90000, 'planned', '2026-08-20'),
-- ('Empty Tournament', 'Python Quest', 15000, 'planned', '2026-09-01');

-- INSERT INTO tournament_players (tournament_id, player_id, points, final_place) VALUES
-- (1, 1, 950, 1),
-- (1, 2, 820, 2),
-- (1, 3, 780, 3),
-- (1, 4, 710, 4),
-- (1, 5, 650, 5),
-- (2, 6, 880, 1),
-- (2, 7, 750, 2),
-- (2, 8, 720, 3),
-- (2, 9, 690, 4),
-- (3, 1, 920, 1),
-- (3, 3, 860, 2),
-- (3, 4, 810, 3),
-- (3, 10, 790, 4),
-- (4, 1, 400, 1),
-- (4, 2, 350, 2),
-- (4, 5, 300, 3);


---------SELECT
-- SELECT * FROM players;

-- SELECT * FROM tournaments;

-- SELECT * FROM teams;

-- SELECT * FROM tournament_players;

-- SELECT nickname, age, rating FROM players;

-- SELECT title, game_name, prize_pool, status FROM tournaments;


---------WHERE AND OR
-- SELECT * FROM players WHERE age > 15;

-- SELECT * FROM players WHERE age < 16;

-- SELECT * FROM players WHERE rating > 4.5;

-- SELECT * FROM players WHERE coins > 1000;

-- SELECT * FROM players WHERE rating > 4.5 AND coins > 1000;

-- SELECT * FROM players WHERE age = 14 OR rating < 4.0;

-- SELECT * FROM tournaments WHERE status = 'finished';

-- SELECT * FROM tournaments WHERE status = 'planned';

-- SELECT * FROM tournaments WHERE prize_pool > 40000;

-- SELECT * FROM tournaments WHERE status = 'finished' AND prize_pool > 30000;


--------ORDER BY LIMIT
-- SELECT * FROM players ORDER BY rating DESC;

-- SELECT * FROM players ORDER BY coins ASC;

-- SELECT * FROM tournaments ORDER BY prize_pool DESC;

-- SELECT * FROM tournaments ORDER BY start_date ASC;

-- SELECT * FROM players ORDER BY rating DESC LIMIT 3;

-- SELECT * FROM players ORDER BY coins DESC LIMIT 3;

-- SELECT * FROM tournaments ORDER BY prize_pool DESC LIMIT 2;

-- SELECT * FROM tournaments WHERE status = 'planned' ORDER BY start_date ASC LIMIT 1;


--------LIKE
-- SELECT * FROM players WHERE nickname LIKE '%sql%';

-- SELECT * FROM players WHERE nickname LIKE '%dev%';

-- SELECT * FROM players WHERE nickname LIKE '%py%';

-- SELECT * FROM players WHERE nickname LIKE 'm%';

-- SELECT * FROM tournaments WHERE title LIKE '%SQL%';

-- SELECT * FROM tournaments WHERE title LIKE '%Cup%';

-- SELECT * FROM tournaments WHERE game_name LIKE '%Python%';


-------BETWEEN
-- SELECT * FROM players WHERE age BETWEEN 15 AND 16;

-- SELECT * FROM players WHERE rating BETWEEN 4.0 AND 4.7;

-- SELECT * FROM players WHERE coins BETWEEN 500 AND 1200;

-- SELECT * FROM tournaments WHERE prize_pool BETWEEN 30000 AND 70000;

-- SELECT * FROM tournaments WHERE start_date BETWEEN '2026-04-01' AND '2026-07-31';


-------IN
-- SELECT * FROM players WHERE team_id IN (1, 2, 4);

-- SELECT * FROM tournaments WHERE status IN ('finished', 'active');

-- SELECT * FROM tournaments WHERE game_name IN ('SQL Arena', 'Python Quest');

-- SELECT * FROM teams WHERE city IN ('Брянск', 'Москва', 'Курск');


-----DISTINCT
-- SELECT DISTINCT city FROM teams;

-- SELECT DISTINCT status FROM tournaments;

-- SELECT DISTINCT game_name FROM tournaments;

-- SELECT DISTINCT age FROM players;

-- SELECT COUNT(DISTINCT city) FROM teams;

-- SELECT COUNT(DISTINCT game_name) FROM tournaments;


------AS
-- SELECT nickname AS "Никнейм", rating AS "Рейтинг" FROM players;

-- SELECT name AS "Команда", city AS "Город" FROM teams;

-- SELECT title AS "Турнир", prize_pool AS "Призовой фонд" FROM tournaments;

-- SELECT game_name AS "Игра", status AS "Статус" FROM tournaments;

-- SELECT 
--     p.nickname AS "Никнейм игрока",
--     t.name AS "Команда",
--     p.rating AS "Рейтинг"
-- FROM players p
-- LEFT JOIN teams t ON p.team_id = t.id;


------INSERT
-- INSERT INTO teams (name, city, rating) 
-- VALUES ('New Team', 'Санкт-Петербург', 4.0) 
-- RETURNING *;

-- INSERT INTO players (nickname, age, rating, coins, team_id) VALUES
-- ('new_player1', 16, 4.2, 700, 7),
-- ('new_player2', 15, 4.5, 900, 7)
-- RETURNING *;

-- INSERT INTO tournaments (title, game_name, prize_pool, status, start_date) 
-- VALUES ('New Tournament', 'New Game', 20000, 'planned', '2026-10-01')
-- RETURNING *;

-- INSERT INTO tournament_players (tournament_id, player_id, points, final_place) VALUES
-- (8, 11, 500, NULL),
-- (8, 12, 600, NULL)
-- RETURNING *;

-- SELECT * FROM teams WHERE name = 'New Team';
-- SELECT * FROM players WHERE team_id = 7;
-- SELECT * FROM tournaments WHERE title = 'New Tournament';
-- SELECT * FROM tournament_players WHERE tournament_id = 8;

-- INSERT INTO players (nickname, age, rating, coins, team_id) 
-- VALUES ('ghost', 15, 4.0, 100, 999);


--------UPDATE
-- UPDATE players SET coins = coins + 300 WHERE nickname = 'kirill_dev';

-- UPDATE players SET rating = rating + 0.4 WHERE nickname = 'max_bug';

-- UPDATE tournaments SET status = 'finished' WHERE title = 'Bug Hunter Night';

-- UPDATE tournaments SET prize_pool = prize_pool + 10000 WHERE status = 'planned';

-- UPDATE players SET team_id = (SELECT id FROM teams WHERE name = 'Null Pointers') 
-- WHERE nickname = 'oleg_null';

-- UPDATE players SET rating = rating + 0.2 WHERE rating < 4.0;

-- UPDATE teams SET id = 100 WHERE name = 'Byte Bears';


-----DELETE
-- DELETE FROM teams WHERE name = 'Byte Bears';

-- DELETE FROM players 
-- WHERE team_id IS NULL 
--   AND id NOT IN (SELECT player_id FROM tournament_players);

-- DELETE FROM players WHERE nickname = 'kirill_dev';

-- DELETE FROM tournament_players 
-- WHERE player_id = (SELECT id FROM players WHERE nickname = 'oleg_null')
--   AND tournament_id = (SELECT id FROM tournaments WHERE title = 'Bug Hunter Night');

-- DELETE FROM tournaments WHERE title = 'Spring SQL Cup';

-- DELETE FROM tournament_players 
-- WHERE tournament_id = (SELECT id FROM tournaments WHERE title = 'Spring SQL Cup');

-- DELETE FROM tournaments WHERE title = 'Spring SQL Cup';


----TRUNCATE
-- SELECT * FROM tournament_players;

-- TRUNCATE TABLE tournament_players;\

-- SELECT * FROM tournament_players;


------INNER JOIN
-- SELECT p.nickname, t.name 
-- FROM players p
-- INNER JOIN teams t ON p.team_id = t.id;

-- SELECT p.*, t.name 
-- FROM players p
-- INNER JOIN teams t ON p.team_id = t.id;

-- SELECT t.title, p.nickname, tp.points, tp.final_place
-- FROM tournament_players tp
-- INNER JOIN players p ON tp.player_id = p.id
-- INNER JOIN tournaments t ON tp.tournament_id = t.id;

-- SELECT p.nickname, tp.points, tp.final_place
-- FROM tournament_players tp
-- INNER JOIN players p ON tp.player_id = p.id
-- INNER JOIN tournaments t ON tp.tournament_id = t.id
-- WHERE t.title = 'Spring SQL Cup';

-- SELECT DISTINCT p.nickname
-- FROM tournament_players tp
-- INNER JOIN players p ON tp.player_id = p.id
-- INNER JOIN tournaments t ON tp.tournament_id = t.id
-- WHERE t.game_name = 'SQL Arena';

-- SELECT DISTINCT p.nickname
-- FROM tournament_players tp
-- INNER JOIN players p ON tp.player_id = p.id
-- INNER JOIN tournaments t ON tp.tournament_id = t.id
-- WHERE t.prize_pool > 40000;

-- SELECT p.nickname, tm.name, t.title, tp.points
-- FROM tournament_players tp
-- INNER JOIN players p ON tp.player_id = p.id
-- INNER JOIN teams tm ON p.team_id = tm.id
-- INNER JOIN tournaments t ON tp.tournament_id = t.id;

-- SELECT p.nickname, tm.name, t.title, tp.points
-- FROM tournament_players tp
-- INNER JOIN players p ON tp.player_id = p.id
-- INNER JOIN teams tm ON p.team_id = tm.id
-- INNER JOIN tournaments t ON tp.tournament_id = t.id
-- WHERE tp.points > 800;


----LEFT JOIN
-- SELECT t.name, p.nickname
-- FROM teams t
-- LEFT JOIN players p ON t.id = p.team_id;

-- SELECT t.name
-- FROM teams t
-- LEFT JOIN players p ON t.id = p.team_id
-- WHERE p.id IS NULL;

-- SELECT p.nickname, t.name
-- FROM players p
-- LEFT JOIN teams t ON p.team_id = t.id;

-- SELECT p.nickname
-- FROM players p
-- LEFT JOIN teams t ON p.team_id = t.id
-- WHERE t.id IS NULL;

-- SELECT t.title, p.nickname
-- FROM tournaments t
-- LEFT JOIN tournament_players tp ON t.id = tp.tournament_id
-- LEFT JOIN players p ON tp.player_id = p.id;

-- SELECT t.title
-- FROM tournaments t
-- LEFT JOIN tournament_players tp ON t.id = tp.tournament_id
-- WHERE tp.player_id IS NULL;

-- SELECT p.nickname, t.title
-- FROM players p
-- LEFT JOIN tournament_players tp ON p.id = tp.player_id
-- LEFT JOIN tournaments t ON tp.tournament_id = t.id;

-- SELECT p.nickname
-- FROM players p
-- LEFT JOIN tournament_players tp ON p.id = tp.player_id
-- WHERE tp.player_id IS NULL;

-- SELECT t.name, COUNT(p.id) AS players_count
-- FROM teams t
-- LEFT JOIN players p ON t.id = p.team_id
-- GROUP BY t.id, t.name;

-- SELECT t.title, COUNT(tp.player_id) AS participants_count
-- FROM tournaments t
-- LEFT JOIN tournament_players tp ON t.id = tp.tournament_id
-- GROUP BY t.id, t.title;


----RIGHT JOIN
-- SELECT t.name, p.nickname
-- FROM players p
-- RIGHT JOIN teams t ON p.team_id = t.id;

-- SELECT t.title, p.nickname
-- FROM tournament_players tp
-- RIGHT JOIN tournaments t ON tp.tournament_id = t.id
-- LEFT JOIN players p ON tp.player_id = p.id;

-- SELECT t.name, p.nickname
-- FROM teams t
-- LEFT JOIN players p ON t.id = p.team_id;


-------COUNT
-- SELECT COUNT(*) FROM players;

-- SELECT COUNT(*) FROM teams;

-- SELECT COUNT(*) FROM tournaments;

-- SELECT COUNT(*) FROM tournament_players;

-- SELECT t.name, COUNT(p.id) AS players_count
-- FROM teams t
-- LEFT JOIN players p ON t.id = p.team_id
-- GROUP BY t.id, t.name;

-- SELECT t.title, COUNT(tp.player_id) AS participants_count
-- FROM tournaments t
-- LEFT JOIN tournament_players tp ON t.id = tp.tournament_id
-- GROUP BY t.id, t.title;

-- SELECT status, COUNT(*) FROM tournaments GROUP BY status;

-- SELECT game_name, COUNT(*) FROM tournaments GROUP BY game_name;

