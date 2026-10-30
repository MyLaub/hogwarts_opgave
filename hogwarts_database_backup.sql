--
-- PostgreSQL database dump
--

\restrict KlcFw2SUTTZg1XvfUx35Abv7d36RF4ptJCNPnOfkQfy5X3jmJ9DKpM0lrSb7cEr

-- Dumped from database version 18.6 (Postgres.app)
-- Dumped by pg_dump version 18.4

-- Started on 2026-10-30 11:44:25 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 24591)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    name character varying NOT NULL,
    teacher character varying NOT NULL,
    students character varying NOT NULL
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24590)
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.courses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 24626)
-- Name: houses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.houses (
    id integer NOT NULL,
    name character varying NOT NULL,
    color character varying NOT NULL,
    founder character varying NOT NULL
);


ALTER TABLE public.houses OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24625)
-- Name: houses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.houses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.houses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 24614)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying NOT NULL,
    year numeric NOT NULL,
    house character varying NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24613)
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.students ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 24603)
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    name character varying NOT NULL,
    house character varying NOT NULL
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24602)
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.teachers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.teachers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3734 (class 0 OID 24591)
-- Dependencies: 220
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (3, 'Transfiguration', 'Minerva McGonagall', '{"Harry Potter","Ron Weasley","Hermione Granger","Neville Longbottom","Hannah Abbott","Ernie Macmillan","Justin Finch-Fletchley","Padma Patil","Terry Boot","Draco Malfoy","Pansy Parkinson","Vincent Crabbe","Gregory Goyle","Blaise Zabini"}');
INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (4, 'Potions', 'Severus Snape', '{"Harry Potter","Ron Weasley","Hermione Granger","Neville Longbottom","Draco Malfoy","Pansy Parkinson","Vincent Crabbe","Gregory Goyle","Blaise Zabini"}');
INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (5, 'Charms', 'Filius Flitwick', '{"Harry Potter","Ron Weasley","Hermione Granger","Neville Longbottom","Hannah Abbott","Ernie Macmillan","Justin Finch-Fletchley","Padma Patil","Terry Boot"}');
INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (6, 'Herbology', 'Pomona Sprout', '{"Harry Potter","Ron Weasley","Hermione Granger","Neville Longbottom","Hannah Abbott","Ernie Macmillan","Justin Finch-Fletchley","Draco Malfoy","Pansy Parkinson","Vincent Crabbe","Gregory Goyle","Blaise Zabini"}');
INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (7, 'Defence Against the Dark Arts', 'Remus Lupin', '{"Harry Potter","Ron Weasley","Hermione Granger","Neville Longbottom","Draco Malfoy","Pansy Parkinson","Vincent Crabbe","Gregory Goyle","Blaise Zabini"}');
INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (8, 'Care of Magical Creatures', 'Rubeus Hagrid', '{"Harry Potter","Ron Weasley","Hermione Granger","Draco Malfoy","Pansy Parkinson","Vincent Crabbe","Gregory Goyle"}');
INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (9, 'Divination', 'Sybill Trelawney', '{"Harry Potter","Ron Weasley","Hermione Granger","Padma Patil"}');
INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (10, 'Advanced Potions', 'Horace Slughorn', '{"Fred Weasley","George Weasley","Cedric Diggory","Cho Chang"}');
INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (11, 'Muggle Studies', 'Charity Burbage', '{"Hermione Granger","Justin Finch-Fletchley"}');
INSERT INTO public.courses OVERRIDING SYSTEM VALUE VALUES (12, 'Flying Lessons', 'Quirinus Quirrell', '{"Ginny Weasley","Luna Lovegood"}');


--
-- TOC entry 3740 (class 0 OID 24626)
-- Dependencies: 226
-- Data for Name: houses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.houses OVERRIDING SYSTEM VALUE VALUES (1, 'Gryffindor', 'Scarlet', 'Godric Gryffindor');
INSERT INTO public.houses OVERRIDING SYSTEM VALUE VALUES (2, 'Hufflepuff', 'Yellow', 'Helga Hufflepuff');
INSERT INTO public.houses OVERRIDING SYSTEM VALUE VALUES (3, 'Ravenclaw', 'Blue', 'Rowena Ravenclaw');
INSERT INTO public.houses OVERRIDING SYSTEM VALUE VALUES (4, 'Slytherin', 'Green', 'Salazar Slytherin');


--
-- TOC entry 3738 (class 0 OID 24614)
-- Dependencies: 224
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (1, 'Harry Potter', 3, 'Gryffindor');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (2, 'Ron Weasley', 3, 'Gryffindor');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (3, 'Hermione Granger', 3, 'Gryffindor');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (4, 'Neville Longbottom', 3, 'Gryffindor');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (5, 'Ginny Weasley', 2, 'Gryffindor');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (6, 'Fred Weasley', 5, 'Gryffindor');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (7, 'George Weasley', 5, 'Gryffindor');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (8, 'Cedric Diggory', 6, 'Hufflepuff');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (9, 'Hannah Abbott', 3, 'Hufflepuff');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (10, 'Ernie Macmillan', 3, 'Hufflepuff');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (11, 'Justin Finch-Fletchley', 3, 'Hufflepuff');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (12, 'Luna Lovegood', 2, 'Ravenclaw');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (13, 'Cho Chang', 4, 'Ravenclaw');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (14, 'Padma Patil', 3, 'Ravenclaw');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (15, 'Terry Boot', 3, 'Ravenclaw');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (16, 'Draco Malfoy', 3, 'Slytherin');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (17, 'Pansy Parkinson', 3, 'Slytherin');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (18, 'Vincent Crabbe', 3, 'Slytherin');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (19, 'Gregory Goyle', 3, 'Slytherin');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (20, 'Blaise Zabini', 3, 'Slytherin');
INSERT INTO public.students OVERRIDING SYSTEM VALUE VALUES (22, 'My Laub', 3, 'Hufflepuff');


--
-- TOC entry 3736 (class 0 OID 24603)
-- Dependencies: 222
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (1, 'Minerva McGonagall', 'Gryffindor');
INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (2, 'Severus Snape', 'Slytherin');
INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (3, 'Filius Flitwick', 'Ravenclaw');
INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (4, 'Pomona Sprout', 'Hufflepuff');
INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (5, 'Remus Lupin', 'Gryffindor');
INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (6, 'Rubeus Hagrid', 'Gryffindor');
INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (7, 'Sybill Trelawney', 'Ravenclaw');
INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (8, 'Horace Slughorn', 'Slytherin');
INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (9, 'Quirinus Quirrell', 'Ravenclaw');
INSERT INTO public.teachers OVERRIDING SYSTEM VALUE VALUES (10, 'Charity Burbage', 'Hufflepuff');


--
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 219
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_id_seq', 12, true);


--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 225
-- Name: houses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.houses_id_seq', 5, true);


--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 223
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 22, true);


--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 221
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_id_seq', 10, true);


--
-- TOC entry 3579 (class 2606 OID 24601)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- TOC entry 3585 (class 2606 OID 24636)
-- Name: houses houses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.houses
    ADD CONSTRAINT houses_pkey PRIMARY KEY (id);


--
-- TOC entry 3583 (class 2606 OID 24624)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 3581 (class 2606 OID 24612)
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


-- Completed on 2026-10-30 11:44:26 CET

--
-- PostgreSQL database dump complete
--

\unrestrict KlcFw2SUTTZg1XvfUx35Abv7d36RF4ptJCNPnOfkQfy5X3jmJ9DKpM0lrSb7cEr

