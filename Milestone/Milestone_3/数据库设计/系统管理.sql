/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     2017/8/7 10:40:46                            */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_GROUPMEN_REFERENCE_GROUPINF') then
    alter table groupMenuInfo
       delete foreign key FK_GROUPMEN_REFERENCE_GROUPINF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_GROUPMEN_REFERENCE_MENUINFO') then
    alter table groupMenuInfo
       delete foreign key FK_GROUPMEN_REFERENCE_MENUINFO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_USERGROU_REFERENCE_GROUPINF') then
    alter table userGroupInfo
       delete foreign key FK_USERGROU_REFERENCE_GROUPINF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_USERGROU_REFERENCE_USERINFO') then
    alter table userGroupInfo
       delete foreign key FK_USERGROU_REFERENCE_USERINFO
end if;

if exists(
   select 1 from sys.systable 
   where table_name='groupInfo'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table groupInfo
end if;

if exists(
   select 1 from sys.systable 
   where table_name='groupMenuInfo'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table groupMenuInfo
end if;

if exists(
   select 1 from sys.systable 
   where table_name='menuInfo'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table menuInfo
end if;

if exists(
   select 1 from sys.systable 
   where table_name='userGroupInfo'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table userGroupInfo
end if;

if exists(
   select 1 from sys.systable 
   where table_name='userInfo'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table userInfo
end if;

/*==============================================================*/
/* Table: groupInfo                                             */
/*==============================================================*/
create table groupInfo 
(
   groupID              Serial                         not null,
   groupName            varchar(50)                    null,
   groupStatus          int                            null,
   constraint PK_GROUPINFO primary key clustered (groupID)
);

/*==============================================================*/
/* Table: groupMenuInfo                                         */
/*==============================================================*/
create table groupMenuInfo 
(
   groupMenuID          int                            not null,
   gro_groupID          Serial                         null,
   men_menuID           Serial                         null,
   constraint PK_GROUPMENUINFO primary key clustered (groupMenuID)
);

/*==============================================================*/
/* Table: menuInfo                                              */
/*==============================================================*/
create table menuInfo 
(
   menuID               Serial                         not null,
   menuName             varchar(50)                    null,
   menuURL              varchar(255)                   null,
   fatherMenuName       varchar(50)                    null,
   constraint PK_MENUINFO primary key clustered (menuID)
);

/*==============================================================*/
/* Table: userGroupInfo                                         */
/*==============================================================*/
create table userGroupInfo 
(
   userGroupID          int                            not null,
   groupID              Serial                         null,
   userID               Serial                         null,
   constraint PK_USERGROUPINFO primary key clustered (userGroupID)
);

/*==============================================================*/
/* Table: userInfo                                              */
/*==============================================================*/
create table userInfo 
(
   userID               Serial                         not null,
   username             varchar(20)                    null,
   account              varchar(20)                    null,
   password             varchar(40)                    null,
   gender               varchar(5)                     null,
   constraint PK_USERINFO primary key clustered (userID)
);

alter table groupMenuInfo
   add constraint FK_GROUPMEN_REFERENCE_GROUPINF foreign key (gro_groupID)
      references groupInfo (groupID)
      on update restrict
      on delete restrict;

alter table groupMenuInfo
   add constraint FK_GROUPMEN_REFERENCE_MENUINFO foreign key (men_menuID)
      references menuInfo (menuID)
      on update restrict
      on delete restrict;

alter table userGroupInfo
   add constraint FK_USERGROU_REFERENCE_GROUPINF foreign key (groupID)
      references groupInfo (groupID)
      on update restrict
      on delete restrict;

alter table userGroupInfo
   add constraint FK_USERGROU_REFERENCE_USERINFO foreign key (userID)
      references userInfo (userID)
      on update restrict
      on delete restrict;

