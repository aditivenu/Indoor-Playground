insert into game values('Tennis',3,4,123);
insert into game values('Squash',2,4,456);
insert into game values('TablTennis',4,4,789);
insert into game values('Badminton',4,4,321);
insert into game values('Volleyball',3,6,654);
insert into game values('Snooker',2,2,987);
insert into game values('Basketball',3,5,101);

insert into player values(5421,'abc',542);
insert into player values(5422,'def',542);
insert into player values(5423,'ghi',542);
insert into player values(9871,'jkl',987);
insert into player values(9872,'mno',987);
insert into player values(9873,'pqr',987);

insert into gamecourts values('Tennis','TA');
insert into gamecourts values('Tennis','TB');
insert into gamecourts values('Tennis','TC');
insert into gamecourts values('Squash','SA');
insert into gamecourts values('Squash','SB');
insert into gamecourts values('TablTennis','TTA');
insert into gamecourts values('TablTennis','TTB');
insert into gamecourts values('TablTennis','TTC');
insert into gamecourts values('TablTennis','TTD');
insert into gamecourts values('Badminton','BA');
insert into gamecourts values('Badminton','BB');
insert into gamecourts values('Badminton','BC');
insert into gamecourts values('Badminton','BD');
insert into gamecourts values('Volleyball','VA');
insert into gamecourts values('Volleyball','VB');
insert into gamecourts values('Volleyball','VC');
insert into gamecourts values('Snooker','SNA');
insert into gamecourts values('Snooker','SNB');
insert into gamecourts values('Basketball','BBA');
insert into gamecourts values('Basketball','BBB');
insert into gamecourts values('Basketball','BBC');

insert into equipment values('TRacket',95,10,'Tennis');
insert into equipment values('TBall',25,7,'Tennis');
insert into equipment values('SRaquet',95,8,'Squash');
insert into equipment values('SBall',22,6,'Squash');
insert into equipment values('TTRacket',90,10,'TablTennis');
insert into equipment values('TTBall',18,8,'TablTennis');
insert into equipment values('BRaquet',99,10,'Badminton');
insert into equipment values('BBall',28,6,'Badminton');
insert into equipment values('VBall',85,10,'Volleyball');
insert into equipment values('Scue',99,10,'Snooker');
insert into equipment values('SnBall',30,10,'Snooker');
insert into equipment values('TRacket',95,10,'Tennis');
insert into equipment values('BaBall',25,7,'Basketball');

insert into play values('Tennis',5421);
insert into play values('Squash',5422);
insert into play values('TablTennis',5423);
insert into play values('Badminton',9871);
insert into play values('Volleyball',9872);
insert into play values('Snooker',9873);
insert into play values('Basketball',5421);
insert into play values('Tennis',5422);
insert into play values('Squash',5423);
insert into play values('Badminton',9872);
insert into play values('Volleyball',9873);
insert into play values('Snooker',9871);

insert into member values(5421,100);
insert into member values(5422,101);
insert into member values(5423,102);
insert into member values(9873,104);
insert into member values(9872,105);

insert into member_info values(100,150,'silver');
insert into member_info values(101,187,'silver');
insert into member_info values(102,950,'platinum');
insert into member_info values(103,700,'platinum');
insert into member_info values(104,500,'gold');

insert into nonmember values(9871);

insert into membership values(100,542,90,'silver',1,To_date('2016-01-26','YYYY-MM-DD'),5421);
insert into membership values(101,542,90,'silver',1,To_date('2016-05-02','YYYY-MM-DD'),5422);
insert into membership values(102,542,90,'silver',1,To_date('2016-11-10','YYYY-MM-DD'),5423);
insert into membership values(103,987,90,'silver',1,To_date('2016-09-07','YYYY-MM-DD'),9872);
insert into membership values(104,987,90,'silver',1,To_date('2016-12-05','YYYY-MM-DD'),9873);

insert into payment values(1234,'Credit',90,542,100);
insert into payment values(3456,'Cash',90,542,101);
insert into payment values(5678,'Credit',90,542,102);
insert into payment values(7890,'Credit',90,987,103);
insert into payment values(9012,'Cash',90,987,104);

insert into employees values(45,'xyz',542,99,'y');
insert into employees values(54,'zyx',542,49,'n');
insert into employees values(85,'pqr',987,99,'y');
insert into employees values(58,'rqp',987,49,'n');
insert into employees values(1,'c1',542,60,'n');
insert into employees values(2,'c2',987,60,'n');
insert into employees values(3,'c3',542,60,'n');
insert into employees values(4,'c4',987,60,'n');
insert into employees values(5,'c5',542,60,'n');
insert into employees values(6,'c6',987,60,'n');
insert into employees values(7,'c7',542,60,'n');
insert into employees values(8,'c8',987,60,'n');
insert into employees values(9,'c9',542,60,'n');
insert into employees values(10,'c10',987,60,'n');
insert into employees values(11,'c11',542,60,'n');
insert into employees values(12,'c12',987,60,'n');
insert into employees values(13,'c13',542,60,'n');
insert into employees values(14,'c14',987,60,'n');
insert into employees values(111,'p1',542,60,'n');
insert into employees values(112,'p2',987,60,'n');


insert into staff values(54);
insert into staff values(58);

insert into coach values(1,99);
insert into coach values(2,98);
insert into coach values(3,97);
insert into coach values(4,96);
insert into coach values(5,95);
insert into coach values(6,94);
insert into coach values(7,93);
insert into coach values(8,92);
insert into coach values(9,91);
insert into coach values(10,90);
insert into coach values(11,89);
insert into coach values(12,88);
insert into coach values(13,87);
insert into coach values(14,86);


insert into coach_info values(99,'oneyear','Tennis');
insert into coach_info values(98,'oneyear','Tennis');
insert into coach_info values(97,'twoyears','Squash');
insert into coach_info values(96,'twoyears','Squash');
insert into coach_info values(95,'twoyears','TablTennis');
insert into coach_info values(94,'twoyears','TablTennis');
insert into coach_info values(93,'oneyears','Badminton');
insert into coach_info values(92,'twoyears','Badminton');
insert into coach_info values(91,'oneyears','Volleyball');
insert into coach_info values(90,'twoyears','Volleyball');
insert into coach_info values(89,'twoyears','Snooker');
insert into coach_info values(88,'threeyears','Snooker');
insert into coach_info values(87,'oneyears','Basketball');
insert into coach_info values(86,'twoyears','Basketball');

insert into physician values(111,50);
insert into physician values(112,51);

insert into physician_info values(50,'threeyears');
insert into physician_info values(51,'threeyears');

insert into game_reg values('Tennis',5421,100,54,11111);
insert into game_reg values('Squash',5422,101,54,11112);
insert into game_reg values('TablTennis',5423,102,54,11113);
insert into game_reg values('Badminton',9873,104,58,11114);
insert into game_reg values('Snooker',9872,105,58,11115);
insert into game_reg values('Volleyball',9873,104,58,11116);
insert into game_reg values('Basketball',5422,101,54,11117);

insert into game_reg_info values(11111,'TC',To_date('2016-12-02','YYYY-MM-DD'),To_date('2016-12-04','YYYY-MM-DD'));
insert into game_reg_info values(11112,'SA',To_date('2016-12-03','YYYY-MM-DD'),To_date('2016-12-05','YYYY-MM-DD'));
insert into game_reg_info values(11113,'TTA',To_date('2016-12-04','YYYY-MM-DD'),To_date('2016-12-06','YYYY-MM-DD'));
insert into game_reg_info values(11114,'BD',To_date('2016-12-01','YYYY-MM-DD'),To_date('2016-12-02','YYYY-MM-DD'));
insert into game_reg_info values(11115,'SNB',To_date('2016-12-02','YYYY-MM-DD'),To_date('2016-12-03','YYYY-MM-DD'));
insert into game_reg_info values(11116,'VC',To_date('2016-11-30','YYYY-MM-DD'),To_date('2016-12-02','YYYY-MM-DD'));
insert into game_reg_info values(11117,'BBB',To_date('2016-12-05','YYYY-MM-DD'),To_date('2016-12-06','YYYY-MM-DD'));

insert into game_canc values('TablTennis',5423,102,54,11113,99997);
insert into game_canc values('Snooker',9872,105,58,11115,99995);

insert into game_canc_info values(11113,99997,To_date('2016-12-05','YYYY-MM-DD'));
insert into game_canc_info values(11115,99995,To_date('2016-12-03','YYYY-MM-DD'));

