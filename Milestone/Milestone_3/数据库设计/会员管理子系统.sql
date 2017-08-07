/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/7 10:33:30                            */
/*==============================================================*/


drop table if exists VipConsumeRecord;

drop table if exists VipData;

drop table if exists VipRechargeRecord;

drop table if exists VipTotalRecord;

drop table if exists Vip_Buy;

drop table if exists Vip_Recharge;

drop table if exists Vip_Total;

/*==============================================================*/
/* Table: VipConsumeRecord                                      */
/*==============================================================*/
create table VipConsumeRecord
(
   BuyID                int not null,
   BuyMoney             double,
   BuyWay               varchar(10),
   BuyDate              date,
   primary key (BuyID)
);

/*==============================================================*/
/* Table: VipData                                               */
/*==============================================================*/
create table VipData
(
   VipID                int not null,
   VipName              varchar(20),
   VipUsername          varchar(20) not null,
   VipPassword          varchar(20) not null,
   VipTelephone         integer(11) not null,
   VipRank              varchar(10) not null,
   VipTotal             int not null,
   VipBalance           integer,
   VipGender            varchar(5),
   VipBirthday          date,
   VipLastLogin         date not null,
   VipRegisterDate      date not null,
   primary key (VipID)
);

/*==============================================================*/
/* Table: VipRechargeRecord                                     */
/*==============================================================*/
create table VipRechargeRecord
(
   RechID               int not null,
   RechMoney            integer,
   RechWay              varchar(10),
   RechDate             date,
   primary key (RechID)
);

/*==============================================================*/
/* Table: VipTotalRecord                                        */
/*==============================================================*/
create table VipTotalRecord
(
   TotalReID            int not null,
   TotalCount           integer,
   TotalWay             varchar(10),
   TotalDate            date,
   primary key (TotalReID)
);

/*==============================================================*/
/* Table: Vip_Buy                                               */
/*==============================================================*/
create table Vip_Buy
(
   VipBuyID             char(10) not null,
   VipID                int,
   BuyID                int,
   primary key (VipBuyID)
);

/*==============================================================*/
/* Table: Vip_Recharge                                          */
/*==============================================================*/
create table Vip_Recharge
(
   VipRechID            char(10) not null,
   VipID                int,
   RechID               int,
   primary key (VipRechID)
);

/*==============================================================*/
/* Table: Vip_Total                                             */
/*==============================================================*/
create table Vip_Total
(
   VipTotalID           char(10) not null,
   VipID                int,
   TotalReID            int,
   primary key (VipTotalID)
);

alter table Vip_Buy add constraint FK_Reference_3 foreign key (VipID)
      references VipData (VipID) on delete restrict on update restrict;

alter table Vip_Buy add constraint FK_Reference_4 foreign key (BuyID)
      references VipConsumeRecord (BuyID) on delete restrict on update restrict;

alter table Vip_Recharge add constraint FK_Reference_1 foreign key (VipID)
      references VipData (VipID) on delete restrict on update restrict;

alter table Vip_Recharge add constraint FK_Reference_2 foreign key (RechID)
      references VipRechargeRecord (RechID) on delete restrict on update restrict;

alter table Vip_Total add constraint FK_Reference_5 foreign key (VipID)
      references VipData (VipID) on delete restrict on update restrict;

alter table Vip_Total add constraint FK_Reference_6 foreign key (TotalReID)
      references VipTotalRecord (TotalReID) on delete restrict on update restrict;

