--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Ubuntu 17.5-1.pgdg24.04+1)
-- Dumped by pg_dump version 17.5 (Ubuntu 17.5-1.pgdg24.04+1)

-- Started on 2025-08-03 15:21:51 WAT

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
-- TOC entry 217 (class 1259 OID 16751)
-- Name: task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task (
    id bigint NOT NULL,
    title character varying(255),
    description character varying(2000),
    status character varying(255),
    version integer,
    CONSTRAINT task_status_check CHECK (((status)::text = ANY ((ARRAY['TODO'::character varying, 'IN_PROGRESS'::character varying, 'DONE'::character varying])::text[])))
);


ALTER TABLE public.task OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16756)
-- Name: task_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.task_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.task_seq OWNER TO postgres;

--
-- TOC entry 3438 (class 0 OID 16751)
-- Dependencies: 217
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.task (id, title, description, status, version) FROM stdin;
52	Distraction	Go out for a walk to stress out	IN_PROGRESS	0
53	Get a Date	Get to the best restaurant in the city	TODO	0
54	LAUNDRY	Wash all the childrens cloth	DONE	0
\.


--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 218
-- Name: task_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.task_seq', 101, true);


--
-- TOC entry 3292 (class 2606 OID 16755)
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


-- Completed on 2025-08-03 15:21:51 WAT

--
-- PostgreSQL database dump complete
--

