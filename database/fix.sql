--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.5
-- Dumped by pg_dump version 9.3.1
-- Started on 2014-10-22 21:52:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = adempiere, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- TOC entry 1241 (class 1259 OID 70818)
-- Name: fix; Type: TABLE; Schema: adempiere; Owner: adempiere; Tablespace: 
--

CREATE TABLE fix (
    id_user integer NOT NULL,
    no integer NOT NULL,
    namefix character varying,
    datefix character varying,
    timefix character varying,
    select_reserve character varying,
    tool1 character varying,
    description1 character varying,
    tool2 character varying,
    description2 character varying,
    tool3 character varying,
    description3 character varying,
    tool4 character varying,
    description4 character varying,
    tool5 character varying,
    description5 character varying
);


ALTER TABLE adempiere.fix OWNER TO adempiere;

--
-- TOC entry 1239 (class 1259 OID 70814)
-- Name: form_fix_id_user_seq; Type: SEQUENCE; Schema: adempiere; Owner: adempiere
--

CREATE SEQUENCE form_fix_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adempiere.form_fix_id_user_seq OWNER TO adempiere;

--
-- TOC entry 5969 (class 0 OID 0)
-- Dependencies: 1239
-- Name: form_fix_id_user_seq; Type: SEQUENCE OWNED BY; Schema: adempiere; Owner: adempiere
--

ALTER SEQUENCE form_fix_id_user_seq OWNED BY fix.id_user;


--
-- TOC entry 1240 (class 1259 OID 70816)
-- Name: form_fix_no_seq; Type: SEQUENCE; Schema: adempiere; Owner: adempiere
--

CREATE SEQUENCE form_fix_no_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adempiere.form_fix_no_seq OWNER TO adempiere;

--
-- TOC entry 5970 (class 0 OID 0)
-- Dependencies: 1240
-- Name: form_fix_no_seq; Type: SEQUENCE OWNED BY; Schema: adempiere; Owner: adempiere
--

ALTER SEQUENCE form_fix_no_seq OWNED BY fix.no;


--
-- TOC entry 5737 (class 2604 OID 70821)
-- Name: id_user; Type: DEFAULT; Schema: adempiere; Owner: adempiere
--

ALTER TABLE ONLY fix ALTER COLUMN id_user SET DEFAULT nextval('form_fix_id_user_seq'::regclass);


--
-- TOC entry 5738 (class 2604 OID 70822)
-- Name: no; Type: DEFAULT; Schema: adempiere; Owner: adempiere
--

ALTER TABLE ONLY fix ALTER COLUMN no SET DEFAULT nextval('form_fix_no_seq'::regclass);


--
-- TOC entry 5964 (class 0 OID 70818)
-- Dependencies: 1241
-- Data for Name: fix; Type: TABLE DATA; Schema: adempiere; Owner: adempiere
--

COPY fix (id_user, no, namefix, datefix, timefix, select_reserve, tool1, description1, tool2, description2, tool3, description3, tool4, description4, tool5, description5) FROM stdin;
1	1	dfsf													
2	2	jobbi	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	3	ji	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	4	ddf	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	5	\N	\N	\N	\N	คอมพิวเตอร์	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	6	\N	\N	\N	ห้องประชุม 5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	7				ห้องประชุม 1			\N	\N	\N	\N	\N	\N	\N	\N
8	8				ห้องประชุม 1			\N	\N	\N	\N	\N	\N	\N	\N
9	9	ddf	2014-10-12	00:59	ห้องประชุม 11	โต๊ะ	dfsf								
10	10	าน			ห้องประชุม1										
11	11				ห้องประชุม12										
\.


--
-- TOC entry 5971 (class 0 OID 0)
-- Dependencies: 1239
-- Name: form_fix_id_user_seq; Type: SEQUENCE SET; Schema: adempiere; Owner: adempiere
--

SELECT pg_catalog.setval('form_fix_id_user_seq', 11, true);


--
-- TOC entry 5972 (class 0 OID 0)
-- Dependencies: 1240
-- Name: form_fix_no_seq; Type: SEQUENCE SET; Schema: adempiere; Owner: adempiere
--

SELECT pg_catalog.setval('form_fix_no_seq', 11, true);


-- Completed on 2014-10-22 21:52:16

--
-- PostgreSQL database dump complete
--

