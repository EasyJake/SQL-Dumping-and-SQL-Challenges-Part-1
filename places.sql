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
-- Name: places; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.places (
    place_id integer NOT NULL,
    name character varying NOT NULL,
    state character varying,
    cuisines character varying NOT NULL,
    pic character varying,
    founded integer
);


ALTER TABLE public.places OWNER TO postgres;

--
-- Name: place_place_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.place_place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_place_id_seq OWNER TO postgres;

--
-- Name: place_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.place_place_id_seq OWNED BY public.places.place_id;


--
-- Name: places place_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.places ALTER COLUMN place_id SET DEFAULT nextval('public.place_place_id_seq'::regclass);


--
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.places (place_id, name, state, cuisines, pic, founded) FROM stdin;
2	River House	\N	Seafood	https://images.unsplash.com/photo-1562158079-e4b9ed06b62d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80	2000
3	Ornelles	\N	BBQ	\N	\N
4	Olive Garden	FL	Italian	\N	1982
5	Chipotle	\N	Mexican	\N	\N
6	La Rosa	FL	Italian	\N	2014
\.


--
-- Name: place_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.place_place_id_seq', 6, true);


--
-- Name: places place_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT place_pkey PRIMARY KEY (place_id);


--
-- PostgreSQL database dump complete
--

