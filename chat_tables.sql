--sqlite3 chat-sk.db -init chat_tables.sql  
--komenda do inicjalizacji pustej bazy danych

DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS users;


CREATE TABLE messages(
    message_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sender_id INTEGER,
    receiver_id INTEGER,
    message TEXT,
    sending_date DATE);


CREATE TABLE users(
    user_id TEXT PRIMARY KEY,
    username TEXT);


--przykladowe dane w tabeli 
INSERT INTO messages(sender_id, receiver_id, message, sending_date) VALUES(1,2,"Hello 1-2", '2015-12-17');
INSERT INTO messages(sender_id, receiver_id, message, sending_date) VALUES(2,3,"What's updog?", '2023-01-19');
INSERT INTO messages(sender_id, receiver_id, message, sending_date) VALUES(3,2,"Nothing much...", '2023-01-19');

INSERT INTO users(username) VALUES('julia');
INSERT INTO users(username) VALUES('michal');
INSERT INTO users(username) VALUES('karol');
