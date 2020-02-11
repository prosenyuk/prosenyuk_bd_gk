/*
i. Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице)
*/

DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(120) UNIQUE,
 	phone BIGINT, 
    INDEX users_phone_idx(phone), -- как выбирать индексы?
    INDEX users_firstname_lastname_idx(firstname, lastname)
);

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Antonina', 'Zboncak', 'lauryn88@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Hilbert', 'Zulauf', 'kira36@example.com', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Kenneth', 'Glover', 'wisoky.domenico@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Coy', 'Donnelly', 'chagenes@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Jayson', 'Braun', 'sauer.chaim@example.net', '626927');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Glenda', 'Fahey', 'mya.schuster@example.com', '6419702322');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('7', 'Jerad', 'Casper', 'scarlett23@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('8', 'Taylor', 'Buckridge', 'arogahn@example.net', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('9', 'Moshe', 'Collier', 'fwindler@example.com', '213967');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('10', 'Mireya', 'McCullough', 'wunsch.lempi@example.org', '202882');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('11', 'Adriel', 'Hermann', 'koch.kieran@example.org', '11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('12', 'Zakary', 'Kihn', 'frank.toy@example.org', '406');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('13', 'Mitchel', 'Kunde', 'dconn@example.com', '419911');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('14', 'Kristina', 'Howell', 'herta51@example.com', '2626598139');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('15', 'Elody', 'Herzog', 'alphonso.quigley@example.net', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('16', 'Delaney', 'Nikolaus', 'lavern.eichmann@example.com', '766301');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('17', 'Nicolas', 'Bahringer', 'halle61@example.com', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('18', 'Reinhold', 'Hackett', 'elsie.lindgren@example.com', '45403');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('19', 'Sigmund', 'Howe', 'kbeer@example.org', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('20', 'Myrl', 'Hettinger', 'janick.farrell@example.net', '1');


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id) -- что за зверь в целом?
    	ON UPDATE CASCADE -- как это работает? Какие варианты?
    	ON DELETE restrict -- как это работает? Какие варианты?
    -- , FOREIGN KEY (photo_id) REFERENCES media(id) -- пока рано, т.к. таблицы media еще нет
);

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', NULL, '1982-03-31', '1', '1986-04-21 18:53:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', NULL, '1998-03-09', '2', '1999-12-25 04:29:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', NULL, '1990-08-31', '3', '2013-04-29 18:16:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', NULL, '1970-09-17', '4', '1994-01-29 16:04:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', NULL, '1987-03-15', '5', '2019-10-22 20:32:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', NULL, '1987-12-30', '6', '1990-04-03 12:41:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', NULL, '2019-05-30', '7', '1991-12-31 21:08:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', NULL, '1983-05-13', '8', '1985-02-11 22:21:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', NULL, '1990-01-12', '9', '1977-02-04 09:59:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', NULL, '1995-05-05', '10', '2008-10-23 10:06:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', NULL, '2005-05-16', '11', '1988-08-30 09:46:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', NULL, '1979-05-24', '12', '1987-01-29 07:46:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', NULL, '2006-09-19', '13', '1991-06-09 20:52:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', NULL, '1991-10-22', '14', '1996-10-26 00:55:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', NULL, '2007-03-03', '15', '2018-09-07 17:06:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', NULL, '1986-03-06', '16', '1986-03-12 08:41:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', NULL, '2003-08-17', '17', '1973-11-03 07:27:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', NULL, '2000-08-13', '18', '1982-03-11 19:04:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', NULL, '2009-03-21', '19', '1974-06-12 01:03:43', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', NULL, '2011-03-20', '20', '1977-10-26 20:04:15', NULL);


DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), -- можно будет даже не упоминать это поле при вставке
    INDEX messages_from_user_id (from_user_id),
    INDEX messages_to_user_id (to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '1', '1', 'Similique illo atque voluptas asperiores. Voluptatem et a quas eligendi excepturi maiores. Nesciunt aspernatur laboriosam molestiae. Illo id illo sed odio.', '2006-10-23 00:59:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '2', '2', 'Quod explicabo non vero. Et ab et ea autem id commodi. Dolorem et tenetur ut architecto.', '1974-03-07 08:12:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '3', '3', 'Quis nemo qui voluptates est adipisci provident et. Impedit est facilis rerum fuga qui et consectetur.', '1980-04-05 17:16:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '4', '4', 'Veritatis neque dolorem saepe possimus. Voluptatem vel quam odit molestiae rem labore odio. Ducimus molestiae incidunt facere aliquid libero. Animi sint eveniet aut repellat.', '2012-02-16 11:33:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '5', '5', 'Dicta voluptate harum incidunt autem accusantium nihil. Quos adipisci ullam aspernatur sint est rerum. Recusandae sunt tempore tenetur.', '2014-04-24 22:59:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '6', '6', 'Quia quis eligendi earum voluptatem nulla sed et. Animi illo velit est. Est et eaque quia autem consequatur.', '2020-08-24 01:38:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '7', '7', 'Et corrupti nulla corrupti. Unde ex non perferendis vel. Minima qui sit corrupti necessitatibus quis. Voluptatem ipsam voluptatem quidem delectus rerum.', '1985-08-13 22:47:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '8', '8', 'Facere voluptatem vel tempora. Laudantium dolorem repudiandae reiciendis et excepturi ut molestiae molestiae. Accusantium ut enim voluptatem quia saepe voluptate.', '2014-12-10 08:58:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '9', '9', 'Exercitationem ut quia ut sint voluptatibus dolorum laborum velit. Tempora quibusdam nihil id ab.', '1984-03-25 00:45:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '10', '10', 'Molestias saepe molestiae a culpa. Exercitationem quo tenetur voluptatem eos voluptatem assumenda.', '1998-08-06 09:07:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '11', '11', 'Sapiente quia velit magni molestiae ipsa. Aspernatur perspiciatis ipsum ut quae beatae accusamus quasi. Debitis officiis sunt nisi at ad. Temporibus nesciunt tenetur rerum dicta voluptatem et perspiciatis. Laudantium iusto eum excepturi qui et repudiandae et qui.', '1996-04-22 14:07:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '12', '12', 'Quae facere unde nemo et omnis fugiat. Facilis ullam est molestiae commodi voluptatem recusandae. Eligendi consequatur quae omnis optio quia. Aut consequatur illum blanditiis neque nam quis.', '1986-05-09 09:41:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '13', '13', 'Vel unde in et. Et est ducimus quis id praesentium quos. Ipsa doloribus repellat sed rerum quia rem expedita.', '1970-02-01 16:39:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '14', '14', 'Doloremque rem aliquam cupiditate. Qui dolor error et architecto labore iusto voluptatem. Aut dicta eius et reiciendis neque.', '2015-12-25 18:22:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '15', '15', 'Qui ab sint omnis. Rerum iure est minima reiciendis numquam. Ipsum ad inventore in vitae sit consequatur.', '2012-01-17 00:24:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '16', '16', 'Voluptates exercitationem hic optio reprehenderit modi rerum. Ullam deleniti quis et odit.', '2019-01-28 20:18:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '17', '17', 'Iusto temporibus animi et quis natus ipsam quod. Accusantium dicta cum qui dicta nemo. Qui dolorum et et adipisci neque animi. Enim voluptatum laborum exercitationem nemo illo iste aut.', '1982-12-05 19:24:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '18', '18', 'Eius repellat omnis quis fugit aspernatur quisquam soluta debitis. Qui minus et quaerat ducimus dignissimos cupiditate qui voluptatibus.', '1979-06-25 00:52:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '19', '19', 'Id a ut quasi non nulla temporibus. Sit quis perferendis itaque alias quia doloribus. In magni vero sit nobis et unde. Occaecati ea non voluptate sequi temporibus. Repudiandae ullam numquam accusamus voluptatem saepe molestias odit autem.', '2015-04-07 09:06:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '20', '20', 'Odio amet hic ut maxime. Omnis distinctio suscipit perspiciatis quidem excepturi provident. Quas adipisci non est beatae illum recusandae. Dolorem qui ut voluptatem non earum aut eum. Consequatur quia totam ducimus dolor aspernatur veritatis sed.', '1970-09-27 15:51:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '1', '1', 'Similique mollitia qui provident omnis. Aut sit non officia et eaque et ad. Exercitationem consequatur aliquid labore omnis esse autem.', '1971-01-03 07:39:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '2', '2', 'Debitis doloremque alias voluptas nihil quia ab et aut. Dolor iure ea tempore vel dolore harum magni atque. Dolorem deserunt debitis ut dolorum velit. Praesentium sit perferendis error.', '1973-08-29 20:38:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '3', '3', 'Sed odio blanditiis aut. In eaque voluptas sed et. Perferendis quaerat et dolorem quis esse. Et laboriosam pariatur aut cumque molestiae sed.', '2020-02-22 20:53:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '4', '4', 'Eum eveniet debitis alias sit libero magnam. Error culpa maiores laboriosam. Est quaerat deserunt repudiandae ducimus beatae ad explicabo. Impedit perferendis sint fuga est quaerat laudantium.', '1976-04-07 06:09:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '5', '5', 'Harum ut libero ut ipsam natus. Asperiores voluptas odit et aliquam vel voluptas. In assumenda minus molestias qui suscipit facilis. Voluptatem facilis pariatur aperiam deleniti rerum harum cupiditate.', '1989-07-20 16:45:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '6', '6', 'Voluptatum autem quia ab ea. Ducimus nam dolorem doloribus accusantium perspiciatis laudantium corporis animi. Quidem adipisci nemo voluptas nisi optio aut.', '1983-08-17 20:38:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '7', '7', 'Qui rerum dignissimos et voluptatibus consectetur non. Odio aperiam magni quod sit. Inventore esse deserunt et veritatis.', '1986-07-25 05:16:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '8', '8', 'Quos earum aut consequatur odio. Nostrum dolores quia amet impedit. Fuga nemo voluptates modi et magni deserunt.', '2021-05-24 00:28:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '9', '9', 'Quia sapiente exercitationem dignissimos laborum suscipit sapiente. Inventore veritatis eligendi repudiandae id in exercitationem dolorum. Accusamus repellat consequatur qui dolores cupiditate.', '2012-12-27 13:55:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '10', '10', 'Dicta porro sint asperiores dolore explicabo quas. Cupiditate vitae aspernatur qui vitae aut rerum. Consequatur natus aut soluta adipisci laudantium doloribus.', '2008-02-24 05:56:28');


DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	-- id SERIAL PRIMARY KEY, -- изменили на композитный ключ (initiator_user_id, target_user_id)
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    -- `status` TINYINT UNSIGNED,
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
    -- `status` TINYINT UNSIGNED, -- в этом случае в коде хранили бы цифирный enum (0, 1, 2, 3...)
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	
    PRIMARY KEY (initiator_user_id, target_user_id),
	INDEX (initiator_user_id), -- потому что обычно будем искать друзей конкретного пользователя
    INDEX (target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '1', 'requested', '1993-07-01 14:27:51', '2012-03-16 22:39:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('2', '2', 'approved', '2019-08-29 09:43:47', '1975-10-10 04:19:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '3', 'unfriended', '1995-10-29 12:34:14', '1993-09-06 22:13:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '4', 'declined', '2002-04-01 01:49:52', '2007-07-25 16:01:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '5', 'approved', '1976-01-20 19:33:42', '1996-02-28 17:47:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '6', 'approved', '1981-01-20 20:35:48', '1982-01-24 05:09:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '7', 'declined', '1991-08-06 15:47:14', '2015-11-08 00:37:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('8', '8', 'requested', '1974-07-07 23:46:16', '2002-11-20 21:26:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '9', 'declined', '1982-02-08 14:29:53', '1989-01-02 13:14:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '10', 'requested', '2011-07-16 16:58:37', '1992-03-01 16:23:10');


DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),
	INDEX communities_name_idx(name)
);

INSERT INTO `communities` (`id`, `name`) VALUES ('17', 'amet');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'consequuntur');
INSERT INTO `communities` (`id`, `name`) VALUES ('13', 'dicta');
INSERT INTO `communities` (`id`, `name`) VALUES ('19', 'ducimus');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'error');
INSERT INTO `communities` (`id`, `name`) VALUES ('15', 'harum');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'hic');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'magnam');
INSERT INTO `communities` (`id`, `name`) VALUES ('18', 'nam');
INSERT INTO `communities` (`id`, `name`) VALUES ('11', 'nobis');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'pariatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('20', 'pariatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'quas');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'sapiente');
INSERT INTO `communities` (`id`, `name`) VALUES ('14', 'sint');
INSERT INTO `communities` (`id`, `name`) VALUES ('12', 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES ('16', 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'velit');


DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, community_id), -- чтобы не было 2 записей о пользователе и сообществе
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
);

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('4', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('14', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('17', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '20');


DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

    -- записей мало, поэтому индекс будет лишним (замедлит работу)!
);

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'saepe', '2016-12-21 23:06:34', '1982-05-03 03:22:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'aperiam', '1973-10-09 04:21:32', '2011-09-04 02:49:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'est', '2013-10-19 23:30:13', '2012-12-15 14:14:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'minima', '1991-10-09 00:33:02', '2013-09-18 13:27:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'ea', '1985-02-04 04:11:48', '2014-10-27 00:28:10');


DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Aut commodi dolorum id tempora iste et pariatur. Dolore repellat provident et earum ut nobis neque. Rerum provident aut adipisci id quia deleniti. Ab architecto quia rerum aut amet.', 'saepe', 0, NULL, '2010-07-08 06:38:36', '2005-05-13 05:19:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Nihil itaque similique repellendus laudantium. Et qui culpa sequi rerum. Numquam veritatis voluptas ut quia aperiam dignissimos ut.', 'minima', 266298835, NULL, '1973-05-22 14:52:40', '2007-08-17 03:43:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Odit sapiente possimus itaque odio. Praesentium officiis deserunt ut. Incidunt explicabo amet sapiente omnis laudantium. Quos totam ut quaerat quibusdam.', 'voluptatibus', 52525611, NULL, '1985-03-07 03:02:46', '1991-05-28 18:53:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Dicta rerum facilis minima et. Dicta nesciunt error fuga voluptates dolores magnam cupiditate. Dolorem omnis sint molestias est repudiandae. Voluptatem sunt sapiente veritatis fugit culpa ipsa voluptatem.', 'facilis', 5241, NULL, '1985-09-06 18:01:33', '2015-01-25 14:41:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Vitae ea culpa inventore. Repellendus velit illo consequuntur minima at ea rerum. Ab animi nihil eum voluptatibus voluptas laborum totam. Vel qui sequi ut.', 'iure', 335207, NULL, '1979-04-09 13:05:18', '1972-09-20 04:09:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '1', '6', 'Repellendus exercitationem sit excepturi consequatur similique velit dolorem aut. Illo beatae impedit iste quia vel in accusamus. Magnam voluptas veniam odio.', 'aliquam', 59321625, NULL, '2019-06-08 04:47:59', '1998-09-05 13:52:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '2', '7', 'Eos est odio natus minima facilis est vero. Quasi qui nesciunt ut soluta dolores rerum. Distinctio repellat cumque earum iusto laborum voluptates veniam. Molestiae hic veniam explicabo est sint aliquid quidem.', 'consequatur', 27, NULL, '2015-12-08 12:34:44', '1980-07-11 17:16:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '3', '8', 'Nihil eum doloremque pariatur in blanditiis. Sint occaecati doloremque sed. Quas et et et eum ut sed. Ea et numquam quis atque libero velit expedita.', 'vel', 43698337, NULL, '2009-12-07 00:21:48', '1984-06-25 07:20:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '4', '9', 'Molestias sapiente exercitationem dolores deserunt qui excepturi. Non nihil doloremque consequatur repellendus. Tempore nam quaerat quo eaque consectetur. Ut quod saepe aut enim.', 'molestias', 4, NULL, '2018-03-26 13:43:48', '1986-07-06 16:54:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '5', '10', 'Omnis sed necessitatibus voluptatum alias similique possimus doloremque. Suscipit similique voluptatem voluptatem laudantium eos id nobis dolor. Dolores aut dignissimos dolore omnis modi.', 'totam', 4, NULL, '1974-10-28 06:12:36', '2017-10-16 14:18:40');


DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(), 
    
    FOREIGN KEY (user_id) REFERENCES users(id), 
    FOREIGN KEY (media_id) REFERENCES media(id)

);

INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '1', '1', '1992-02-25 00:24:04');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '2', '2', '1972-04-05 21:32:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '3', '3', '1992-03-27 12:58:39');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '4', '4', '1988-02-26 22:12:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '5', '5', '2019-01-28 03:48:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '6', '6', '2004-02-05 16:48:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '7', '7', '2015-04-28 04:30:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '8', '8', '1989-01-12 19:22:50');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '9', '9', '1997-11-11 09:45:19');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '10', '10', '1999-04-19 13:50:16');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('11', '11', '1', '2015-05-30 16:20:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('12', '12', '2', '1992-07-15 23:19:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('13', '13', '3', '1976-12-14 02:33:33');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('14', '14', '4', '1987-08-19 10:16:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('15', '15', '5', '1990-04-10 15:02:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('16', '16', '6', '1973-08-24 11:26:50');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('17', '17', '7', '1999-08-08 11:14:03');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('18', '18', '8', '2009-08-03 00:03:01');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('19', '19', '9', '1970-07-27 16:25:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('20', '20', '10', '1984-07-09 12:51:11');


DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
  	PRIMARY KEY (`id`)
);

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'quos', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'enim', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'nesciunt', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'cumque', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'quia', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'alias', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'sed', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'eos', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'quia', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'id', '10');


DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL PRIMARY KEY,
	`album_id` BIGINT unsigned NOT NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '2', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '3', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '4', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '5', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '6', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '7', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '8', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '9', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '10', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '2', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '3', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '4', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '5', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '6', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '7', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '8', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '9', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '10', '10');


DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
	id SERIAL PRIMARY KEY,
	name varchar(50)
);

INSERT INTO `cities` (`id`, `name`) VALUES ('1', 'quasi');
INSERT INTO `cities` (`id`, `name`) VALUES ('2', 'fuga');
INSERT INTO `cities` (`id`, `name`) VALUES ('3', 'sint');
INSERT INTO `cities` (`id`, `name`) VALUES ('4', 'aut');
INSERT INTO `cities` (`id`, `name`) VALUES ('5', 'enim');
INSERT INTO `cities` (`id`, `name`) VALUES ('6', 'et');
INSERT INTO `cities` (`id`, `name`) VALUES ('7', 'blanditiis');
INSERT INTO `cities` (`id`, `name`) VALUES ('8', 'corporis');
INSERT INTO `cities` (`id`, `name`) VALUES ('9', 'velit');
INSERT INTO `cities` (`id`, `name`) VALUES ('10', 'accusantium');


DROP TABLE IF EXISTS metros;
CREATE TABLE metros(
	id SERIAL PRIMARY KEY,
	city_id BIGINT unsigned NOT NULL,
	name varchar(50),

	FOREIGN KEY (city_id) REFERENCES cities(id)
);

INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('1', '1', 'doloribus');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('2', '2', 'eum');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('3', '3', 'velit');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('4', '4', 'dolorum');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('5', '5', 'nihil');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('6', '6', 'accusantium');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('7', '7', 'qui');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('8', '8', 'earum');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('9', '9', 'et');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('10', '10', 'et');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('11', '1', 'assumenda');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('12', '2', 'autem');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('13', '3', 'reiciendis');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('14', '4', 'aut');
INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES ('15', '5', 'fugiat');


DROP TABLE IF EXISTS goods_category;
CREATE TABLE goods_category(
	id SERIAL PRIMARY KEY,
	name varchar(50)
);

INSERT INTO `goods_category` (`id`, `name`) VALUES ('1', 'voluptas');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('2', 'porro');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('3', 'facilis');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('4', 'ducimus');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('5', 'dolorem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('6', 'aliquid');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('7', 'incidunt');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('8', 'qui');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('9', 'eius');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('10', 'saepe');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('11', 'reprehenderit');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('12', 'quia');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('13', 'quas');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('14', 'vero');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('15', 'in');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('16', 'qui');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('17', 'cum');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('18', 'doloremque');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('19', 'dolorem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('20', 'beatae');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('21', 'reiciendis');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('22', 'amet');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('23', 'beatae');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('24', 'doloribus');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('25', 'id');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('26', 'impedit');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('27', 'molestias');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('28', 'provident');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('29', 'fugiat');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('30', 'et');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('31', 'necessitatibus');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('32', 'sunt');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('33', 'magnam');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('34', 'doloribus');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('35', 'itaque');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('36', 'aliquid');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('37', 'quidem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('38', 'esse');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('39', 'consequatur');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('40', 'magni');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('41', 'voluptatibus');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('42', 'fugit');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('43', 'voluptatem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('44', 'ea');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('45', 'iste');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('46', 'beatae');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('47', 'voluptatem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('48', 'eos');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('49', 'aliquam');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('50', 'nostrum');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('51', 'itaque');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('52', 'eos');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('53', 'odit');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('54', 'non');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('55', 'suscipit');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('56', 'harum');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('57', 'et');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('58', 'exercitationem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('59', 'placeat');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('60', 'et');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('61', 'earum');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('62', 'sit');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('63', 'ab');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('64', 'illo');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('65', 'molestias');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('66', 'quia');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('67', 'magnam');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('68', 'et');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('69', 'tempore');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('70', 'pariatur');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('71', 'inventore');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('72', 'harum');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('73', 'qui');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('74', 'quisquam');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('75', 'eos');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('76', 'magni');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('77', 'iusto');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('78', 'soluta');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('79', 'soluta');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('80', 'qui');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('81', 'molestiae');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('82', 'dolorum');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('83', 'maxime');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('84', 'quidem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('85', 'ipsa');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('86', 'aut');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('87', 'optio');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('88', 'voluptatem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('89', 'est');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('90', 'at');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('91', 'quod');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('92', 'ea');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('93', 'qui');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('94', 'molestias');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('95', 'cum');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('96', 'autem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('97', 'voluptatem');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('98', 'aspernatur');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('99', 'qui');
INSERT INTO `goods_category` (`id`, `name`) VALUES ('100', 'aperiam');


DROP TABLE IF EXISTS comments;
CREATE TABLE comments(
	id SERIAL PRIMARY KEY,
	commentator_id BIGINT UNSIGNED NOT NULL,
	like_id BIGINT UNSIGNED NOT NULL,
	comment VARCHAR (255),
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (commentator_id) REFERENCES users(id),
	FOREIGN KEY (like_id) REFERENCES likes(id) -- вот тут не уверен что связь именно такая. Лаков может быть много. Как их все собрать?
);

INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('1', '1', '1', NULL, '1990-04-06 00:27:30');
INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('2', '2', '2', NULL, '2019-03-25 21:31:40');
INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('3', '3', '3', NULL, '1983-06-30 00:15:18');
INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('4', '4', '4', NULL, '1976-03-18 17:08:33');
INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('5', '5', '5', NULL, '1978-05-10 11:27:47');
INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('6', '6', '6', NULL, '1993-08-06 21:14:09');
INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('7', '7', '7', NULL, '1992-03-06 12:39:46');
INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('8', '8', '8', NULL, '1994-10-05 11:06:41');
INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('9', '9', '9', NULL, '2014-04-25 04:08:05');
INSERT INTO `comments` (`id`, `commentator_id`, `like_id`, `comment`, `created_at`) VALUES ('10', '10', '10', NULL, '1977-03-28 02:06:40');


DROP TABLE IF EXISTS goods;
CREATE TABLE goods(
	id SERIAL PRIMARY KEY,
	seller_id BIGINT UNSIGNED NOT NULL,
	photo_good_id BIGINT UNSIGNED NULL,
	adress_city_id BIGINT UNSIGNED NULL,
	adress_metro_id BIGINT UNSIGNED NULL,
	good_category_id BIGINT UNSIGNED NULL,
	comment_id BIGINT UNSIGNED NULL,
	name VARCHAR(250),
	price DECIMAL(10, 2),
	description TEXT,
	created_at DATETIME DEFAULT NOW(),
	
	INDEX (name),
	FOREIGN KEY (seller_id) REFERENCES users(id),
	FOREIGN KEY (photo_good_id) REFERENCES photos(id),
	FOREIGN KEY (adress_city_id) REFERENCES cities(id),
	FOREIGN KEY (adress_metro_id) REFERENCES metros(id),
	FOREIGN KEY (good_category_id) REFERENCES goods_category(id),
	FOREIGN KEY (comment_id) REFERENCES comments(id)
);

INSERT INTO `goods` (`id`, `seller_id`, `photo_good_id`, `adress_city_id`, `adress_metro_id`, `good_category_id`, `comment_id`, `name`, `price`, `description`, `created_at`) VALUES ('1', '1', '1', '1', '1', '1', '1', 'repellendus', '0.00', 'Beatae rerum ut eaque. Reiciendis nisi repellendus error qui eaque.', '1983-12-12 22:55:14');
INSERT INTO `goods` (`id`, `seller_id`, `photo_good_id`, `adress_city_id`, `adress_metro_id`, `good_category_id`, `comment_id`, `name`, `price`, `description`, `created_at`) VALUES ('2', '2', '2', '2', '2', '2', '2', 'non', '99999999.99', 'Ut minus dolore aut mollitia. Doloribus consequatur dolorum iste id ex sed fuga ut. Impedit omnis unde delectus qui expedita.', '1973-12-16 06:11:25');
INSERT INTO `goods` (`id`, `seller_id`, `photo_good_id`, `adress_city_id`, `adress_metro_id`, `good_category_id`, `comment_id`, `name`, `price`, `description`, `created_at`) VALUES ('3', '3', '3', '3', '3', '3', '3', 'laudantium', '1037670.99', 'Doloremque odio accusantium et. Quam fugit vitae cum eligendi. Corporis labore maiores eveniet aut.', '1980-12-29 11:00:00');
INSERT INTO `goods` (`id`, `seller_id`, `photo_good_id`, `adress_city_id`, `adress_metro_id`, `good_category_id`, `comment_id`, `name`, `price`, `description`, `created_at`) VALUES ('4', '4', '4', '4', '4', '4', '4', 'rerum', '5385.47', 'Quibusdam molestiae aut est et et quas est dignissimos. Veritatis dolor labore dolor deleniti sed. Sequi praesentium quaerat laborum aliquid consequuntur.', '1970-09-02 15:57:21');
INSERT INTO `goods` (`id`, `seller_id`, `photo_good_id`, `adress_city_id`, `adress_metro_id`, `good_category_id`, `comment_id`, `name`, `price`, `description`, `created_at`) VALUES ('5', '5', '5', '5', '5', '5', '5', 'maiores', '87968632.31', 'Excepturi perspiciatis repellat doloremque voluptate iste incidunt. Tempora quis quia quis doloribus dicta ex incidunt. Dicta laboriosam porro labore ad. Est neque porro consequatur sed natus.', '1997-03-21 18:56:37');



/*
  ii. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке
*/

SELECT DISTINCT firstname FROM users order by  firstname;



/*
  iii. Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false). 
  Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)
*/
ALTER TABLE profiles ADD is_active BOOL DEFAULT true NULL;

UPDATE profiles 
set 
	is_active = false
where TIMESTAMPDIFF(YEAR,birthday,CURDATE()) < 18;



/*
  iv. Написать скрипт, удаляющий сообщения «из будущего» (дата позже сегодняшней)
*/

DELETE FROM messages 
where created_at > CURDATE();



/*
 v. Написать название темы курсового проекта (в комментарии)
*/
-- База данных портала продаж ювелирных изделий оптом 

