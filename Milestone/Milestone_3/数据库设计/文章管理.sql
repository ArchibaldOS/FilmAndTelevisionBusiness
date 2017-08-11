/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/7 10:42:56                            */
/*==============================================================*/


drop table if exists Article;

drop table if exists Association_1;

drop table if exists Manager;

drop table if exists Manager_Article;

/*==============================================================*/
/* Table: Article                                               */
/*==============================================================*/
create table Article
(
   articleId            int not null auto_increment,
   title                varchar(40),
   author               varchar(20),
   abstrct              varchar(1000),
   content              varchar(65532),
   primary key (articleId)
);

/*==============================================================*/
/* Table: Association_1                                         */
/*==============================================================*/
create table Association_1
(
   managerId            int not null,
   managerArticle       int,
   primary key (managerId)
);

/*==============================================================*/
/* Table: Manager                                               */
/*==============================================================*/
create table Manager
(
   managerId            int not null auto_increment,
   managerName          varchar(15),
   primary key (managerId)
);

/*==============================================================*/
/* Table: Manager_Article                                       */
/*==============================================================*/
create table Manager_Article
(
   managerId            int,
   articleId            int,
   managerArticle       int not null,
   primary key (managerArticle)
);

alter table Association_1 add constraint FK_Association_1 foreign key (managerId)
      references Manager (managerId) on delete restrict on update restrict;

alter table Association_1 add constraint FK_Association_2 foreign key (managerArticle)
      references Manager_Article (managerArticle) on delete restrict on update restrict;

alter table Manager_Article add constraint FK_Relationship_1 foreign key (managerId)
      references Manager (managerId) on delete restrict on update restrict;

alter table Manager_Article add constraint FK_Relationship_2 foreign key (articleId)
      references Article (articleId) on delete restrict on update restrict;

