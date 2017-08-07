/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/7 10:54:50                            */
/*==============================================================*/


drop table if exists Sys_Cinema;

drop table if exists Sys_Comment;

drop table if exists Sys_Hall;

drop table if exists Sys_HallMovie;

drop table if exists Sys_Movie;

drop table if exists Sys_MovieType;

drop table if exists Sys_Version;

/*==============================================================*/
/* Table: Sys_Cinema                                            */
/*==============================================================*/
create table Sys_Cinema
(
   cinemaName           varchar(10) not null,
   payOnline            varchar(10),
   address              varchar(20),
   telephone            varchar(20),
   introduction         varchar(3000),
   primary key (cinemaName)
);

/*==============================================================*/
/* Table: Sys_Comment                                           */
/*==============================================================*/
create table Sys_Comment
(
   commentID            int not null auto_increment,
   author               varchar(10),
   title                varchar(40),
   content              varchar(1000),
   publishTime          date,
   IP                   varchar(10),
   primary key (commentID)
);

/*==============================================================*/
/* Table: Sys_Hall                                              */
/*==============================================================*/
create table Sys_Hall
(
   hallName             varchar(10) not null,
   cinemaName           varchar(10),
   primary key (hallName)
);

/*==============================================================*/
/* Table: Sys_HallMovie                                         */
/*==============================================================*/
create table Sys_HallMovie
(
   hallMovieID          int not null,
   movieID              int,
   hallName             varchar(10),
   showTime             datetime,
   primary key (hallMovieID)
);

/*==============================================================*/
/* Table: Sys_Movie                                             */
/*==============================================================*/
create table Sys_Movie
(
   movieID              int not null auto_increment,
   version              varchar(6),
   movieType            varchar(6),
   movieName            varchar(10),
   director             varchar(10),
   actor                varchar(20),
   region               varchar(10),
   duration             varchar(5),
   released             varchar(6),
   releaseDate          date,
   stars                float,
   topped               varchar(6),
   clickRate            int,
   shortComment         varchar(50),
   introduction         varchar(3000),
   faceSPicture         varchar(20),
   faceBPicture         varchar(20),
   stills               varchar(20),
   primary key (movieID)
);

/*==============================================================*/
/* Table: Sys_MovieType                                         */
/*==============================================================*/
create table Sys_MovieType
(
   movieType            varchar(6) not null,
   primary key (movieType)
);

/*==============================================================*/
/* Table: Sys_Version                                           */
/*==============================================================*/
create table Sys_Version
(
   version              varchar(6) not null,
   primary key (version)
);

alter table Sys_Hall add constraint FK_Relationship_1 foreign key (cinemaName)
      references Sys_Cinema (cinemaName) on delete restrict on update restrict;

alter table Sys_HallMovie add constraint FK_Relationship_5 foreign key (hallName)
      references Sys_Hall (hallName) on delete restrict on update restrict;

alter table Sys_HallMovie add constraint FK_Relationship_6 foreign key (movieID)
      references Sys_Movie (movieID) on delete restrict on update restrict;

alter table Sys_Movie add constraint FK_Relationship_2 foreign key (version)
      references Sys_Version (version) on delete restrict on update restrict;

alter table Sys_Movie add constraint FK_Relationship_3 foreign key (movieType)
      references Sys_MovieType (movieType) on delete restrict on update restrict;

