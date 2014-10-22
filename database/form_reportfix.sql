--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.5
-- Dumped by pg_dump version 9.3.1
-- Started on 2014-10-22 21:51:39

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
-- TOC entry 1244 (class 1259 OID 70902)
-- Name: form_reportfix; Type: TABLE; Schema: adempiere; Owner: postgres; Tablespace: 
--

CREATE TABLE form_reportfix (
    no integer NOT NULL,
    datereportfix character varying,
    timereportfix character varying,
    select_reserve character varying,
    description_report character varying,
    status character varying
);


ALTER TABLE adempiere.form_reportfix OWNER TO postgres;

--
-- TOC entry 1243 (class 1259 OID 70900)
-- Name: form_reportfix_id_user_seq; Type: SEQUENCE; Schema: adempiere; Owner: postgres
--

CREATE SEQUENCE form_reportfix_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adempiere.form_reportfix_id_user_seq OWNER TO postgres;

--
-- TOC entry 5967 (class 0 OID 0)
-- Dependencies: 1243
-- Name: form_reportfix_id_user_seq; Type: SEQUENCE OWNED BY; Schema: adempiere; Owner: postgres
--

ALTER SEQUENCE form_reportfix_id_user_seq OWNED BY form_reportfix.no;


--
-- TOC entry 5737 (class 2604 OID 70905)
-- Name: no; Type: DEFAULT; Schema: adempiere; Owner: postgres
--

ALTER TABLE ONLY form_reportfix ALTER COLUMN no SET DEFAULT nextval('form_reportfix_id_user_seq'::regclass);


--
-- TOC entry 5962 (class 0 OID 70902)
-- Dependencies: 1244
-- Data for Name: form_reportfix; Type: TABLE DATA; Schema: adempiere; Owner: postgres
--

COPY form_reportfix (no, datereportfix, timereportfix, select_reserve, description_report, status) FROM stdin;
3	2014-10-26	03:02	ห้องประชุม 12	โต๊ะที่2	เสีย
4	2014-10-04	03:02	ห้องประชุม 14	โต๊ะที่2	ซ่อมเสร็จเรียบร้อย
5	2014-10-04	03:02	ห้องประชุม 14	โต๊ะที่2	ซ่อมเสร็จเรียบร้อย
6	2014-10-02	03:02	ห้องประชุม 14	โต๊ะที่2	ซ่อมเสร็จเรียบร้อย
7	2014-10-11	03:02	ห้องประชุม 14	โต๊ะที่2	ซ่อมเสร็จเรียบร้อย
8	2014-11-08	23:00	ห้องประชุม 10	เก้าอี้หัก	รอซ่อม
9	2014-10-03				
10	2014-10-15				
11	2014-10-09	20:50	ห้องประชุม 4	sdfdf	รอส่งซ่อม
12	2014-10-11	10:30	ห้องประชุม 13	dfd	0
13			ห้องประชุม2		
\.


--
-- TOC entry 5968 (class 0 OID 0)
-- Dependencies: 1243
-- Name: form_reportfix_id_user_seq; Type: SEQUENCE SET; Schema: adempiere; Owner: postgres
--

SELECT pg_catalog.setval('form_reportfix_id_user_seq', 13, true);


-- Completed on 2014-10-22 21:51:39

--
-- PostgreSQL database dump complete
--

