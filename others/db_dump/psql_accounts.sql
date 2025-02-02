-- PostgreSQL dump
--
-- Host: 192.168.88.17    Database: accounts
-- ------------------------------------------------------
-- Server version	9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

-- Table structure for table `role`
DROP TABLE IF EXISTS "role";
CREATE TABLE "role" (
  "id" serial NOT NULL,
  "name" character varying(45)
);
ALTER TABLE "role" OWNER TO postgres;

-- Data for table `role`
COPY "role" ("id", "name") FROM stdin;
1	ROLE_USER
\.

-- Table structure for table `user`
DROP TABLE IF EXISTS "user";
CREATE TABLE "user" (
  "id" serial NOT NULL,
  "username" character varying(255),
  "userEmail" character varying(255),
  "profileImg" character varying(255),
  "profileImgPath" character varying(255),
  "dateOfBirth" character varying(255),
  "fatherName" character varying(255),
  "motherName" character varying(255),
  "gender" character varying(255),
  "maritalStatus" character varying(255),
  "permanentAddress" character varying(255),
  "tempAddress" character varying(255),
  "primaryOccupation" character varying(255),
  "secondaryOccupation" character varying(255),
  "skills" character varying(255),
  "phoneNumber" character varying(255),
  "secondaryPhoneNumber" character varying(255),
  "nationality" character varying(255),
  "language" character varying(255),
  "workingExperience" character varying(255),
  "password" character varying(255)
);
ALTER TABLE "user" OWNER TO postgres;

-- Data for table `user`
COPY "user" ("id", "username", "userEmail", "profileImg", "profileImgPath", "dateOfBirth", "fatherName", "motherName", "gender", "maritalStatus", "permanentAddress", "tempAddress", "primaryOccupation", "secondaryOccupation", "skills", "phoneNumber", "secondaryPhoneNumber", "nationality", "language", "workingExperience", "password") FROM stdin;
7	admin_vp	admin@hkhinfo.com		27/01/2002	A nirban	T nirban	male	unMarried	Dubai,UAE	Dubai,UAE	Software Engineer	Software Engineer	Java HTML CSS	8888888888	8888888888	Indian	english	2	$2a$11$0a7VdTr4rfCQqtsvpng6GuJnzUmQ7gZiHXgzGPgm5hkRa3avXgBLK
8	Abrar Nirban	abrar.nirban74@gmail.com		27/01/2002	A nirban	T nirban	male	unMarried	Dubai,UAE	Dubai,UAE	Software Engineer	Software Engineer	Java HTML CSS	8888888888	8888888888	Indian	english	2	$2a$11$UgG9TkHcgl02LxlqxRHYhOf7Xv4CxFmFEgS0FpUdk42OeslI.6JAW
9	Amayra Fatima	amayra@gmail.com		20/06/1993	K	L	female	unMarried	Dubai,UAE	Dubai,UAE	Software Engineer	Software Engineer	Java HTML CSS	9999999999	9999999999	India	english	5	$2a$11$gwvsvUrFU.YirMM1Yb7NweFudLUM91AzH5BDFnhkNzfzpjG.FplYO
10	Aron	aron.DSilva@gmail.com		27/01/2002	M nirban	R nirban	male	unMarried	Dubai,UAE	Dubai,UAE	Software Engineer	Software Engineer	Java HTML CSS	7777777777	777777777	India	english	7	$2a$11$6oZEgfGGQAH23EaXLVZ2WOSKxcEJFnBSw2N2aghab0s2kcxSQwjhC
11	Kiran Kumar	kiran@gmail.com		8/12/1993	K K	RK	male	unMarried	SanFrancisco	James Street	Software Engineer	Software Engineer	Java HTML CSS AWS	1010101010	1010101010	India	english	10	$2a$11$EXwpna1MlFFlKW5ut1iVi.AoeIulkPPmcOHFO8pOoQt1IYU9COU0m
12	Balbir Singh	balbir@gmail.com		20/06/1993	balbir RK	balbir AK	male	unMarried	SanFrancisco	US	Software Engineer	Software Engineer	Java HTML CSS AWS	8888888111	8888888111	India	english	8	$2a$11$pzWNzzR.HUkHzz2zhAgqOeCl0WaTgY33NxxJ7n0l.rnEqjB9JO7vy
4	Hibo Prince	hibo.prince@gmail.com		6/09/2000	Abara	Queen	male	unMarried	Electronic City,UAE	Electronic City,UAE	Tester	Freelancing	Python PHP	9146389863	9146389871	Indian	hindi	3	$2a$11$UgG9TkHcgl02LxlqxRHYhOf7Xv4CxFmFEgS0FpUdk42OeslI.6JAR
5	Aejaaz Habeeb	aejaaz.habeeb@gmail.com		16/02/2001	Imran	Ziya	male	unMarried	AbuDhabi,UAE	AbuDhabi,UAE	Developer	Developer	Azure Devops	9566489863	9566489863	Indian	hindi	4	$2a$11$UgG9TkHcgl02LxlqxRHYhOf7Xv4CxFmFEgS0FpUdk42OeslI.6JAR
6	Jackie	jackie.chan@gmail.com		28/09/1992	Charles	Chan	male	Married	HongKong,China	HongKong,China	MartialArtist	MartialArtist	KungFu	9246488863	9246488863	Chinese	Mandrian	1	$2a$11$UgG9TkHcgl02LxlqxRHYhOf7Xv4CxFmFEgS0FpUdk42OeslI.6RAR
13	Srinath Goud	sgoud@gmail.com
\.

-- Table structure for table `user_role`
DROP TABLE IF EXISTS "user_role";
CREATE TABLE "user_role" (
  "user_id" integer NOT NULL,
  "role_id" integer NOT NULL
);
ALTER TABLE "user_role" OWNER TO postgres;

-- Data for table `user_role`
COPY "user_role" ("user_id", "role_id") FROM stdin;
4	1
5	1
6	1
7	1
8	1
9	1
10	1
11	1
12	1
13	1
\.

-- End of data insert

-- Restore the previous values for some settings
SET default_with_oids = false;
SET timezone = 'UTC';

-- Dropping comments from the dump
COMMENT ON SCHEMA public IS 'Standard public schema';
COMMENT ON TABLE public."role" IS 'Table "role"';
COMMENT ON COLUMN public."role"."id" IS 'id';
COMMENT ON COLUMN public."role"."name" IS 'name';
COMMENT ON TABLE public."user" IS 'Table "user"';
COMMENT ON COLUMN public."user"."id" IS 'id';
COMMENT ON COLUMN public."user"."username" IS 'username';
COMMENT ON COLUMN public."user"."userEmail" IS 'userEmail';
COMMENT ON COLUMN public."user"."profileImg" IS 'profileImg';
COMMENT ON COLUMN public."user"."profileImgPath" IS 'profileImgPath';
COMMENT ON COLUMN public."user"."dateOfBirth" IS 'dateOfBirth';
COMMENT ON COLUMN public."user"."fatherName" IS 'fatherName';
COMMENT ON COLUMN public."user"."motherName" IS 'motherName';
COMMENT ON COLUMN public."user"."gender" IS 'gender';
COMMENT ON COLUMN public."user"."maritalStatus" IS 'maritalStatus';
COMMENT ON COLUMN public."user"."permanentAddress" IS 'permanentAddress';
COMMENT ON COLUMN public."user"."tempAddress" IS 'tempAddress';
COMMENT ON COLUMN public."user"."primaryOccupation" IS 'primaryOccupation';
COMMENT ON COLUMN public."user"."secondaryOccupation" IS 'secondaryOccupation';
COMMENT ON COLUMN public."user"."skills" IS 'skills';
COMMENT ON COLUMN public."user"."phoneNumber" IS 'phoneNumber';
COMMENT ON COLUMN public."user"."secondaryPhoneNumber" IS 'secondaryPhoneNumber';
COMMENT ON COLUMN public."user"."nationality" IS 'nationality';
COMMENT ON COLUMN public."user"."language" IS 'language';
COMMENT ON COLUMN public."user"."workingExperience" IS 'workingExperience';
COMMENT ON COLUMN public."user"."password" IS 'password';
COMMENT ON TABLE public."user_role" IS 'Table "user_role"';
COMMENT ON COLUMN public."user_role"."user_id" IS 'user_id';
COMMENT ON COLUMN public."user_role"."role_id" IS 'role_id';
COMMENT ON CONSTRAINT public."user_role_pkey" ON public."user_role" IS 'user_id, role_id';
COMMENT ON CONSTRAINT public."user_role_role_id_fkey" ON public."user_role" IS 'role_id';
COMMENT ON CONSTRAINT public."user_role_user_id_fkey" ON public."user_role" IS 'user_id';

-- The End
