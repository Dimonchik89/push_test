--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE shop_2;




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:mT4w512a/b9KNWSrbHGLuA==$efKLZzU4KLYunTzC1ZJjAcLKwU4yI14swg00d8gs3Os=:qvscdqwJtOkLapGapwYFo+wuqGwUxAZmm7DKZGn8Fys=';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 14.5 (Debian 14.5-1.pgdg110+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 14.5 (Debian 14.5-1.pgdg110+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- Database "shop_2" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 14.5 (Debian 14.5-1.pgdg110+1)

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
-- Name: shop_2; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE shop_2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE shop_2 OWNER TO postgres;

\connect shop_2

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
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- Name: carts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carts (
    id integer NOT NULL,
    date character varying(255),
    email character varying(255),
    product character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.carts OWNER TO postgres;

--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carts_id_seq OWNER TO postgres;

--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    cost integer,
    weight integer,
    components character varying(255),
    img character varying(255),
    "categoryId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20220922110502-create-cart.js
20220922113746-create-product.js
20220922113816-create-category.js
20220922113910-create-user.js
\.


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carts (id, date, email, product, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, "createdAt", "updatedAt") FROM stdin;
1	sets	2022-10-14 07:47:29.252+00	2022-10-14 07:47:29.252+00
2	nigiri	2022-10-14 07:47:43.068+00	2022-10-14 07:47:43.068+00
3	sushi	2022-10-14 07:47:53.313+00	2022-10-14 07:47:53.313+00
4	rolls	2022-10-14 07:48:00.763+00	2022-10-14 07:48:00.763+00
5	rice	2022-10-14 07:48:08.323+00	2022-10-14 07:48:08.323+00
6	maki	2022-10-14 07:48:17.293+00	2022-10-14 07:48:17.293+00
7	uramaki	2022-10-14 07:48:29.072+00	2022-10-14 07:48:29.072+00
8	gunkans	2022-10-14 07:48:43.77+00	2022-10-14 07:48:43.77+00
9	noodles	2022-10-14 07:49:01.619+00	2022-10-14 07:49:01.619+00
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, cost, weight, components, img, "categoryId", "createdAt", "updatedAt") FROM stdin;
1	sashimi plateau	80	1800	trout, scallops, avocado, tuna, sea bass, lemon mint sauce with basil	["images/1665735402006"]	1	2022-10-14 08:16:42.666+00	2022-10-14 08:16:42.666+00
2	Futomaki & Gunkan Set	60	1750	futomaki with shrimp, futomaki with mango and salmon, gunkans with masago caviar, gunkans with lobsters	["images/1665735630696"]	1	2022-10-14 08:20:31.991+00	2022-10-14 08:20:31.991+00
3	Nigiri & Maki Mini-Set	60	1300	shrimp maki, salmon maki, red caviar nigiri, tuna nigiri, salmon nigiri, shrimp nigiri	["images/1665735703398"]	1	2022-10-14 08:21:43.964+00	2022-10-14 08:21:43.964+00
4	Nigiri & Uramaki Set	95	2600	salmon nigiri, scallop nigiri, tuna nigiri, smoked salmon uramaki, snow crab sesame uramaki	["images/1665735763394"]	1	2022-10-14 08:22:44.004+00	2022-10-14 08:22:44.004+00
5	Ramen with beef	15	360	ramen, pepper, beef, onion, hot sauce, corn	["images/1665735863252"]	9	2022-10-14 08:24:24.387+00	2022-10-14 08:24:24.387+00
6	Ramen with Tofu	25	320	ramen, pepper, tofu, onion, sweet sauce, corn, edamame beans, basil, carrot	["images/1665735903463"]	9	2022-10-14 08:25:04.978+00	2022-10-14 08:25:04.978+00
7	Soba with Shrimps	20	420	soba, pepper, shrimp, onion, sweet sauce, corn, carrot	["images/1665735945233"]	9	2022-10-14 08:25:47.184+00	2022-10-14 08:25:47.184+00
8	Ramen with vegetables	23	350	ramen, pepper, shrimp, onion, sweet sauce, edamame beans, carrot	["images/1665735999530"]	9	2022-10-14 08:26:41.632+00	2022-10-14 08:26:41.632+00
9	Soba with Egg	20	420	soba, pepper, shrimp, onion, sweet sauce, corn, carrot	["images/1665736050842"]	9	2022-10-14 08:27:31.448+00	2022-10-14 08:27:31.448+00
10	Soba with Chicken	20	420	soba, pepper, chicken, onion, sweet sauce, corn, carrot	["images/1665736097738"]	9	2022-10-14 08:28:18.385+00	2022-10-14 08:28:18.385+00
16	Rice with beef	20	400	rice, beef, onions	["images/1665738873991"]	5	2022-10-14 09:14:34.809+00	2022-10-14 09:14:34.809+00
17	Vegetables rice	15	380	rice, reas, onions, pepper, carrot, tomato	["images/1665739002754"]	5	2022-10-14 09:16:43.399+00	2022-10-14 09:16:43.399+00
18	Rice with peas	12	360	rice, reas, onions	["images/1665739063670"]	5	2022-10-14 09:17:44.272+00	2022-10-14 09:17:44.272+00
19	Philadelphia with shrimp	10	320	Rice, nori, cream cheese, massago caviar, cucumber, tiger shrimp	["images/1665739938647"]	4	2022-10-14 09:32:19.343+00	2022-10-14 09:32:19.343+00
20	Philadelphia	7	280	Rice, nori, salmon, cream cheese, cucumber	["images/1665740010637"]	4	2022-10-14 09:33:31.224+00	2022-10-14 09:33:31.224+00
21	Osaka	5	225	Rice, nori, cream cheese, tuna, avocado, sesame seeds, tuna chips	["images/1665740147552"]	4	2022-10-14 09:35:48.372+00	2022-10-14 09:35:48.372+00
22	Bushido	5	265	Rice, nori, cream cheese, hiashi, squid, teriyaki salmon, mayonnaise, green onion, sesame	["images/1665740266139"]	4	2022-10-14 09:37:48.349+00	2022-10-14 09:37:48.349+00
23	Canada	8	250	Rice, nori, salmon, avocado, eel, cream cheese, unagi sauce, sesame	["images/1665740400630"]	4	2022-10-14 09:40:01.323+00	2022-10-14 09:40:01.323+00
24	Gunkan Shrimp	2	50	Rice, nori, mayonnaise, massago caviar, shrimp	["images/1665741180993"]	8	2022-10-14 09:53:01.771+00	2022-10-14 09:53:01.771+00
25	Gunkan Salmon	2	50	Rice, nori, salmon, hiashi, massago caviar	["images/1665741362130"]	8	2022-10-14 09:56:04.024+00	2022-10-14 09:56:04.024+00
26	Gunkan red caviar	3	50	Nori, red caviar 	["images/1665741643881"]	8	2022-10-14 10:00:44.806+00	2022-10-14 10:00:44.806+00
27	Maki salmon	3	120	Rice, nori, salmon	["images/1665741804567"]	6	2022-10-14 10:03:25.234+00	2022-10-14 10:03:25.234+00
28	Maki avocado	2	130	Rice, nori, avocado	["images/1665741913037"]	6	2022-10-14 10:05:13.714+00	2022-10-14 10:05:13.714+00
29	Maki shrimp	3	120	Rice, shrimp, massago caviar, nori.	["images/1665742065631"]	6	2022-10-14 10:07:47.189+00	2022-10-14 10:07:47.189+00
30	Maki tuna	2	100	Rice, nori, tuna	["images/1665742211270"]	6	2022-10-14 10:10:11.995+00	2022-10-14 10:10:11.995+00
31	Tuna uramaki	5	200	Rice, nori, tuna, avoсado, cheese, sesame	["images/1665744438709"]	7	2022-10-14 10:47:19.511+00	2022-10-14 10:47:19.511+00
32	Salmon uramaki	5	200	Rice, nori, salmon, dill	["images/1665744565397"]	7	2022-10-14 10:49:26.063+00	2022-10-14 10:49:26.063+00
33	Nigiri Sesame	1	40	Rice, nori, sesame	["images/1665745273598"]	2	2022-10-14 11:01:14.21+00	2022-10-14 11:01:14.21+00
34	Nigiri Onion	1	40	Rice, nori, onion	["images/1665745343893"]	2	2022-10-14 11:02:25.267+00	2022-10-14 11:02:25.267+00
11	Salmon	2	40	rice, salmon	["images/1665737801213"]	3	2022-10-14 08:56:41.997+00	2022-10-14 11:07:10.913+00
12	Unagi	3	45	rice, nori, unagi	["images/1665737838713"]	3	2022-10-14 08:57:19.302+00	2022-10-14 11:07:23.235+00
13	Tuna	2	40	rice, tuna	["images/1665737883146"]	3	2022-10-14 08:58:03.778+00	2022-10-14 11:07:57.294+00
14	Fried Shrimp	3	45	rice, nori, shrimp	["images/1665738172759"]	3	2022-10-14 09:02:53.344+00	2022-10-14 11:08:12.569+00
15	Shrimp	3	45	rice, shrimp	["images/1665738197391"]	3	2022-10-14 09:03:18.271+00	2022-10-14 11:08:28.42+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;
4	abc@gmail.com	$2b$10$gcpw5vCAoCspLvDB07ByfehKQszNcIWtbPJRQRNXfwXlDwBw3X/je	ADMIN	2022-10-14 07:38:36.203+00	2022-10-14 07:38:36.203+00
\.


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_id_seq', 1, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 9, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 34, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

