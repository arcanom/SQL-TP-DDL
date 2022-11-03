/* 1*/
create database db1;

use db1;

create table client(
nom varchar(32),
prenom varchar(32),
age int,
telephone varchar(32),
adresse varchar(50),
mail varchar(30),
code_postal varchar(10),
ville varchar(32)
);

/*2*/
create table employe(
nom varchar(32),
prenom varchar(32),
age int,
telephone varchar(32),
adresse varchar(50),
mail varchar(30),
code_postal varchar(10),
ville varchar(32)
);

create table manager(
nom varchar(32),
prenom varchar(32),
age int,
telephone varchar(32),
adresse varchar(50),
mail varchar(30),
code_postal varchar(10),
ville varchar(32)
);

/*3*/
insert into Client (nom, prenom, age, telephone, mail, adresse, code_postal, ville) values('Marco','Paul', 45, '0234567865', 'laurent.mike@gmail.com','56 rue de la Lys', '56908', 'Halluin' );



/* 4*/
 insert into Employe (nom, prenom, age, telephone, mail, adresse, code_postal, ville) values('Michel','Martin', 67, '0234967865', 'alain.deloinmaisdetresloin@gmail.com', '56 rue des Flandres', '31908', 'Toulouse' ); 


alter table Employe modify column mail  varchar(100);

select * from Employe;

/* 5 */
insert into Manager (nom, prenom, age, telephone, mail, adresse, code_postal, ville) values('Laurent','Pierre', 34, '0934467805', 'l.pierre@gmail.com', '67 rue des Mers', '31908', 'Toulouse' ); 

select * from Manager;

/*6*/

alter table client  add column date_inscription Date;

/*7*/

alter table client  modify column   telephone varchar(32) null ;
alter table client  modify column   mail  varchar(32) null ;

insert into client(nom,prenom,age,adresse,code_postal,ville,date_inscription)values('Robert','Alain',75,'45 rue des Champs','75000','Paris','2021-01-15');

select * from client;

/*8*/
alter table manager  add column date_arrivee Date;
alter table employe  add column date_arrivee Date;

select * from manager;
select * from employe;

/* 9 */
alter table manager rename  to responsable ;
select * from responsable;

/* 10*/
alter table client  change column ville city  varchar(32);
alter table responsable  change column ville city  varchar(32);
alter table employe  change column ville city  varchar(32);

select * from client;
select * from responsable;

/* 11*/

create table propect(
id int not null auto_increment,
nom varchar(32),
prenom varchar(32),
age int,
date_contact Date,
telephone varchar(32),
mail varchar(50),
adresse varchar(50),
code_postal varchar(10),
ville varchar(32),
revenu_annuel decimal(7,2),

primary key(id)
);

/* 12 */

alter table propect add constraint c_age check(age>18) ;
alter table propect add constraint cu_NomPrenom  unique(nom, prenom) ;


/* 13 */
alter table propect modify column telephone varchar(32) default ("Pas de telephone") ;
alter table propect modify column mail varchar(32) default (" Pas de Mail") ;

/* 14 */ 
alter table propect modify column nom  varchar(32) not null ;
alter table propect modify column prenom  varchar(32) not null ;

/* 15*/
insert into propect(nom,prenom,age,date_contact,telephone,mail,adresse,code_postal,ville, revenu_annuel)values('Patrico','Jim', 56, '2021-09-07' ,'0934467805', 'mike.jim@gmail.com', '67 rue des Mers', '31908', 'Lyon',44000.89);
insert into propect(nom,prenom,age,date_contact,mail,adresse,code_postal,ville, revenu_annuel)values('Robert','Louis', 56, '2021-09-07', 'mike.jim@gmail.com', '67 rue des Mers', '31908', 'Lyon',44000.89);
insert into propect(nom,prenom,age,date_contact,telephone,adresse,code_postal,ville, revenu_annuel)values('Mat','Raoul', 56, '2021-09-07' ,'0934467805', '67 rue des Mers', '31908', 'Lyon',44000.89);

select * from propect;

/* 16 */
insert into propect(nom,prenom,age,date_contact,telephone,mail,adresse,code_postal,ville, revenu_annuel)values('Mike','Jim', 56, '2021-09-07' ,'0934467805', 'mike.jim@gmail.com', '67 rue des Mers', '31908', 'Lyon',44000.89);

/* 17 */
insert into propect(nom,prenom,age,date_contact,telephone,mail,adresse,code_postal,ville, revenu_annuel)values('Tom','Jones', 34, '2021-09-07' ,'0734467805', 'tom.jones@gmail.com', '67 rue des Postes', '59908', 'Lille',44000.89);


/* 18 */
 insert into propect (nom, prenom, age, date_contact,telephone, mail, adresse, code_postal, ville, revenu_annuel) values('Tina','Hike', 78, '2021-09-14' ,'0634467805', 'mike.jim@gmail.com', '67 rue des Flers', '59908', 'Roubaix', 44000.89 ); 

/* 19 */

alter table  responsable  drop column  code_postal;

/* 20 */
drop table client;
drop table employe;
show tables ;