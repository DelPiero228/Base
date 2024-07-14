create table if not exists genres (
genres_id serial primary key,
genre_name varchar(60) not null,
description text
);

create table if not exists genres_artists (
artist_id serial primary key,
genre_id varchar(60) not null
)

create table if not exists artist (
artist_id serial primary key,
first_name varchar(45) NOT null,
last_name varchar(45) not null
);	


create table if not exists album (
album_id serial primary key,
album_year varchar(80) unique not null,
album_name  varchar(40) not null
);

create table if not exists album_artist (
album_id integer references album(id),
artist_id integer references artist(id),
constraint pk primary key (artist_id, album_id)
);



create table if not exists song (
song_title serial primary key,
foreign key (song) references album(album_id),
album_id varchar(128) not null
);

create table if not exists songs_collection (
song_id integer references song(id),
collection_id integer references collection(id),
constraint pk primary key (song_id, collection_id)
);

create table if not exists collection (
collection_id serial primary key,
song_id varchar(40) not null
);

