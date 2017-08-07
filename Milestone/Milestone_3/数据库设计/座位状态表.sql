/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/7 10:44:31                            */
/*==============================================================*/


drop table if exists "seat state";

/*==============================================================*/
/* Table: "seat state"                                          */
/*==============================================================*/
create table "seat state"
(
   "film name"          varchar(30),
   "cinema name"        varchar(30),
   "seat number"        int,
   state                int
);

alter table "seat state" comment '0代表该座位已经被预定或者已经被购买，不可被选定
1代表该座位能够被选定
';

