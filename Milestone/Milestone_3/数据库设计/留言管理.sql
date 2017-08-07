/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/7 10:34:19                            */
/*==============================================================*/


drop table if exists Message;

drop table if exists manager;

drop table if exists manager_message;

drop table if exists user;

/*==============================================================*/
/* Table: Message                                               */
/*==============================================================*/
create table Message
(
   messageId            int not null auto_increment,
   userId               int,
   messageContent       varchar(1024),
   replyMessage         varchar(1024),
   messageTime          date,
   primary key (messageId)
);

/*==============================================================*/
/* Table: manager                                               */
/*==============================================================*/
create table manager
(
   managerId            int not null auto_increment,
   managerName          varchar(20),
   primary key (managerId)
);

/*==============================================================*/
/* Table: manager_message                                       */
/*==============================================================*/
create table manager_message
(
   managerMessageId     int not null auto_increment,
   messageId            int,
   managerId            int,
   primary key (managerMessageId)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   userId               int not null auto_increment,
   userName             varchar(20),
   primary key (userId)
);

alter table Message add constraint FK_Relationship_1 foreign key (userId)
      references user (userId) on delete restrict on update restrict;

alter table manager_message add constraint FK_Relationship_2 foreign key (messageId)
      references Message (messageId) on delete restrict on update restrict;

alter table manager_message add constraint FK_Relationship_3 foreign key (managerId)
      references manager (managerId) on delete restrict on update restrict;

