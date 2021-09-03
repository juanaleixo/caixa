--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)

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

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: conta; Type: TABLE; Schema: public; Owner: qpskdrku
--

CREATE TABLE public.conta (
    conta integer NOT NULL,
    saldo real
);


ALTER TABLE public.conta OWNER TO qpskdrku;

--
-- Name: conta_conta_seq; Type: SEQUENCE; Schema: public; Owner: qpskdrku
--

CREATE SEQUENCE public.conta_conta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conta_conta_seq OWNER TO qpskdrku;

--
-- Name: conta_conta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qpskdrku
--

ALTER SEQUENCE public.conta_conta_seq OWNED BY public.conta.conta;


--
-- Name: contas_usuario; Type: TABLE; Schema: public; Owner: qpskdrku
--

CREATE TABLE public.contas_usuario (
    cpf character varying(11) NOT NULL,
    conta integer NOT NULL
);


ALTER TABLE public.contas_usuario OWNER TO qpskdrku;

--
-- Name: transacao; Type: TABLE; Schema: public; Owner: qpskdrku
--

CREATE TABLE public.transacao (
    idtransacao integer NOT NULL,
    conta_origem integer NOT NULL,
    conta_destino integer NOT NULL,
    conta integer NOT NULL,
    data date,
    hora time without time zone,
    valor real
);


ALTER TABLE public.transacao OWNER TO qpskdrku;

--
-- Name: transacao_idtransacao_seq; Type: SEQUENCE; Schema: public; Owner: qpskdrku
--

CREATE SEQUENCE public.transacao_idtransacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transacao_idtransacao_seq OWNER TO qpskdrku;

--
-- Name: transacao_idtransacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qpskdrku
--

ALTER SEQUENCE public.transacao_idtransacao_seq OWNED BY public.transacao.idtransacao;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: qpskdrku
--

CREATE TABLE public.usuario (
    nome character varying(100),
    cpf character varying(11) NOT NULL,
    senha character varying(100)
);


ALTER TABLE public.usuario OWNER TO qpskdrku;

--
-- Name: conta conta; Type: DEFAULT; Schema: public; Owner: qpskdrku
--

ALTER TABLE ONLY public.conta ALTER COLUMN conta SET DEFAULT nextval('public.conta_conta_seq'::regclass);


--
-- Name: transacao idtransacao; Type: DEFAULT; Schema: public; Owner: qpskdrku
--

ALTER TABLE ONLY public.transacao ALTER COLUMN idtransacao SET DEFAULT nextval('public.transacao_idtransacao_seq'::regclass);


--
-- Data for Name: conta; Type: TABLE DATA; Schema: public; Owner: qpskdrku
--

COPY public.conta (conta, saldo) FROM stdin;
18	557.123047
19	10000
17	164553.875
20	100
\.


--
-- Data for Name: contas_usuario; Type: TABLE DATA; Schema: public; Owner: qpskdrku
--

COPY public.contas_usuario (cpf, conta) FROM stdin;
1	17
2	18
1	18
1	19
12312312312	20
\.


--
-- Data for Name: transacao; Type: TABLE DATA; Schema: public; Owner: qpskdrku
--

COPY public.transacao (idtransacao, conta_origem, conta_destino, conta, data, hora, valor) FROM stdin;
27	17	18	17	2021-08-03	23:26:54.140904	-7
28	17	18	18	2021-08-03	23:26:54.160074	7
29	18	17	18	2021-08-03	23:27:33.980748	10
30	18	17	17	2021-08-03	23:27:33.998632	-10
32	0	17	17	2021-08-03	23:54:32.092494	7
33	0	17	17	2021-08-03	23:54:44.090662	100000
34	0	17	17	2021-08-03	23:54:50.885985	64738
35	17	18	17	2021-08-03	23:55:02.932839	-0.123000003
36	17	18	18	2021-08-03	23:55:02.952744	0.123000003
37	18	17	18	2021-08-03	23:55:47.484975	-16
38	18	17	17	2021-08-03	23:55:47.505396	16
39	17	18	17	2021-08-03	23:56:41.673071	-100
40	17	18	18	2021-08-03	23:56:41.692497	100
41	0	18	18	2021-08-04	00:00:31.740246	456
42	0	18	18	2021-08-04	22:37:42.83376	10000
43	18	19	18	2021-08-04	22:37:53.711579	-10000
44	18	19	19	2021-08-04	22:37:53.732906	10000
45	17	20	17	2021-08-05	20:17:13.434471	-100
46	17	20	20	2021-08-05	20:17:13.453968	100
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: qpskdrku
--

COPY public.usuario (nome, cpf, senha) FROM stdin;
Juan	1	12
Hugo	2	12
Juand	22	23
Alberto	31245643210	12345678
João pé de Feijão	42352312352	123456789
Luciene	12312312312	123456
Juann	12345678901	123455
\.


--
-- Name: conta_conta_seq; Type: SEQUENCE SET; Schema: public; Owner: qpskdrku
--

SELECT pg_catalog.setval('public.conta_conta_seq', 20, true);


--
-- Name: transacao_idtransacao_seq; Type: SEQUENCE SET; Schema: public; Owner: qpskdrku
--

SELECT pg_catalog.setval('public.transacao_idtransacao_seq', 46, true);


--
-- Name: conta conta_pkey; Type: CONSTRAINT; Schema: public; Owner: qpskdrku
--

ALTER TABLE ONLY public.conta
    ADD CONSTRAINT conta_pkey PRIMARY KEY (conta);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: qpskdrku
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (cpf);


--
-- Name: contas_usuario conta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qpskdrku
--

ALTER TABLE ONLY public.contas_usuario
    ADD CONSTRAINT conta_fkey FOREIGN KEY (conta) REFERENCES public.conta(conta);


--
-- Name: transacao conta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qpskdrku
--

ALTER TABLE ONLY public.transacao
    ADD CONSTRAINT conta_fkey FOREIGN KEY (conta) REFERENCES public.conta(conta);


--
-- Name: contas_usuario cpf_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qpskdrku
--

ALTER TABLE ONLY public.contas_usuario
    ADD CONSTRAINT cpf_fkey FOREIGN KEY (cpf) REFERENCES public.usuario(cpf);


--
-- PostgreSQL database dump complete
--

