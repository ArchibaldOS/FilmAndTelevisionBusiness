/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/7 10:43:44                            */
/*==============================================================*/


drop table if exists "film imformation";

drop table if exists "user imformation";

/*==============================================================*/
/* Table: "film imformation"                                    */
/*==============================================================*/
create table "film imformation"
(
   "order number"       bigint not null,
   account              int not null,
   "film name"          varchar(30),
   cinema               varchar(20),
   "seat number"        int,
   time                 varchar(30),
   number               int,
   price                float,
   "pay method"         varchar(30),
   "order state"        int,
   primary key ("order number")
);

/*==============================================================*/
/* Table: "user imformation"                                    */
/*==============================================================*/
create table "user imformation"
(
   account              int not null auto_increment,
   password             varchar(30),
   balance              float,
   email                varchar(30),
   phone                int,
   primary key (account)
);

alter table "film imformation" add constraint FK_Relationship_1 foreign key (account)
      references "user imformation" (account) on delete restrict on update restrict;

