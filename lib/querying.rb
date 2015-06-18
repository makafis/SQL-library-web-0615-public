def select_books_titles_and_years_in_first_series_order_by_year
    "select title, year 
        FROM books WHERE series_id = 1
        ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto FROM characters
  GROUP BY motto
  HAVING MAX(length(motto))
  LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
 "select species, count(species) from characters
group by species  order by species DESC 
LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
"SELECT authors.name, subgenres.name
FROM authors JOIN series ON authors.id = series.author_id
JOIN subgenres ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "

select series.title
FROM series JOIN characters ON
series.id = characters.series_id
where characters.species = 'human'
GROUP BY series.title 
HAVING count(characters.species)
LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(character_books.book_id) as counter
from characters
JOIN character_books ON characters.id = character_books.character_id
group by character_books.character_id
ORDER BY counter DESC, characters.name;"
end
