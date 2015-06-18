UPDATE characters 
SET species = "Martian"
where id = (select max(id) FROM characters);