
--database
create database DBhospital
--useing database
use DBhospital
----user_table
create table GM_USERS(user_id int primary key identity(1,1),user_name nvarchar(100),full_name varchar(100),user_Address nvarchar(200),Contact_no varchar(10), Qualification varchar(100),Join_date datetime,shift_time datetime,IsActive bit,IsDeleteed bit)
---clients _table
create table GM_CLIENTS(client_id int primary key identity(1,1), client_status_id int,full_name varchar(100),user_Address nvarchar(200),contact_no varchar(10),IsActive bit,IsDeleteed bit)
--look_up
create table GM_LOOK_UP(Status_id int primary key identity(1,1),Descriptions varchar(100),IsActive bit,IsDeleteed bit)
--role_table
create table GM_USER_ROLES(role_id int primary key identity(1,1),role_name varchar(100), assigned_by varchar(100),IsActive bit,IsDeleteed bit)
--feature_table
create table GM_FEATURES(feature_id int primary key identity(1,1),feature_name varchar(20),assigned_by varchar(100),IsActive bit,IsDeleteed bit)
--role_feature
create table GM_ROLE_FEATURE(role_feature_id int primary key identity(1,1),role_id int foreign key references GM_USER_ROLES(role_id),IsActive bit,IsDeleteed bit,feature_id int foreign key references GM_FEATURES(feature_id))
--login_table
create table GM_LOGIN(id int primary key identity(1,1),user_id varchar(10),user_name nvarchar(10),user_password nvarchar(10),IsDeleted bit,IsActive bit ,last_login_date date)