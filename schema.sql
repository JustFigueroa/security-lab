DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS notes;

CREATE TABLE users (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	username TEXT NOT NULL,
	password TEXT NOT NULL,
	role TEXT NOT NULL
);

CREATE TABLE notes (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	user_id INTEGER NOT NULL,
	title TEXT NOT NULL,
	body TEXT NOT NULL
);

INSERT INTO users (username, password, role) VALUES
('alice', 'training123', 'user'),
('bob', 'password-demo', 'user'),
('admin-demo', 'intentionallyweak', 'admin');

INSERT INTO notes (user_id, title, body) VALUES
(1, 'Project Notes', 'Pseudo training data only.'),
(2, 'Reminder', 'This account is fictitious.'),
(3, 'Admin Memo', 'No real or sensitive info is stored here.');
