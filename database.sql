-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler version: 0.9.4-beta1
-- PostgreSQL version: 13.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: new_database | type: DATABASE --
-- DROP DATABASE IF EXISTS new_database;
-- ddl-end --


-- object: pwb | type: SCHEMA --
-- DROP SCHEMA IF EXISTS pwb CASCADE;
CREATE SCHEMA pwb;
-- ddl-end --
-- ddl-end --

-- ddl-end --

-- object: public.users | type: TABLE --
-- DROP TABLE IF EXISTS public.users CASCADE;
CREATE TABLE public.users (
	username varchar,
	id integer NOT NULL,
	password varchar,
	email varchar,
	"accountType" varchar,
	CONSTRAINT users_pk PRIMARY KEY (id)
);
-- ddl-end --
COMMENT ON TABLE public.users IS E'Tables of all users';
-- ddl-end --
-- ddl-end --

-- object: public.articles | type: TABLE --
-- DROP TABLE IF EXISTS public.articles CASCADE;
CREATE TABLE public.articles (
	id integer NOT NULL,
	title varchar,
	content varchar,
	created date,
	edited date,
	rating double precision,
	id_users integer,
	CONSTRAINT articles_pk PRIMARY KEY (id)
);
-- ddl-end --
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public.articles DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public.articles ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.comments | type: TABLE --
-- DROP TABLE IF EXISTS public.comments CASCADE;
CREATE TABLE public.comments (
	id integer NOT NULL,
	content varbit,
	rating double precision,
	created date,
	edited date,
	id_users integer,
	id_articles integer,
	CONSTRAINT comments_pk PRIMARY KEY (id)
);
-- ddl-end --
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public.comments DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public.comments ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: articles_fk | type: CONSTRAINT --
-- ALTER TABLE public.comments DROP CONSTRAINT IF EXISTS articles_fk CASCADE;
ALTER TABLE public.comments ADD CONSTRAINT articles_fk FOREIGN KEY (id_articles)
REFERENCES public.articles (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.masses | type: TABLE --
-- DROP TABLE IF EXISTS public.masses CASCADE;
CREATE TABLE public.masses (
	id integer NOT NULL,
	date date,
	id_users integer,
	id_users1 integer,
	id_users2 integer,
	CONSTRAINT masses_pk PRIMARY KEY (id)
);
-- ddl-end --
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public.masses DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public.masses ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public."seatReservations" | type: TABLE --
-- DROP TABLE IF EXISTS public."seatReservations" CASCADE;
CREATE TABLE public."seatReservations" (
	id integer NOT NULL,
	"column" varchar,
	"row" varchar,
	id_users integer,
	id_masses integer,
	CONSTRAINT reservations_pk PRIMARY KEY (id)
);
-- ddl-end --
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public."seatReservations" DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public."seatReservations" ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: masses_fk | type: CONSTRAINT --
-- ALTER TABLE public."seatReservations" DROP CONSTRAINT IF EXISTS masses_fk CASCADE;
ALTER TABLE public."seatReservations" ADD CONSTRAINT masses_fk FOREIGN KEY (id_masses)
REFERENCES public.masses (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public."massReservatioins" | type: TABLE --
-- DROP TABLE IF EXISTS public."massReservatioins" CASCADE;
CREATE TABLE public."massReservatioins" (
	id integer NOT NULL,
	cost double precision,
	"massFor" varchar,
	comment varchar,
	id_masses integer,
	id_users integer,
	id_users1 integer,
	CONSTRAINT "massReservatioins_pk" PRIMARY KEY (id)
);
-- ddl-end --
-- ddl-end --

-- object: masses_fk | type: CONSTRAINT --
-- ALTER TABLE public."massReservatioins" DROP CONSTRAINT IF EXISTS masses_fk CASCADE;
ALTER TABLE public."massReservatioins" ADD CONSTRAINT masses_fk FOREIGN KEY (id_masses)
REFERENCES public.masses (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public."massReservatioins" DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public."massReservatioins" ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: users_fk1 | type: CONSTRAINT --
-- ALTER TABLE public."massReservatioins" DROP CONSTRAINT IF EXISTS users_fk1 CASCADE;
ALTER TABLE public."massReservatioins" ADD CONSTRAINT users_fk1 FOREIGN KEY (id_users1)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public."churchCleanup" | type: TABLE --
-- DROP TABLE IF EXISTS public."churchCleanup" CASCADE;
CREATE TABLE public."churchCleanup" (
	id integer NOT NULL,
	daterange daterange,
	comment varchar,
	id_users integer,
	id_users1 integer,
	id_users2 integer,
	CONSTRAINT "churchCleanup_pk" PRIMARY KEY (id)
);
-- ddl-end --
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public."churchCleanup" DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public."churchCleanup" ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: users_fk1 | type: CONSTRAINT --
-- ALTER TABLE public."churchCleanup" DROP CONSTRAINT IF EXISTS users_fk1 CASCADE;
ALTER TABLE public."churchCleanup" ADD CONSTRAINT users_fk1 FOREIGN KEY (id_users1)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: users_fk2 | type: CONSTRAINT --
-- ALTER TABLE public."churchCleanup" DROP CONSTRAINT IF EXISTS users_fk2 CASCADE;
ALTER TABLE public."churchCleanup" ADD CONSTRAINT users_fk2 FOREIGN KEY (id_users2)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: users_fk1 | type: CONSTRAINT --
-- ALTER TABLE public.masses DROP CONSTRAINT IF EXISTS users_fk1 CASCADE;
ALTER TABLE public.masses ADD CONSTRAINT users_fk1 FOREIGN KEY (id_users1)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: users_fk2 | type: CONSTRAINT --
-- ALTER TABLE public.masses DROP CONSTRAINT IF EXISTS users_fk2 CASCADE;
ALTER TABLE public.masses ADD CONSTRAINT users_fk2 FOREIGN KEY (id_users2)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public."confessionsReservations" | type: TABLE --
-- DROP TABLE IF EXISTS public."confessionsReservations" CASCADE;
CREATE TABLE public."confessionsReservations" (
	id integer NOT NULL,
	date date,
	"isReserved" boolean,
	id_users integer,
	id_users1 integer,
	CONSTRAINT "confessionsReservations_pk" PRIMARY KEY (id)
);
-- ddl-end --
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public."confessionsReservations" DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public."confessionsReservations" ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: users_fk1 | type: CONSTRAINT --
-- ALTER TABLE public."confessionsReservations" DROP CONSTRAINT IF EXISTS users_fk1 CASCADE;
ALTER TABLE public."confessionsReservations" ADD CONSTRAINT users_fk1 FOREIGN KEY (id_users1)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.donations | type: TABLE --
-- DROP TABLE IF EXISTS public.donations CASCADE;
CREATE TABLE public.donations (
	id integer NOT NULL,
	amount double precision,
	comment varchar,
	currency varchar,
	id_users integer,
	"id_massReservatioins" integer,
	"id_churchCleanup" integer,
	CONSTRAINT donations_pk PRIMARY KEY (id)
);
-- ddl-end --
-- ddl-end --

-- object: users_fk | type: CONSTRAINT --
-- ALTER TABLE public.donations DROP CONSTRAINT IF EXISTS users_fk CASCADE;
ALTER TABLE public.donations ADD CONSTRAINT users_fk FOREIGN KEY (id_users)
REFERENCES public.users (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: "massReservatioins_fk" | type: CONSTRAINT --
-- ALTER TABLE public.donations DROP CONSTRAINT IF EXISTS "massReservatioins_fk" CASCADE;
ALTER TABLE public.donations ADD CONSTRAINT "massReservatioins_fk" FOREIGN KEY ("id_massReservatioins")
REFERENCES public."massReservatioins" (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: "churchCleanup_fk" | type: CONSTRAINT --
-- ALTER TABLE public.donations DROP CONSTRAINT IF EXISTS "churchCleanup_fk" CASCADE;
ALTER TABLE public.donations ADD CONSTRAINT "churchCleanup_fk" FOREIGN KEY ("id_churchCleanup")
REFERENCES public."churchCleanup" (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --


