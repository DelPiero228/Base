create table if not exists genres (
genre_id serial primary key,
artist_id serial primary key,
genre_name varchar(60) not null,
description text
);




CREATE TABLE  if not exists public.artist (
	artist_id serial4 NOT NULL,
	first_name varchar(45) NOT NULL,
	last_name varchar(45) NOT null,
	CONSTRAINT artist_pkey PRIMARY KEY (artist_id)
);

create table if not exists album (
album_id serial primary key,
album_name  varchar(40) not null
);





create table if not exists song (
song_id serial primary key,
foreign key (song) references album(album_id),
album_id varchar(128) not null
);



create table if not exists collection (
collection_id serial primary key,
collection_date varchar(128) not null
);

