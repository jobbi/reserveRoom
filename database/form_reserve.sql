--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.5
-- Dumped by pg_dump version 9.3.1
-- Started on 2014-10-22 21:45:28

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
-- TOC entry 1238 (class 1259 OID 70805)
-- Name: form_reserve; Type: TABLE; Schema: adempiere; Owner: adempiere; Tablespace: 
--

CREATE TABLE form_reserve (
    id_user integer,
    nameuser character varying,
    subject character varying,
    namepresident character varying,
    people character varying,
    amount character varying,
    select_reserve character varying,
    datefrom character varying,
    timefrom character varying,
    timeto character varying,
    description character varying
);


ALTER TABLE adempiere.form_reserve OWNER TO adempiere;

--
-- TOC entry 1237 (class 1259 OID 70803)
-- Name: form_reserve_id_user_seq; Type: SEQUENCE; Schema: adempiere; Owner: adempiere
--

CREATE SEQUENCE form_reserve_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adempiere.form_reserve_id_user_seq OWNER TO adempiere;

--
-- TOC entry 5967 (class 0 OID 0)
-- Dependencies: 1237
-- Name: form_reserve_id_user_seq; Type: SEQUENCE OWNED BY; Schema: adempiere; Owner: adempiere
--

ALTER SEQUENCE form_reserve_id_user_seq OWNED BY form_reserve.id_user;


--
-- TOC entry 5737 (class 2604 OID 70808)
-- Name: id_user; Type: DEFAULT; Schema: adempiere; Owner: adempiere
--

ALTER TABLE ONLY form_reserve ALTER COLUMN id_user SET DEFAULT nextval('form_reserve_id_user_seq'::regclass);


--
-- TOC entry 5962 (class 0 OID 70805)
-- Dependencies: 1238
-- Data for Name: form_reserve; Type: TABLE DATA; Schema: adempiere; Owner: adempiere
--

COPY form_reserve (id_user, nameuser, subject, namepresident, people, amount, select_reserve, datefrom, timefrom, timeto, description) FROM stdin;
1	rf	dfsd	dfsd	dfs	545	fsdf	dfs	sdf	dfsd	sdf
2	นางจิงใจ	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	jobbi	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	\N	\N	\N	\N	\N	\N	\N	04:00 AM	\N	\N
5	\N	\N	\N	\N	\N	\N	\N		\N	\N
6	\N	\N	\N	\N	\N	ห้องประชุม 5	\N	\N	\N	\N
7	นางจิงใจ	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	นางจิงใจ	กกต	\N	\N	\N	\N	\N	\N	\N	\N
9	dd	กกต	jfwoeied	CI	20	\N	\N	\N	\N	\N
10	dd	กกต	jfwoeied	CI	20	ห้องประชุม 1	\N	\N	\N	\N
11	dd	กกต	jfwoeied	CI	20	ห้องประชุม 1	08/10/2014	\N	\N	\N
12	\N	\N	\N	\N	\N	\N	\N	04:30 PM	\N	\N
13	\N	\N	\N	\N	\N	\N	\N	04:15 PM	04:30 PM	\N
14	กฤติมา	รักจริง	สดใส	HR	52	ห้องประชุม 3	15/10/2014	04:15 PM	04:15 PM	<p>fds</p>\r\n
15	กฤติมา	รักจริง	สดใส	HR	52	ห้องประชุม 3	15/10/2014	04:15 PM	04:15 PM	<p>fds</p>\r\n
16	กฤติมา	รักจริง	สดใส	HR	52	ห้องประชุม 3	15/10/2014	04:15 PM	04:15 PM	<p>fds</p>\r\n
17	dd	รักจริง	สดใส	HR	52	ห้องประชุม 1	11/10/2014	04:45 PM	04:30 AM	<p>a</p>\r\n
18	sdsf	sfs	dsf	CU	52	ห้องประชุม 2	10/10/2014	03:15 PM	10:15 AM	<p>dfd</p>\r\n
19	jobbi	df	jfwoeied	CI	52	ห้องประชุม 3	14/10/2014	10:45 PM	10:45 PM	<p>&#39;;&#39;</p>\r\n\r\n<p>&nbsp;</p>\r\n
20	kittima	ประชุม	กกต	HR	30	ห้องประชุม 2	22/10/2014	02:30 AM	02:30 AM	<p>กกดกห</p>\r\n
21	sdfs	\N	\N	\N	\N	\N	\N	\N	\N	\N
22	iol					ห้องประชุม 1				
23	sdfs					ห้องประชุม 1				
24	sdfs					ห้องประชุม 1				
25	sfsdf					ห้องประชุม 1				
26	 	 sfds	 			ห้องประชุม 1	 	10:30 AM	10:30 AM	
27	  	 sfds 	  			ห้องประชุม 1	  	11:00 AM	11:00 AM	
\.


--
-- TOC entry 5968 (class 0 OID 0)
-- Dependencies: 1237
-- Name: form_reserve_id_user_seq; Type: SEQUENCE SET; Schema: adempiere; Owner: adempiere
--

SELECT pg_catalog.setval('form_reserve_id_user_seq', 27, true);


-- Completed on 2014-10-22 21:45:28

--
-- PostgreSQL database dump complete
--

