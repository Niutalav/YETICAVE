USE yeticave2;

INSERT INTO categories SET id = 1, title = 'Доски и лыжи', alias = 'Boards';
INSERT INTO categories SET id = 2, title = 'Крепления', alias = 'Attachment';
INSERT INTO categories SET id = 3, title = 'Ботинки', alias = 'Boots';
INSERT INTO categories SET id = 4, title = 'Одежда', alias = 'Clothing';
INSERT INTO categories SET id = 5, title = 'Инструменты', alias = 'Tools';
INSERT INTO categories SET id = 6, title = 'Разное', alias = 'Other';

INSERT INTO lots SET id = 1, date_create = '2019-04-10 16:25:00', title = '2014 Rossignol District Snowboard', description = 'Сноуборд является удобным фристайлом для начинающих парков и труб всадников.Мягкое симметричное изгибание делает район легким в управлении, игривым и дает уверенность в развитии ваших навыков.', image = 'img/lot-6.jpg', start_price = 23900, completion_date = '2020-06-25 20:00:00', bet_step = 500, user_id = 4, category_id = 1, winner_id = 6;
INSERT INTO lots SET id = 2, date_create = '2019-03-18 22:50:00', title = 'DC Ply Mens 2016/2017 Snowboard', description = 'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчком и четкими дугами. Этот снаряд обладает отличной гибкостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости.', image = 'img/lot-2.jpg', start_price = 19300, completion_date = '2020-05-31 16:05:00', bet_step = 500, user_id = 1, category_id = 6, winner_id = 5;
INSERT INTO lots SET id = 3, date_create = '2019-02-24 14:30:00', title = 'Крепления Union Contact Pro 2015 года размер L/XL', description = 'Невероятно легкие универсальные крепления готовы порадовать прогрессирующих райдеров, практикующих как трассовое катание, так и взрывные спуски в паудере. ', image = 'img/lot-5.jpg', start_price = 17400, completion_date = '2020-06-04 08:59:00', bet_step = 500, user_id = 6, category_id = 2, winner_id = 4;
INSERT INTO lots SET id = 4, date_create = '2019-03-11 20:35:00', title = 'Ботинки для сноуборда DC Mutiny Charocal', description = 'Стильные и комфортные ботинки для сноуборда DС Mutiny по уровню удобства сравнимы с отличными кедами для скейтборда. Все самое необходимое для комфортного катания. Оснащена водостойкой мембраной.', image = 'img/lot-4.jpg', start_price = 20250, completion_date = '2020-05-07 16:57:00', bet_step = 500, user_id = 5, category_id = 3, winner_id = 3;
INSERT INTO lots SET id = 5, date_create = '2019-01-12 09:05:00', title = 'Куртка для сноуборда DC Mutiny Charocal', description = 'Яркая сноубордическая DC RIPLEY куртка для юных райдеров, которые хотят удивлять окружающих не только своими навыками, но и чувством стиля.', image = 'img/lot-3.jpg', start_price = 11450, completion_date = '2020-06-25 20:43:00', bet_step = 500, user_id = 3, category_id = 4, winner_id = 2;
INSERT INTO lots SET id = 6, date_create = '2019-02-14 15:10:00', title = 'Маска Oakley Canopy', description = 'Увеличенный объем линзы и низкий профиль оправы маски Canopy способствуют широкому углу обзора, а специальное противотуманное покрытие поможет ориентироваться в условиях плохой видимости.', image = 'img/lot-1.jpg', start_price = 9800, completion_date = '2020-06-15 23:37:00', bet_step = 500, user_id = 2, category_id = 5, winner_id = 1;

INSERT INTO bets SET id = 1, date = '2019-01-20 09:22:14', price = 4300, user_id = 5, lot_id = 1;
INSERT INTO bets SET id = 2, date = '2019-04-01 17:33:30', price = 6500, user_id = 3, lot_id = 5;
INSERT INTO bets SET id = 3, date = '2019-01-24 19:40:40', price = 9600, user_id = 2, lot_id = 1;
INSERT INTO bets SET id = 4, date = '2019-03-18 11:11:22', price = 2800, user_id = 6, lot_id = 3;
INSERT INTO bets SET id = 5, date = '2019-02-24 21:23:08', price = 7200, user_id = 4, lot_id = 2;
INSERT INTO bets SET id = 6, date = '2019-03-11 16:01:37', price = 10000, user_id = 1, lot_id = 4;

INSERT INTO users SET id = 1, registration_date = '2019-03-03 11:50:31', email = 'anton@mail.ru', username = 'Anton', password = 'qwe123', avatar = 'img/lot-5.jpg', contacts = '56723';
INSERT INTO users SET id = 2, registration_date = '2019-01-28 22:39:06', email = 'angelina@mail.ru', username = 'Angelina', password = 'rty456', avatar = 'img/lot-1.jpg', contacts = '14458';
INSERT INTO users SET id = 3, registration_date = '2019-02-20 07:27:13', email = 'yulya@mail.ru', username = 'Yulya', password = 'uio789', avatar = 'img/lot-3.jpg', contacts = '98765';
INSERT INTO users SET id = 4, registration_date = '2019-04-10 15:04:10', email = 'lyova@mail.ru', username = 'Lyova', password = 'pas518', avatar = 'img/lot-6.jpg', contacts = '29064';
INSERT INTO users SET id = 5, registration_date = '2019-02-17 08:02:42', email = 'pavel@mail.ru', username = 'Pavel', password = 'dfg402', avatar = 'img/lot-4.jpg', contacts = '38729';
INSERT INTO users SET id = 6, registration_date = '2019-05-02 14:26:27', email = 'semyon@mail.ru', username = 'Semyon', password = 'hjk379', avatar = 'img/lot-2.jpg', contacts = '10293';

-- 1. Получить все категории
Select * from categories

-- 2. Получить самые новые, открытые лоты. Каждый лот должен включать название, стартовую цену, ссылку на изображение, цену последней ставки, количество ставок, название категории;
Select * from lots where completion_date > CURRENT_DATE;

-- 3. Показать лот по его id. Получите также название категории, к которой принадлежит лот;
Select * from lots join categories on lots.category_id = categories.id where lots.id = 2;

-- 4. Обновить название лота по его идентификатору;
UPDATE lots SET title = title WHERE id = id;

-- 5. Получить список самых свежих ставок для лота по его идентификатору;
Select * from bets where lot_id=1 order by bets.date desc;
