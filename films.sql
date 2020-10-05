# actor
describe actor;
select * from actor;

insert into actor(first_name, last_name)
	values('Robert', 'Downey Jr'), ('Tom', 'Holand'),
    ('Chirs', 'Hemworth'), ('Chris', 'Evans'),
    ('Mark', 'Ruffalo'), ('Brie', 'Larson');
update actor set first_name='Chris', last_name='Hemsworth' where actor_id='203';
delete from actor where actor_id='3';
delete from actor where actor_id='9';

# language
describe language;
select * from language;

insert into language(name) values('PT-BR'), ('EN-US'), ('JP');
update language set name='DE' where language_id='6';
delete from language where language_id='1';
delete from language where language_id='3';

# film
describe film;
select * from film where title like 'Vingadores %';	
insert into film(title, language_id) values('Vingadores', '7'), ('Vingadores 2', '8'), ('Vingadores 3', '9'), ('Vingadores 4', '6');
update film set title='Academia Dinotopia' where film_id='1';

# film_actor
describe film_actor;
select * from filme_actor;
# category
# film_category
