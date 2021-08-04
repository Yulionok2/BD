create table if not exists Music_genres (
	ID serial primary key,
	name genre varchar(50) not null
);

create table if not exists Performers (
	ID serial primary key,
	alias varchar(30) not null unique
	gener_id integer references Music_genres(id) not null
);

create table if not exists Albums (
	ID serial primary key,
	album title varchar(50) not null,
	released integer not null,
	number of tracks in a album integer not null,
	perfomer_id integer references Perfomers(id) not null
);

create table if not exists Tracks (
	ID serial primary key,
	name track varchar(30) not null,
	track duration(sec) integer not null,
	album_id integer referance Albums(id) not null
);

