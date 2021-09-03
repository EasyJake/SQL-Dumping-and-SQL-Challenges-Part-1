--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: pets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pets (
    pet_id integer,
    pet_type character varying(25),
    pet_name character varying(25),
    pet_age integer
);


ALTER TABLE public.pets OWNER TO postgres;

--
-- Data for Name: pets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pets (pet_id, pet_type, pet_name, pet_age) FROM stdin;
3	Bunny	Rainbow	1
1	Dog	Tuxedo	8
2	Cat	Olivia	3
\.


--
-- PostgreSQL database dump complete
--

