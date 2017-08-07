/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/7 10:56:37                            */
/*==============================================================*/


drop table if exists Manager;

drop table if exists Manager_Sense;

drop table if exists SensitiveWord;

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
/* Table: Manager_Sense                                         */
/*==============================================================*/
create table Manager_Sense
(
   managerSenseId       int not null auto_increment,
   senseId              int,
   managerId            int,
   primary key (managerSenseId)
);

/*==============================================================*/
/* Table: SensitiveWord                                         */
/*==============================================================*/
create table SensitiveWord
(
   senseId              int not null auto_increment,
   senseContent         varchar(100),
   primary key (senseId)
);

alter table Manager_Sense add constraint FK_Relationship_1 foreign key (managerId)
      references Manager (managerId) on delete restrict on update restrict;

alter table Manager_Sense add constraint FK_Relationship_2 foreign key (senseId)
      references SensitiveWord (senseId) on delete restrict on update restrict;

