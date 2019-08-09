--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)

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

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO btre;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO btre;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO btre;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO btre;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO btre;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO btre;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO btre;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO btre;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO btre;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO btre;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO btre;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO btre;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO btre;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO btre;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO btre;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO btre;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO btre;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO btre;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO btre;

--
-- Name: listings_listing; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.listings_listing (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(200) NOT NULL,
    state character varying(200) NOT NULL,
    zipcode character varying(200) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    bedrooms integer NOT NULL,
    sqft integer NOT NULL,
    garage integer NOT NULL,
    bathrooms numeric(2,1) NOT NULL,
    lot_size numeric(5,1) NOT NULL,
    photo_main character varying(100) NOT NULL,
    photo_1 character varying(100) NOT NULL,
    photo_2 character varying(100) NOT NULL,
    photo_3 character varying(100) NOT NULL,
    photo_4 character varying(100) NOT NULL,
    photo_5 character varying(100) NOT NULL,
    photo_6 character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL,
    realtor_id integer NOT NULL
);


ALTER TABLE public.listings_listing OWNER TO btre;

--
-- Name: listings_listing_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.listings_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listings_listing_id_seq OWNER TO btre;

--
-- Name: listings_listing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;


--
-- Name: realtors_realtor; Type: TABLE; Schema: public; Owner: btre
--

CREATE TABLE public.realtors_realtor (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.realtors_realtor OWNER TO btre;

--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE; Schema: public; Owner: btre
--

CREATE SEQUENCE public.realtors_realtor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.realtors_realtor_id_seq OWNER TO btre;

--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btre
--

ALTER SEQUENCE public.realtors_realtor_id_seq OWNED BY public.realtors_realtor.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: listings_listing id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);


--
-- Name: realtors_realtor id; Type: DEFAULT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.realtors_realtor ALTER COLUMN id SET DEFAULT nextval('public.realtors_realtor_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add listing	7	add_listing
26	Can change listing	7	change_listing
27	Can delete listing	7	delete_listing
28	Can view listing	7	view_listing
29	Can add realtor	8	add_realtor
30	Can change realtor	8	change_realtor
31	Can delete realtor	8	delete_realtor
32	Can view realtor	8	view_realtor
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$S6Rt11PJ4Gex$W0DqooGD5W5sjQNThBl+hnNXsuitdl3c5Dn6v7L7vIM=	2019-07-28 12:24:02.311866+02	t	pstevek			pstevek@gmail.com	t	t	2019-07-28 12:22:43.743601+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-07-28 14:53:33.43173+02	1	Kyle Brown	1	[{"added": {}}]	8	1
2	2019-07-28 14:59:13.06716+02	2	Mark Hudson	1	[{"added": {}}]	8	1
3	2019-07-28 14:59:33.171768+02	2	Mark Hudson	2	[]	8	1
4	2019-07-28 15:00:29.554224+02	3	Jenny Johnson	1	[{"added": {}}]	8	1
5	2019-07-28 15:07:35.572715+02	1	45 Drivewood Circle	1	[{"added": {}}]	7	1
6	2019-07-28 15:12:49.962067+02	2	18 Jefferson Lane	1	[{"added": {}}]	7	1
7	2019-07-28 15:25:32.392463+02	3	187 Woodrow Street	1	[{"added": {}}]	7	1
8	2019-07-28 15:35:00.156697+02	4	28 Gifford Street	1	[{"added": {}}]	7	1
9	2019-07-28 16:57:30.663828+02	5	12 United Road	1	[{"added": {}}]	7	1
10	2019-07-28 16:59:14.703741+02	6	33 Essex Circle	1	[{"added": {}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	listings	listing
8	realtors	realtor
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-12-29 11:58:23.028166+02
2	auth	0001_initial	2018-12-29 11:58:23.112053+02
3	admin	0001_initial	2018-12-29 11:58:23.143852+02
4	admin	0002_logentry_remove_auto_add	2018-12-29 11:58:23.170359+02
5	admin	0003_logentry_add_action_flag_choices	2018-12-29 11:58:23.179934+02
6	contenttypes	0002_remove_content_type_name	2018-12-29 11:58:23.200278+02
7	auth	0002_alter_permission_name_max_length	2018-12-29 11:58:23.207718+02
8	auth	0003_alter_user_email_max_length	2018-12-29 11:58:23.220105+02
9	auth	0004_alter_user_username_opts	2018-12-29 11:58:23.237138+02
10	auth	0005_alter_user_last_login_null	2018-12-29 11:58:23.249414+02
11	auth	0006_require_contenttypes_0002	2018-12-29 11:58:23.252282+02
12	auth	0007_alter_validators_add_error_messages	2018-12-29 11:58:23.26742+02
13	auth	0008_alter_user_username_max_length	2018-12-29 11:58:23.282566+02
14	auth	0009_alter_user_last_name_max_length	2018-12-29 11:58:23.294793+02
15	sessions	0001_initial	2018-12-29 11:58:23.309183+02
16	auth	0010_alter_group_name_max_length	2019-07-28 10:59:40.536266+02
17	auth	0011_update_proxy_permissions	2019-07-28 10:59:40.553015+02
18	realtors	0001_initial	2019-07-28 12:16:01.770932+02
19	listings	0001_initial	2019-07-28 12:16:01.789871+02
20	realtors	0002_auto_20190728_1446	2019-07-28 14:47:03.550222+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
8q2hhqxhy4tqglh32nzvjqrfgbmyo9y1	YTM1M2M0YmFmYjE4MmU5ZjI2NTc3YWFiOTI3ZWQ2MmUxMjkxMmU1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI4ZGY1OGQ0ZjdmMjU1MmI0YjY1YTlhOGIwMDgwMmUwNzFiOTFmIn0=	2019-08-11 12:24:02.314572+02
\.


--
-- Data for Name: listings_listing; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.listings_listing (id, title, address, city, state, zipcode, description, price, bedrooms, sqft, garage, bathrooms, lot_size, photo_main, photo_1, photo_2, photo_3, photo_4, photo_5, photo_6, is_published, list_date, realtor_id) FROM stdin;
1	45 Drivewood Circle	45 Drivewood Circle	Norwood	MA	02062	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo, urna sed accumsan semper, elit nunc eleifend mi, eget finibus turpis elit at risus. Nulla urna erat, vehicula at lacus in, maximus accumsan lectus. Integer sed quam semper, venenatis augue in, dignissim magna. Nam at mauris arcu. Aliquam erat volutpat. Proin cursus tincidunt nunc non finibus. Maecenas rhoncus mattis rhoncus. Aenean tempor nibh id egestas ultrices.	490000	3	3198	2	2.0	2.3	photos/2019/07/28/home-1.jpg	photos/2019/07/28/home-inside-1.jpg	photos/2019/07/28/home-inside-2.jpg	photos/2019/07/28/home-inside-3.jpg	photos/2019/07/28/home-inside-4.jpg	photos/2019/07/28/home-inside-5.jpg	photos/2019/07/28/home-inside-6.jpg	t	2019-07-28 15:02:14+02	1
2	18 Jefferson Lane	18 Jefferson Lane	Woburn	MA	01801	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo, urna sed accumsan semper, elit nunc eleifend mi, eget finibus turpis elit at risus. Nulla urna erat, vehicula at lacus in, maximus accumsan lectus. Integer sed quam semper, venenatis augue in, dignissim magna. Nam at mauris arcu. Aliquam erat volutpat. Proin cursus tincidunt nunc non finibus. Maecenas rhoncus mattis rhoncus. Aenean tempor nibh id egestas ultrices.	55000	4	3200	1	2.5	1.5	photos/2019/07/28/home-2.jpg	photos/2019/07/28/home-inside-5_PBbQ9VU.jpg	photos/2019/07/28/home-inside-6_PGoN1Dy.jpg	photos/2019/07/28/home-inside-1_7ePhT61.jpg				t	2019-07-28 15:07:57+02	2
3	187 Woodrow Street	187 Woodrow Street	Salem	MA	01915	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo, urna sed accumsan semper, elit nunc eleifend mi, eget finibus turpis elit at risus. Nulla urna erat, vehicula at lacus in, maximus accumsan lectus. Integer sed quam semper, venenatis augue in, dignissim magna. Nam at mauris arcu. Aliquam erat volutpat. Proin cursus tincidunt nunc non finibus. Maecenas rhoncus mattis rhoncus. Aenean tempor nibh id egestas ultrices.	5800000	4	3107	0	3.0	1.0	photos/2019/07/28/home-3.jpg	photos/2019/07/28/home-inside-16.jpg	photos/2019/07/28/home-inside-15.jpg	photos/2019/07/28/home-inside-7.jpg	photos/2019/07/28/home-inside-12.jpg			t	2019-07-28 15:14:31+02	3
4	28 Gifford Street	28 Gifford Street	Bedford	NH	03103	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo, urna sed accumsan semper, elit nunc eleifend mi, eget finibus turpis elit at risus. Nulla urna erat, vehicula at lacus in, maximus accumsan lectus. Integer sed quam semper, venenatis augue in, dignissim magna. Nam at mauris arcu. Aliquam erat volutpat. Proin cursus tincidunt nunc non finibus. Maecenas rhoncus mattis rhoncus. Aenean tempor nibh id egestas ultrices.	1450000	4	2927	2	2.0	2.5	photos/2019/07/28/home-6.jpg	photos/2019/07/28/home-inside-10.jpg	photos/2019/07/28/home-inside-15_6TzQBAM.jpg	photos/2019/07/28/home-inside-3_xJcEmVb.jpg	photos/2019/07/28/home-inside-13.jpg			t	2019-07-28 15:28:54+02	2
5	12 United Road	12 United Road	South Hampton	NH	03827	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo, urna sed accumsan semper, elit nunc eleifend mi, eget finibus turpis elit at risus. Nulla urna erat, vehicula at lacus in, maximus accumsan lectus. Integer sed quam semper, venenatis augue in, dignissim magna. Nam at mauris arcu. Aliquam erat volutpat. Proin cursus tincidunt nunc non finibus. Maecenas rhoncus mattis rhoncus. Aenean tempor nibh id egestas ultrices.	2300000	3	2207	1	1.5	3.0	photos/2019/07/28/home-5.jpg	photos/2019/07/28/home-inside-1_vsrYL3U.jpg	photos/2019/07/28/home-inside-10_7Bcf5Qa.jpg	photos/2019/07/28/home-inside-9.jpg	photos/2019/07/28/home-inside-3_O0VRery.jpg	photos/2019/07/28/home-inside-14.jpg		t	2019-07-28 16:55:47+02	3
6	33 Essex Circle	33 Essex Circle	Lexington	MA	01731	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo, urna sed accumsan semper, elit nunc eleifend mi, eget finibus turpis elit at risus. Nulla urna erat, vehicula at lacus in, maximus accumsan lectus. Integer sed quam semper, venenatis augue in, dignissim magna. Nam at mauris arcu. Aliquam erat volutpat. Proin cursus tincidunt nunc non finibus. Maecenas rhoncus mattis rhoncus. Aenean tempor nibh id egestas ultrices.	7800000	5	4145	1	3.5	5.0	photos/2019/07/28/home-6_HSrxiKW.jpg	photos/2019/07/28/home-inside-15_Lh1lM1p.jpg	photos/2019/07/28/home-inside-7_IVaCQeq.jpg	photos/2019/07/28/home-inside-11.jpg	photos/2019/07/28/home-inside-15_CbVK0Na.jpg	photos/2019/07/28/home-inside-5_sSPaykn.jpg		t	2019-07-28 16:57:36+02	1
\.


--
-- Data for Name: realtors_realtor; Type: TABLE DATA; Schema: public; Owner: btre
--

COPY public.realtors_realtor (id, name, photo, description, phone, email, is_mvp, hire_date) FROM stdin;
1	Kyle Brown	photos/2019/07/28/kyle.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo, urna sed accumsan semper, elit nunc eleifend mi, eget finibus turpis elit at risus. Nulla urna erat, vehicula at lacus in, maximus accumsan lectus. Integer sed quam semper, venenatis augue in, dignissim magna. Nam at mauris arcu. Aliquam erat volutpat. Proin cursus tincidunt nunc non finibus. Maecenas rhoncus mattis rhoncus. Aenean tempor nibh id egestas ultrices.	086-123-4567	kyle@btrealestate.co	f	2017-03-22 11:20:27+02
2	Mark Hudson	photos/2019/07/28/mark.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo, urna sed accumsan semper, elit nunc eleifend mi, eget finibus turpis elit at risus. Nulla urna erat, vehicula at lacus in, maximus accumsan lectus. Integer sed quam semper, venenatis augue in, dignissim magna. Nam at mauris arcu. Aliquam erat volutpat. Proin cursus tincidunt nunc non finibus. Maecenas rhoncus mattis rhoncus. Aenean tempor nibh id egestas ultrices.	021-111-2545	mark@btrealestate.co	f	2015-06-28 09:57:37+02
3	Jenny Johnson	photos/2019/07/28/jenny.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo, urna sed accumsan semper, elit nunc eleifend mi, eget finibus turpis elit at risus. Nulla urna erat, vehicula at lacus in, maximus accumsan lectus. Integer sed quam semper, venenatis augue in, dignissim magna. Nam at mauris arcu. Aliquam erat volutpat. Proin cursus tincidunt nunc non finibus. Maecenas rhoncus mattis rhoncus. Aenean tempor nibh id egestas ultrices.	078-456-9978	jenny@btrealestate.co	f	2019-02-28 14:59:33+02
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 10, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: listings_listing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.listings_listing_id_seq', 6, true);


--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btre
--

SELECT pg_catalog.setval('public.realtors_realtor_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: listings_listing listings_listing_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);


--
-- Name: realtors_realtor realtors_realtor_email_f9535eaa_uniq; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_email_f9535eaa_uniq UNIQUE (email);


--
-- Name: realtors_realtor realtors_realtor_pkey; Type: CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: listings_listing_realtor_id_90583529; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);


--
-- Name: realtors_realtor_email_f9535eaa_like; Type: INDEX; Schema: public; Owner: btre
--

CREATE INDEX realtors_realtor_email_f9535eaa_like ON public.realtors_realtor USING btree (email varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id; Type: FK CONSTRAINT; Schema: public; Owner: btre
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

