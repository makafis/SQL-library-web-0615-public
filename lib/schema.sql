create table series(
title TEXT,
author_id INTEGER REFERENCES authors,
subgenre_id INTEGER REFERENCES subgenres,
id INTEGER PRIMARY KEY AUTOINCREMENT
);

create table subgenres(
name TEXT,
id INTEGER PRIMARY KEY AUTOINCREMENT
);

create table authors(
name TEXT,
id INTEGER PRIMARY KEY AUTOINCREMENT
);

create table books(
title TEXT,
year INTEGER,
series_id INTEGER REFERENCES series,
id INTEGER PRIMARY KEY AUTOINCREMENT
);

create table characters(
name TEXT,
motto TEXT,
species TEXT,
series_id INTEGER REFERENCES series,
author_id INTEGER REFERENCES authors,
id INTEGER PRIMARY KEY AUTOINCREMENT
);

create table character_books(
id INTEGER PRIMARY KEY AUTOINCREMENT,
book_id INTEGER REFERENCES books,
character_id INTEGER REFERENCES characters
);