create table actors
(
    id         int auto_increment,
    first_name varchar(20) null,
    last_name  varchar(30) null,
    MovieId    int         not null,
    constraint id
        unique (id)
);

create table movies
(
    id           int auto_increment
        primary key,
    Title        varchar(30) null,
    release_year varchar(4)  null,
    genre        varchar(20) null,
    MovieId      int         not null,
    ActorsId     int         not null,
    constraint id
        unique (id)
);

create table directors
(
    id         int auto_increment,
    first_name varchar(20) null,
    last_name  varchar(30) null,
    MovieId    int         not null,
    constraint id
        unique (id),
    constraint directors_ibfk_1
        foreign key (MovieId) references movies (id)
);

create index MovieId
    on directors (MovieId);


