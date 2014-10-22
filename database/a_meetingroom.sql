--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.5
-- Dumped by pg_dump version 9.3.1
-- Started on 2014-10-22 21:53:14

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
-- TOC entry 1246 (class 1259 OID 70943)
-- Name: a_meetingroom; Type: TABLE; Schema: adempiere; Owner: adempiere; Tablespace: 
--

CREATE TABLE a_meetingroom (
    "A_MeetingRoom_ID" integer,
    name character varying,
    "values" character varying,
    qty character varying,
    pic character varying,
    satus character varying
);


ALTER TABLE adempiere.a_meetingroom OWNER TO adempiere;

--
-- TOC entry 1245 (class 1259 OID 70941)
-- Name: A_MeetingRoom_A_MeetingRoom_ID_seq; Type: SEQUENCE; Schema: adempiere; Owner: adempiere
--

CREATE SEQUENCE "A_MeetingRoom_A_MeetingRoom_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adempiere."A_MeetingRoom_A_MeetingRoom_ID_seq" OWNER TO adempiere;

--
-- TOC entry 5967 (class 0 OID 0)
-- Dependencies: 1245
-- Name: A_MeetingRoom_A_MeetingRoom_ID_seq; Type: SEQUENCE OWNED BY; Schema: adempiere; Owner: adempiere
--

ALTER SEQUENCE "A_MeetingRoom_A_MeetingRoom_ID_seq" OWNED BY a_meetingroom."A_MeetingRoom_ID";


--
-- TOC entry 5737 (class 2604 OID 70946)
-- Name: A_MeetingRoom_ID; Type: DEFAULT; Schema: adempiere; Owner: adempiere
--

ALTER TABLE ONLY a_meetingroom ALTER COLUMN "A_MeetingRoom_ID" SET DEFAULT nextval('"A_MeetingRoom_A_MeetingRoom_ID_seq"'::regclass);


--
-- TOC entry 5968 (class 0 OID 0)
-- Dependencies: 1245
-- Name: A_MeetingRoom_A_MeetingRoom_ID_seq; Type: SEQUENCE SET; Schema: adempiere; Owner: adempiere
--

SELECT pg_catalog.setval('"A_MeetingRoom_A_MeetingRoom_ID_seq"', 20, true);


--
-- TOC entry 5962 (class 0 OID 70943)
-- Dependencies: 1246
-- Data for Name: a_meetingroom; Type: TABLE DATA; Schema: adempiere; Owner: adempiere
--

COPY a_meetingroom ("A_MeetingRoom_ID", name, "values", qty, pic, satus) FROM stdin;
4	ikk			\N	กรุณาเลือก
5	http			\N	กรุณาเลือก
6	http			\N	กรุณาเลือก
7	 ikk	1234	 20	\N	1
8	 ikk	1234	 20	\N	1
9	 sdafasdf	 adsfadsf	 asdfsdf	\N	3
10	 asdf	 asdfasdf424	1232323	\N	1
11	 123232323	 232	 2323	\N	2
12	 123232323	 232	 2323	\N	2
13	 aa	 cc	bb	\N	2
14	 kittima	job15	20	\N	1
15	 kittima	job15	20	\N	1
16	 kittima	job15	20	\N	1
18	 sdfs	 dfs	 dfsd	\N	1
19	 sdfdfsd	 dsfdf	 sfsdf	\N	1
20	fofg			\N	0
\.


-- Completed on 2014-10-22 21:53:14

--
-- PostgreSQL database dump complete
--

