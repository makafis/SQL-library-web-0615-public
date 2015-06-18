-- rspec ./spec/02_insert_spec.rb:9 # inserting has 2 series
-- rspec ./spec/02_insert_spec.rb:13 # inserting has 6 books
-- rspec ./spec/02_insert_spec.rb:17 # inserting has 8 characters
-- rspec ./spec/02_insert_spec.rb:21 # inserting has 2 subgenres
-- rspec ./spec/02_insert_spec.rb:25 # inserting has 2 authors
-- rspec ./spec/02_insert_spec.rb:29 # inserting has 16 joins in character_books



insert into series(title, author_id, subgenre_id) VALUES
('Lord of the Rings', 1, 2),
('Harry Potter', 2, 2);

insert into books (title, year, series_id) VALUES
  ('The Fellowship of the Ring', 1960, 1),
  ('The Two Towers', 1961, 1),
  ('The Return of the King', 1962, 1),
  ('The Sourcers Stone', 2000, 2),
  ('Chambers of Secrets', 2001, 2),
  ('Prisoner of Azkaban', 2002, 2);

  insert into characters (name, motto, species, series_id, author_id) VALUES
    ('Gandalf the Grey', 'I have a beard', 'wizard', 1, 1),
    ('Frodo', 'I have really ugly feet', 'hobbit', 1, 1),
    ('Aaragorn', 'I am the king', 'human', 1, 1),
    ('Gimli', 'Dwarf is better than Elf', 'dwarf', 1, 1),
    ('Legolas', 'Lets party', 'elf', 1, 1),
    ('Harry Potter', 'Who me?', 'wizard', 2, 2),
    ('Professor Snape', 'I am a psycho', 'wizard', 2, 2),
    ('Dubby', 'I am a house elf', 'elf', 2, 2);

  insert into subgenres (name) VALUES
    ('fantasy'),
    ('fiction');



    insert into authors (name) VALUES
      ('Tolkien'),
      ('J.K. Rowling');

insert into character_books (book_id, character_id) VALUES
  (1,1),
  (2,1),
  (3,2),
  (4,6),
  (5,7),
  (6,8),
  (1,4),
  (2,2),
  (3,2),
  (4,7),
  (5,7),
  (6,8),
  (1,5),
  (2,5),
  (3,4),
  (4,5);





