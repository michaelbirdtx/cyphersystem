--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4 (Ubuntu 10.4-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.4 (Ubuntu 10.4-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: cyphercore_ability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_ability (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(10) NOT NULL,
    cost character varying(20) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);


ALTER TABLE public.cyphercore_ability OWNER TO postgres;

--
-- Name: cyphercore_ability_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_ability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_ability_id_seq OWNER TO postgres;

--
-- Name: cyphercore_ability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_ability_id_seq OWNED BY public.cyphercore_ability.id;


--
-- Name: cyphercore_cypher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_cypher (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    level_range character varying(10) NOT NULL,
    effect text NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);


ALTER TABLE public.cyphercore_cypher OWNER TO postgres;

--
-- Name: cyphercore_cypher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_cypher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_cypher_id_seq OWNER TO postgres;

--
-- Name: cyphercore_cypher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_cypher_id_seq OWNED BY public.cyphercore_cypher.id;


--
-- Name: cyphercore_descriptor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_descriptor (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    characteristics text NOT NULL,
    starting_link text NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);


ALTER TABLE public.cyphercore_descriptor OWNER TO postgres;

--
-- Name: cyphercore_descriptor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_descriptor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_descriptor_id_seq OWNER TO postgres;

--
-- Name: cyphercore_descriptor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_descriptor_id_seq OWNED BY public.cyphercore_descriptor.id;


--
-- Name: cyphercore_equipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_equipment (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    base_cost character varying(30) NOT NULL,
    notes text NOT NULL,
    type character varying(30) NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.cyphercore_equipment OWNER TO postgres;

--
-- Name: cyphercore_equipment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_equipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_equipment_id_seq OWNER TO postgres;

--
-- Name: cyphercore_equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_equipment_id_seq OWNED BY public.cyphercore_equipment.id;


--
-- Name: cyphercore_focus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_focus (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    other_details text NOT NULL,
    connections text NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);


ALTER TABLE public.cyphercore_focus OWNER TO postgres;

--
-- Name: cyphercore_focus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_focus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_focus_id_seq OWNER TO postgres;

--
-- Name: cyphercore_focus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_focus_id_seq OWNED BY public.cyphercore_focus.id;


--
-- Name: cyphercore_focusability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_focusability (
    id integer NOT NULL,
    tier integer NOT NULL,
    ability_id integer NOT NULL,
    focus_id integer NOT NULL
);


ALTER TABLE public.cyphercore_focusability OWNER TO postgres;

--
-- Name: cyphercore_focusability_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_focusability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_focusability_id_seq OWNER TO postgres;

--
-- Name: cyphercore_focusability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_focusability_id_seq OWNED BY public.cyphercore_focusability.id;


--
-- Name: cyphercore_genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_genre (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);


ALTER TABLE public.cyphercore_genre OWNER TO postgres;

--
-- Name: cyphercore_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_genre_id_seq OWNER TO postgres;

--
-- Name: cyphercore_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_genre_id_seq OWNED BY public.cyphercore_genre.id;


--
-- Name: cyphercore_skill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_skill (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.cyphercore_skill OWNER TO postgres;

--
-- Name: cyphercore_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_skill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_skill_id_seq OWNER TO postgres;

--
-- Name: cyphercore_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_skill_id_seq OWNED BY public.cyphercore_skill.id;


--
-- Name: cyphercore_sourcebook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_sourcebook (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    enabled boolean NOT NULL
);


ALTER TABLE public.cyphercore_sourcebook OWNER TO postgres;

--
-- Name: cyphercore_source_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_source_id_seq OWNER TO postgres;

--
-- Name: cyphercore_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_source_id_seq OWNED BY public.cyphercore_sourcebook.id;


--
-- Name: cyphercore_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_type (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    abilities text NOT NULL,
    cypher_limit integer NOT NULL,
    effort integer NOT NULL,
    intellect_edge integer NOT NULL,
    intellect_pool integer NOT NULL,
    might_edge integer NOT NULL,
    might_pool integer NOT NULL,
    speed_edge integer NOT NULL,
    speed_pool integer NOT NULL,
    pool_points integer NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);


ALTER TABLE public.cyphercore_type OWNER TO postgres;

--
-- Name: cyphercore_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_type_id_seq OWNER TO postgres;

--
-- Name: cyphercore_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_type_id_seq OWNED BY public.cyphercore_type.id;


--
-- Name: cyphercore_typeability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_typeability (
    id integer NOT NULL,
    tier integer NOT NULL,
    ability_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.cyphercore_typeability OWNER TO postgres;

--
-- Name: cyphercore_typeability_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_typeability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_typeability_id_seq OWNER TO postgres;

--
-- Name: cyphercore_typeability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_typeability_id_seq OWNED BY public.cyphercore_typeability.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: cyphercore_ability id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_ability ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_ability_id_seq'::regclass);


--
-- Name: cyphercore_cypher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_cypher ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_cypher_id_seq'::regclass);


--
-- Name: cyphercore_descriptor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_descriptor ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_descriptor_id_seq'::regclass);


--
-- Name: cyphercore_equipment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_equipment ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_equipment_id_seq'::regclass);


--
-- Name: cyphercore_focus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_focus ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_focus_id_seq'::regclass);


--
-- Name: cyphercore_focusability id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_focusability ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_focusability_id_seq'::regclass);


--
-- Name: cyphercore_genre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_genre ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_genre_id_seq'::regclass);


--
-- Name: cyphercore_skill id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_skill ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_skill_id_seq'::regclass);


--
-- Name: cyphercore_sourcebook id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_sourcebook ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_source_id_seq'::regclass);


--
-- Name: cyphercore_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_type ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_type_id_seq'::regclass);


--
-- Name: cyphercore_typeability id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_typeability ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_typeability_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add descriptor	1	add_descriptor
2	Can change descriptor	1	change_descriptor
3	Can delete descriptor	1	delete_descriptor
4	Can add type	2	add_type
5	Can change type	2	change_type
6	Can delete type	2	delete_type
7	Can add focus	3	add_focus
8	Can change focus	3	change_focus
9	Can delete focus	3	delete_focus
10	Can add ability	4	add_ability
11	Can change ability	4	change_ability
12	Can delete ability	4	delete_ability
13	Can add focus ability	5	add_focusability
14	Can change focus ability	5	change_focusability
15	Can delete focus ability	5	delete_focusability
16	Can add type ability	6	add_typeability
17	Can change type ability	6	change_typeability
18	Can delete type ability	6	delete_typeability
19	Can add equipment	7	add_equipment
20	Can change equipment	7	change_equipment
21	Can delete equipment	7	delete_equipment
22	Can add cypher	8	add_cypher
23	Can change cypher	8	change_cypher
24	Can delete cypher	8	delete_cypher
25	Can add sourcebook	9	add_sourcebook
26	Can change sourcebook	9	change_sourcebook
27	Can delete sourcebook	9	delete_sourcebook
28	Can add skill	10	add_skill
29	Can change skill	10	change_skill
30	Can delete skill	10	delete_skill
31	Can add genre	11	add_genre
32	Can change genre	11	change_genre
33	Can delete genre	11	delete_genre
34	Can add log entry	12	add_logentry
35	Can change log entry	12	change_logentry
36	Can delete log entry	12	delete_logentry
37	Can add permission	13	add_permission
38	Can change permission	13	change_permission
39	Can delete permission	13	delete_permission
40	Can add group	14	add_group
41	Can change group	14	change_group
42	Can delete group	14	delete_group
43	Can add user	15	add_user
44	Can change user	15	change_user
45	Can delete user	15	delete_user
46	Can add content type	16	add_contenttype
47	Can change content type	16	change_contenttype
48	Can delete content type	16	delete_contenttype
49	Can add session	17	add_session
50	Can change session	17	change_session
51	Can delete session	17	delete_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$stq1TzjssTWV$U8+xVzKXj7GAWhuKR9BBJex1tJtxHvzhZJfwTSOsV9g=	2018-07-10 21:57:40.615733-05	t	michael			michaelbirdtx@icloud.com	t	t	2018-07-10 21:39:42.864299-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: cyphercore_ability; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_ability (id, name, type, cost, description, slug, sourcebook_id) FROM stdin;
113	Block	Action	3 Speed	You automatically block the next melee attack made against you within the next minute. Action to initiate.	block	1
60	Weapon and Body	Action	5 Speed	After making a melee weapon or ranged weapon attack, you follow up with a punch or kick as an additional attack, all as part of the same action in one round. The two attacks can be directed at different foes. Make a separate attack roll for each attack. You remain limited by the amount of Effort you can apply on one action. Anything that modifies your attack or damage applies to both attacks, unless it is tied specifically to your weapon. Action.	weapon_body	1
114	Danger Sense	Enabler	1 Speed	The difficulty of your initiative roll is reduced by one step. Enabler.	danger-sense	1
126	Investigative Skills	Enabler	-	You are trained in two skills in which you are not already trained. Choose two of the following: identifying, perception, lockpicking, assessing danger, or tinkering with devices. You can select this ability multiple times. Each time you select it, you must choose two different skills. Enabler.	investigative-skills	1
31	Expert Cypher Use	Enabler	-	You can bear three cyphers at a time. Enabler.	expert_cypher_use	1
40	Experienced Defender	Enabler	-	When wearing armor, you gain +1 to Armor. Enabler.	experienced_defender	1
115	Decipher	Action	1 Intellect	If you spend one minute examining a piece of writing or code in a language you do not understand, you can make an Intellect roll of difficulty 3 (or higher, based on the complexity of the language or code) to get the gist of the message. Action to initiate.	decipher	1
127	Quick Recovery	Enabler	-	Your second recovery roll (usually requiring ten minutes) is only a single action, just like the first roll. Enabler.	quick-recovery	1
62	Erase Memories	Action	3 Intellect	You reach into the mind of a creature within immediate range and make an Intellect roll. On a success, you erase up to the last five minutes of its memory. Action.	erase_memories	1
116	Endurance	Enabler	-	Any duration dealing with physical actions is either doubled or halved, whichever is better for you. For example, if the typical person can hold his breath for thirty seconds, you can hold it for one minute. If the typical person can march for four hours without stopping, you can do so for eight hours. In terms of harmful effects, if a poison paralyzes its victims for one minute, you are paralyzed for thirty seconds. The minimum duration is always one round. Enabler.	endurance	1
128	Range Increase	Enabler	-	Ranges for you increase by one step. Immediate becomes short, short becomes long, and long becomes 200 feet (61 m). Enabler.	range-increase	1
24	Mighty Blow	Action	2 Might	You strike two foes with a single blow. Make separate attack rolls for each foe, but both attacks count as a single action in a single round. You remain limited by the amount of Effort you can apply on one action. Anything that modifies your attack or damage applies to both of these attacks. Action.	mighty_blow	1
117	Fleet of Foot	Enabler	-	If you succeed at a difficulty 2 Speed roll to run, you can move a short distance and take an action in the same round. Enabler.	fleet-foot	1
129	Stand Watch	Action	2 Intellect	While standing watch (mostly remaining in place for an extended period of time), you unfailingly remain awake and alert for up to eight hours. During this time, you are trained in perception tasks as well as stealth tasks to conceal yourself from those who might approach. Action to initiate.	stand-watch	1
13	Golem Healing	Enabler	-	Your stone form is more difficult to repair than flesh, which means you are unable to use the first, single-action recovery roll of the day that other PCs have access to. Thus, your first recovery roll on any given day requires ten minutes of rest, the second requires an hour of rest, and the third requires ten hours. Enabler.	golem_healing	1
14	Golem Grip	Action	3 Might	Your attack with your stone fists is modified by one step in your favor. If you hit, you can grab the target, preventing it from moving on its next turn. While you hold the target, its attacks or attempts to break free are modified by one step to its detriment. If the target attempts to break free instead of attacking, you must make a Might-based roll to maintain your grip. If the target fails to break free, you can continue to hold it each round as your subsequent actions, automatically inflicting 4 points of damage each round by squeezing. Enabler.	golem_grip	1
16	Golem Stomp	Action	4 Might	You stomp on the ground with all of your strength, creating a shock wave that attacks all creatures in immediate range. Affected creatures take 3 points of damage and are either pushed out of immediate range or fall down (your choice). Action.	golem_stomp	1
105	Master Cypher Use	Enabler	-	Master Cypher Use: You can bear five cyphers at a time. Enabler.	master_cypher_use	1
3	Extra Edge	Enabler	-	You have a Might Edge of 1 and a Speed Edge of 1.	extra_edge	1
118	Knowledge Skills	Enabler	-	You are trained in two skills in which you are not already trained. Choose two areas of knowledge such as history, geography, paleontology, archeology, and so on. You can select this ability multiple times. Each time you select it, you must choose two different skills. Enabler.	knowledge-skills	1
8	Practiced in Armor	Enabler	-	You can wear armor for long periods of time without tiring and can compensate for slowed reactions from wearing armor. You can wear any kind of armor. You reduce the Speed cost for wearing armor by 1. You start the game with a type of armor of your choice. Enabler.	practiced_armor	1
2	Control the Field	Action	1 Might	This melee attack inflicts 1 less point of damage than normal, but regardless of whether you hit the target, you maneuver it into a position you desire within immediate range. Action.	control_field	1
130	Travel Skills	Enabler	-	You are trained in two skills in which you are not already trained. Choose two of the following: navigation, riding, running, piloting, or vehicle driving. You can select this ability multiple times. Each time you select it, you must choose two different skills. Enabler.	travel-skills	1
17	Deep Reserves	Action	-	Once each day, you can transfer up to 5 points among your Pools in any combination, at a rate of 1 point per round. For example, you could transfer 3 points of Might to Speed and 2 points of Intellect to Speed, which would take a total of five rounds. Action.	deep_reserves	1
18	Specialized Basher	Enabler	-	You are specialized in using your stone fists as medium weapons. Enabler.	specialized_basher	1
25	Reload	Enabler	1 Speed	When using a weapon that normally requires an action to reload, such as a heavy crossbow, you can reload and fire (or fire and reload) in the same action. Enabler.	reload	1
1	Bash	Action	1 Might	This is a pummeling melee attack. Your attack inflicts 1 less point of damage than normal, but dazes your target for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment. Action.	bash	1
4	No Need For Weapons	Enabler	-	When you make an unarmed attack (such as a punch or kick), it counts as a medium weapon instead of a light weapon. Enabler.	no_need_for_weapons	1
5	Overwatch	Action	1 Intellect	You use a ranged weapon to target a limited area (such as a doorway, a hallway, or the eastern side of the clearing) and make an attack against the next viable target to enter that area. This works like a wait action, but you also negate any benefit the target would have from cover, position, surprise, range, illumination, or visibility. Further, you inflict 1 additional point of damage with the attack. You can remain on overwatch as long as you wish, within reason. Action.	overwatch	1
6	Physical Skills	Enabler	-	You are trained in two skills in which you are not already trained. Choose two of the following: balancing, climbing, jumping, running, or swimming. You can select this ability multiple times. Each time you select it, you must choose two different skills. Enabler.	physical_skills	1
7	Pierce	Action	1 Speed	This is a well- aimed, penetrating ranged attack. You make an attack and inflict 1 additional point of damage if your weapon has a sharp point. Action.	pierce	1
9	Quick Draw	Action	2 Speed	After using a thrown light weapon, you draw another light weapon and make another thrown attack against the same target or a different one. Action.	quick_draw	1
10	Swipe	Action	1 Speed	This is a quick, agile melee attack. Your attack inflicts 1 less point of damage than normal but dazes your target for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment. Action.	swipe	1
11	Thrust	Action	1 Might	This is a powerful melee stab. You make an attack and inflict 1 additional point of damage if your weapon has a sharp edge or point. Action.	thrust	1
12	Golem Body	Enabler	-	You gain +1 to Armor, +1 to your Might Edge, and 5 additional points to your Might Pool. You do not need to eat, drink, or breathe (though you do need rest and sleep). You move more stiffly than a creature of flesh, which means you can never be trained or specialized in Speed defense rolls. Furthermore, you are practiced in using your stone fists as a medium weapon. Enabler.	golem_body	1
119	Muscles of Iron	Enabler	2 Might	For the next ten minutes, the difficulty of all Might-based actions other than attack rolls that you attempt is reduced by one step. Enabler.	muscles-iron	1
131	Wreck	Action	-	Using two hands, you wield a weapon or a tool with a powerful swing. (If fighting unarmed, this attack is made with both fists or both feet together.) When using this as an attack, you take a –1 penalty to the attack roll, and you inflict 3 additional points of damage. When attempting to damage an object or barrier, you are trained in the task. Action.	wreck	1
15	Trained Basher	Enabler	-	You are trained in using your stone fists as medium weapons. Enabler.	trained_basher	1
120	Practiced With All Weapons	Enabler	-	You can use any weapon. Enabler.	practiced-all-weapons	1
39	Capable Warrior	Enabler	-	Your attacks deal 1 additional point of damage. Enabler.	capable_warrior	1
47	Adroit Cypher Use	Enabler	-	You can bear four cyphers at a time. Enabler.	adroit_cypher_use	1
121	Surging Confidence	Action	1 Might	When you use an action to make your first recovery roll of the day, you immediately gain another action. Enabler.	surging-confidence	1
73	Ward	Enabler	-	You have a shield of energy around you at all times that helps deflect attacks. You gain +1 to Armor. Enabler.	ward	1
122	Enable Others	Enabler	-	You can use the helping rules to provide a benefit to another character attempting a physical task. This requires no action on your part. Enabler.	enable-others	1
123	Escape	Action	2 Speed	You slip your restraints, squeeze through the bars, break the grip of a creature holding you, pull free from sucking quicksand, or otherwise get loose from whatever is holding you in place. Action.	escape	1
92	Projection	Action	4 Intellect	You project an image of yourself to any location you have seen or previously visited. Distance does not matter as long as the location is on the same world as you. The projection copies your appearance, movements, and any sounds you make for the next ten minutes. Anyone present at the location can see and hear you as if you were there. However, you do not perceive through your projection. Action to initiate.	projection	1
96	Slay	Action	6 Intellect	You gather disrupting energy in your fingertip and touch a creature. If the target is an NPC or a creature of level 3 or lower, it dies. If the target is a PC of any tier, he moves down one step on the damage track. Action.	slay	1
124	Eye for Detail	Action	2 Speed	When you spend five minutes or so thoroughly exploring an area no larger than a typical room, you can ask the GM one question about the area, and she must answer you truthfully. You cannot use this ability more than one time per area per twenty-four hours. Enabler.	eye-detail	1
111	Traverse the Worlds	Action	8+ Intellect	You instantaneously transmit yourself to another planet, dimension, plane, or level of reality. You must know that the destination exists; the GM will decide if you have enough information to confirm its existence and what level of difficulty is required to reach it. Instead of applying Effort to decrease the difficulty, you can apply Effort to bring other people with you; each level of Effort affects up to three additional targets. You must touch additional targets to transmit them. Action.	traverse_worlds	1
19	Still As a Statue	Action	5 Might	You freeze in place, drawing your essence deep into your stone core. During this time, you lose all mobility as well as the ability to take physical actions. You cannot sense what’s happening around you, and no time seems to pass for you. While Still As a Statue, you gain +10 to Armor against damage of all sorts. Under normal circumstances, you automatically rouse to normal wakefulness and mobility a day later. If an ally you trust shakes you hard enough (with a minimum cost of 2 Might points), you rouse earlier. Action to initiate.	still_as_statue	1
20	Ultra Enhancement	Enabler	-	You gain +1 to Armor and 5 additional points to each of your three stat Pools. Enabler.	ultra_enhancement	1
21	Trained Without Armor	Enabler	-	You are trained in Speed defense actions when not wearing armor. Enabler.	trained_without_armor	1
22	Chop	Action	2 Might	This is a heavy, powerful slice with a bladed weapon, probably overhand. You must grip your weapon with two hands to chop. When making this attack, you take a –1 penalty to the attack roll, and you inflict 3 additional points of damage. Action.	chop	1
23	Crush	Action	2 Might	This is a powerful pummeling attack with a bashing weapon, probably overhand. You must grip your weapon with two hands to crush. (If fighting unarmed, this attack is made with both fists or both feet together.) When making this attack, you take a –1 penalty to the attack roll, and you inflict 3 additional points of damage. Action.	crush	1
108	Control Weather	Action	10 Intellect	You change the weather in your general region. If performed indoors, this creates minor effects, such as mist, mild temperature changes, and so on. If performed outside, you can create rain, fog, snow, wind, or any other kind of normal (not overly severe) weather. The change lasts for a natural length of time, so a storm might last for an hour, fog for two or three hours, and snow for a few hours (or for ten minutes if it’s out of season). For the first ten minutes after activating this ability, you can create more dramatic and specific effects, such as lightning strikes, giant hailstones, twisters, hurricane-force winds, and so on. These effects must occur within 1,000 feet (305 m) of your location. You must spend your turn concentrating to create an effect or to maintain it in a new round. These effects inflict 6 points of damage each round. Action.	control_weather	1
109	Earthquake	Action	10 Intellect	You trigger an earthquake centered on a spot you can see within 1,000 feet (305 m). The ground within 250 feet (76 m) of that spot heaves and shakes for five minutes, causing widespread damage to structures and terrain in the area. Buildings made of wood, stone, or brick collapse; walls topple; cliffs crumble; ceilings cave in; some areas of ground rise up; and other areas sink. Creatures inside collapsed buildings or beneath a crumbling cliff or falling wall are subject to a crush (3 points of damage) or a huge crush (6 points of damage) and may have to dig themselves free, as the GM decides. Furthermore, the force of the quake is sufficient to knock creatures to the ground and prevent them from standing until the shaking stops. Action to initiate.	earthquake	1
110	Move Mountains	Action	9 Intellect	You exert a tremendous amount of physical force within 250 feet (76 m) of you. You can push up to 10 tons (9 t) of material up to 50 feet (15 m). This force can collapse buildings, redirect small rivers, or perform other dramatic effects. Action.	move_mountains	1
112	Usurp Cypher	Action	-	You destroy one cypher that you bear and gain its power, which then functions for you continuously. The cypher must have an effect that is not instantaneous. You can choose a cypher when you gain this ability, or you can wait and make the choice later. However, once you usurp a cypher’s power, you cannot later switch to a different cypher—the ability works only once. Action to initiate.	usurp_cypher	1
26	Skill With Attacks	Enabler	-	Choose one type of attack in which you are not already trained: light bashing, light bladed, light ranged, medium bashing, medium bladed, medium ranged, heavy bashing, heavy bladed, or heavy ranged. You are trained in attacks using that type of weapon. You can select this ability multiple times. Each time you select it, you must choose a different type of attack. Enabler.	skill_with_attacks	1
27	Skill With Defense	Enabler	-	Choose one type of defense task in which you are not already trained: Might, Speed, or Intellect. You are trained in defense tasks of that type. You can select this ability up to three times. Each time you select it, you must choose a different type of defense task. Enabler.	skill_with_defense	1
28	Successive Attack	Enabler	2 Speed	If you take down a foe, you can immediately make another attack on that same turn against a new foe within your reach. The second attack is part of the same action. You can use this ability with melee attacks and ranged attacks. Enabler.	successive_attack	1
29	Deadly Aim	Action	3 Speed	For the next minute, all ranged attacks you make inflict 2 additional points of damage. Action to initiate.	deadly_aim	1
30	Experienced With Armor	Enabler	-	The cost reduction from your Practiced in Armor ability improves. You now reduce the Speed cost for wearing armor by 2. Enabler.	experienced_with_armor	1
32	Fury	Action	3 Might	For the next minute, all melee attacks you make inflict 2 additional points of damage. Action to initiate.	fury	1
33	Lunge	Action	2 Might	This ability requires you to extend yourself for a powerful stab or smash. The awkward lunge increases the difficulty of the attack roll by one step. If your attack is successful, it inflicts 4 additional points of damage. Action.	lunge	1
34	Reaction	Enabler	-	If a creature you attacked on your last turn with a melee attack uses its action to move out of immediate range, you gain an action to attack the creature as a parting blow, even if you have already taken a turn in the round. Enabler.	reaction	1
35	Seize The Moment	Action	4+ Speed	If you succeed on a Speed defense roll to resist an attack, you gain an action. You can use the action immediately even if you have already taken a turn in the round. You don’t take an action during the next round, unless you apply a level of Effort when you use Seize the Moment. Enabler.	seize_the_moment	1
36	Slice	Action	2 Speed	This is a quick attack with a bladed or pointed weapon that is hard to defend against. The difficulty of the attack roll is decreased by one step. If the attack is successful, it deals 1 less point of damage than normal. Action.	slice	1
37	Spray	Action	2 Speed	Spray (2 Speed points): If a weapon has the ability to fire rapid shots without reloading (usually called a rapid-fire weapon, such as the submachine gun), you can spray multiple shots around your target to increase the chance of hitting. This ability uses 1d6 + 1 rounds of ammo (or all the ammo in the weapon, if it has less than the number rolled). The difficulty of the attack roll is decreased by one step. If the attack is successful, it deals 1 less point of damage than normal. Action.	spray	1
38	Trick Shot	Action	2 Speed	As part of the same action, you make a ranged attack against two targets that are within immediate range of each other. Make a separate attack roll against each target. The difficulty of each attack roll is increased by one step. Action.	trick_shot	1
41	Feint	Action	2 Speed	If you spend one action creating a misdirection or diversion, in the next round you can take advantage of your opponent’s lowered defenses. Make a melee attack roll against that opponent. The difficulty of the roll is decreased by one step. If your attack is successful, it inflicts 4 additional points of damage. Action.	feint	1
42	Minor To Major	Enabler	-	You treat rolls of natural 19 as rolls of natural 20 for Might attack rolls or Speed attack rolls (your choice when you gain this ability). This allows you to gain a major effect on a natural 19 or 20. Enabler.	minor_to_major	1
43	Momentum	Enabler	-	If you use an action to move, your next attack made using a melee weapon before the end of the next round inflicts 2 additional points of damage. Enabler.	momentum	1
44	Opening Gambit	Action	4 Might	Your melee attack shreds the defenses of a target. Any energy-based defenses it has (such as a force field or mental ward) are negated for 1d6 + 1 rounds. If the target has no energy-based defenses, its Armor is reduced by 2 for one minute. If it has no energy-based defenses or Armor, the difficulty of all attacks made against the target is lowered by one step for one minute. Action.	opening_gambit	1
45	Snipe	Action	2 Speed	If you spend one action aiming, in the next round you can make a precise ranged attack. The difficulty of the attack roll is decreased by one step. If your attack is successful, it inflicts 4 additional points of damage. Action.	snipe	1
46	Tough As Nails	Enabler	-	When you are impaired or debilitated on the damage track, the difficulty of Might-based tasks and defense rolls you attempt is decreased by one step. If you also have Ignore the Pain, make a difficulty 1 Might defense roll when you reach 0 points in all three of your Pools to immediately regain 1 Might point and avoid dying. Each time you attempt to save yourself with this ability before your next ten-hour recovery roll, the difficulty increases by one step. Enabler.	tough_as_nails	1
48	Arc Spray	Action	3 Speed	If a weapon has the ability to fire rapid shots without reloading (usually called a rapid-fire weapon, such as the submachine gun), you can fire your weapon at up to three targets (all next to one another) at once. Make a separate attack roll against each target. The difficulty of each attack is increased by one step. Action.	arc_spray	1
49	Greater Skill With Attacks	Enabler	-	Choose one type of attack, even one in which you are already trained: light bashing, light bladed, light ranged, medium bashing, medium bladed, medium ranged, heavy bashing, heavy bladed, or heavy ranged. You are trained in attacks using that type of weapon. If you’re already trained in that type of attack, you instead are specialized in that type of attack. Enabler.	greater_skill_with_attacks	1
50	Improved Success	Enabler	-	When you roll a 17 or higher on an attack roll that deals damage, you deal 1 additional point of damage. For instance, if you roll a natural 18, which normally deals 2 extra points of damage, you deal 3 extra points instead. If you roll a natural 20 and choose to deal damage instead of achieve a special major effect, you deal 5 extra points of damage. Enabler.	improved_success	1
51	Jump Attack	Action	5 Might	You attempt a difficulty 4 Might action to jump high into the air as part of your melee attack. If you succeed, your attack inflicts 3 additional points of damage and knocks the foe down. If you fail, you still make your normal attack roll, but you don’t inflict the extra damage or knock down the opponent if you hit. Action.	jump_attack	1
52	Mastery With Armor	Enabler	-	The cost reduction from your Practiced in Armor ability improves. When you wear any armor, you reduce the armor’s Speed cost to 0. If you select this ability and you already have the Experienced With Armor ability, replace Experienced With Armor with a different third-tier ability because Mastery With Armor is better. Enabler.	mastery_with_armor	1
53	Mastery With Defense	Enabler	-	Choose one type of defense task in which you are trained: Might, Speed, or Intellect. You are specialized in defense tasks of that type. You can select this ability up to three times. Each time you select it, you must choose a different type of defense task. Enabler.	mastery_with_defense	1
54	Parry	Enabler	5 Speed	You can deflect incoming attacks quickly. For the next ten rounds, the difficulty of all Speed defense rolls is reduced by one step. Enabler.	parry	1
55	Finishing Blow	Enabler	5 Might	If your foe is prone, stunned, or somehow helpless or incapacitated when you strike, you inflict 8 additional points of damage on a successful hit. Enabler.	finishing_blow	1
56	Magnificent Moment	Enabler	-	If you make an attack or attempt a task with the immediate action you gain by using Seize the Moment, the difficulty is reduced by one step. Enabler.	magnificent_moment	1
57	Shooting Gallery	Action	5 Speed	You stand still and make ranged attacks against up to five foes within range, all as part of the same action in one round. Make a separate attack roll for each foe. You remain limited by the amount of Effort you can apply on one action. Anything that modifies your attack or damage applies to all of these attacks. Action.	shooting_gallery	1
58	Slayer	Enabler	3 Might	When you successfully strike a foe of level 5 or lower, make another roll (using whichever stat you used to attack). If you succeed on the second roll, you kill the target outright. If you use this ability against a PC of any tier and you succeed on the second roll, the character moves down one step on the damage track. Enabler.	slayer	1
59	Spin Attack	Action	5 Speed	You stand still and make melee attacks against up to five foes within reach, all as part of the same action in one round. Make a separate attack roll for each foe. You remain limited by the amount of Effort you can apply on one action. Anything that modifies your attack or damage applies to all of these attacks. Action.	spin_attack	1
61	Distortion	Action	2 Intellect	You modify how a willing creature within short range reflects light for one minute. The target rapidly shifts between its normal appearance and a blot of darkness. The target has an asset on Speed defense rolls until the effect wears off. Action to initiate.	distortion	1
63	Far Step	Action	2 Intellect	You leap through the air and land some distance away. You can jump up, down, or across to anywhere you choose within long range if you have a clear and unobstructed path to that location. You land safely. Action.	far_step	1
64	Hedge Magic	Action	1 Intellect	You can perform small tricks: temporarily change the color or basic appearance of a small object, cause small objects to float through the air, clean a small area, mend a broken object, prepare (but not create) food, and so on. You can’t use hedge magic to harm another creature or object. Action.	hedge_magic	1
65	Magic Training	Enabler	-	You are trained in the basics of magic and can attempt to understand and identify its properties (including the operation of magic artifacts and cyphers). Enabler.	magic_training	1
66	Onslaught	Action	1 Intellect	You attack a foe within short range using energies that assail either his physical form or his mind. In either case, you must be able to see your target. If the attack is physical, you emit a force blast: a ray of force that inflicts 4 points of damage. If the attack is mental, you focus your mental energy into a mindslice that disrupts the creature’s thought processes, inflicting 2 points of Intellect damage (ignores Armor). Some creatures without minds (such as robots or zombies) might be immune to a mindslice. Action.	onslaught	1
67	Practiced With Light Weapons	Enabler	-	You can use light weapons without penalty. If you wield a medium weapon, increase the difficulty of the attack by one step. If you wield a heavy weapon, increase it by two steps. You also start with one light weapon of your choice. Enabler.	practiced_with_light_weapons	1
68	Push	Action	2 Intellect	You push a creature or object an immediate distance in any direction you wish. You must be able to see the target, which must be your size or smaller, must not be affixed to anything, and must be within short range. The push is quick, and the force is too crude to be manipulated. For example, you can’t use this to pull a lever or close a door. Action.	push	1
69	Resonance Field	Action	1 Intellect	Faint lines in a color you choose form a tracery over your entire body and emit faint light. The effect lasts for one minute. Whenever a creature within immediate range makes an attack against you, the pattern energizes to block the attack. You can make an Intellect defense roll in place of the defense roll you would normally make. If you do so and you get a minor effect, the creature attacking you takes 1 point of damage. If you get a major effect, the creature attacking you takes 4 points of damage. Action to initiate.	resonance_field	1
83	Countermeasures	Action	4 Intellect	You immediately end one ongoing magical effect within immediate range. Alternatively, you can use this as a defense action to cancel any incoming magical ability targeted at you, or you can cancel any magic device or the effect of any magic device for 1d6 rounds. You must touch the effect or device to cancel it. Action.	countermeasures	1
99	Concussion	Action	7 Intellect	You cause a pulse of concussive force to explode out from a point you choose within long range. The pulse extends up to short range in all directions, dealing 5 points of damage to everything in the area. Even if you fail the attack roll, targets in the area take 1 point of damage. Action.	concussion	1
84	Energy Protection	Action	3+ Intellect	Choose a discrete type of energy that you have experience with (such as heat, sonic, electricity, and so on). You gain +10 to Armor against damage from that type of energy for ten minutes. Alternatively, you gain +1 to Armor against damage from that energy for twenty-four hours. You must be familiar with the type of energy; for example, if you have no experience with a certain kind of extradimensional energy, you can’t protect against it. Instead of applying Effort to decrease the difficulty of this ability, you can use it to protect more targets; each level of Effort applied affects up to two additional targets. You must touch additional targets to protect them. Action to initiate.	energy_protection	1
70	Scan	Action	2 Intellect	You scan an area equal in size to a 10-foot (3 m) cube, including all objects or creatures within that area. The area must be within short range. Scanning a creature or object always reveals its level (a measure of how powerful, dangerous, or difficult it is). You also learn whatever facts the GM feels are pertinent about the matter and energy in that area. For example, you might learn that the wooden box contains a device of metal and synth. You might learn that the glass cylinder is full of poisonous gas, and that its metal stand has an electrical field running through it that connects to a metal mesh in the floor. You might learn that the creature standing before you is a mammal with a small brain. However, this ability doesn’t tell you what the information means. Thus, in the first example, you don’t know what the metal and synth device does. In the second, you don’t know if stepping on the floor causes the cylinder to release the gas. In the third, you might suspect that the creature is not very intelligent, but scans, like looks, can be deceiving. Many materials and energy fields prevent or resist scanning. Action.	scan	1
71	Sculpt Flesh	Action	2 Intellect	You cause a willing creature’s fingers to lengthen into claws and her teeth to grow into fangs. The effect lasts for ten minutes. The damage dealt by the target’s unarmed strikes increases to 4 points. Action.	sculpt_flesh	1
72	Shatter	Action	2 Intellect	You interrupt the fundamental force holding normal matter together for a moment, causing the detonation of an object you choose within long range. The object must be a small, mundane item composed of homogeneous matter (such as a clay cup, an iron ingot, a stone, and so on). The object explodes in an immediate radius, dealing 1 point of damage to all creatures and objects in the area. Because this is an area attack, adding Effort to increase your damage works differently than it does for single-target attacks: for each level of Effort applied in this way, the explosion deals 2 additional points of damage to each target, and even if you fail your attack roll, all targets in the area still take 1 point of damage. Action.	shatter	1
74	Adaptation	Action	2 Intellect	You adapt to a hostile environment for twenty-four hours. As a result, you can breathe safely, the temperature doesn’t kill you (though it might be extremely uncomfortable or debilitating), crushing gravity doesn’t incapacitate or harm you (though, again, you might be seriously hindered), and so on. In extreme environments, the GM might increase the cost of activating this ability to a maximum cost of 10 Intellect points. Roughly speaking, the cost should equal the amount of damage you would sustain in a given round. For example, if you enter a hostile environment that would normally deal 6 points of damage per round, using Adaptation to avoid that damage costs 6 points. You can protect other creatures in addition to yourself, but each additional creature costs the same number of Intellect points as it costs to protect you. Thus, if it costs 6 points to protect yourself, it costs 12 more to protect two other people. This ability never protects against quick, instantaneous threats, like an attack with a weapon or a sudden explosion of fire. Action to initiate.	adaptation	1
75	Cutting Light	Action	2 Intellect	You emit a thin beam of energized light from your hand. This inflicts 5 points of damage to a single foe in immediate range. The beam is even more effective against immobile, nonliving targets, slicing up to 1 foot (30 cm) of any material that is level 6 or lower. The material can be up to 1 foot thick. Action.	cutting_light	1
76	Flash	Action	4 Intellect	You create an explosion of energy at a point within close range, affecting an area up to immediate range from that point. You must be able to see the location where you intend to center the explosion. The blast inflicts 2 points of damage to all creatures or objects within the area. Because this is an area attack, adding Effort to increase your damage works differently than it does for single-target attacks: for each level of Effort applied in this way, the explosion deals 2 additional points of damage to each target, and even if you fail your attack roll, all targets in the area still take 1 point of damage. Action.	flash	1
77	Hover	Action	2 Intellect	You float slowly into the air. If you concentrate, you can control your movement to remain motionless in the air or float up to a short distance as your action; otherwise, you drift with the wind or with any momentum you have gained. This effect lasts for up to ten minutes. Action to initiate.	hover	1
78	Mind Reading	Action	4 Intellect	You can read the surface thoughts of a creature within short range, even if the target doesn’t want you to. You must be able to see the target. Once you have established contact, you can read the target’s thoughts for up to one minute. If you or the target move out of range, the connection is broken. Action to initiate.	mind_reading	1
97	Wormhole	Action	6 Intellect	You create a doorway through time and space. The shortcut manifests as a hole in reality large enough to accommodate you and creatures of your size or smaller. One side of the doorway appears anywhere within immediate range, and the other side opens at a spot you choose anywhere within long range. Any character or object moving into one side exits from the other. The door remains open for one minute or until you use an action to close it. Action to initiate.	wormhole	1
79	Retrieve Memories	Action	3 Intellect	You touch the remains of a recently killed creature and make an Intellect-based roll to restore its mind to life long enough to learn information from it. The GM sets the difficulty based on the amount of time that has passed since the creature died. A creature that has been dead for only a few minutes is a difficulty 2 task, one that has been dead for an hour is a difficulty 4 task, and one that has been dead for a few days is a difficulty 9 task. If you succeed, you awaken the corpse, causing its head to animate and perceive things as if it were alive. This enables communication for about one minute, which is how long it takes for the creature to realize that it’s dead. The creature is limited to what it knew in life, though it cannot recall minor memories, only big events of importance to it. When the effect ends, or if you fail the roll, the creature’s brain dissolves to mush and cannot be awakened again. Action.	retrieve_memories	1
80	Reveal	Action	2 Intellect	You adjust a creature’s eyesight so that it can see normally in areas of dim light and darkness. You can affect one willing creature within immediate range for one hour. Instead of applying Effort to decrease the difficulty, you can use it to affect more targets; each level of Effort applied affects two additional targets. You must touch additional targets to affect them. Action to initiate.	reveal	1
81	Stasis	Action	3 Intellect	You surround a foe of your size or smaller with scintillating energy, keeping it from moving or acting for one minute, as if frozen solid. You must be able to see the target, and it must be within short range. While in stasis, the target is impervious to harm, cannot be moved, and is immune to all effects. Action.	stasis	1
82	Barrier	Action	3 Intellect	You create an opaque, stationary barrier of solid energy within immediate range. The barrier is 10 feet by 10 feet (3 m by 3 m) and of negligible thickness. It is a level 2 barrier and lasts for ten minutes. It can be placed anywhere it fits, whether against a solid object (including the ground) or floating in the air. Each level of Effort you apply strengthens the barrier by one level. For example, applying two levels of Effort creates a level 4 barrier. Action.	barrier	1
100	Conjuration	Action	7 Intellect	You produce, as if from thin air, a level 5 creature of a kind you have previously encountered. The creature remains for one minute and then returns home. While present, the creature acts as you direct, but this requires no action on your part. Action.	conjuration	1
86	Sensor	Action	4 Intellect	You create an immobile, invisible sensor within immediate range that lasts for twenty-four hours. At any time during that duration, you can concentrate to see, hear, and smell through the sensor, no matter how far you move from it. The sensor doesn’t grant you sensory capabilities beyond the norm. Action to create; action to check.	sensor	1
87	Targeting Eye	Enabler	-	You are trained in any physical ranged attack that is a special ability or comes from a cypher or an artifact. For example, you are trained when using an Onslaught force blast because it’s a physical attack, but not when using an Onslaught mindslice because it’s a mental attack. Enabler.	targeting_eye	1
88	Exile	Action	5 Intellect	You send a target that you touch hurtling into another random dimension or universe, where it remains for ten minutes. You have no idea what happens to the target while it’s gone, but at the end of ten minutes, it returns to the precise spot it left. Action.	exile	1
89	Invisibility	Action	4 Intellect	You become invisible for ten minutes. While invisible, you are specialized in stealth and Speed defense tasks. This effect ends if you do something to reveal your presence or position—attacking, using an ability, moving a large object, and so on. If this occurs, you can regain the remaining invisibility effect by taking an action to focus on hiding your position. Action to initiate or reinitiate.	invisibility	1
90	Matter Cloud	Action	5 Intellect	Pebbles, dirt, sand, and debris rise into the air around you to form a swirling cloud. The cloud extends out to immediate range, moves with you, and lasts for one minute. When it ends, all the materials fall to the ground around you. The cloud makes it harder for other creatures to attack you, giving you an asset on Speed defense rolls. In addition, while the cloud is around you, you can use an action to whip the material so that it abrades everything within immediate range, dealing 1 point of damage to each creature and object in the area. Action to initiate.	matter_cloud	1
91	Mind Control	Action	6 Intellect	You control the actions of another creature you touch. This effect lasts for ten minutes. The target must be level 2 or lower. Once you have established control, you maintain mental contact with the target and sense what it senses. You can allow it to act freely or override its control on a case-by- case basis. Instead of applying Effort to decrease the difficulty, you can apply Effort to increase the maximum level of the target. Thus, to control the mind of a level 5 target (three levels above the normal limit), you must apply three levels of Effort. Smart adepts use the Scan ability on a creature to learn its level before trying to control its mind. When the effect ends, the creature doesn’t remember being controlled or anything it did while under your command. Action to initiate.	mind_control	1
93	Rapid Processing	Action	6 Intellect	You or a target you touch experiences a higher level of mental and physical reaction time for about a minute. During that period, the difficulty of all Speed tasks (including Speed defense rolls) is reduced by one step. In addition, the target can take one extra action at any time before the ability’s duration expires. Action.	rapid_processing	1
94	Regeneration	Action	6 Intellect	You restore points to a target’s Might Pool or Speed Pool in one of two ways: either the chosen Pool regains up to 6 points, or it is restored to a total value of 12. You make this decision when you initiate this ability. Points are restored at a rate of 1 point each round. You must maintain contact with the target the whole time. In no case can this ability raise a Pool higher than its normal maximum. Action.	regeneration	1
95	Reshape	Action	5 Intellect	You reshape matter within short range in an area no larger than a 5-foot (1 m) cube. If you spend only one action on this ability, the changes you make are crude at best. If you spend at least ten minutes and succeed at an appropriate crafting task (with a difficulty at least one step higher than normal, due to the circumstances), you can make complex changes to the material. You can’t change the nature of the material, only its shape. Thus, you can make a hole in a wall or floor, or you can seal one up. You can fashion a rudimentary sword from a large piece of iron. You can break or repair a chain. With multiple uses of this ability, you could bring about large changes, making a bridge, a wall, or a similar structure. Action.	reshape	1
98	Absorb Energy	Action	7 Intellect	You touch an object and absorb its energy, if any. If you touch a cypher, you render it useless. If you touch an artifact, roll for its depletion. If you touch another kind of powered machine or device, the GM determines whether its power is fully drained. In any case, you absorb energy from the object touched and regain 1d10 Intellect points. If this would give you more Intellect than your Pool’s maximum, the extra points are lost, and you must make a Might defense roll with a difficulty equal to the number of extra points you absorbed. If you fail the roll, you take 5 points of damage and are unable to act for one round. You can use this ability as a defense action when you’re the target of an incoming energy-based attack. Doing so cancels the incoming attack, and you absorb the energy as if it were a device. Action.	absorb_energy	1
101	Create	Action	7 Intellect	You create something from nothing. You can create any item you choose that would ordinarily have a difficulty of 5 or lower (using the crafting rules). Once created, the item lasts for a number of hours equal to 6 minus the difficulty to create it. Thus, if you create a motorbike (difficulty 5), it would last for one hour. Action.	create	1
102	Divide Your Mind	Action	7 Intellect	You split your consciousness into two parts. For one minute, you can take two actions on each of your turns, but only one of them can be to use a special ability. Action.	divide_your_mind	1
125	Hand to Eye	Enabler	-	This ability provides an asset to any tasks involving manual dexterity, such as pickpocketing, lockpicking, games involving agility, and so on. Each use lasts up to a minute; a new use (to switch tasks) replaces the previous use. Action to initiate.	hand-eye	1
85	Fire and Ice	Action	4 Intellect	You cause a target within short range to become either very hot or very cold (your choice). The target suffers 3 points of ambient damage (ignores Armor) each round for up to three rounds, although a new roll is required each round to continue to affect the target. Action to initiate.	fire_ice	1
106	Teleportation	Action	6+ Intellect	You instantaneously transmit yourself to any location that you have seen or been to, no matter the distance, as long as it is on the same world as you. Instead of applying Effort to decrease the difficulty, you can apply Effort to bring other people with you; each level of Effort affects up to three additional targets. You must touch additional targets to teleport them. Action.	teleportation	1
107	True Senses	Enabler	-	You can see in complete darkness up to 50 feet (15 m) as if it were dim light. You recognize holograms, disguises, optical illusions, sound mimicry, and other such tricks (for all senses) for what they are. Enabler.	true_senses	1
104	Knowing the Unknown	Action	6 Intellect	Tapping into a source of information beyond yourself, you can ask the GM one question and get a general answer. The GM assigns a level to the question, so the more obscure the answer, the more difficult the task. Generally, knowledge that you could find by looking somewhere other than your current location is level 1, and obscure knowledge of the past is level 7. Gaining knowledge of the future is impossible. Action.	knowing_the_unknown	1
103	Dust to Dust	Action	7 Intellect	With a touch, you disintegrate one nonliving object that is smaller than you and whose level is less than or equal to your tier. If the GM feels it appropriate to the circumstances, you can disintegrate a portion of an object (the total volume of which is smaller than you) rather than the entire thing. Action.	dust_to_dust	1
132	Controlled Fall	Enabler	-	When you fall while you are able to use actions and within reach of a vertical surface, you can attempt to slow your fall. Make a Speed roll with a difficulty of 1 for every 20 feet (6 m) you fall. On a success, you take half damage from the fall. If you reduce the difficulty to 0, you take no damage. Enabler.	controlled-fall	1
133	Ignore the Pain	Enabler	-	You do not feel the detrimental effects of being impaired on the damage track, and when you are debilitated, you ignore those effects and experience the effects normally associated with being impaired instead. (Dead is still dead.) Enabler.	ignore-pain	1
134	Resilience	Enabler	-	You have +1 to Armor against any kind of physical damage, even damage that normally ignores Armor. Enabler.	resilience	1
135	Run and Fight	Action	4 Might	You can move a short distance and make a melee attack that inflicts 2 additional points of damage. Action.	run-and-fight	1
136	Seize Opportunity	Enabler	4 Speed	If you succeed on a Speed defense roll to resist an attack, you gain an action. You can use it immediately even if you have already taken a turn in the round. If you use this action to attack, the difficulty of your attack is reduced by one step. You don’t take an action during the next round. Enabler.	seize-opportunity	1
137	Stone Breaker	Enabler	-	Your attacks against objects inflict 4 additional points of damage when you use a melee weapon that you wield in two hands. Enabler.	stone-breaker	1
138	Think Your Way Out	Enabler	-	When you wish it, you can use points from your Intellect Pool rather than your Might Pool or Speed Pool on any noncombat action. Enabler.	think-your-way-out	1
139	Wrest From Chance	Enabler	-	If you roll a natural 1 on a d20, you can reroll the die. If you reroll, you avoid a GM intrusion—unless you roll a second 1—and might succeed on your task. Once you use this ability, it is not available again until after you make a ten-hour recovery roll. Enabler.	wrest-chance	1
\.


--
-- Data for Name: cyphercore_cypher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_cypher (id, name, level_range, effect, slug, sourcebook_id) FROM stdin;
1	Adhesion	1d6	Allows for automatic climbing of any surface, even horizontal ones. Lasts for twenty minutes.	adhesion	1
\.


--
-- Data for Name: cyphercore_descriptor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_descriptor (id, name, description, characteristics, starting_link, slug, sourcebook_id) FROM stdin;
42	Strong	You’re extremely strong and physically powerful, and you use these qualities well, whether through violence or feats of prowess. You likely have a brawny build and impressive muscles.	Very Powerful: +4 to your Might Pool. Skill: You’re trained in all actions involving breaking inanimate objects. Skill: You’re trained in all jumping actions. Additional Equipment: You have an extra medium weapon or heavy weapon.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger. 2. One of the other PCs convinced you that joining the group would be in your best interests. 3. You’re afraid of what might happen if the other PCs fail. 4. There is reward involved, and you need the money.	strong	1
17	Graceful	You have a perfect sense of balance, moving and speaking with grace and beauty. You’re quick, lithe, flexible, and dexterous. Your body is perfectly suited to dance, and you use that advantage in combat to dodge blows. You might wear garments that enhance your agile movement and sense of style.	Agile: +2 to your Speed Pool. Skill: You’re trained in all tasks involving balance and careful movement. Skill: You’re trained in all tasks involving physical performing arts. Skill: You’re trained in all Speed defense tasks.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger. 2. One of the other PCs convinced you that joining the group would be in your best interests. 3. You’re afraid of what might happen if the other PCs fail. 4. There is reward involved, and you need the money.	graceful	1
38	Sharp-Eyed	You’re perceptive and well aware of your surroundings. You notice the little details and remember them. You can be difficult to surprise.	Skill: You’re trained in initiative actions. Skill: You’re trained in perception actions. Find the Flaw: If an opponent has a straightforward weakness (takes extra damage from fire, can’t see out of his left eye, and so on), the GM will tell you what it is.	1. You heard about what was going on, saw a flaw in the other PCs’ plan, and joined up to help them out. 2. You noticed that the PCs have a foe (or at least a tail) they weren’t aware of. 3. You saw that the other PCs were up to something interesting and got involved. 4. You’ve been noticing some strange things going on, and this all appears related.	sharp-eyed	1
4	Charming	You’re a smooth talker and a charmer. Whether through seemingly supernatural means or just a way with words, you can convince others to do as you wish. Most likely, you’re physically attractive or at least highly charismatic, and others enjoy listening to your voice. You probably pay attention to your appearance, keeping yourself well groomed. You make friends easily. You play up the personality facet of your Intellect stat; intelligence is not your strong suit. You’re personable, not necessarily studious or strong-willed.	Personable: +2 to your Intellect Pool. Skill: You’re trained in all tasks involving positive or pleasant social interaction. Skill: You’re trained when using special abilities that influence the minds of others. Contact: You have an important contact who is in an influential position, such asa minor noble, the captain of the town guard/police, or the head of a large gang of thieves. You and the GM should work out the details together. Inability: You were never good at studying or retaining facts. The difficulty of any task involving lore, knowledge, or understanding is increased by one step. Inability: Your willpower is not one of your strong points. Whenever you try to resist a mental attack, the difficulty is increased by one step. Additional Equipment: You’ve managed to talk your way into some decent discounts and bonuses in recent weeks. As a result, you have enough cash jangling in your pocket to purchase a moderately priced item.	1. You convinced one of the other PCs to tell you what he was doing. 2. You instigated the whole thing and convinced the others to join you. 3. One of the other PCs did a favor for you, and now you’re repaying that obligation by helping her with the task at hand. 4. There is reward involved, and you need the money.	charming	1
2	Brash	You’re a self-assertive sort, confident in your abilities, energetic, and perhaps a bit irreverent toward ideas that you don’t agree with. Some people call you bold and brave, but those you’ve put in their place might call you puffed up and arrogant. Whatever. It’s not in your nature to care what other people think about you, unless those people are your friends or family. Even someone as brash as you knows that friends sometimes have to come first.	Energetic: +2 to your Speed Pool. Skill: You are trained in initiative. Bold: You are trained in all actions that involve overcoming or ignoring the effects of fear or intimidation.	1. You noticed something weird going on, and without much thought, you jumped in with both feet. 2. You showed up when and where you did on a dare because, hey, you don’t back down from dares. 3. Someone called you out, but instead of walking into a fight, you walked into your current situation. 4. You told your friend that nothing could scare you, and nothing you saw would change your mind. She brought you to your current point.	brash	1
44	Swift	You move quickly, able to sprint in short bursts and work with your hands with dexterity. You’re great at crossing distances quickly but not always smoothly. You are likely slim and muscular.	Fast: +4 to your Speed Pool. Skill: You’re trained in initiative actions (to determine who goes first in combat). Skill: You’re trained in running actions. Inability: You’re fast but not necessarily graceful. The difficulty of any task involving balance is increased by one step.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger. 2. One of the other PCs convinced you that joining the group would be in your best interests. 3. You’re afraid of what might happen if the other PCs fail. 4. There is reward involved, and you need the money.	swift	1
43	Strong-Willed	You’re tough-minded, willful, and independent. No one can talk you into anything or change your mind when you don’t want it changed. This quality doesn’t necessarily make you smart, but it does make you a bastion of willpower and resolve. You likely dress and act with unique style and flair, not caring what others think.	Willful: +4 to your Intellect Pool. Skill: You’re trained in resisting mental effects. Skill: You’re trained in tasks requiring incredible focus or concentration. Inability: Willful doesn’t mean brilliant. The difficulty of any task that involves figuring out puzzles or problems, memorizing things, or using lore is increased by one step.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger. 2. One of the other PCs convinced you that joining the group would be in your best interests. 3. You’re afraid of what might happen if the other PCs fail. 4. There is reward involved, and you need the money.	strong-willed	1
3	Calm	You’ve spent most of your life in sedentary pursuits—books, movies, hobbies, and so on—rather than active ones. You’re well versed in all manner of academia or other intellectual pursuits, but nothing physical. You’re not weak or feeble, necessarily (although this is a good descriptor for characters who are elderly), but you have no experience in more physical activities.	Bookish: +2 to your Intellect Pool. Skills: You are trained in four nonphysical skills of your choice. Trivia: You can come up with a random fact pertinent to the current situation when you wish it. This is always a matter of fact, not conjecture or supposition, and must be something you could have logically read or seen in the past. You can do this one time, although the ability is renewed each time you make a recovery roll. Inability: You’re just not a fighter. The difficulty of all physical attacks is increased by one step. Inability: You’re not the outdoorsy type. The difficulty of all climbing, running, jumping, and swimming tasks is increased by one step.	1. You read about the current situation somewhere and decided to check it out for yourself. 2. You were in the right (wrong?) place at the right (wrong?) time. 3. While avoiding an entirely different situation, you walked into your current situation. 4. One of the other PCs dragged you into it.	calm	1
6	Clumsy	Graceless and awkward, you were told that you’d grow out of it, but you never did. You often drop things, trip over your own feet, or knock things (or people) over. Some people get frustrated by this quality, but most find it funny and even a little charming.	Butterfingers: −2 to your Speed Pool. Thick-Muscled: +2 to your Might Pool. Inelegant: You have a certain lovable charm. You are trained in all pleasant social interactions when you express a lighthearted, self-deprecating manner. Dumb Luck: The GM can introduce a GM intrusion on you, based on your clumsiness, without awarding you any XP (as if you had rolled a 1 on a d20 roll). However, if this happens, 50% of the time, your clumsiness works to your advantage. Rather than hurting you (much), it helps, or it hurts your enemies. You slip, but it’s just in time to duck an attack. You fall down, but you trip your enemies as you crash into their legs. You turn around too quickly, but you end up knocking the weapon from your foe’s hand. You and the GM should work together to determine the details. The GM can use GM intrusions based on your clumsiness normally (awarding XP) if she desires. Skill: You’ve got a certain bull-like quality. You are trained in tasks involving breaking things. Inability: The difficulty of any task that involves balance, grace, or hand-to-eye coordination is increased by one step.	1. You were in the right place at the right time. 2. You had a piece of information that the other PCs needed to make their plans. 3. A sibling recommended you to the other PCs. 4. You stumbled into the PCs as they were discussing their mission, and they took a liking to you.	clumsy	1
18	Guarded	You conceal your true nature behind a mask and are loath to let anyone see who you really are. Protecting yourself, physically and emotionally, is what you care about most, and you prefer to keep everyone else at a safe distance. You may be suspicious of everyone you meet, expecting the worst from people so you won’t be surprised when they prove you right. Or you might just be a bit reserved, careful about letting people through your gruff exterior to the person you really are. No one can be as reserved as you are and make many friends. Most likely, you have an abrasive personality and tend to be pessimistic in your outlook. You probably nurse an old hurt and find that the only way you can cope is to keep it and your personality locked down.	Suspicious: +2 to your Intellect Pool. Skill: You are trained in all Intellect defense tasks. Skill: You are trained in all tasks involving discerning the truth, piercing disguises, and recognizing falsehoods and other deceptions. Inability: Your suspicious nature makes you unlikeable. The difficulty of any task involving deception or persuasion is increased by one step.	1. One of the PCs managed to overcome your defenses and befriend you. 2. You want to see what the PCs are up to, so you accompany them to catch them in the act of some wrongdoing. 3. You have made a few enemies and take up with the PCs for protection. 4. The PCs are the only people who will put up with you.	guarded	1
5	Clever	You’re quick-witted, thinking well on your feet. You understand people, so you can fool them but are rarely fooled. Because you easily see things for what they are, you get the lay of the land swiftly, size up threats and allies, and assess situations with accuracy. Perhaps you’re physically attractive, or maybe you use your wit to overcome any physical or mental imperfections.	Smart: +2 to your Intellect Pool. Skill: You’re trained in all interactions involving lies or trickery. Skill: You’re trained in defense rolls to resist mental effects. Skill: You’re trained in all tasks involving identifying or assessing danger, lies, quality, importance, function, or power. Inability: You were never good at studying or retaining trivial knowledge. The difficulty of any task involving lore, knowledge, or understanding is increased by one step. Additional Equipment: You see through the schemes of others and occasionally convince them to believe you—even when, perhaps, they should not. Thanks to your clever behavior, you have an additional expensive item.	1. You convinced one of the other PCs to tell you what he was doing. 2. From afar, you observed that something interesting was going on. 3. You talked your way into the situation because you thought it might earn some money. 4. You suspect that the other PCs won’t succeed without you.	clever	1
8	Creative	Maybe you have a notebook where you write down ideas so you can develop them later. Perhaps you email yourself ideas that strike you out of the blue so you can sort them in an electronic document. Or maybe you just sit down, stare at your screen and, by indomitable force of will, produce something from nothing. However your gift works, you’re creative—you code, write, compose, sculpt, design, direct, or otherwise create narratives that enthrall other people with your vision.	Inventive: +2 to your Intellect Pool. Original: You’re always coming up with something new. You’re trained in any task related to creating a narrative (such as a story, play, or scenario). This includes deception, if the deception involves a narrative you’re able to tell. Skill: You are naturally inventive. You are trained in one specific creative skill of your choice: writing, computer coding, music composition, and so on. Skill: You love solving riddles and the like. You are trained in puzzle-solving tasks. Skill: To be creative requires that you always be learning. You are trained in any task that involves learning something new, such as when you’re digging through a library, data bank, news archive, or similar collection of knowledge. Inability: You’re inventive but not charming. The difficulty of all tasks related to pleasant social interaction is one step higher for you.	1. You were doing research for a project and convinced the PCs to bring you along. 2. You’re looking for new markets for the results of your creative output. 3. You fell in with the wrong crowd, but they grew on you. 4. A creative life is often one beset with financial hurdles. You joined the PCs because you hoped it would be profitable.	creative	1
10	Dishonorable	There is no honor among thieves—or betrayers, backstabbers, liars, or cheats. You are all of these things, and either you don’t lose any sleep over it, or you deny the truth to others or to yourself. Regardless, you are willing to do whatever it takes to get your own way. Honor, ethics, and principles are merely words. In your estimation, they have no place in the real world.	Sneaky: +4 to your Speed Pool. Just Desserts: When the GM gives another player an experience point to award to someone for a GM intrusion, that player cannot give it to you. Skill: You are trained in deception. Skill: You are trained in stealth. Skill: You are trained in intimidation. Inability: People don’t like or trust you. The difficulty of pleasant social interactions is increased by one step.	1. You are interested in what the PCs are doing, so you lied to them to get into their group. 2. While skulking about, you overheard the PCs’ plans and realized that you wanted in. 3. One of the other PCs invited you, having no idea of what you’re truly like. 4. You bullied your way in with intimidation and bluster.	dishonorable	1
11	Doomed	You are quite certain that your fate is leading you, inextricably, toward a terrible end. This fate might be yours alone, or you might be dragging along the others closest to you.	Jumpy: +2 to your Speed Pool. Skill: Always on the lookout for danger, you are trained in perception-related tasks. Skill: You are defense minded, so you are trained in Speed defense tasks. Skill: You are cynical and expect the worst. Thus, you are resistant to mental shocks. You are trained in Intellect defense tasks having to do with losing your sanity. Doom: Every other time the GM uses GM intrusion on your character, you cannot refuse it and do not get an XP for it (you still get an XP to award to another player). This is because you are doomed. The universe is a cold, uncaring place, and your efforts are futile at best.	1. You attempted to avoid it, but events seemed to conspire to draw you to where you are. 2. Why not? It doesn’t matter. You’re doomed no matter what you do. 3. One of the other PCs saved your life, and now you’re repaying that obligation by helping her with the task at hand. 4. You suspect that the only hope you have of avoiding your fate might lie on this path.	doomed	1
12	Driven	You have set your sights on a goal, and everything you do is in pursuit of that objective. The thing you seek defines you—it shapes your decisions, colors your outlook, and impels you to take action even when your body and mind scream for you to give up and set the task aside, at least for a while. No matter the hardships you face along the way, you believe in your purpose and will let nothing stop you from achieving it. When you choose this descriptor, choose a goal that is possible to attain. You might set a goal of finding a lost parent, making a sacrifice at a rumored temple, learning how to perform a particular task, or gaining the funds to pay for medical treatment for a loved one. Once you achieve this goal, you may choose a new one. You probably talk about your mission all the time, bringing it up even when it’s only tangentially connected to the conversation. You usually consider other pursuits in the context of whether or not they advance your own agenda.	Determined: +2 to your Might Pool. Skill: You’re trained in Intellect defense Skill: Each day, choose one skill that you believe will clearly help you reach your goal. You are trained in tasks related to that skill. Inability: Your commitment to your goals makes it hard to relate to others who don’t share your objectives or to notice things that don’t pertain to your present mission. The difficulty of all perception tasks is increased by one step.	1. You saw that the other PCs were pursuing the same goal as you, and you believed that joining forces would improve both of your chances at attaining your objectives. 2. One of the PCs gave you information or other assistance in your mission, and you now repay the favor. 3. Helping the PCs may put key resources you need to complete your mission into your hands. 4. One of the other PCs found you when you were wounded and nursed you back to health.	driven	1
14	Exiled	You have walked a long and lonely road, leaving your home and your life behind. You might have committed a heinous crime, something so awful that your people forced you out, and if you dare return, you face death. You might have been accused of a crime you didn’t commit and now must pay the price for someone else’s wicked deed. Your exile might be the result of a social gaffe— perhaps you shamed your family or a friend, or you embarrassed yourself in front of your peers, an authority, or someone you respect. Whatever the reason, you have left your old life behind and now strive to make a new one. You probably have a memento from your past—an old picture, a locket with a few strands of hair inside, or a lighter given to you by someone important. You keep the object close at hand and pull it out to help you remember better times.	Self-Reliant: +2 to your Might Pool. Loner: You gain no benefit when you get help with a task from another character who is trained or specialized in that task. Skill: You’re trained in all tasks involving sneaking. Skill: You’re trained in all tasks involving foraging, hunting, and finding safe places to rest or hide. Inability: Living on your own for as long as you have makes you slow to trust others and awkward in social situations. The difficulty of any task involving social interactions is increased by one step.	1. The other PCs earned your trust by helping you when you were in need. You accompany them to repay their aid. 2. While exploring on your own, you discovered something strange. When you traveled to a settlement, the PCs were the only ones who believed you, and they have accompanied you to help you deal with the problem. 3. One of the other PCs reminds you of someone you used to know. 4. You have grown weary of your isolation. Joining the other PCs gives you a chance to belong.	exiled	1
16	Foolish	Not everyone can be brilliant. Oh, you don’t think of yourself as stupid, and you’re not. It’s just that others might have a bit more... wisdom. Insight. You prefer to barrel along headfirst through life and let other people worry about things. Worrying’s never helped you, so why bother? You take things at face value and don’t fret about what tomorrow might bring. People call you “idiot” or “numbskull,” but it doesn’t faze you much.	Unwise: −4 to your Intellect Pool. Carefree: You succeed more on luck than anything. Every time you roll for a task, roll twice and take the higher result. Intellect Weakness: Any time you spend points from your Intellect Pool, it costs you 1 more point than usual. Inability: The difficulty of any Intellect defense task is increased by one step. Inability: The difficulty of any task that involves seeing through a deception, an illusion, or a trap is increased by one step.	1. Who knows? Seemed like a good idea at the time. 2. Someone asked you to join up with the other PCs. They told you not to ask too many questions, and that seemed fine to you. 3. Your parent (or a parental/mentor figure) got you involved to give you something to do and maybe “teach you some sense.” 4. The other PCs needed some muscle that wouldn’t overthink things.	foolish	1
15	Fast	You’re fleet of foot. Because you’re quick, you can accomplish tasks more rapidly than others can. You’re not just quick on your feet, however—you’re quick with your hands, and you think and react quickly. You even talk quickly.	Energetic: +2 to your Speed Pool. Skill: You are trained in running. Fast: You can move a short distance and still take another action in the same round, or you can move a long distance as your action without needing to make any kind of roll. Inability: You’re a sprinter, not a long-distance runner. You don’t have a lot of stamina. The difficulty of any Might defense roll is increased by one step.	1. You jumped in to save one of the other PCs who was in dire need. 2. One of the other PCs recruited you for your unique talents. 3. You’re impulsive, and it seemed like a good idea at the time. 4. This mission ties in with a personal goal of your own.	fast	1
30	Mechanical	You have a special talent with machines of all kinds, and you’re adept at understanding and, if need be, repairing them. Perhaps you’re even a bit of an inventor, creating new machines from time to time. You get called “techie,” “tech,” “mech,” “gear-head,” “motor-head,” or any of a number of other nicknames. Mechanics usually wear practical work clothes and carry around a lot of tools.	Smart: +2 to your Intellect Pool. Skill: You’re trained in all actions involving identifying or understanding machines. Skill: You’re trained in all actions involving using, repairing, or crafting machines. Additional Equipment: You start with a variety of machine tools.	1. While repairing a nearby machine, you overheard the other PCs talking. 2. You need money to buy tools and parts. 3. It was clear that the mission couldn’t succeed without your skills and knowledge. 4. Another PC asked you to join them.	mechanical	1
20	Hideous	You are physically repugnant by almost any human standard. You might have had a serious accident, a harmful mutation, or just poor genetic luck, but you are incontrovertibly ugly. You’ve more than made up for your appearance in other ways, however. Because you had to hide your appearance, you excel at sneaking about unnoticed or disguising yourself. But perhaps most important, being ostracized while others socialized, you took the time growing up to develop yourself as you saw fit—you grew strong or quick, or you honed your mind.	Versatile: You get 4 additional points to divide among your stat Pools. Skill: You are trained in intimidation and any other fear-based interactions. Skill: You are trained in disguise and stealth tasks. Inability: The difficulty of all tasks relating to pleasant social interaction is increased by one step.	1. One of the other PCs approached you while you were in disguise, recruiting you while believing you were someone else. 2. While skulking about, you overheard the other PCs’ plans and realized you wanted in. 3. One of the other PCs invited you, but you wonder if it was out of pity. 4. You bullied your way in with intimidation and bluster.	hideous	1
21	Honorable	You are trustworthy, fair, and forthright. You try to do what is right, to help others, and to treat them well. Lying and cheating are no way to get ahead—these things are for the weak, the lazy, or the despicable. You probably spend a lot of time thinking about your personal honor, how best to maintain it, and how to defend it if challenged. In combat, you are straightforward and offer quarter to any foe. You were likely instilled with this sense of honor by a parent or a mentor. Sometimes the distinction between what is and isn’t honorable varies with different schools of thought, but in broad strokes, honorable people can agree on most aspects of what honor means.	Stalwart: +2 to your Might Pool. Skill: You are trained in pleasant social interactions. Skill: You are trained in discerning people’s true motives or seeing through lies.	1. The PCs’ goals appear to be honorable and commendable. 2. You see that what the other PCs are about to do is dangerous, and you’d like to help protect them. 3. One of the other PCs invited you, hearing of your trustworthiness. 4. You asked politely if you could join the other PCs in their mission.	honorable	1
22	Impulsive	You have a hard time tamping down your enthusiasm. Why wait when you can just do it (whatever it is) and get it done? You deal with problems when they arise rather than plan ahead. Putting out the small fires now prevents them from becoming one big fire later. You are the first to take risks, to jump in and lend a hand, to step into dark passages, and to find danger. Your impulsiveness likely gets you into trouble. While others might take time to study the items they discover, you use such items without hesitation. After all, the best way to learn what something can do is to use it. When a cautious explorer might look around and check for danger nearby, you have to physically stop yourself from bulling on ahead. Why fuss around when the exciting thing is just ahead?	Reckless: +2 to your Speed Pool. Skill: You’re trained in initiative actions (to determine who goes first in combat). Skill: You’re trained in Speed defense actions. Inability: You’ll try anything once or twice. The difficulty of any task that involves patience, willpower, or discipline is increased by one step.	1. You heard what the other PCs were up to and suddenly decided to join them. 2. You pulled everyone together after you heard rumors about something interesting you want to see or do. 3. You blew all of your money and now find yourself strapped for cash. 4. You’re in trouble for acting recklessly. You join the other PCs because they offer a way out of your problem.	impulsive	1
24	Intelligent	You’re quite smart. Your memory is sharp, and you easily grasp concepts that others might struggle with. This aptitude doesn’t necessarily mean that you’ve had years of formal education, but you have learned a great deal in your life, primarily because you pick things up quickly and retain so much.	Smart: +2 to your Intellect Pool. Skill: You’re trained in an area of knowledge of your choice. Skill: You’re trained in all actions that involve remembering or memorizing things you experience directly. For example, instead of being good at recalling details of geography that you read about in a book, you can remember a path through a set of tunnels that you’ve explored before.	1. One of the other PCs asked your opinion of the mission, knowing that if you thought it was a good idea, it probably was. 2. You saw value in what the other PCs were doing. 3. You believed that the task might lead to important and interesting discoveries. 4. A colleague requested that you take part in the mission as a favor.	intelligent	1
23	Inquisitive	The world is vast and mysterious, with wonders and secrets to keep you amazed for several lifetimes. You feel the tugging on your heart, the call to explore the wreckage of past civilizations, to discover new peoples, new places, and whatever bizarre wonders you might find along the way. However, as strongly as you feel the pull to roam the world, you know there is danger aplenty, and you take precautions to ensure that you are prepared for any eventuality. Research, preparation, and readiness will help you live long enough to see everything you want to see and do everything you want to do. You probably have a dozen books and travelogues about the world on you at any time. When not hitting the road and looking around, you spend your time with your nose in a book, learning everything you can about the place you’re going so you know what to expect when you get there.	Smart: +4 to your Intellect Pool. Skill: You are eager to learn. You are trained in any task that involves learning something new, whether you’re talking to a local to get information or digging through old books to find lore. Skill: You have made a study of the world. You are trained in any task involving geography or history. Inability: You tend to fixate on the details, making you somewhat oblivious to what’s going on around you. The difficulty of any task to hear or notice dangers around you is increased by one step. Inability: When you see something interesting, you hesitate as you take in all the details. The difficulty of initiative actions (to determine who goes first in combat) is increased by one step. Additional Equipment: You have three books on whatever subjects you choose.	1. One of the PCs approached you to learn information related to the mission, having heard you were an expert. 2. You have always wanted to see the place where the other PCs are going. 3. You were interested in what the other PCs were up to and decided to go along with them. 4. One of the PCs fascinates you, perhaps due to a special or weird ability she has.	inquisitive	1
25	Jovial	You’re cheerful, friendly, and outgoing. You put others at ease with a big smile and a joke, possibly one at your own expense, though lightly ribbing your companions who can take it is also one of your favorite pastimes. Sometimes people say you never take anything seriously. That’s not true, of course, but you have learned that to dwell on the bad too long quickly robs the world of joy. You’ve always got a new joke in your back pocket because you collect them like some people collect bottles of wine.	Witty: +2 to your Intellect Pool. Skill: You’re convivial and set most people at ease with your attitude. You are trained in all tasks related to pleasant social interaction. Skill: You have an advantage in figuring out the punch lines of jokes you’ve never heard before. You are trained in all tasks related to solving puzzles and riddles.	1. You solved a riddle before realizing that answering it would launch you into the adventure. 2. The other PCs thought you’d bring some much-needed levity to the team. 3. You decided that all fun and no work was not the best way to get through life, so you joined up with the PCs. 4. It was either go with the PCs or face up to a circumstance that was anything but jovial.	jovial	1
26	Kind	It’s always been easy for you to see things from the point of view of other people. That ability has made you sympathetic to what they really want or need. From your perspective, you’re just applying the old proverb that “it’s easier to catch flies with honey than with vinegar,” but others simply see your behavior as kindness. Of course, being kind takes time, and yours is limited. You’ve learned that a small fraction of people don’t deserve your time or kindness—true sadists, narcissists, and similar folk will only waste your energy. So you deal with them swiftly, saving your kindness for those who deserve it and can benefit from your attention.	Emotionally Intuitive: +2 to your Intellect Pool. Skill: You know what it’s like to go a mile in someone else’s shoes. You’re trained in all tasks related to pleasant social interaction and discerning the dispositions of others. Karma: Sometimes, strangers just help you out. To gain the aid of a stranger, you must pay 1 XP to the GM, and the GM determines the nature of the aid you gain. Usually, the act of kindness isn’t enough to turn a bad situation completely around, but it may moderate a bad situation and lead to new opportunities. For example, if you are captured, a guard loosens your bonds slightly, brings you water, or delivers a message. Inability: Being kind comes with a few risks. The difficulty of all tasks related to detecting falsehoods in the speech and mannerisms of other creatures is increased by one step.	1. A PC needed your help, and you agreed to come along and add your expertise. 2. You gave the wrong person access to your money, and now you need to make some back. 3. You’re ready to take your benevolence on the road and help more people than you could if you didn’t join the PCs. 4. Your job, which seemed like it would be personally rewarding, is the opposite. You join the PCs to escape the drudgery.	kind	1
29	Mad	You have delved too deeply into subjects people were not meant to know. You are knowledgeable in things beyond the scope of most, but this knowledge has come at a terrible price. You are likely in questionable physical shape and occasionally shake with nervous tics. You sometimes mutter to yourself without realizing it.	Knowledgeable: +4 to your Intellect Pool. Fits of Insight: Whenever such knowledge is appropriate, the GM feeds you information although there is no clear explanation as to how you could know such a thing. This is up to the GM’s discretion, but it should happen as often as once each session. Erratic Behavior: You are prone to acting erratically or irrationally. When you are in the presence of a major discovery or subjected to great stress (such as a serious physical threat), the GM can use GM intrusion that directs your next action without awarding XP. You can still pay 1 XP to refuse the intrusion. The GM’s influence is the manifestation of your madness and thus is always something you would not likely do otherwise, but it is not directly, obviously harmful to you unless there are extenuating circumstances. (For example, if a foe suddenly leaps out of the darkness, you might spend the first round babbling incoherently or screaming the name of your first true love.) Skill: You are trained in one area of knowledge (probably something weird or esoteric). Inability: Your mind is quite fragile. Whenever you try to resist a mental attack, the difficulty is increased by one step.	1. Voices in your head told you to go. 2. You instigated the whole thing and convinced the others to join you. 3. One of the other PCs obtained a book of knowledge for you, and now you’re repaying that favor by helping her with the task at hand. 4. You feel compelled by inexplicable intuition.	mad	1
27	Learned	You have studied, either on your own or with an instructor. You know many things and are an expert on a few topics, such as history, biology, geography, mythology, nature, or any other area of study. Learned characters typically carry a few books around with them and spend their spare time reading.	Smart: +2 to your Intellect Pool. Skill: You’re trained in three areas of knowledge of your choice. Inability: You have few social graces. The difficulty of any task involving charm, persuasion, or etiquette is increased by one step. Additional Equipment: You have two additional books on topics of your choice.	1. One of the other PCs asked you to come along because of your knowledge. 2. You need money to fund your studies. 3. You believed that the task might lead to important and interesting discoveries. 4. A colleague requested that you take part in the mission as a favor.	learned	1
33	Naive	You’ve lived a sheltered life. Your childhood was safe and secure, so you didn’t get a chance to learn much about the world—and even less chance to experience it. Whether you were training for something, had your nose in a book, or just were sequestered in a secluded place, you haven’t done much, met many people, or seen many interesting things so far. That’s probably going to change soon, but as you go forward into a larger world, you do so without some of the understanding that others possess about how it all works.	Fresh: You add +1 to your recovery rolls. Incorruptible: You are trained in Intellect defense tasks and all tasks that involve resisting temptation. Skill: You’re wide-eyed. You are trained in perception tasks. Inability: The difficulty of any task that involves seeing through deceptions or determining someone’s secret motive is increased by one step.	1. Someone told you that you should get involved. 2. You needed money, and this seemed like a good way to earn some. 3. You believed that you could learn a lot by joining the other PCs. 4. Sounded like fun.	naive	1
34	Noble	You are of noble birth. You are not of the common people. Your family has a title and the prestige and (probably) the wealth that goes along with it. The world can be a classist place, and in that structure you are in the top echelon. Often, laws don’t apply to you, you enjoy special treatment, and sometimes people do as you command. You probably dress in finery and walk with a noble bearing, but sometimes the nobility must conceal their station to keep themselves safe—from brigands, thieves, protestors, or aristocratic enemies and their servants.	Respect: People who are not of noble station often treat you with deference. A few, however, secretly treat you with contempt. The difficulty of interactions with non- nobles is decreased by one step 75% of the time, and increased by one step 25% of the time. Retainer or Mount: You start with a level 2 servant or mount that serves you faithfully. You and the GM should work out the details. Contact: You have a contact among the nobility who helps you and treats you well. You and the GM should work out the details. Skill: You are trained in etiquette and interacting with the nobility. Additional Equipment: You begin the game with an additional expensive item.	1. It seemed like a lark. 2. You’re on the run from an enemy, and joining the PCs seemed like a good way to hide among the common folk. 3. The mission involves somehow redeeming or helping your family. 4. Your parent(s) forced you into it, hoping the experience would be good for you.	noble	1
35	Perceptive	You miss little. You pick out the small details in the world around you and are skilled at making deductions from the information you find. Your talents make you an exceptional sleuth, a formidable scientist, or a talented scout. As adept as you are at finding clues, you have no skill at picking up on social cues. You overlook an offense that your deductions give or how uncomfortable your scrutiny can make the people around you. You tend to dismiss others as being intellectual dwarfs compared to you, which avails you little when you need a favor.	Smart: +2 to your Intellect Pool. Skill: You have an eye for detail. You are trained in any task that involves finding or noticing small details. Skill: You know a little about everything. You are trained in any task that involves identifying objects or calling to mind a minor detail or bit of trivia. Skill: Your skill at making deductions can be imposing. You are trained in any task that involves intimidating another creature. Inability: Your confidence comes off as arrogance to people who don’t know you. The difficulty of any task involving positive social interactions is increased by one step. Additional Equipment: You have a bag of light tools.	1. You overheard the other PCs discussing their mission and volunteered your services. 2. One of the PCs asked you to come along, believing that your talents would be invaluable to the mission. 3. You believe that the PCs’ mission is somehow related to one of your investigations. 4. A third party recruited you to follow the PCs and see what they were up to.	perceptive	1
32	Mystical	You think of yourself as mystical, attuned with the mysterious and the paranormal. Your true talents lie with the supernatural. You likely have experience with ancient lore, and you can sense and wield the supernatural—though whether that means “magic,” “psychic phenomena,” or something else is up to you (and probably up to those around you as well). Mystical characters often wear jewelry, such as a ring or an amulet, or have tattoos or other marks that show their interests.	Smart: +2 to your Intellect Pool. Skill: You’re trained in all actions involving identifying or understanding the supernatural. Sense Magic: You can sense whether the supernatural is active in situations where its presence is not obvious. You must study an object or location closely for a minute to get a feel for whether a mystical touch is at work. Spell: You can perform the following spell when you have a free hand and can pay the Intellect point cost. Hedge Magic (1 Intellect point): You can perform small tricks: temporarily change the color or basic appearance of a small object, cause small objects to float through the air, clean a small area, mend a broken object, prepare (but not create) food, and so on. You can’t use hedge magic to harm another creature or object. Action. Inability: You have a manner or an aura that others find a bit unnerving. The difficulty of any task involving charm, persuasion, or deception is increased by one step.	1. A dream guided you to this point. 2. You need money to fund your studies. 3. You believed the mission would be a great way to learn more about the supernatural. 4. Various signs and portents led you here.	mystical	1
36	Resilient	You can take a lot of punishment, both physically and mentally, and still come back for more. It takes a lot to put you down. Neither physical nor mental shocks or damage have a lasting effect. You’re tough to faze. Unflappable. Unstoppable.	Resistant: +2 to your Might Pool, and +2 to your Intellect Pool. Recover: You can make an extra recovery roll each day. This roll is just one action. So you can make two recovery rolls that each take one action, one roll that takes ten minutes, a fourth roll that takes one hour, and a fifth roll that requires ten hours of rest. Skill: You are trained in Might defense tasks. Skill: You are trained in Intellect defense tasks. Inability: You’re hardy but not necessarily strong. The difficulty of any task involving moving, bending, or breaking things is increased by one step. Inability: You have a lot of willpower and mental fortitude, but you’re not necessarily smart. The difficulty of any task involving knowledge or figuring out problems or puzzles is increased by one step.	1. You saw that the PCs clearly need someone like you to help them out. 2. Someone asked you to watch over one of the PCs in particular, and you agreed. 3. You are bored and desperately in need of a challenge. 4. You lost a bet—unfairly, you think— and had to take someone’s place on this mission.	resilient	1
39	Skeptical	You possess a questioning attitude regarding claims that are often taken for granted by others. You’re not necessarily a “doubting Thomas” (a skeptic who refuses to believe anything without direct personal experience), but you’ve often benefited from questioning the statements, opinions, and received knowledge presented to you by others.	Insightful: +2 to your Intellect Pool. Skill: You’re trained in identifying. Skill: You’re trained in all actions that involve seeing through a trick, illusion, rhetorical ruse designed to evade the issue, or lie. For example, you’re better at keeping your eye on the cup containing the hidden ball, sensing an illusion, or realizing if someone is lying to you (but only if you specifically concentrate and use this skill).	1. You overheard other PCs holding forth on a topic with an opinion you were quite skeptical about, so you decided to approach the group and ask for proof. 2. You were following one of the other PCs because you were suspicious of him, which brought you into the action. 3. Your theory about the nonexistence of the supernatural can be invalidated only by your own senses, so you came along. 4. You need money to fund your research.	skeptical	1
41	Stealthy	You’re sneaky, slippery, and fast. These talents help you hide, move quietly, and pull off tricks that require sleight of hand. Most likely, you’re wiry and small. However, you’re not much of a sprinter—you’re more dexterous than fleet of foot.	Quick: +2 to your Speed Pool. Skill: You’re trained in all stealth tasks. Skill: You’re trained in all interactions involving lies or trickery. Skill: You’re trained in all special abilities involving illusions or trickery. Inability: You’re sneaky but not fast. The difficulty of all movement-related tasks is one step higher for you.	1. You attempted to steal from one of the other PCs. That character caught you and forced you to come along with her. 2. You were tailing one of the other PCs for reasons of your own, which brought you into the action. 3. An NPC employer secretly paid you to get involved. 4. You overheard the other PCs talking about a topic that interested you, so you decided to approach the group.	stealthy	1
48	Virtuous	Doing the right thing is a way of life. You live by a code, and that code is something you attend to every day. Whenever you slip, you reproach yourself for your weakness and then get right back on track. Your code probably includes moderation, respect for others, cleanliness, and other characteristics that most people would agree are virtues, while you eschew their opposites: sloth, greed, gluttony, and so on.	Dauntless: +2 to your Might Pool. Skill: You are trained in discerning people’s true motives or seeing through lies. Skill: Your adherence to a strict moral code has hardened your mind against fear, doubt, and outside influence. You are trained in Intellect defense tasks.	1. The PCs are doing something virtuous, and you’re all about that. 2. The PCs are on the road to perdition, and you see it as your task to set them on the proper moral route. 3. One of the other PCs invited you, hearing of your virtuous ways. 4. You put virtue before sense and defended someone’s honor in the face of an organization or power far greater than you. You joined the PCs because they offered aid and friendship when, out of fear of reprisals, no one else would.	virtuous	1
47	Vengeful	One moment changed everything for you. One dreadful encounter, one betrayal, or one horrific tragedy altered your course and made you who you are today. Looking back at that time, you often wonder how your life would have unfolded if not for the event that ruined everything. The life you imagine you should have had haunts you and feeds your appetite for revenge until vengeance is the only thing you have left. To be vengeful, you must have someone or something you want revenge against and someone or something to avenge. Work with your GM to determine what happened that affected you so strongly. Maybe a group of bandits wiped out your family. A corrupt official stole your family’s savings or otherwise brought ruin to you and your loved ones. Perhaps a rival destroyed your romance by sullying your name. Death, finances, love: any of these can support your motivation. In addition, consider to what extent your character will go to gain vengeance. Will you compromise your values to destroy the ones who wronged you? Will you sacrifice your companions to get what you want? Can you imagine a life after you get revenge, or will you throw yours away to punish the people who wronged you?	Skill: The fires of your hatred make you an imposing figure. You’re trained in any task that involves intimidation, threats, or inflicting pain through torture. Skill: You will follow your enemies to the ends of the earth. You’re trained in any task that involves finding and following tracks. Skill: You’re trained in Speed defense actions. Additional Equipment: You have an additional medium weapon.	1. You and the other PCs are headed in the same direction. 2. You believe that one of the PCs knows something about your enemy. You accompany the group to find out what that character knows. 3. One of the PCs survived the event that caused you to become vengeful. You travel with that character to protect him or her. 4. You drew everyone together to help you get revenge on your enemies.	vengeful	1
50	Weird	You aren’t like anyone else, and that’s fine with you. People don’t seem to understand you — they even seem put off by you — but who cares? You understand the world better than they do because you’re weird, and so is the world you live in. The concept of “the weird” is well known to you. Strange devices, ancient locales, bizarre creatures, storms that can transform you, living energy fields, conspiracies, aliens, and things most people can’t even name populate the world, and you thrive on them. You have a special attachment to it all, and the more you discover about the weirdness in the world, the more you might discover about yourself. Weird characters might be mutants or people born with strange qualities, but sometimes they started out “normal” and adopted the weird by choice.	Inner Light: +2 to your Intellect Pool. Distinctive Physical Quirk: You have a unique physical aspect that is, well, bizarre. Depending on the setting, this can vary greatly. You might have purple hair or metal spikes on your head. Maybe you have nothing but a massive scar where your nose used to be, or you were born without a nose. Perhaps your hands don’t connect to your arms, although they move as if they do. Maybe a third eye stares out from the side of your head, or superfluous tendrils grow from your back. Whatever it is, your quirk might be a mutation, a supernatural trait (a blessing or curse), or a feature with no explanation. A Sense for the Weird: Sometimes—at the GM’s discretion—weird things relating to the supernatural or its effects on the world seem to call out to you. You can sense them from afar, and if you get within long range of such a thing, you can sense whether it is overtly dangerous or not. Skill: You are trained in supernatural knowledge. Inability: People find you unnerving. The difficulty of all tasks relating to pleasant social interaction is increased by one step.	1. It seemed weird, so why not? 2. Whether the other PCs realize it or not, their mission has to do with something weird that you know about, so you got involved. 3. As an expert in the weird, you were specifically recruited by the other PCs. 4. You felt drawn to join the other PCs, but you don’t know why.	weird	1
46	Tough	You’re strong and can take a lot of physical punishment. You might have a large frame and a square jaw. Tough characters frequently have visible scars.	Resilient: +1 to Armor. Healthy: Add 1 to the points you regain when you make a recovery roll. Skill: You’re trained in Might defense actions. Additional Equipment: You have an extra light weapon.	1. You’re acting as a bodyguard for one of the other PCs. 2. One of the PCs is your sibling, and you came along to watch out for her. 3. You need money because your family is in debt. 4. You stepped in to defend one of the PCs when that character was threatened. While talking to him afterward, you heard about the group’s task.	tough	1
40	Spiritual	A sense of awe washes over you when you appreciate a new facet of your religion or a scientific discipline. When a stranger does something kind for someone he’s never met before, it’s spiritual. However you meditate—whether by taking in breathtaking scenery, reading a book, or repeating mental syllables in a quiet space—it’s spiritual. Your spirituality isn’t necessarily about religion, though it could be. The main thing is that you’re a person who appreciates and even thrills to the positive aspects of existence, and you may help other people do the same.	Meditative: +2 to your Intellect Pool. Likeable: People and animals just seem to like you. You are trained in all tasks related to pleasant social interaction. Skill: With maturity comes good judgment. You’re trained in Intellect defense tasks and all tasks that involve resisting temptation. Helpful: When you help someone with a task, he adds 1 to his roll (this bonus is in addition to the regular benefits of helping someone). Inability: When you encounter something novel, you hesitate as you take in all the details. The difficulty of initiative actions (to determine who goes first in combat) is increased by one step.	1. You heard the PCs would be visiting someplace amazing and wanted to share the experience. 2. You have a message of hope, and going along with the PCs might allow you to get that message across to a larger number of people. 3. The mission involves helping others, and you couldn’t say no. 4. You were asked by a different organization to keep tabs on the PCs and help them if they got into trouble.	spiritual	1
7	Craven	Courage fails you at every turn. You lack the willpower and resolve to stand fast in the face of danger. Fear gnaws at your heart, chewing away at your mind, driving you to distraction until you cannot bear it. Most times, you back down from confrontations. You flee from threats and vacillate when faced with difficult decisions. Yet for all that fear dogs you and possibly shames you, your cowardly nature proves to be a useful ally from time to time. Listening to your fears has helped you escape danger and avoid taking unnecessary risks. Others may have suffered in your place, and you might be the first to admit this fact, but secretly you feel intense relief from having avoided an unthinkable and terrible fate.	Furtive: +2 to your Speed Pool. Skill: You’re trained in stealth-based tasks. Skill: You’re trained in running actions. Skill: You’re trained in any action taken to escape danger, flee from a dangerous situation, or wheedle your way out of trouble. Inability: You do not willingly enter dangerous situations. The difficulty of any initiative actions (to determine who goes first in combat) is increased by one step. Inability: You fall to pieces when you have to undertake a dangerous task alone. The difficulty of any potentially dangerous task you undertake alone (such as attacking a creature by yourself) is increased by one step. Additional Equipment: You have a good luck charm or protective device to keep you out of harm’s way.	1. You believe that you’re being hunted, and you have hired one of the other PCs as your protector. 2. You seek to escape your shame and take up with capable individuals in the hopes of repairing your reputation. 3. One of the other PCs bullied you into coming along. 4. The group answered your cries for help when you were in trouble.	craven	1
9	Cruel	Misfortune and suffering do not move you. When another endures hardship, you find it hard to care, and you may even enjoy the pain and difficulty the person experiences. Your cruel streak may derive from bitterness brought about by your own struggles and disappointments. You might be a hard pragmatist, doing what you feel you must even if others are worse for it. Or you could be a sadist, delighting in the pain you inflict. Being cruel does not necessarily make you a villain. Your cruelty may be reserved for those who cross you or other people useful to you. You might have become cruel as the result of an intensely awful experience. Abuse and torture, for example, can strip away compassion for other living beings. As well, you need not be cruel in every situation. In fact, others might see you as personable, friendly, and even helpful. But when angered or frustrated, your true nature reveals itself, and those who have earned your scorn are likely to suffer for it.	Cunning: +2 to your Intellect Pool. Cruelty: When you use force, you can choose to maim or deliver painful injuries to draw out your foe’s suffering. Whenever you inflict damage, you can choose to inflict 2 fewer points of damage to decrease the difficulty of the next attack against that foe by one step. Skill: You’re trained in tasks related to deception, intimidation, and persuasion when you interact with characters experiencing physical or emotional pain. Inability: You have a hard time connecting with others, understanding their motives, or sharing their feelings. The difficulty of any task to ascertain another character’s motives, feelings, or disposition is increased by one step. Additional Equipment: You have a valuable memento from the last person you destroyed. The memento is moderately priced, and you can sell it or trade it for an item of equal or lesser value.	1. You suspect that you might gain a long-term advantage from helping the other PCs and may be able to use that advantage against your enemies. 2. By joining the PCs, you see an opportunity to grow your personal power and status at the expense of others. 3. You hope to make another PC’s life more difficult by joining the group. 4. Joining the PCs gives you an opportunity to escape justice for a crime you committed.	cruel	1
13	Empathic	Other people are open books to you. You may have a knack for reading a person’s tells, those subtle movements that convey an individual’s mood and disposition. Or you may receive information in a more direct way, feeling a person’s emotions as if they were tangible things, sensations that lightly brush against your mind. Your gift for empathy helps you navigate social situations and control them to avoid misunderstandings and prevent useless conflicts from erupting. The constant bombardment of emotions from those around you likely takes a toll. You might move with the prevailing mood, swinging from giddy happiness to bitter sorrow with little warning. Or you might close yourself off and remain inscrutable to others out of a sense of self-preservation or an unconscious fear that everyone else might learn how you truly feel.	Open Mind: +4 to your Intellect Pool. Skill: You’re trained in tasks involving sensing other emotions, discerning dispositions, and getting a hunch about people around you. Skill: You’re trained in all tasks involving social interaction, pleasant or otherwise. Inability: Being so receptive to others’ thoughts and moods makes you vulnerable to anything that attacks your mind. The difficulty of Intellect defense rolls is increased by one step.	1. You sensed the commitment to the task the other PCs have and felt moved to help them. 2. You established a close bond with another PC and can’t bear to be parted from him or her. 3. You sensed something strange in one of the PCs and decided to join the group to see if you can sense it again and uncover the truth. 4. You joined the PCs to escape an unpleasant relationship or negative environment.	empathic	1
19	Hardy	Your body was built to take abuse. Whether you’re pounding down stiff drinks while holding up a bar in your favorite watering hole or trading blows with a thug in a back alley, you keep going, shrugging off hurts and injuries that might slow or incapacitate a lesser person. Neither hunger nor thirst, cut flesh nor broken bone can stop you. You just press on through the pain and continue. As fit and healthy as you are, the signs of wear show in the myriad scars crisscrossing your body, your thrice-broken nose, your cauliflower ears, and any number of other disfigurements you wear with pride.	Mighty: +4 to your Might Pool. Fast Healer: You halve the time it takes to make a recovery roll (minimum one action). Unstoppable: While you are impaired on the damage track, you function as if you were hale. While you are debilitated, you function as if you were impaired. In other words, you don’t suffer the effects of being impaired until you become debilitated, and you never suffer the effects of being debilitated. You still die if all your stat Pools are 0. Skill: You are trained in Might defense actions. Inability: Your big, strong body is slow to react. The difficulty of any task involving initiative is increased by one step. Ponderous: When you apply Effort when making a Speed roll, you must spend 1 extra point from your Speed Pool.	1. The PCs recruited you after learning about your reputation as a survivor. 2. You join the PCs because you want or need the money. 3. The PCs offer you a challenge equal to your physical power. 4. You believe the only way the PCs will succeed is if you are along to protect them.	hardy	1
31	Mysterious	The dark figure lurking silently in the corner? That’s you. No one really knows where you came from or what your motives are—you play things close to the vest. Your manner perplexes and confounds others, but that doesn’t make you a poor friend or ally. You’re just good at keeping things to yourself, moving about unseen, and concealing your presence and identity.	Skill: You are trained in all stealth tasks. Skill: You are trained in resisting interrogation or tricks to get you to talk. Confounding: You pull talents and abilities seemingly out of nowhere. You can attempt one task in which you have no training as if you were trained. This ability refreshes every time you make a recovery roll, but the uses never accumulate. Inability: People never know where they stand with you. The difficulty of any task involving getting people to believe or trust you is increased by one step.	1. You just showed up one day. 2. You convinced one of the other PCs that you had invaluable skills. 3. Some equally mysterious figure told you where to be and when (but not why) to join the group. 4. Something — a feeling, a dream — told you where to be and when to join the group.	mysterious	1
45	Tongue-Tied	You’ve never been much of a talker. When forced to interact with others, you never think of the right thing to say—words fail you entirely, or they come out all wrong. You often end up saying precisely the wrong thing and insult someone unintentionally. Most of the time, you just keep mum. This makes you a listener instead—a careful observer. It also means that you’re better at doing things than talking about them. You’re quick to take action.	Actions, Not Words: +2 to your Might Pool, and +2 to your Speed Pool. Skill: You are trained in perception. Skill: You are trained in initiative (unless it’s a social situation). Inability: The difficulty of all tasks relating to social interaction is increased by one step. Inability: The difficulty of all tasks involving verbal communication or relaying information is increased by one step.	1. You just tagged along and no one told you to leave. 2. You saw something important the other PCs did not and (with some effort) managed to relate it to them. 3. You intervened to save one of the other PCs when he was in danger. 4. One of the other PCs recruited you for your talents.	tongue-tied	1
49	Wealthy	You can’t remember a time when you wanted for anything. You have always had money and have largely lived a life of comfort and plenty. You might be stingy with your wealth, hiding your abundance lest others try to steal it from you. Or you might be magnanimous, spreading it around to any and all who need it. The source of your funds is up to you. Maybe you inherited your vast fortune from a relative. A sudden windfall could have made you flush with funds and given you a life you never dreamed of. You might be a successful merchant or entrepreneur, making your fortune through hard work and determination.	Connected: You have connections, resources, and a head for business. Whenever you spend at least an hour in a community with a population of 1,000 or more, you can find comfortable accommodations for you and your companions for as long as you stay there. The accommodations also provide you with food and whatever inexpensive or moderately priced items you need. Additional Starting Equipment: You start with an additional expensive item, and all your starting possessions are of very fine quality. Money Is No Object: You can buy whatever inexpensive items you need wherever they are available.	1. You crave a life of adventure. You hired all the other PCs for your expedition. 2. Having wealth only creates an appetite for more. You join the other PCs to grow your fortunes. 3. You want to do good works with your wealth, and you see the PCs’ mission as an opportunity to help people. 4. The source of your wealth—a relative, a business, or your position in the community — controls your life, and you have begun to feel stifled. You disguise your true identity and accompany the PCs for a chance at the freedom your fortune denies you.	wealthy	1
28	Lucky	You rely on chance and timely good luck to get you through many situations. When people say that someone was born under a lucky star, they mean you. When you try your hand at something new, no matter how unfamiliar the task is, as often as not you find a measure of success. Even when disaster strikes, it’s rarely as bad as it could be. More often, small things seem to go your way, you win contests, and you’re often in the right place at the right time.	Luck Pool: You have one additional Pool called Luck that begins with 3 points, and it has a maximum value of 3 points. When spending points from any other Pool, you can take one, some, or all the points from your Luck Pool first. When you make a recovery roll, your Luck Pool is one additional Pool to which you can add recovered points. When your Luck Pool is at 0 points, it does not count against your damage track. Enabler. Advantage: When you use 1 XP to reroll a d20 for any roll that affects only you, add 3 to the reroll.	1. Knowing that lucky people notice and take active advantage of opportunities, you became involved in your first adventure by choice. 2. You literally bumped into someone else on this adventure through sheer luck. 3. You found a briefcase lying alongside the road. It was battered, but inside you found a lot of strange documents that led you here. 4. Your luck saved you when you avoided a speeding car by a fortuitous fall through an open manhole. Beneath the street, you found something you couldn’t ignore.	lucky	1
37	Rugged	You’re a nature lover accustomed to living rough, pitting your wits against the elements. Most likely, you’re a skilled hunter, gatherer, or naturalist. Years of living in the wild have left their mark with a worn countenance, wild hair, or scars. Your clothing is probably much less refined than the garments worn by city dwellers.	Skill: You’re trained in all tasks involving climbing, jumping, running, and swimming. Skill: You’re trained in all tasks involving training, riding, or placating natural animals. Skill: You’re trained in all tasks involving identifying or using natural plants. Inability: You have no social graces and prefer animals to people. The difficulty of any task involving charm, persuasion, etiquette, or deception is increased by one step. Additional Equipment: You carry an explorer’s pack with rope, two days’ rations, a bedroll, and other tools needed for outdoor survival.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger. 2. One of the other PCs convinced you that joining the group would be in your best interests. 3. You’re afraid of what might happen if the other PCs fail. 4. There is reward involved, and you need the money.	rugged	1
1	Appealing	You’re attractive to others, but perhaps more important, you are likeable and charismatic. You’ve got that “special something” that draws others to you. You often know just the right thing to say to make someone laugh, put them at ease, or spur them to action. People like you, want to help you, and want to be your friend.	Charismatic: +2 to your Intellect Pool. Skill: You are trained in pleasant social interactions. Resistant to Charms: You’re aware of how others can manipulate and charm people, and you notice when those tactics are used on you. Because of this awareness, you are trained in resisting any kind of persuasion or seduction if you wish it.	1. You met a total stranger (one of the other PCs) and charmed him so much that he invited you to come along. 2. The PCs were looking for someone else, but you convinced them that you were the perfect person to join them instead. 3. Pure happenstance—because you just go along with the flow of things and everything usually works out well. 4. Your charismatic ways helped get one of the PCs out of a difficult spot a long time ago, and she always asks you to join her on new adventures.	appealing	1
\.


--
-- Data for Name: cyphercore_equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_equipment (id, name, base_cost, notes, type, slug, sourcebook_id, genre_id) FROM stdin;
24	Battleaxe	Expensive	Medium weapon.	Weapon	battleaxe	1	1
26	Cutlass	Expensive	Medium weapon.	Weapon	cutlass	1	1
2	Crossbow bolts	Inexpensive		Weapon	crossbow-bolts	1	1
3	Knife (rusty and worn)	Inexpensive	Light weapon (won’t last long).	Weapon	knife-rusty-and-worn	1	1
4	Wooden club	Inexpensive	Light weapon.	Weapon	wooden-club	1	1
9	Blowgun	Moderate	Light weapon, immediate range.	Weapon	blowgun	1	1
10	Dagger	Moderate	Light weapon.	Weapon	dagger	1	1
11	Handaxe	Moderate	Light weapon.	Weapon	handaxe	1	1
12	Sword (substandard)	Moderate	Medium weapon (won’t last long).	Weapon	sword-substandard	1	1
13	Throwing knife	Moderate	Light weapon, short range.	Weapon	throwing-knife	1	1
15	Leather jerkin	Moderate	Light armor.	Armor	leather-jerkin	1	1
14	Hides and furs	Moderate	Light armor.	Armor	hides-and-furs	1	1
5	Burlap sack	Inexpensive		Other	burlap-sack	1	1
6	Candle	Inexpensive		Other	candle	1	1
7	Iron rations (1 day)	Inexpensive		Other	iron-rations-1-day	1	1
8	Torch	Inexpensive	Sold in lots of 3.	Other	torch	1	1
28	Quarterstaff	Expensive	Medium weapon (requires 2 hands).	Weapon	quarterstaff	1	1
30	Breastplate	Expensive	Medium armor.	Armor	breastplate	1	1
32	Chainmail	Expensive	Medium armor.	Armor	chainmail	1	1
34	Heavy crossbow	Very Expensive	Heavy weapon, long range.	Weapon	heavy-crossbow	1	1
36	Dwarven breastplate	Very Expensive	Medium armor, encumbers as light armor.	Armor	dwarven-breastplate	1	1
38	Disguise kit	Very Expensive	Asset for disguise tasks.	Other	disguise-kit	1	1
40	Spyglass	Very Expensive	Asset for perception tasks at range.	Other	spyglass	1	1
42	Sailing ship (small)	Exorbitant		Other	sailing-ship-small	1	1
21	Rope (Hemp, 50ft.)	Moderate		Other	rope-hemp-50ft	1	1
25	Bow	Expensive	Medium weapon, long range.	Weapon	bow	1	1
27	Light crossbow	Expensive	Medium weapon, long range.	Weapon	light-crossbow	1	1
17	Bedroll	Moderate		Other	bedroll	1	1
19	Hourglass	Moderate		Other	hourglass	1	1
20	Lantern	Moderate		Other	lantern	1	1
22	Spikes and hammer	Moderate	Includes 10 spikes.	Other	spikes-and-hammer	1	1
23	Tent	Moderate		Other	tent	1	1
29	Sword	Expensive	Medium weapon.	Weapon	sword	1	1
31	Brigandine	Expensive	Medium armor.	Armor	brigandine	1	1
33	Greatsword	Very Expensive	Heavy weapon.	Weapon	greatsword	1	1
35	Sword (jeweled)	Very Expensive	Medium weapon.	Weapon	sword-jeweled	1	1
37	Full plate armor	Very Expensive	Heavy armor.	Armor	full-plate-armor	1	1
39	Healing kit	Very Expensive	Asset for healing tasks.	Other	healing-kit	1	1
41	Elven chainmail	Exorbitant	Medium armor, encumbers as no armor.	Armor	elven-chainmail	1	1
18	Crowbar	Moderate		Other	crowbar	1	1
1	Arrows	Inexpensive	Sold in lots of 12.	Weapon	arrows	1	1
16	Backback	Moderate		Other	backback	1	1
\.


--
-- Data for Name: cyphercore_focus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_focus (id, name, description, other_details, connections, slug, sourcebook_id) FROM stdin;
4	Battles Robots	Life is for the living—the biological. Automatons, robots, animate machines, thinking machines, and anything similar are abominations. You excel at battling these anathemas, cleansing the world of their contaminating presence. Maybe your desire to battle automatons comes from religious zealotry. Maybe it’s steeped in revenge for some past crime committed by a machine. Maybe you don’t know why you’re driven to destroy animate machines. Maybe you’re just good at it. You probably bear the trophies of former “kills” on you, wearing bits of circuitry or servos on your belt or around your neck. You also likely use heavy weaponry, ideal for penetrating armor. While sometimes a big, heavy weapon is useful against these foes, those who are quick and nimble, able to leap in and cut a few vital wires here or slice through a component panel there, also excel as robot hunters.	Additional Equipment: You have bits and pieces that you tore from the husks of automatons you have destroyed in the past. Anti-Machine Abilities: If you wield special abilities (like spells, psionics, and so on) that inflict damage, they inflict 1 additional point of damage to robots and similar beings, and 1 less point of damage to biological, living targets. If you have abilities that normally would not work against robots (like mind control), they will now. Minor Effect Suggestion: Your robot foe experiences an error for one round, during which time the difficulty of all its tasks is modified by one step to its detriment. Major Effect Suggestion: Your robot foe experiences a major error and loses its next turn.	1. Pick one other PC. You suspect that this character is put off by your hatred of animate machines. You can choose whether or not she knows of your suspicions. 2. Pick one other PC. You know that this character has suffered at the hands of automatons in the past, and perhaps you can convince him to help you in your calling. Regardless, you feel protective of him. 3. Pick one other PC. This character does not appear to share your feelings about automatons. In fact, you believe that she might secretly have machine parts herself. 4. Pick one other PC. This character comes from the same place you do, and you knew each other as children.	battles_robots	1
81	Quintar	You are a quintar from the planet Quint. You are basically humanoid but taller, thinner, and blue skinned. Your hands end in three very long fingers. Quintar have five genders, but all quintar prefer to be addressed as a female when speaking to more binary species. Human emotions and sexuality fascinate them, but not because they don’t have such concepts—quintar emotions and sexuality are just very different from those of humans. In general, quintar are more cerebral than other races, valuing knowledge over all else. Quint is relatively Earthlike, with slightly less gravity but a slightly denser atmosphere.		Cerebral: +4 to your Intellect Pool. Skill: You are trained in one type of knowledge task of your choice. Skill: Quintar fascination with human behavior decreases the difficulty of all interaction rolls (pleasant or not) with humans by one step. Difficult Rest: Quintar subtract 2 from all recovery rolls (minimum 1).	quintar	1
5	Bears A Halo Of Fire	You can create a sheath of flames around your body. You leave scorch marks wherever you go, and you can’t handle combustible objects without first dousing your inherent flames. If you have other extraordinary abilities, all your effects are tainted with flame. Fiery visuals accompany your powers, and in some cases, your predilection for flame actually reshapes your abilities to take on a fiery nature where none existed before. You probably wear red and yellow, or perhaps black.	Occasionally when you use Hurl Flame to harm a foe, his vulnerable body part bursts into flame. The flame doesn’t harm him or his equipment, but it can be an impediment during combat due to surprise. Additional Equipment: You have an artifact—a device that sprays inanimate objects to make them fire-resistant. All your starting gear has already been treated unless you don’t want it to be. Fire Abilities: If you perform special abilities, those that would normally use force or other energy (such as electricity) instead use fire. For example, force blasts are blasts of flame. These alterations change nothing except the type of damage and the fact that it might start fires. As another example, a wall of energy instead creates a wall of roaring flames. In this case, the alteration changes the ability so that the barrier is not solid but instead inflicts 1 point of damage to anything that touches it and 4 points of damage to anyone who passes through it. Minor Effect Suggestion: The target or something near the target catches fire. Major Effect Suggestion: An important item on the target’s person is destroyed.	1. Pick one other PC. Through a quirk of fate, your fire cannot harm that character. 2. Pick one other PC. You recently discovered that if she stands near you when you use your Shroud of Flame ability, she too becomes covered in flames. This doesn’t harm her, and anyone who tries to touch her or strike her with a melee attack suffers 1 point of damage. She must remain within short range of you. 3. Pick one other PC. He had a devastating experience with fire in his past and must decide how to react to your constant use of flame around him. 4. Pick one other PC. For some reason, one of his limbs is especially vulnerable to your flames.	bears_a_halo_of_fire	1
8	Calculates The Incalculable	Other people are a little in awe of your mind, though you feel normal enough. Admittedly, you are sometimes surprised when others fail to grasp easy concepts, or how they don’t share your appreciation of the beauty in dynamical systems theory, elliptic curve geometry, Riemann meromorphic functions, and all the other wondrous things. You live a little too much in your head to concern yourself with how you look. Your hair is probably slightly too long and tousled, your clothing is casual and stained with coffee, and your socks don’t match.	Minor Effect Suggestion: You don’t have to spend an action observing to make your next predictive equation or predictive model. Major Effect Suggestion: Intuition flares, and you can ask the GM one question about what you’re looking at.	1. Pick one other PC. If it wasn’t for you, this character never would have passed his college math requirements. 2. Pick one other PC. She seems strangely interested in your mathematical skills. It’s up to her whether she is fascinated or disturbed by them. 3. Pick one other PC. Based on a couple of comments you’ve overheard, you suspect that this character doesn’t hold math in the highest regard. 4. Pick one other PC. The character seems to be a variable that never quite solves the same way twice when you include him in an equation, but you haven’t the slightest idea why.	calculates_the_incalculable	1
3	Awakens Dreams	Your dreams are more vivid than other people’s. When you dream, those dreams linger on, and when the time is right, you can loose them into reality to impress, confuse, or scare other creatures. You’ve learned the oneiromancer’s craft, which means that you know the secrets of lucid dreaming, gauging the dream state in others, and mixing herbal elixirs that bring about a restful, dream-filled sleep. Your clothing probably reflects the eclectic dreamland where you spend so much of your time, including several layers, bright silk ribbons, and odd symbols that made sense when you were dreaming them.	Minor Effect Suggestion: The target gets turned around, and its next attack is modified by one step to its detriment.\r\nMajor Effect Suggestion: You are refreshed by your dream and recover 4 points to one of your Pools.	1. Pick one other PC. That character always recognizes your dreams as illusions free of substance and is not fooled or affected by them.\r\n2. Pick one other PC. You accidentally sent that character into a sleep so deep she didn’t wake for three days. Whether she forgives you or not is up to her.\r\n3. Pick one other PC. You are certain that you created him from one of your dreams, even if he doesn’t believe it.\r\n4. Pick one other PC. You accidentally glimpsed that character’s dreams and learned something that she was trying to keep a secret.	awakens_dreams	1
9	Carries A Quiver	The archer is a skilled combatant, deadly in any fight. With a keen eye and quick reflexes, you can eliminate foes at range before they reach you. A good archer also learns to make his own arrows and bows. You probably wear no more than light armor so you can move quickly when needed. You can use this focus with crossbows instead of bows if you wish.	Additional Equipment: You start with a well-made bow and two dozen arrows. Minor Effect Suggestion: Hit in a tendon or muscle, the target takes 2 points of Speed damage as well as normal damage. Major Effect Suggestion: The target is pinned in place with an arrow.	1. Pick one other PC to be the true friend who gave you the excellent bow that you currently use. Secretly pick a second PC (preferably one who is likely to get in the way of your attacks). When you miss with a bow and the GM rules that you struck someone other than your target, you hit the second character, if possible. 2. Pick one other PC that you’ve known for a while. The two of you used to do an act where you shot an apple out of her mouth, either for money or just the enjoyment of friends. One time you missed and hit her in the cheek. She may or may not still bear a physical or mental scar from this experience. Either way, you never did your act again. 3. Pick one other PC who is interested in studying archery. He is a quick learner, and if you spend one hour teaching him a few of your secrets, you both gain +1 to any die rolls when you fight the same foe using your bows. 4. Pick one other PC. That person brings up strong emotions in you, whether of anger, desire, or something else. If she is within short range while you’re using your bow, you find it difficult to concentrate and shoot straight.	carries_a_quiver	1
10	Casts Spells	You can cast spells of arcing lightning, rolling fire, creeping shadow, and summoning. As a spellcaster, you understand that the world is a construct built on hidden formulas, flows of energy, and encrypted arcane secrets. Spells are specific flaws in reality that have been identified, studied, and codified into a spellbook for ease of reference and use. Though you likely apprenticed under a more accomplished spellcaster, sorcerer, or wizard, you quickly learned that the most powerful spells—those that can alter a creature’s form, open pathways to other worlds, or kill with a single word—are jealously guarded secrets even among friendly spellcasters, including between master and apprentice. You probably wear sturdy robes stitched with esoteric symbols, carry a staff etched with indecipherable glyphs, and, last but certainly not least, carry a tome of magic spells wherever you go.	Additional Equipment: Spellbook, notes taken from another caster’s spellbook you’ve yet to decipher. Spellcasting Special Abilities: If you have other dramatic abilities, they are spells you cast, which involve an arcane gesture or two, a few mystical words, and possibly a pinch of dust or other material to invoke the effect. (These abilities appear as spells codified in your spellbook.) This alteration changes nothing other than how you trigger the effects. For example, when a character who Casts Spells uses Enthrall, she does so by first making a particular hand gesture and uttering the syllables of the spell, after which her eyes glow with a captivating, enthralling light. Minor Effect Suggestion: Your spell hazes the target’s vision with a magical glow so that the difficulty of all tasks it attempts on its next action is modified by one step to its detriment. Major Effect Suggestion: A pulse of arcane energy removes the target from reality for a brief period. When the target reappears a couple of rounds later, no time has passed for it.	1. Pick one other PC. You worry that she is trying to get a look at your spellbook, but you don’t know why. 2. Pick one other PC. You once accidentally turned him into a tiny, insignificant creature. Though you were unable to revert him, he eventually returned to his normal form. 3. Pick one other PC. That character is related to the spellcaster you apprenticed under. 4. Pick one other PC. Every so often when you cast a spell, that character later reacts as if she had an allergic reaction. She doesn’t yet know the cause of her affliction, but you do. You’re still debating whether to tell her or let her suffer in ignorance while you work on a spell to assuage her condition.	casts_spells	1
11	Channels Divine Blessings	You are a devout follower of a divine being and serve as its representative among mortals. In other words, you are a priest. The power of your god or gods flows through you and allows you to perform miracles on their behalf. You wear simple clothes, though you also display the symbols and insignia of your deity. Normally humble, you are strident when speaking with the authority of the divine.	Additional Equipment: A symbol of your faith carved in iron. Minor Effect Suggestion: The power of faith knocks the target back several paces. Major Effect Suggestion: The power of faith knocks the target prone.	1. Pick one other PC. You were a drunk or otherwise lost to questionable practices until this character plucked you out of the gutter and cleaned you up. You found your calling after that. 2. Pick one other PC. You’re concerned that her spirit is bound for darkness. 3. Pick one or more other PCs. You say a prayer for each of them, each day. They may or may not know or care that you are doing so. 4. Pick one other PC. That character has confided in you that he doesn’t think the gods are real. You’re not sure how to deal with that.	channels_divine_blessings	1
6	Blazes With Radiance	You have the ability to create and sculpt light, to bend it away from you or gather it to use as a weapon. You might gain your powers from the sun, or you might wield a mysterious artifact that produces light that you can manipulate. Regardless, you love the light and curse the darkness. People are often drawn to those wielding the light, either because they are heartened by it (as opposed to someone lurking in darkness) or because it is dramatic and impressive. Of course, those who enjoy the darkness or fear the light despise you. Most people able to command light favor bright colors in their clothing since those colors reflect light rather than absorb it.	Additional Equipment: You have a crystal lens. When you shine light through it, the light extends for double the normal distance. Radiant Abilities: If you possess powers that would normally use force or other energy, they instead use light and heat. For example, if you use Ward, light dapples your body and flares when you would be attacked, preventing your enemies from landing a solid blow. Minor Effect Suggestion: A flash of light leaves the creature dazzled. The difficulty of defense actions to resist the creature’s attacks decreases by one step. Major Effect Suggestion: An intense flash of light leaves the creature blinded for one minute.	1. Pick one other PC. You have a strong emotional connection to this character, and when in his presence, you can change the color of the light you create. 2. Pick one other PC. She is especially sensitive to your light, and occasionally your flashes leave her dazzled, increasing the difficulty of her defense actions by one step. 3. Pick one other PC. Something about his nature dampens the light. When he stands immediately next to you, your light-based powers cost 1 additional Intellect point. 4. Pick one other PC. This character appears to have a treasured item that was once yours, but that you lost in a game of chance years ago.	blazes_with_radiance	1
7	Builds Robots	Your brilliance is mechanically focused, and it allows you to create artificial entities who accept you for who you are. As an added bonus, they do what you command without complaint. You’re not entirely sure you’ve arrived at nirvana by surrounding yourself with artificial beings, but it’ll do for now. Because your robots don’t have an opinion, you’re not too concerned with your appearance. You tend to throw the same shop coat over whatever you happen to be wearing beneath.	Additional Equipment: Robot spare parts, robot tool kit. Minor Effect Suggestion: The robot jolts your foe, which modifies any action taken by the foe on its next turn by one step to its detriment. Major Effect Suggestion: Your robot takes an immediate extra action that you choose.	1. Pick one other PC. Your robotic artificial assistant will take commands from that character as well as from you. 2. Pick one other PC. You created a robot companion for that character, but it promptly tried to kill her, so it had to be destroyed. You’re not sure what went wrong. 3. Pick one other PC. You are certain that character is secretly an artificial entity, even if he denies it. 4. Pick one other PC. You created a robotic catlike entity (a level 1 creature) for that character that sometimes shows up but is usually absent pursuing vermin.	builds_robots	1
14	Consorts With The Dead	Through the study of science or magic to which most people give a wide berth, you have mastered the ability to speak with and reanimate the dead. Necromancy, however, is shunned as a taboo. It is gruesome, morbid, and in the eyes of most, forbidden. You probably wear black clothing, which might be adorned with skulls, bones, teeth, or other symbols of death. Some who consort with the dead paint their skin and dye their hair black, red, and white to bring them visually closer to the bodies they interact with.	Additional Equipment: You carry an innocuous memento of someone close to you who died. It might be a locket, a ring, a letter, a coin, or something similar. Necromantic Abilities: If you perform abilities that would normally use force or other energy (such as electricity), they instead use deathly energies. For example, a force blast is a blast of cold, life-draining energy. This alteration changes nothing except that the type of damage is different, and it harms only living creatures. Minor Effect Suggestion: The animated creature adds 1 to all rolls, or the target is dazed for one round, during which time the difficulty of all its tasks is modified by one step to its detriment. Major Effect Suggestion: The animated creature adds 2 to all rolls, or the target is stunned and loses his next turn.	1. Pick one other PC. You suspect that this character finds your predilections abhorrent. You can choose whether or not she knows of your suspicions. 2. Pick one other PC. This character recently lost a loved one and wants you to contact that person in the afterlife. Whether you try to explain that this isn’t how it works is up to you. 3. Pick one other PC. This character looks upon you as some kind of religious figure (whether you encourage this behavior is up to you). 4. Pick one other PC. This character comes from the same place you do, and you knew each other as children.	consorts_with_the_dead	1
12	Commands Mental Powers	You have always had special abilities that others didn’t seem to share. Through practice and devotion, you have honed this unique talent so that you can harness the power of your mind to perform deeds. No one can tell that you have this ability just by looking at you, although you wear a crystal or jewel somewhere on your head to help focus your power. Either this focusing object was given to you by someone who recognized your ability, or you came upon it by accident and it triggered your abilities. Some people with mental powers—often called psychics or psionics by ordinary folks—are secretive and a little paranoid.	Additional Equipment: You have a crystal or jewel artifact that, when worn against your forehead or temple, adds 1 point to your Intellect Pool. If you’re ever without the artifact, subtract 5 points from your Intellect Pool; the points are restored if you regain the item. Mental Abilities: If you have abilities like Mind Control or Mind Reading from your type (or elsewhere), you’re automatically trained in them. Enabler. Minor Effect Suggestion: The range or duration of the mental power is doubled. Major Effect Suggestion: You can take another action on that same turn.	1. Pick one other PC. You have found that this character is particularly tuned into your mental powers. While you’re within short range of him, the two of you are always in telepathic contact, and he is never harmed by your Psychic Burst. 2. Pick one other PC. She is what you might call a “loud thinker,” and her thoughts sometimes come through to you when you are within short range, even when you’re not using your Mind Reading ability. You can’t seem to turn this off. Whether you tell her or not is up to you. 3. Pick one other PC. For some reason, he seems to act as an antenna for your mental powers. If the two of you are touching, your Telepathic and Mind Reading abilities sometimes extend to long range. 4. Pick one other PC. Your close mentor or teacher once used Mind Control on her and forced her to do something against her will. To this day, you haven’t talked about it, but you are both intensely aware of the connection.	commands_mental_powers	1
17	Crafts Illusions	You create holographic images that appear real. You are, in effect, an artist—a crafter of light and sound. Holographic images can never inflict direct harm or exert real force, but they can fool creatures, changing opinions and even behaviors if you craft them cleverly. You likely dress with flair and color. The appearance of things is important to you, both their beauty and their ugliness. You are a visual performer who can entertain, terrify, or fool everyone you encounter.	Psychedelic Abilities: If you have other overt abilities, they take on flamboyant visual and auditory qualities of your choosing. This alteration changes nothing other than the appearance of the effects. For example, your attack might look like a monster made of energy that assails your foes. If you have the Stasis ability, it might look like a tentacled beast holds the victim in place. If you have Teleportation, it might seem like a hole in space opens up and swallows you. Minor Effect Suggestion: Your illusion has a special quality to it—perhaps an observer sees an image of something from his past. Major Effect Suggestion: The illusion lasts for one hour, or if it already lasts that long, it lasts for twenty-four hours.	1. Pick one other PC. This character is never fooled by your illusions and is never affected by the trickery of your special abilities. You can choose whether or not you know this fact. 2. Pick one other PC. He has a special angle on your illusions and can sometimes point out potential places of weakness. 3. Pick two other PCs who are willing to be trained as your assistants. When you use your Minor Illusion ability, if both of these characters are in immediate range, they can assist you, together decreasing the difficulty of your action by one step. 4. Pick one other PC. That character’s face is so intriguing to you in a way you don’t understand that your minor illusions sometimes look like him, even when you don’t intend them to.	crafts_illusions	1
18	Crafts Unique Objects	The raw materials for a crafter offer themselves to those who know where to look. You are a maker, a crafter, an inventor, and a builder. You might start out working with wood or metal, but eventually you will master far greater creations. Whether magic or technology is your field, you know that you can master it and use it for your own designs. You likely carry a wide array of tools and spare parts wherever you go. Your work apron is probably a mainstay of your wardrobe, its pockets and loops brimming with the instruments of your trade. Your calloused fingers might be stained with grease that will never come completely clean, but these marks are badges of honor.	Additional Equipment: You begin the game with a bag of light tools, the tools needed to make your first-tier crafts, and any normal item (of level 1 or 2) that you can make with your skills. Minor Effect Suggestion: Any rolls you make regarding that artifact gain a +1 bonus for twenty-four hours. Major Effect Suggestion: Any rolls you make regarding that artifact gain a +2 bonus for twenty-four hours.	1. Pick one other PC. The character has an extra item of regular equipment that you fashioned for her. (She chooses the item.) 2. Pick one other PC. She seems to have in her possession an object that you made for someone else a long time ago. 3. Pick one other PC. He has commissioned you to create something for him. You’ve already been paid but haven’t yet completed the item. 4. Pick one other PC. You’ve seen that character admiring your crafting skills many times. Perhaps he would like a lesson. (You won’t know until you ask.)	crafts_unique_objects	1
24	Exists Partially Out Of Phase	You have the ability to change your phase state. In fact, you’re always slightly out of phase, giving you a ghostly translucence. With concentration, you can pass your hand through a solid object, allow a solid object to pass harmlessly through you, or literally walk through walls. However, moving in and out of different phase states requires extreme force of will and can be mentally taxing. You might do whatever you can to play up your translucent appearance by wearing diaphanous, billowy clothing, or, depending on your personality, you might do just the opposite.	Minor Effect Suggestion: While out of phase, you also gain +1 to all Speed defense rolls. Major Effect Suggestion: While out of phase, you are also invisible.	1. Pick one other PC. You have known that character for a while, and he helped you gain control of your phase states. 2. Pick one other PC. Sometime in his past, he had a devastating experience with going out of phase. Whether he chooses to tell you about it is up to him. 3. Pick one other PC. You once accidentally moved your hand right through her. It was clearly an unnerving experience for you both. 4. Pick two other PCs. They both really want to go out of phase and have been pestering you about it. But you’re not convinced they even know what that phrase means.	exists_partially_out_of_phase	1
19	Defends The Weak	Someone has to stand up for the helpless, the weak, and the unprotected. You believe this duty, this obligation, falls to you, and thus you have spent much of your life watching out for the people around you. When you see them in trouble, you are the first to come to their aid. You might give up your last dime to help the hungry, take a beating to save a person from the same, or rally your friends to take on injustice wherever you find it. You probably bear many scars from previous conflicts, but for each scar, you likely also have a token of gratitude. You may have a dried flower given to you by a lady you saved from brigands, or a bit of metal given to you by a starving man you fed.	Additional Equipment: You have a shield. Minor Effect Suggestion: You can draw an attack without having to use an action at any point before the end of the next round. Major Effect Suggestion: You can take an extra action. You can use this action only to guard.	1. Pick one other PC. You failed to protect this character at some point in the past, and you feel compelled to make up for it. 2. Pick one other PC. That character claimed innocence during a long-ago event, and you protected him. Now that time has passed, you’re not entirely convinced that he was blameless. 3. Pick two other PCs. They seem to think that you are more of an arbitrator than you really are, and they keep asking you to choose which one of them is correct. 4. Pick one other PC. She believes that one of the tokens of gratitude you carry came from her father.	defends_the_weak	1
20	Doesn't Do Much	You’re a slacker. You’ve had a number of jobs in your life, but nothing’s really stuck. No one thing consumes you, compels you, or drives you. You float from event to event. That doesn’t mean you’re unhappy, necessarily. It’s not a bad life. You like to take it easy. Appreciate the little things. Partake in a few relaxing substances now and again. Enjoy the rug that ties the whole room together. Not a lot of stress, and you know a little about a lot of different things. You dress casually. You might be in decent physical shape—if, you know, that’s your thing—or maybe you’re more cerebral (a pseudo-intellectual). It’s all good.	Minor Effect Suggestion: You draw on your experiences and reduce the difficulty of your next action by one step. Major Effect Suggestion: You get a free, no-action recovery roll.	1. Pick one other PC. She’s always been there for you. Got you out of jams from time to time. She’s cool. 2. Pick one other PC. This character is too uptight for your tastes. He’s got to learn to chill. 3. Pick one other PC. You’re a little jealous of this character because she’s better than you at your favorite hobby (bowling, karaoke, or whatever it is). 4. Pick one other PC. You owe him money, but you’re hoping he’ll forget that.	doesnt_do_much	1
23	Exists In Two Places At Once	One day, you looked into a mirror or another reflective surface and noticed that the reflection didn’t quite match your movements. After some time, the image stepped free from the surface and where there was one, there were now two. You have a doppelganger, a duplicate you can call into existence when you wish. This duplicate may be a quirk of your nature, brought on by exposure to weird energy or a piece of scarcely understood technology. Then again, this other might hail from another reality, a branching timeline that may be similar to or quite different from your own. Of course, the copy could simply be a manifestation of your will on a cloud of nanites that assume your shape when you command them. Whatever the reason for your ability, you can call forth the copy and be in two places at once. Your duplicate is your twin. It shares more than your appearance. It duplicates your mannerisms, manner of speech, expressions, and habits. In effect, you have another you.	Four Hands Are Better Than Two: When you and your duplicate work together to complete a task, the difficulty of that task is decreased by one step (if cooperation would be helpful). Minor Effect Suggestion: For your target, the difficulty of the next task it attempts involving you or your duplicate before the end of the next round is increased by one step. Major Effect Suggestion: You have an asset on the next roll you make within the next hour.	1. Pick one other PC. This character finds your talent unnerving and unsettling. For her, the difficulty of any task made to help your duplicate is increased by one step. 2. Pick one other PC. This character seems convinced that you are really a pair of identical twins with no actual powers. 3. Pick one other PC with a companion. This PC’s companion seems to have an unusual relationship with your duplicate. 4. Pick one other PC. You used to move in the same social circles and knew of each other, but you had never been introduced.	exists_in_two_places_at_once	1
21	Employs Magnetism	Electromagnetism is a fundamental force in the universe, and it is yours to command. You are a master of metal. You probably wear a lot of metal, perhaps as part of your clothing or armor, as part of your accessories (such as jewelry or piercings), embedded into your body surgically, or in some combination of these options.	Minor Effect Suggestion: The duration of the effect is doubled. Major Effect Suggestion: An important item on the target’s person is destroyed.	1. Pick one other PC. Whenever you use your powers, the metallic items on that character’s body shudder, rattle, clink, and shake if he is within short range. 2. Pick one other PC. You worked together in the past, and the job ended badly. 3. Pick two other PCs. While practicing your Diamagnetism ability, you once accidentally sent them careening into each other. You’ve never been able to repeat it. Whether you tell them that you’ve been trying to replicate the strange effect is up to you. 4. Pick one other PC who has metallic elements in his body. You’re afraid to use your magnetism abilities near him because you once had a bad experience involving Move Metal and a (probably former) friend’s mechanical eyes.	employs_magnetism	1
45	Masters Defense	Protecting yourself is obviously important in dangerous situations, and you are particularly good at it. Cautious and prudent, you learn techniques to defend against all kinds of attacks, both physical and mental. The winner is often the last person standing, and you’ve done all you can to ensure that person will be you. You carry a shield and probably wear the best armor you can find.	Additional Equipment: You have a shield. Minor Effect Suggestion: You gain a +1 bonus to Speed defense rolls for one round. Major Effect Suggestion: You gain a +2 bonus to Speed defense rolls for one round.	1. Pick one other PC. This character protected you from harm recently, and you feel indebted to him for saving your life. 2. Pick one other PC. She thinks you are an incredibly selfish person, perhaps based on her belief that you always save yourself first. 3. Pick one other PC. You once fought on opposite sides of a combat. 4. Pick one other PC. This character seems to be a jinx for you. Whenever she is next to you, the difficulty of your defense tasks is increased by one step. However, you’re the opposite for her—when you’re next to her, the difficulty of her defense tasks is decreased by one step.	masters_defense	1
46	Masters The Swarm	Insects. Rats. Bats. Even birds. You master one type of small creature, and they respond to you in number. It’s a weird skill—as you’ve been told far too many times—but you’ve seen the benefits both in and out of battle, and you’ve fully embraced it. Your dress likely bears some mark of your predilections. Random creatures of your chosen kind sometimes alight on your person even when you don’t purposefully call them.	Minor Effect Suggestion: The swarm is particularly thick and angry, and everyone within it suffers 1 point of damage this round. Major Effect Suggestion: Everyone within the swarm suffers 3 points of damage this round.	1. Pick one other PC. This person seems deathly afraid of your creatures and has a watchful eye on you. 2. Pick one other PC. Your creatures are attracted to this person for reasons you cannot understand. 3. Pick one other PC. You are indebted to this character for an act of kindness in the past. 4. Pick one other PC. This character has an oddly shaped birthmark, mole, or other feature that reminds you of your creatures. Does it mean something?	masters_the_swarm	1
26	Explores Deep Waters	You have nothing to fear from the depths. You have always been a good swimmer, able to hold your breath longer than anyone else, tread water for as long as you wanted, and delve deeper into the swirling darkness than your friends, all without stretching your resources. The depths you so freely explore harbor many secrets, and the waters that shelter you become part of who you are, an extension of your identity. When you bother to wear clothes, you favor snug, tight-fitting garments that stay close to your skin and do not hamper your mobility. The abilities granted by this focus might result from special equipment you make along the way, weird transformations that began when you first swam into the deepest, darkest places, or simply an expression of an unusual gift or heritage.	Additional Equipment: You have a special device that, when fitted in your mouth, allows you to breathe underwater. The device functions for up to four hours at a time, after which you must wait four hours before you can use it again. Water Abilities: If you wield powers that would normally use force or other energy, they instead use water or ice. For example, a blast of energy might create a wave of water that crashes down on your target. In addition, if you wish, you can swap an ability gained from your type for the following. Create Water (2 Intellect points). You cause water to bubble up from a spot on the ground you can see. The water flows from that spot for one minute, creating about 1 gallon (4 liters) by the time it stops. Minor Effect Suggestion: You can take an extra action. You may use this action only to move or perform a movement-related activity. Major Effect Suggestion: The difficulty of any Speed defense actions you take before the end of the next round is reduced by one step.	1. Pick one other PC. That character nearly drowned while following you on one of your expeditions underwater. It’s up to him whether he trusts you in such an environment again. 2. Pick one other PC. She knows something about your past that you wish she didn’t. 3. Pick one other PC. You think he suspects that you were involved with pirates or other criminals. Whether you were or not is up to you. 4. Pick one other PC. She can’t swim very well and fears open water. You believe that you can help her overcome these issues, if she is willing to let you.	explores_deep_waters	1
28	Fights With Panache	You know that style is at least as important as substance. Defeating foes is secondary to looking good while doing it. Some might call you a swashbuckler or daredevil. You leap through the air, make a flourish with your weapon, and attack, usually with a clever, biting show of wit. Your enemies hate you, but your allies adore you. Just watching you fight is entertaining. You very likely wear no armor, instead preferring stylish clothing—perhaps even a hat with a feather.	Additional Equipment: You begin with a set of extremely stylish clothes and a jeweled weapon. Minor Effect Suggestion: The target is so dazzled by your style that it is dazed for one round, during which time the difficulty of its tasks is modified by one step to its detriment. Major Effect Suggestion: Make an additional attack with your weapon on your turn.	1. Pick one other PC. You’re always trying to impress this character with your skill, wit, appearance, or bravado. Perhaps she is a rival, perhaps you need her respect, or perhaps you’re romantically interested in her. 2. Pick one other PC. This character seems to anticipate your next move almost before you even begin it. When he collaborates with you on the same task or fights the same foe, you gain +1 to any die rolls. 3. Pick one other PC. You fear that she is jealous of your abilities and worry that it might lead to problems. 4. Pick one other PC. This character is so enamored of your swashbuckling, entertaining ways during combat that he sometimes forgets to take action himself.	fights_with_panache	1
31	Fuses Mind And Machine	You believe that the finest machine ever created is the human brain (although some scientists would disagree). Experience and training have taught you that any machine can be improved. Through the use of implants and mechanical enhancements, your brain processes input faster, stores more information, and eventually can tap right into the Internet (or similar data network). Mentally, you function on an entirely different level than your fellows. Did you make these improvements yourself? Did someone else? Was it with your blessing or against your will? Regardless, you are now more than just a person. You are both living creature and machine. But unlike what others might assume, all of your refinements and upgrades are on the inside. You don’t need mech eyes or metal arms to be enhanced. It’s all about what’s inside your skull.	Additional Equipment: You have an artifact that protects your implants and enhancements from disruption or intrusion. The difficulty of resisting such attacks is decreased by one step. Minor Effect Suggestion: You foresee your foes’ moves so well that the difficulty of your Speed defense rolls for the next round is decreased by one step. Major Effect Suggestion: Processing surge! On your next action, you can use points from your Intellect Pool rather than your Might or Speed Pools.	1. Pick one other PC. This character knows a few things that can help when your implants and enhancements malfunction. 2. Pick one other PC. He seems to find you off-putting. You wonder if it’s because you’re clearly smarter than he is or if it’s for some other reason. 3. Pick one other PC. This character has a small device that can shut down your brain with a single switch. However, you don’t think he has any idea of what it is or what it can do. 4. Pick one other PC. Within your memory circuits, you have data of someone who looks just like that character committing terrible crimes—hundreds of years ago. You have no explanation.	fuses_mind_and_machine	1
33	Grows To Towering Heights	You have the ability to become a towering giant for short periods. When you do, everything and everyone seems to shrink around you, until it’s like you’re walking through a children’s play area, where everything is sized for toddlers. As you grow ever larger, your sense of scale shifts further. At your maximum height, most other creatures are as insects, and unless you take care, you easily crush them beneath your colossal feet. When you’re not growing, you look normal. Only the clothing in direct contact with your skin grows with you, so you wear expensive outerwear only when you’re fairly certain you won’t have to trigger your Enlarge ability.	Minor Effect Suggestion: Your opponent is so startled by your size that it is dazed, during which time the difficulty of all tasks it performs is modified by one step to its detriment. Major Effect Suggestion: All opponents within short range are so startled by your sudden growth that they are dazed, during which time the difficulty of all tasks they perform is modified by one step to their detriment.	1. Pick one other PC. When you grow, if that character is next to you, she also grows, but only about a foot in height. 2. Pick one other PC. That character helped you find a way to mentally control your ability to grow; at first, it triggered only when you were emotionally distressed. 3. Pick two other PCs. At great risk to themselves, they pulled your oversized, unconscious body from a bad situation and saved your life. 4. Pick one other PC. This character inadvertently hinders your actions. If he is within immediate range, the difficulty of any action that you take related to this focus is increased by one step.	grows_to_towering_heights	1
34	Howls At The Moon	You are a lycanthrope—a werewolf, werebear, wererat, weretiger, or something similar. You are cursed and blessed to be able to transform into a powerful creature, drawing additional mass from a transdimensional source. You and the GM should work out the exact nature of the creature, including its appearance, but it’s a wild beast of rage and blood—at least until you learn to control it. Style and appearance are probably low on your list of concerns. Your clothes might be ragged because your transformation is hard on them (or they’re cheap because you know they’ll be destroyed the next time you transform).	Additional Equipment: You have an accurate timepiece that always lets you know when the next transformation is coming. Minor Effect Suggestion: The target is so intimidated by your bestial attack that it is dazed for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment. Major Effect Suggestion: Your attack conveys a small bit of your lycanthropy. If your foe survives, one month later, he transforms into an uncontrolled beast. The GM decides what happens from there.	1. Pick one other PC. That character is able to soothe you when you’re in beast form. You’ll never attack him while transformed, and if he spends three consecutive turns using his action to calm you down, you can revert to your normal form without having to make a roll. 2. Pick one other PC. You believe that he intends to convince you (or capture you) to join the circus or some other entertainment venue. He chooses whether or not this is true. 3. Pick two other PCs. They know that it’s beneficial for you to kill and eat a creature while you’re in beast form, and they often work together to make sure that happens. 4. Pick one other PC. Since she saw you in beast form, she has clearly been terrified of you. You are determined to show her that you’re not as dangerous as she thinks.	howls_at_the_moon	1
35	Hunts Nonhumans	You see orcs, lizard people, aliens from Rigel, elves, undead, or some other sort of inhuman group as a threat to humanity. The threat is obvious to you—they attack, abduct, enslave, prey upon, or murder humans. But the threat can also be far more subtle. They infiltrate, control, subvert, undermine, and terrorize. These threats must be eradicated for the good of all. Nonhuman hunters choose their dedicated foe and focus all their attention on that one opponent whenever possible. In this context, a nonhuman is something that isn’t human and often comes in great numbers. In a fantasy setting, it might be goblins. In a science fiction setting, it might be insectlike alien hordes. Zombies and in some cases mutants might also fit the bill, but keep in mind the similar focus Hunts Outcasts for those who specialize in fighting foes with supernatural abilities. Whatever the foe, hunters of nonhumans know their enemy’s tactics, methods, weapons, defenses, and abilities.	Minor Effect Suggestion: Your foe is so intimidated by your prowess that it backs away, unwilling to attack. It can still defend itself. Major Effect Suggestion: Your foe is terrified by your skill and flees.	1. Pick one other PC. This character has had experiences with the foe in the past, and you’d like to know more about them. 2. Pick one other PC. You are friends, and you’d hate to see this character harmed. 3. Pick one other PC. This character doesn’t understand just how dangerous and horrible the foe can be. 4. Pick one other PC. The inhuman foes are sometimes drawn to certain people. They always seem to attack those people first and with more fervor. This character appears to be one such person.	hunts_nonhumans	1
27	Fights Dirty	You know one thing for certain: the only important element of a fight is who wins. How? Why? These questions are inconsequential. Thus, you’ll do anything to win a fight. Some might say you have no honor, no class, or some other foolish statement, but they’re missing the point. You come out on top in a battle—and that’s all that matters. You bite, scratch, kick, and trip. You tangle foes in draperies, push them down stairs, and throw dirt in their eyes. You trick them into looking the wrong way, call them names, and say terrible things about their mothers. Maybe you learned your methods while living on the streets, or maybe you barely survived a particularly horrific battle in a military campaign. Perhaps you simply have never bought into the idea of rules or honor when your life is on the line. You’re likely to carry a few hidden tricks, sometimes literally up your sleeve. You might have a knife in your boot, a poisoned needle in your ring, a razor in the hem of your cloak, or a handful of stinging and itching powder in a hidden pocket. Your clothing probably has a lot of pockets, actually—more than a few of them well hidden.	Additional Equipment: You have a weapon that is easily hidden and a dose of level 3 poison that inflicts 6 points of damage. Minor Effect Suggestion: You manage to make your foe trip and fall prone. Major Effect Suggestion: You tangle something around your foe’s legs, and he not only falls down but also loses his next turn.	1. Pick one other PC. He’s a good fighter, but if you could teach him a few of your tricks, he’d really excel. 2. Pick one other PC. In the past, she taught you a few tricks to use in a fight. 3. Pick one other PC. This character doesn’t seem to approve of your methods. 4. Pick one other PC. Long ago, the two of you were on opposite sides of a fight. You won, using your particular tactics. Now she’s interested in a (friendly) rematch at some point and claims to be ready for you.	fights_dirty	1
39	Interprets The Law	You know the law as well as the back of your hand. Broad mandates, narrow rulings, well-meaning overreaches, regulatory considerations, and outright loopholes in the law are all the tools you need to twist outcomes to suit your desire. Knowledge is power, which is why many people who have crossed you now fear you. It’s your decision whether you put your prowess toward noble causes or use it for your own aggrandizement. You wear nice suits and designer sunglasses, carry a briefcase, and walk around in shoes that cost more than many people earn in a month.	Additional Equipment: Suit and briefcase. Minor Effect Suggestion: The target is confused, causing it to stumble and drop whatever it’s holding. Major Effect Suggestion: The target can’t believe what you just said and is dazed and unable to take actions for a round as it tries to reconcile your statement with reality.	1. Pick one other PC. That character seriously hurt someone in an altercation, but you got her off with no charges. She may feel grateful or ashamed. 2. Pick one other PC. He borrowed your copy of The Prince by Niccolò Machiavelli and still hasn’t returned it. 3. Pick one other PC. You once defended him in a court of law but suffered one of your very few defeats because of the case or perhaps your own failing—you’re not sure which. 4. Pick one other PC. That character has confided in you that she hates “bloodsucking lawyers” and is glad you’re not one. You haven’t decided yet if you’re going to reveal your profession to her.	interprets_the_law	1
37	Hunts With Great Skill	You are a tracker. Perhaps you hunt animals or more deadly creatures. Perhaps you go after people as a bounty hunter, law enforcer, or killer for hire. Whatever form your hunting takes, you are trained in stalking your quarry and bringing it down. You are a dangerous individual. If you hunt animals or creatures, you might carry the trophies of past kills, such as teeth or skins. If you’re a bounty hunter, you probably wear whatever your quarry would find most intimidating so it feels as though it has no chance of getting away from you.	Minor Effect Suggestion: You can attempt an intimidating task to cause your foe to immediately surrender. Major Effect Suggestion: Your foe pauses, terrified by your prowess, and takes no action on his turn.	1. Pick one other PC. That person once saw you show surprising mercy toward your prey, and now you hope she keeps that information quiet—it might harm your reputation. 2. Pick one other PC. You accidentally caught her in one of your traps and she had to free herself. 3. Pick one other PC. Back in your bounty hunter days (which may or may not be over), you were hired to track down someone close to him. 4. Pick one other PC. You’ve noticed that it’s almost impossible to track him, but you’re determined to figure out a way.	hunts_with_great_skill	1
40	Is Idolized By Millions	Some celebrities are known for their talent, while others are simply known for being known. However the spotlight found you, you’re a celebrity now, and people love you—often a little too much. You can’t go anywhere publicly without people recognizing you, approaching you for a shared selfie, or pointing at you from afar. Whenever you do anything, whether it’s going to the beach, adopting a new pet, or going out clubbing, the event becomes pablum for celebrity TV shows and websites, which often twist the facts into a caricature of reality. But hey, like your publicists say, no PR is bad PR. You wear oversized sunglasses, designer clothing, and expensive shoes that are also comfortable.	Additional Equipment: Designer clothing and sunglasses. Minor Effect Suggestion: Your foe realizes who you are and leaves himself open; the difficulty of your next attack is reduced by one step. Major Effect Suggestion: Nearby strangers recognize you, scream your name, and run to get your autograph, shielding you from enemy attacks for a couple of rounds.	1. Pick one other PC. You were childhood friends. As you got famous, she continued to live a normal life, and you worry that she resents you. 2. Pick one other PC. That character knows that though you’re quick with a smile, as if having the time of your life, on the inside you feel empty and alone. 3. Pick one other PC. That character once called you a “narcissistic douchecopter” on social media. You’re not sure if it was a joke. 4. Pick one other PC. The media thinks that you and that character have a secret relationship and uses any pretext to revisit the story and give it new life.	is_idolized_by_millions	1
41	Is Licensed To Carry	You’re a proficient adversary when armed. Hundreds of hours of training mean that you don’t crack when under fire; you take care of business before the bad guys even know you’re there. Those who are Licensed to Carry might be cops, crooks, hunters, or citizens interested in protecting themselves. You dress in clothing that allows you either to conceal your weapon or to quickly access it, and preferably both, which is why you’re probably known for your trench coat.	Additional Equipment: A firearm and three magazines of ammo. Minor Effect Suggestion: After being hit on the side of the head, the target is deafened for a few minutes. Major Effect Suggestion: An artery hit causes the target to bleed for 1 point of damage each round until he succeeds at a difficulty 3 Intellect or Speed task to bind the wound.	1. Pick one other PC. In the recent past, while doing a little target practice, you accidentally winged him, leaving him badly wounded. It is up to that PC to decide whether he resents, fears, or forgives you. 2. Pick two PCs (preferably ones who are likely to get in the way of your attacks). When you miss with a gun and the GM rules that you struck someone other than your target, you hit one of these two characters. 3. Pick one other PC. You can see that the character needs some advice on how to handle a firearm. 4. Pick one other PC. You’re not sure how or from where, but this character has a line on guns and ammunition and can get them for you for half price.	is_licensed_to_carry	1
44	Looks For Trouble	You are a fighter. A scrapper. You like nothing more than to take off the kid gloves and confront your opposition in the most direct way possible. You don’t hide, and you don’t shirk. You take things head-on in a physical way. Your friends all likely feel better about going into danger with you at their side or their back. You probably wear bright colors—yellow, pink, or red—to help you stand out. You might even wear a T-shirt with a printed obscenity for added style.	Additional Equipment: A melee weapon of your choice. Minor Effect Suggestion: The target is also dazed for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment. Major Effect Suggestion: You destroy a piece of equipment worn or held by your opponent.	1. Pick one other PC. Due to past experiences, you watch over her. That PC is your default charge regarding your tier 2 ability, if you have not named someone else. 2. Pick one or two other PCs. They seem pretty tough, and you’re secretly hoping that at some point you’ll see who’s tougher— you or them. 3. Pick one other PC. If this character is within immediate range when you’re in a fight, sometimes she helps, and sometimes she accidentally hinders (50% chance either way, determined per fight). When this character helps, you gain a +1 bonus to all attack rolls. When she hinders, you suffer a –1 penalty to attack rolls. 4. Pick one other PC. You used to be in a relationship with him, but it’s long since over.	looks_for_trouble	1
42	Leads	Using charisma, natural leadership, and perhaps some training, you command the actions of others, who follow you willingly. You are a politician, a captain, a leader, or a manager. Your skills allow you to make people do what you want, but you also have the wisdom to know what actions would be best for your followers and allies. Since you need the respect of others, you probably dress and carry yourself in such a way that inspires, endears, or intimidates. You have a voice suited to barking orders that can be heard even on a noisy battlefield.	Minor Effect Suggestion: The next time you attempt to command, captivate, or otherwise influence the same foe, the difficulty of the task is decreased by one step. Major Effect Suggestion: The foe is influenced, captivated, or otherwise affected by your ability for twice as long as normal.	1. Pick one other PC. That character was once a follower of yours, but you have since grown to think of her as a peer. 2. Pick one other PC. Independent and stubborn, he is not affected by your abilities. 3. Pick one other PC. She introduces you to the follower you gain at tier 2. 4. Pick one other PC. You were once very close with that character in the distant past.	leads	1
53	Never Says Die	You are as stalwart, hardy, and driven as can be imagined. When others are ready to quit, you’re just getting started. You probably don’t spend a lot of time on your appearance—it is far less important than actions. For that matter, so are words. You’re likely not much of a talker. You’re a doer. Characters with this focus are sometimes called stalwarts or diehards. They often are soldiers, mercenaries, or other tough-as-nails individuals, but sometimes they take a more heroic stance. A character who is hard to kill is around longer to help others, after all.	Minor Effect Suggestion: You restore 2 points to your Might Pool. Major Effect Suggestion: The difficulty of your next action is decreased by two steps.	1. Pick one other PC. You feel the overwhelming need to impress this character, although you’re not sure why. 2. Pick one other PC. This character seems quite capable, but in your mind, his spirit needs motivating. You’re constantly trying to convince him to keep trying, go the distance, and fight the good fight. 3. Pick one other PC. You feel very protective of this character and don’t want to see her harmed. 4. Pick one other PC. This character comes from the same place you do, and you knew each other as children.	never_says_die	1
48	Metes Out Justice	So much injustice in the world. It takes a special person to take it upon himself to right wrongs, protect the innocent, and punish the guilty. You are such a person. Justicars, as they are sometimes called, are often knights errant who wear armor, bear swords and shields, and travel the land looking for tyranny, corruption, or oppression. But some operate a little less ostentatiously. Sometimes justice comes from more subtle tactics. In a more modern setting, a justicar might be a masked vigilante or just a badass who rights wrongs. The importance of justice in your life might come from religion, your upbringing, or your highly developed sense of principles. Regardless, you not only adhere to your values, but you also believe it is your calling to act on them and help make the world more just, more fair, and more ethical. You want to see wrongdoing punished.	Additional Equipment: You have a shield to help you protect yourself and the innocents you find (if appropriate to the setting). Minor Effect Suggestion: You shame or intimidate your foe so much that he is shaken and uses his next turn to flee. Major Effect Suggestion: You mark your foe permanently with a distinctive scar so that her guilt will be known by all.	1. Pick one other PC. You strongly suspect that this person has a past that might involve serious crimes or wrongdoing. You have no proof, however, and you’ve never witnessed him do anything seriously wrong. 2. Pick one other PC. This character seems to share your value systems and sees right and wrong the same way you do, which is refreshing. 3. Pick one other PC. This character, while ethical, defines right and wrong in different ways than you do. 4. Pick one other PC. In the past, you and this character witnessed an event that helped shape your moral code. She may or may not have come away with a similar outlook.	metes_out_justice	1
49	Moves Like A Cat	You are extremely dexterous. Your speed and agility make you almost a thing of wonder. Your body is lithe, flexible, and graceful. Your training—or perhaps a bit of magic or technology—allows you to move quickly and smoothly, land safely when you fall, and avoid danger. You likely wear tight clothing that doesn’t hinder you as you move. Likewise, you probably don’t allow yourself to be overburdened by a lot of equipment. You’ll wear armor only if it doesn’t slow you down.	Minor Effect Suggestion: You restore 2 points to your Speed Pool. Major Effect Suggestion: You can take a second action this round.	1. Pick one other PC. His occasional clumsiness and loud behavior irritates you. 2. Pick one other PC. This character comes from the same place you do, and you knew each other as children. 3. Pick one other PC. You aid her with advice and a helping hand when she needs it. Anytime the two of you are next to each other, the difficulty of balancing, climbing, and jumping tasks is decreased by one step for her. 4. Pick one other PC. He owes you a significant amount of money.	moves_like_a_cat	1
50	Moves Like The Wind	You are extraordinarily fast. Through some agency beyond human limits (such as magic, technology, mutant powers, or the like), you are a blur of movement. You can outrun anyone, and as your abilities increase, you can eventually run rings around flying birds or speeding cars. You likely wear tight clothing that doesn’t hinder you as you move. Likewise, you probably don’t allow yourself to be overburdened by a lot of equipment.	Minor Effect Suggestion: You restore 2 points to your Speed Pool. Major Effect Suggestion: You can take a second action this round.	1. Pick one other PC. He moves so slowly! It irritates you. 2. Pick one other PC. This character is attractive and alluring to you. 3. Pick one other PC. She inspires you. When she is within immediate distance, the difficulty of all physical actions (other than defense) is decreased by one step. 4. Pick one other PC. He owes you a significant amount of money.	moves_like_the_wind	1
47	Masters Weaponry	You have worked long and hard with one particular type of weapon: swords, axes, daggers, whips, or whatever you choose. Thus, you are a swordsman, an axemaster, a mistress of knives, or whatever is appropriate to your chosen weapon. A master of the rapier is different from a master of the warhammer. You might wear a symbol—a badge, a pin, a tattoo, an amulet, certain colors, and so on—that indicates the school in which you trained, the style of fighting you have mastered, or the name of your mentor. Your weapon is almost certainly your finest possession. Not only is it well cared for and of high quality, but you probably keep it in a beautiful scabbard, harness, belt, case, or something similar.	Additional Equipment: You have a high- quality weapon of your choosing. Weaponry Abilities: If you cast spells or have similarly overt abilities, your attacks always look like your chosen weapon. So a force blast appears to be a large weapon made of force. These alterations change nothing other than the appearance of the effects. As another example, Barrier becomes a wall of swirling blades of energy. This alteration changes the ability such that it is not a solid barrier but rather inflicts 1 point of damage to anyone who touches it and 4 points of damage to anyone who passes through it. Minor Effect Suggestion: The target is so dazzled by your expertise that it is dazed for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment. Major Effect Suggestion: Make an immediate additional attack with the weapon as part of your turn.	1. Pick one other PC. That character shows potential in the use of your weapon. You would like to train her, but you’re not necessarily qualified to teach (that’s up to you), and she might not be interested (that’s up to her). 2. Pick one other PC. If she is within immediate range when you’re in a fight, sometimes she helps, and sometimes she accidentally hinders (50% chance either way, determined per fight). When she helps, you gain +1 to all attack rolls. When she hinders, you suffer a –1 penalty to attack rolls. 3. Pick one other PC. You once saved his life, and he clearly feels indebted to you. You wish he didn’t; it’s all just part of the job. 4. Pick one other PC. This person recently mocked your combat stance. How you deal with this (if at all) is up to you.	masters_weaponry	1
52	Needs No Weapon	You don’t use weapons—you are a weapon. With powerful punches, kicks, and full- body moves, you inflict incredible damage on your foes. By focusing your energy, the combined power of your body and mind means you can do incredible amounts of damage without depleting your energy reserves. You might have gained your skills through intense training, various implants and enhancements, genetic mutations, or any combination of these things. Whatever the origin of your feats, you likely take good care of your body, ensuring that it remains the sharpest, most dependable weapon at your disposal. Weaponless martial artists are both feared and revered. They wear loose, comfortable clothing that allows them a full range of movement, and they rarely use weapons other than their body’s own implements (although some carry items designed to enhance their body movements for greater effect, such as knuckle weapons, knee spikes, or boot blades).	Minor Effect Suggestion: You trip your target and knock him prone. Major Effect Suggestion: You strike your target in a limb, making that limb useless for the next minute.	1. Pick one other PC. He seems to believe that the only true weapons are those that you can hold in your hand, and he might look at you with disdain. 2. Pick one other PC. This person seems incredibly unaware of her body and always happens to get in your way. If you miss your foe and accidentally hit someone else in close range, it’s likely to be her. 3. Pick one other PC. You once trained with a close friend of his, and you owe that mutual friend much. 4. Pick two other PCs. Once these two heard about your skills, they expressed interest in being your students. However, only one seems to have any aptitude.	needs_no_weapon	1
55	Performs Feats Of Strength	A lifetime of physical training rewards you with incredible power. Your muscles ripple beneath your skin, evident in your extraordinary build and frame, and you can do things others would not dream possible. You can haul incredible weight, hurl your body through the air, and punch through doors. Superior strength can manifest in many ways. You could have the physique of a bodybuilder, almost godlike in its perfection, or you might be a lumbering, hulking monster of a person, as heavy with fat as you are with muscle. Then again, you could be short and wiry, your strength belied by your slight frame.	Additional Equipment: You have a heavy weapon. Minor Effect Suggestion: You knock the creature to the ground. Major Effect Suggestion: You send the creature flying through the air so that it lands on the ground in a heap 1d20 feet away from you.	1. Pick one other PC. You have been friends with this character for as long as you remember and often heed her advice and guidance. 2. Pick one other PC. For some reason— nerves, perhaps, or attraction—he makes you feel weak in the knees. You prefer if he stays out of immediate range when you’re in combat. 3. Pick one other PC. You once carried him from combat after he was wounded. Whether he feels embarrassment, gratitude, or something else is up to him. 4. Pick two other PCs. They have a game where they ask you to perform harder and harder feats of strength. Whether you play along is up to you.	performs_feats_of_strength	1
51	Murders	The murderous assassin is a master of dealing death. No one is better at sneaking into a location, eliminating a target, and slipping out again. Obviously, a professional killer is not likely to have a lot of friends. You probably wear dark colors—black, charcoal grey, or midnight blue—to help blend into the shadows. But since you’re also a master of disguise, in truth you could look like anyone.	Additional Equipment: You start with a disguise kit and three doses of a level 2 blade poison that inflicts 5 points of damage. Minor Effect Suggestion: No one but the foe notices that you make the attack. Major Effect Suggestion: If you have poison amid your belongings, you were able to apply it just before the strike, adding the poison’s effects to the normal attack damage.	1. Pick one other PC. That character knows your real identity, profession, and background. To all others, the truth about you is a closely guarded secret. 2. Pick one other PC. You were recently approached by someone who wanted to hire you to take that character out. You haven’t yet decided whether to take the job or warn her that her life’s in danger. 3. Pick two other PCs. One night after perhaps too much celebrating, you loudly claimed responsibility for a murder you didn’t commit. These two characters were the only ones who heard. Whether they believe you or not is up to them. 4. Pick one other PC. That character is the one who got you started down the path of taking lives, whether he knows it or not.	murders	1
56	Pilots Starcraft	You’re a crack starship pilot. You feel most alive when the engines are running hot, the floor plates are thrumming beneath your feet, and the stars stream past the viewports in a continuous accelerating streak. Whether you pilot starcraft along a dangerous trade route, explore places no one has gone before, or work as a courier, you are the master of your own domain: your starship. Piloting is a glamorous job that requires glamorous attire, so you wear striking clothing, possibly including holo-tattoos, data jewelry, and other elaborate accessories.	Additional Equipment: With your GM’s approval, access to a small starcraft. Minor Effect Suggestion: The difficulty of the next task attempted by an ally (either personally or in operating one of the starcraft’s systems, such as communication, sensors, weapons, and so on) is reduced by one step. Major Effect Suggestion: You can take an immediate extra action, either personally or in operating one of the starcraft’s systems, such as communication, sensors, weapons, and so on.	1. Pick one other PC. You promised that character a trip anywhere she wanted to go in a starship. She hasn’t yet taken you up on your offer. 2. Pick one other PC. You smuggled goods in your starcraft for him in the past, and it ended up entangling you in legal trouble. You’ve mostly forgotten the incident. Mostly. 3. Pick one other PC. That character confided in you that she suspects you are an agent of an enemy organization. You deny it. 4. Pick one or more other PCs. You accidentally crashed your starcraft when those characters were aboard. Everyone was hurt, and one other former comrade was killed in the incident.	pilots_starcraft	1
59	Sees Beyond	Unlike most people, you know there are far more than three dimensions. More colors than can be found in the rainbow. More things in the world than most can see, sense, or even understand. With practice and help (through drugs, lenses, manipulated energy fields, magic, special heritage, or a combination of some or all of these), you can perceive things that others cannot. What you see in other dimensions has changed your understanding of even the most basic things like weapon and dress. Where others might see your drab outfit and plain weapons, you see something entirely different—myriad colors and patterns that showcase your unique vision of the world. Your weapons likely bear marks of other dimensions as well.	Minor Effect Suggestion: The period of concentration needed is cut in half. Major Effect Suggestion: You see even more than you normally do and can ask the GM one question about what you’re looking at.	1. Pick one other PC. You are fairly certain that this character doesn’t believe that your abilities are real. 2. Pick one other PC. You see a gathering of energy and colors on this character that seem to imply that she too can see beyond. Whether you ask her about it is up to you. 3. Pick one other PC. Whenever this character is near, your abilities seem to take longer and become more difficult. 4. Pick one other PC. Wherever this character goes, you are aware of the general distance and direction of his location.	sees_beyond	1
65	Speaks For The Land	You not only speak for the land, you also protect it and the natural creatures and forests that it supports. In that sense, you are the land’s champion. You might be part of an ancient priesthood of a select few who are able to commune with the spirits of nature and who call upon the magic of the forest, moon, storm, and beast. In particular, you know how certain long-lived trees are conduits of worldly magic. When lightning falls from the sky, fires rage, or the earth shakes, these elder trees channel that elemental fury into themselves. An event may burn away a limb or blow off bark, but the energy contained within the tree becomes part of the magic of the land— magic that you, in turn, draw upon. As a speaker for the land, you probably wear rough, rugged clothing that shows little concern for style. Most of the time, covering yourself in natural smells to keep your scent from spooking wildlife is more important than bathing to be presentable to other humans.	Additional Equipment: A talisman of petrified oak. Minor Effect Suggestion: A hawk or raven attacks your foe’s head for one round, during which time the difficulty of all tasks the foe performs is modified by one step to its detriment. Major Effect Suggestion: A large ferret, eagle, or similar natural creature snags and makes off with a piece of equipment worn or held by your foe.	1. Pick one other PC. You found that character lying unconscious in the woods with no memory of how she got there. Without your help, she likely would have died of exposure. 2. Pick one or more other PCs not from the wilderness. You’ve decided that you will mentor them to become more appreciative of the land and its natural beauty. 3. Pick one other PC. More often than not, that character is accidentally singed, snagged, bitten, or otherwise caught when you use one of your special abilities. 4. Pick one other PC. That character’s sibling is responsible for felling a sacred elder tree that was important to you.	speaks_for_the_land	1
60	Separates Mind From Body	Your mind is to your body as a captain is to her ship. Your body obeys your commands, moving and behaving as you direct it, but at any time you choose, your mind can wriggle free from its container and explore the world freely. When you project your mind, there are few places you cannot go, few secrets that can remain hidden from you. You probably regard your body as merely a vessel. As a result, you’re not likely to put a lot of effort into style or keeping yourself especially clean. Your clothing is likely tattered and dirty.	Additional Equipment: You possess a silvery ball about 3 inches (8 cm) in diameter. The ball’s highly polished surface looks as if it reflects your surroundings, but examining its surface reveals that it reflects the surroundings of another location, one you have not yet found. In the images shown on the ball, you have seen many strange and unsettling things. Minor Effect Suggestion: You have an asset on any action that involves using your senses, such as perceiving or attacking, until the end of the next round. Major Effect Suggestion: Your Intellect Edge increases by 1 until the end of the next round.	1. Pick one other PC. Through a quirk of fate or careful cultivation (your choice), you always know where that character is in relation to you. You are always aware of the direction and distance you must travel to reach him. 2. Pick two other PCs. You believe that while using your Third Eye power, you once saw them engaged in something covert and possibly illegal. It’s up to those characters whether one, both, or neither were actually involved. 3. Pick one other PC. For reasons beyond understanding, your focus abilities do not function when she is next to you and in your field of vision. 4. Pick one other PC. He is fascinated by your skills and wants to study you more closely. It’s up to you whether or not you let him.	separates_mind_from_body	1
58	Rides The Lightning	Through practice and inherent ability (or the subtle use of hidden or implanted devices), you control electricity. Not only can you create and discharge electrical power, but you can eventually learn to use it to transport yourself. You probably wear tight-fitting clothing that allows you to move quickly. Your garments might be blue and black, perhaps with a lightning-bolt motif.	Additional Equipment: You have a bag of miscellaneous batteries and power cells (if appropriate to the setting). Whenever you find a new device that operates on batteries or cells (GM discretion), there is a 75% chance that the bag contains one that will power the device if it depletes. Electrical Abilities: If you use special abilities that would normally use force or other energy, they instead use electricity. For example, a force blast is a blast of lightning. This alteration changes nothing other than the type of damage and the fact that it might start fires. Minor Effect Suggestion: The target is dazed by electricity for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment. Electricity can also shut down an android, robot, or other automaton for one round. Major Effect Suggestion: Devices filled with electrical power explode. You can target and destroy an artifact that a foe is holding or wearing.	1. Pick one other PC. This character has been your friend for a long time, and you have learned to bring her along when you ride the lightning. If the character is standing right next to you, you can take her with you when you use Bolt Rider or Electrical Flight. (Normally, neither ability allows you to transport other creatures.) 2. Pick two other PCs. You know about an important connection between them that even they don’t know about. 3. Pick one other PC. This character has interesting ideas about electricity and how it can be harnessed. If you are trained with machines, after you talk to this character for an hour, you gain an asset on any task involving identifying, crafting, or repairing a machine that uses electricity. 4. Pick one other PC. He has the worst luck with electrical devices of anyone you’ve ever met. You want to help him, but you aren’t sure how or even whether he will be open to your assistance.	rides_the_lightning	1
61	Shepherds Spirits	You see things that others do not: wandering souls of the dead, nature spirits, ephemeral figures leaping amid the flames of a fire, and all the other unseen folk. You can speak to these otherworldly entities and interact with them. They are drawn to you, for they recognize that you walk in two worlds. Shepherds usually wear distinctive robes and a variety of symbols, often with macabre imagery. Runes stitched across your cloak help you concentrate on your abilities.	Spirit Abilities: When you perform abilities that would normally use force or other energy, they instead use spirit energy. For example, a force blast appears as if delivered by a ghostly revenant whose touch drains life energy. This alteration changes nothing other than the type of damage. Minor Effect Suggestion: You can ask an additional question of a spirit you petition. Major Effect Suggestion: The spirit you are questioning knows a surprising amount of information about the topic.	1. Pick one other PC. When spirits whisper to you, as they often do (you’ve learned to ignore it), that character can sometimes hear what they say. 2. Pick one other PC. She came to you with questions for a departed friend, family member, or enemy. 3. Pick one other PC. You may or may not have told him this, but the spirits whisper to you that he is destined to die soon. 4. Pick one other PC. You owe that character a significant amount of money.	shepherds_spirits	1
62	Siphons Power	You are an energy vampire, draining power from machines or living creatures. You use this power to restore your own physical energy reserves. Perhaps you take great joy in this ability, or perhaps you grudgingly accept it as a boon to yourself and your companions and use it only when you must. Either way, you are likely feared and unwelcome in many communities for your dangerous powers. You might try to conceal your true nature, dressing so that you don’t attract attention and give yourself away, or perhaps you flaunt it, using the rumors to your advantage, wearing black clothing and embodying a sinister countenance.	Minor Effect Suggestion: When draining, you gain 2 additional points to divide between your Speed Pool and Might Pool. Major Effect Suggestion: When draining, you gain 5 additional points to divide between your Speed Pool and Might Pool.	1. Pick one other PC. This character is immune to your powers for some inexplicable reason. 2. Pick one other PC. This character appears to think of you as some kind of monster. 3. Pick one other PC with a living or machine companion. This character seems convinced that you’re going to use his companion for your own ill-gotten purposes. 4. Pick one other PC. You believe she can help you control and understand your abilities, if you can get her to talk about it.	siphons_power	1
63	Slays Monsters	You live in a world populated not just by normal folk, but by creatures that should belong only to tall tales or nightmares. Dragons. Gorgons. Many-headed hydras. Werewolves. Worse. You decided to stand up to this menace, even though it means putting yourself in more peril. And if you give your life, others will tell stories of your bravery. Usually heavily armed and armored knights, monster slayers are often afforded great respect.	Minor Effect Suggestion: You can immediately move up to a short distance after this action. Major Effect Suggestion: You can immediately take a second action during this turn.	1. Pick one other PC. You saved him from a monster (though not by defeating the creature, which is still out there). 2. Pick one other PC. You tried but failed to save her loved one from a monster. You still bear the scars. 3. Pick one other PC. He knows the name and lair of a monster, but for some reason he won’t share that information with you. 4. Pick one other PC. That character shows potential in the art and philosophy of monster slaying. You would like to train her but aren’t sure she’s interested.	slays_monsters	1
66	Stands Like A Bastion	You are a wall. A stone. An island against a storm of weapons and words. Nothing moves you. Nothing even really dents you. Perhaps it’s your physical size that lends you such stopping power, perhaps you’ve enhanced your physique with mechanisms and machinery, or perhaps it’s merely your incredible strength of will that forces foes to stay their swings. Your armor is probably just like you: solid, strong, and utterly impenetrable. Every flourish and bit of flair—if you have any— does double duty as protection.	Additional Equipment: You have armor of your choice and a shield. Minor Effect Suggestion: You add +2 to Armor. Major Effect Suggestion: You regain 2 points to your Might Pool.	1. Pick one other PC. You feel indebted to this character and go out of your way to protect her from harm. 2. Pick one other PC. You once saved this character from a dangerous situation. 3. Pick one other PC. This character once ran full bore into you while running away from . . . something. You stopped him just by being in the wrong place at the wrong time, but he seems to hold it against you. 4. Pick two other PCs. You would like to ask them to help you train by attacking you at the same time, but you’re uncertain how to approach them with this request.	stands_like_a_bastion	1
68	Throws With Deadly Accuracy	Sometimes you wonder if your hand and your mind’s eye are connected in an intricate perfection of timing and aim. Everything that leaves your hand goes exactly where you’d like it to and at the range and speed to make the perfect impact. Your expertise might be in carefully crafted throwing daggers and shuriken, or perhaps you use whatever’s nearby. What you wear doesn’t matter, as long as it doesn’t come between you and your throwing implements. Lots of pockets, equipment belts, and pouches make it easy to keep your preferred weapons close at hand. You might even have a hat with a variety of throwing items tucked into its brim, ready to meet their target with your perfect aim.	Additional Equipment: You have three throwing weapons of your choice. Minor Effect Suggestion: You hit your target in the eye and blind him for one round. Major Effect Suggestion: You strike your target in a limb, making that limb useless for the next minute.	1. Pick one other PC. You believe that this character shows potential for being an excellent ranged attacker, but you don’t know if she would be interested in the rigorous training and practice required. 2. Pick one other PC. This character once saved you from a dangerous situation. 3. Pick one other PC. You owe this character a significant amount of money. 4. Pick one other PC. He is always getting in the way. If the GM determines that your attack strikes the wrong target, it almost always hits this character.	throws_with_deadly_accuracy	1
69	Travels Through Time	You have the unusual ability to travel through time in a way others can never dream of. You have likely experienced jumps where time seems to have passed but you have no memory of what happened. You probably also suffer from déjà vu, sensing that you have been in a situation or witnessed an event before and are now experiencing it all over again. You have begun to realize the extent of your powers and work to master them so that perhaps one day you can travel farther into the future or deeper into the past. Time travel poses many risks. Often, you have no clear sense about what the future might hold or what might have been happening in the spot where you appear when you travel to the past. Death waits for the bold and the incautious. Worse than mishap, you must guard against paradox. When you change an event in the past, you could inadvertently cause the future to be rewritten. On the other hand, cosmic forces may move in to correct paradoxes by changing circumstances to accommodate the ability, causing your memories to become false ones when the world you know changes to adapt to your meddling. Of course, if you attempt anything too radical, the universe might write you out of existence so that your efforts to change the past never occur. You likely wear clothing and have personal effects in a range of styles, choosing items from many different periods. This eclectic approach to your possessions may give you a shabby appearance or make you look strange and alien to others in the present. Any type of character can have this focus, though its power is extraordinarily rare.	Temporal Abilities: If you have other overt powers, time appears to slow down when you use them. You and everything around you moves in slow motion for a moment, and then time snaps back into place. The temporal distortion changes nothing about the effects of your abilities except for the appearance of the world around you. Minor Effect Suggestion: One creature you choose within short range either acts first or acts last during the next round. Major Effect Suggestion: You step a few moments into the future. To other characters, it looks as if you disappear. At the start of the next round, you reappear and you have an asset for any task you perform during that round.	1. Pick one other PC. You are either a distant ancestor or a descendant of that character. He served as a focal point for your travel and anchors you to the present. 2. Pick one other PC. For some reason, when you use your Anticipation power to look ahead, you specifically see how her future might unfold. You can choose whether or not to tell her what you see. 3. Pick one other PC. You secretly believe that he can also travel through time, since you once fought a person who looked exactly like him. 4. Pick one other PC. You once stepped forward in time to save her from death, but she doesn’t know it. You may choose whether or not to tell her.	travels_through_time	1
67	Talks To Machines	Since you were young, you had an affinity for machines. It seemed almost like you were speaking to them. You were. You have the ability to use your organic brain like a computer, interfacing “wirelessly” with any electronic device. You can control and influence them in ways that others can’t. Computers are your friends and companions. You have also learned to repair machines of all kinds because the better they work, the better off you are as well. You likely wear a tool belt full of various implements, and machine oils stain your clothes and fingertips.	Additional Equipment: A bag of small tools. Minor Effect Suggestion: The duration of influence or control is doubled. Major Effect Suggestion: The duration of influence or control becomes twenty-four hours.	1. Pick one other PC. That character seems to have a terrible relationship with machines—or at least the machines that you communicate with. If she is next to a machine that you interact with in a friendly manner, that machine is treated in all ways as being one level lower than normal (unless doing so benefits you or her, in which case the level does not change). 2. Pick one other PC. He seems especially leery of you, though this could just be your perception. 3. Pick one other PC. She has a small machine among her equipment but won’t tell you any details about it or let you see it. 4. Pick one other PC. You know that this character knows an incriminating or embarrassing secret about you, and you hope that he doesn’t reveal it.	talks_to_machines	1
70	Wears A Sheen Of Ice	Through your studies, you have learned to focus your natural talents to command the powers of ice and cold. People might refer to you as an ice mage. Sometimes ice mages are thought to come into conflict with those known as fire mages, but this is a fallacy believed by ordinary folks more than anything based in truth. You likely wear white or blue garments that are heavier than they need to be— unless you live in a cold region or wintry clime, in which case you probably wear less clothing than other people do because the cold doesn’t bother you.	Ice Abilities: If you possess abilities that would normally use force or other energy, they instead use cold and ice. For example, a force blast is a ray of frost. This alteration changes nothing other than the type of damage. As another example, Barrier creates a wall of ice. This alteration changes nothing except the wall’s appearance and the fact that it takes 2 additional points of damage from fire. Minor Effect Suggestion: The surface around the target becomes slick and difficult to stand on. Major Effect Suggestion: The target is covered in ice that hinders its movement for one minute, during which time the difficulty of all tasks it performs is modified by one step to its detriment.	1. Pick one other PC. Due to a quirk of fate, if that character is standing next to you when you use your Ice Armor ability, he is also protected by a sheen of ice. (He does not get the added protection of your Resilient Ice Armor ability.) 2. Pick one other PC. For a reason unknown to you, her very presence seems to heat the air around you, making it more difficult to command the powers of ice and cold. If she is within immediate range, her presence occasionally makes it one step more difficult to hit a target with a focus ability. 3. Pick one other PC. That person is especially susceptible to the cold that radiates from you. How he handles that vulnerability is up to him. 4. Pick one other PC. The two of you have a long history and almost always disagree about the best way to handle situations.	wears_a_sheen_of_ice	1
13	Conducts Weird Science	You could be a respected scientist, having been published in several peer-reviewed journals. Or you might be considered a crank by your contemporaries, pursuing fringe theories on what others consider to be scant evidence. Truth is, you have a particular gift for sifting the edges of what’s possible. You can find new insights and unlock odd phenomena with your experiments. Where others see a crackpot cornucopia, you sift the conspiracy theories for revelation. Whether you conduct your enquiries as a government contractor, a university researcher, a corporate scientist, or an indulger of curiosity in your own garage lab following your muse, you push the boundaries of what’s possible. You probably care more about your work than trivialities such as your appearance, polite or proper behavior, or social norms, but then again, an eccentric like you might turn the tables on that stereotype too.	Minor Effect Suggestion: You learn one additional piece of information in your analysis. Major Effect Suggestion: Foes within sight are dazed for one round upon seeing your strange creation or its results. During this time, the difficulty of all tasks they perform is modified by one step to their detriment.	1. Pick one other PC. The character believes your experiments once cured someone close to her of a fatal condition. You’re not sure if they did, or if the condition just went into remission. 2. Pick one other PC. You created a scientific instrument designed to give this character a restful night’s sleep, but you now fear unanticipated long-term side effects. 3. Pick one other PC. You’re pretty sure that one of your experiments from when you were younger and brasher is responsible for giving him some special gifts or drawbacks. The PC might know this, or he might just vaguely remember you from long ago. 4. Pick one other PC. She asked you to design a gun that could shoot through walls. You took the cash, but you are still working on the prototype.	conducts_weird_science	1
71	Wields Two Weapons At Once	You bear steel with both hands, ready to take on any foe. You fight with two weapons in melee, sometimes called dual wielding. A fearsome warrior, quick and strong, you believe that the best defense is a strong offense. You probably sheathe one weapon on each side or both crossed behind your back. They are likely your most prized possessions, and you might have names for them.	Additional Equipment: You start with an additional light melee weapon. Minor Effect Suggestion: The target is intimidated and flees as its next action. Major Effect Suggestion: You can make an immediate additional attack with one of your weapons.	1. Pick one other PC. You have trained with this character so much that if the two of you stand back to back in a fight, you both gain a +1 bonus to Speed defense rolls. 2. Pick one other PC. This character always seems to inadvertently foil your actions, or at least make them more difficult. If she is within immediate range, the difficulty of any action related to this focus is increased by one step. 3. Pick one other PC. You recently had a weapon go missing, and you’re becoming convinced that he took it. Whether or not he did is up to him. 4. Pick one other PC. You used to dislike him immensely, but as you get to know him, you’re growing fond of him against your better judgment.	wields_two_weapons_at_once	1
73	Works The Back Alleys	The thief, the burglar, the pickpocket: these are the dangerous individuals who haunt the back alleys of every community. You are a thief in a city or town, making your livelihood at the expense of the wealthy. Your talents, however, prepare you for all kinds of pursuits, even when you’re not crouching in an alley or climbing into a window. Usually, you dress to blend in with the crowd. When you’re on a mission, black, form-fitting clothing allows you to swim in the shadows.	Additional Equipment: You start with a bag of light tools. Minor Effect Suggestion: You can immediately attempt to hide after this action. Major Effect Suggestion: You can immediately take a second action during this turn.	1. Pick one other PC. The character knew you beforehand and convinced you to leave your life of crime for other pursuits—at least temporarily. 2. Pick one other PC. A while back, you attempted to “borrow” something from her, but she busted you in the process. You managed to convince her that it was a simple misunderstanding, but she may not entirely trust you. 3. Pick one other PC. You never seem to be able to hide so that he can’t see you. 4. Pick one other PC. She knows your real identity (if it’s a secret) or that you work undercover (if it’s a secret) and has kept the knowledge to herself so far. It’s up to her whether she continues to do so.	works_the_back_alleys	1
54	Operates Undercover	Espionage is not something you know anything about. At least, that’s what you want everyone to believe, because in truth, you’ve been trained as a spy or covert agent. You might work for a government or for yourself. You might be a police detective or a criminal. You could even be an investigative reporter. Regardless, you learn information that others attempt to keep secret. You collect rumors and whispers, stories and hard-won evidence, and you use that knowledge to aid your own endeavors and, if appropriate, provide your employers with the information they desire. Alternatively, you might sell what you have learned to those willing to pay a premium. You probably wear dark colors—black, charcoal grey, or midnight blue—to help blend into the shadows, unless the cover you’ve chosen requires you to look like someone else.	Additional Equipment: A disguise kit. Minor Effect Suggestion: You can immediately attempt to hide after this action. Major Effect Suggestion: You get a +2 bonus to Speed defense rolls for one round.	1. Pick one other PC. The character knows your real identity (if that’s a secret) or that you work undercover (if that’s a secret), and has kept that information private until now. 2. Pick one other PC. You know an important secret about her, but she is unaware that you know. 3. Pick two other PCs. You know about an important connection between these two that even they don’t know about. 4. Pick one other PC. No matter how you hide or disguise yourself, this character always seems to know where and who you really are.	operates_undercover	1
64	Solves Mysteries	You are a master of deduction. With a keen eye for detail and a quick wit, you can use a selection of clues to figure out what really happened when others are left scratching their heads. While a character that solves mysteries might be thought of as a detective or an investigator, a professor or even a scientist might also be a mystery solver. You wear sensible clothing and comfortable shoes, walking that fine line between practical and stylish. You might carry a briefcase for all the tools you require to solve mysteries.	Minor Effect Suggestion: You discover an additional clue about the mystery you are attempting to solve. Major Effect Suggestion: When you solve a mystery, the target of your revelation is stunned by your dazzling wit, unable to move or act for a round.	1. Pick one other PC. She is the true friend who got you started reading mysteries and detective fiction, which led to your current obsession. 2. Pick one other PC. That character does not seem to trust or like you, but you feel compelled to win him over. 3. Pick one other PC. This character is a good sounding board. After you talk to her for an hour, you gain an asset on any knowledge-based task you are trained in. 4. Pick one other PC. You were rivals with him in some endeavor in the past.	solves_mysteries	1
74	Works The System	You’ve knocked around a lot and run afoul of the law a few times, but you’ve evaded authorities on a variety of fronts more often than not. That’s because you are adept at noticing flaws and exploits in systems, whether those systems are civil laws, investment regulations, computer codes, games of all sorts, or similar artificial constructions. Once you notice and fully comprehend a system, you can manipulate it to your own ends. You are a manipulator, but you likely keep a term like that to yourself. Tell people you’re an entrepreneur—that always sounds good.	Additional Equipment: A laptop computer and a smartphone. Minor Effect Suggestion: You learn something completely unexpected but useful. Major Effect Suggestion: You can immediately take a second action during this turn.	1. Pick one other PC. You turned her failing grade into a passing one, fixed an immigration issue, made a driving offense disappear from computer records, or managed some similar aid for that character. 2. Pick one other PC. You’re aware that he knows an incriminating or embarrassing secret about you. 3. Pick one other PC. Whenever he is next to you, the difficulty of tasks involving interactions with people or attempts to use machines is increased by one step. 4. Pick one other PC. Whenever you charm or persuade others, this character always gains the same benefits of your actions as you do.	works_the_system	1
72	Works Miracles	You manipulate matter and time to help others and are beloved by everyone you encounter. Some people consider you a representative of the gods or a power from beyond this world. Perhaps they’re right. Your abilities might be a gift of the angels or a powerful and benevolent god. You probably wear simple clothes—nothing too flashy or stylish. There’s no need to call more attention to yourself.	Minor Effect Suggestion: The target is healed for 1 additional point. Major Effect Suggestion: The target is healed for 2 additional points.	1. Pick one other PC. This character quietly suspects that you’re a messiah or supernatural being. You can choose whether or not you’re aware of his suspicion. 2. Pick one other PC. He knows a secret of yours, and you desperately hope that he doesn’t tell anyone. 3. Pick one other PC. She believes that you cured someone close to her of a deadly disease, and she is grateful. You aren’t sure whether you actually helped or if that person wasn’t as sick as she thought. 4. Pick one other PC. You secretly believe that she might be a hypochondriac, and you’re never sure whether she actually needs your help.	works_miracles	1
38	Infiltrates	You focus on subtlety, guile, and stealth. Your body has been trained (or perhaps even genetically or magically altered) to make you the perfect infiltrator. You use a wide variety of disguises and tools to perform your duties, but your greatest tools are your own skills and training. Infiltrators are spies, agents, thieves, assassins, or information gatherers. They often wear slick bodysuits and face-concealing masks when not wearing a disguise.	Minor Effect Suggestion: Your opponent is so startled by your moves that it is dazed, during which time the difficulty of all tasks it performs is increased by one step. Major Effect Suggestion: All opponents within short range are so startled by your moves that they are dazed, during which time the difficulty of all tasks they perform is increased by one step.	1. Pick one other PC. This character inadvertently foils your actions, or at least makes them more difficult. If this PC is within immediate range, the difficulty of any action that you take related to this focus is increased by one step. 2. Pick one other PC. No matter how hard you try, you cannot seem to hide from him. 3. Pick two other PCs. The three of you worked as a team on a mission long ago, but you had a falling out. 4. Pick one other PC. That character is your sibling, and thus you look very much alike.	infiltrates	1
79	Elf	You haunt the woodlands and deep, natural realms, as your people have for millennia. You are the arrow in the night, the shadow in the glade, and the laughter on the wind. As an elf, you are slender, quick, graceful, and long lived. You manage the sorrows of living well past many mortal lifetimes with song, wine, and an appreciation for the deep beauties of growing things, especially trees, which can live even longer than you do.	1. Before putting an arrow in the forest intruders, you confronted them and met the PCs, who were on an important quest. 2. Your heart yearned for farther shores, and the PCs offered to take you along to new places. 3. Your home was burned by strangers from another place, and you gathered the PCs along the way as you tracked down the villains. 4. An adventure was in the offing, and you didn’t want to be left behind.	Agile: +2 to your Speed Pool. Long-Lived: Your natural lifespan (unless tragically cut short) is thousands of years. Skill: You are specialized in tasks related to perception. Skill: You are practiced in using one bow variety of your choice. Skill: You are trained in stealth tasks. In areas of natural woodland, you are specialized in stealth tasks. Fragile: When you fail a Might defense roll to avoid damage, you take 1 extra point of damage. Additional Equipment: You have a bow and a quiver of arrows to go with it.	elf	1
78	Dwarf	You’re a stocky, broad-shouldered, bearded native of the mountains and hills. You’re also as stubborn as the stone in which the dwarves carve their homes under the mountains. Tradition, honor, pride in smithcraft and warcraft, and a keen appreciation of the wealth buried under the roots of the world are all part of your heritage. Those who wish you ill should be wary of your temper. When a dwarf is wronged, he never forgets.	1. You found the PCs wandering a maze of tunnels and led them to safety. 2. The PCs hired you to dig out the entrance to a buried ruin. 3. You tracked down the thieves of your ancestor’s tomb and found they were the PCs. Instead of killing them, you joined them. 4. Before a dwarf settles down, he needs to see the world.	Stalwart: +2 to your Might Pool. Skill: You are trained in Might defense rolls. Skill: You are trained in tasks related to stone, including sensing stonework traps, knowing the history of a particular piece of stonecraft, and knowing your distance beneath the surface. Skill: You are practiced in using axes. Skill: You are trained in using the tools required to shape and mine stone. Inability: When you fail an Intellect defense roll to avoid damage, you take 1 extra point of damage. Additional Equipment: You have an axe.	dwarf	1
15	Controls Beasts	To say that you have a way with animals and nonhuman creatures doesn’t begin to cover it. Your mastery and communication with beasts is positively uncanny. They come to you fearlessly, and it’s not uncommon for birds to alight on your shoulder or for small animals to climb up your arms or legs. You probably wear tough clothing and have a disheveled or grizzled appearance that suggests a rugged, outdoor life. Perhaps you even smell like an animal.	Additional Equipment: You have three days’ worth of food for your beast companion, plus a harness, collar, or similar accoutrements. Minor Effect Suggestion: The duration of calmness or control is doubled. Major Effect Suggestion: The duration of calmness or control extends to twenty-four hours.	1. Pick one other PC. That character seems to disturb your creatures in a way that you can’t explain. You know that you must keep your animals away from him if possible, or you might lose control of them. 2. Pick one other PC. The creature that you’re bonded with seems to have a special bond with this other person as well. You must decide whether it brings up feelings of jealousy or camaraderie within you and whether to thwart the connection or help it blossom. 3. Pick one other PC. Recently, he accidentally (or perhaps intentionally) put your beast companion in a position of danger. Your companion is now nervous around him, and you are struggling with your own emotional response to the incident. 4. Pick one other PC. She dislikes beasts of all kinds, seeing them as little more than food or prey. You hope that exposing her to your beast companion will change her mind. It’s up to that player how her character responds to the experience.	controls_beasts	1
16	Controls Gravity	Gravity is a force so basic and primal that we take it for granted. Through a quirk of fate, some unique device(s), or supreme devotion (or a combination of all three), you have learned to tap into the power of gravity. You might prefer billowy garments that display your mastery of gravity’s pull and conceal your identity and intentions.	Additional Equipment: You have a pen-sized device that tells the weight of whatever you point it at (within short range). The weight is displayed on a small glass plate in letters that only you can decipher. Minor Effect Suggestion: The duration of the effect is doubled. Major Effect Suggestion: An important item on the target’s person is destroyed.	1. Pick one other PC. In the recent past, while using your gravitational powers, you accidentally sent that character hurtling into the air or plummeting toward the ground. Either way, she barely survived. It is up to the player of that character to decide whether she resents, fears, or forgives you. 2. Pick one other PC whose focus intertwines with yours. This odd connection affects her in some way. For example, if the character Carries a Quiver, your ability to manipulate gravity sometimes extends the range of her arrows. If she Entertains, her jumps, dances, and juggling balls seem less bound by the laws of gravity. If she Masters Weaponry, her weapons sometimes feel lighter. 3. Pick one other PC. He is deathly afraid of heights. Through your ability to control gravity, you would like to teach him how to be more comfortable with his feet off the ground. He must decide whether or not to take you up on your offer. 4. Pick one other PC. She is skeptical of your ability to control gravity and thinks it’s just one big illusion. She might even attempt to discredit you or discover the “secret” behind your so-called skills.	controls_gravity	1
22	Entertains	You are an entertainer: a singer, dancer, poet, storyteller, or something similar. You perform for the benefit of others. Naturally charismatic and talented, you have also studied to master your art. You know all the old poems, songs, jokes, and stories, and you’re skilled at creating new ones, too. You probably wear flamboyant or at least fashionable clothes and use cosmetics, tattoos, or hair stylings for dramatic effect.	Additional Equipment: You start with a musical instrument or other tools needed to perform. Minor Effect Suggestion: You enchant the target, who remains enchanted as long as you focus all your attention on keeping her that way. Major Effect Suggestion: The target is forever favorably disposed toward you.	1. Pick one other PC. This character is your worst critic. Your abilities to help or inspire others don’t function for her. 2. Pick one other PC. He seems to really enjoy your attempts to entertain, and this brings out the performer in you. It’s up to that character whether his appreciation is real or if he is just being polite. 3. Pick one other PC. She is so inspired and put at ease by your stories or other forms of entertainment when you use Levity that she gains +2 to her recovery rolls (instead of +1). 4. Pick one other PC. This person knows the secret to one of your favorite forms of entertainment. You worry constantly that he will steal it or reveal it.	entertains	1
25	Explores Dark Places	You explore foreboding ruins, mysterious locales of ancient times, dungeons deep, dark caverns, and similar places, trained in such activities by those who have gone before you. You’re the archetypal treasure hunter, scavenger, and finder of lost things. You spend so much of your time in the dark that you slowly adapt to it, almost becoming a creature of the gloom yourself. Even in civilized areas, you prefer to keep to the shadows. Most likely, you wear dark clothing to help you blend into the blackness. On the other hand, you might wear sensible garments and gear because you have serious and dangerous business to attend to in the dark.	Additional Equipment: You carry an explorer’s pack with rope, two days’ rations, a bedroll, and other tools needed for outdoor survival. Shadow Abilities: If you have other overt abilities (spells, psionic powers, or the like), they make almost no sound, and whatever visual displays they produce are dark and shadowy. These alterations change nothing other than the appearance of the effects. A Flash is a silent burst of shadows, a Barrier is a mass of shadowy wisps, and so on. Minor Effect Suggestion: The target is also dazed for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment. Major Effect Suggestion: The target is also stunned and loses its next turn.	1. Pick one other PC. This character has been your adventuring partner in previous expeditions, and the two of you work so well together that you both gain +1 to any die rolls when you collaborate on the same task, fight the same foe, and so on. 2. Pick two other PCs. You think you once saw them through a keyhole doing something illegal. You can choose whether or not to share that information. The characters can choose whether it was really them (it could have been neither, one, or both), and they may or may not share that information in return. 3. Pick one other PC. This person always seems to hear you, no matter how stealthy you try to be. 4. Pick one other PC. She is so loud in everything she does that you feel obligated to try to help her learn to move more quietly through the world. Whether or not she’s interested is up to her.	explores_dark_places	1
2	Abides In Stone	You are a golem: a being of stone rather than flesh. Your stone body resembles that of a hulking humanoid, and you can move, speak, and feel pain. Your rock body means that it takes a lot to damage you, but once damaged, your wounds are not quite as easy to recover from. As someone made of animate stone, you typically do not wear clothing, although your stone skin is usually carved to appear as if you’re wearing it. Such carved clothing could be elaborate armor, robes, or stylistic ridges and ripples.	Minor Effect Suggestion: You step on the target, and your immense weight prevents it from moving on its next turn.\r\nMajor Effect Suggestion: You break a weapon, shield, or piece of armor the target is using.	1. Pick one other PC. She roused you from a long period of inactivity, and you feel indebted to her for returning you (perhaps accidentally) to mobility.\r\n2. Pick one other PC. You were once convinced that he wanted to reduce you to rubble, but you have since grown to think that what you believed wasn’t true, or at least no longer is so.\r\n3. Pick one other PC. She knows the secret of your origin, but whenever she speaks of it, you forget it. Perhaps you suffer from a curse?\r\n4. Pick one other PC. If you go berserk, you’ll never attack that character.	abides_in_stone	1
29	Focuses Mind Over Matter	Telekinesis. Psychokinesis. Mind over matter. The power has many names, but in the end, it all boils down to one thing— the molecules that make up all matter are yours to command. You likely call yourself a telekinetic or just a TK. Many telekinetics prefer to wear tight clothing without many accoutrements so there is little another TK could grab hold of psychically. On the other hand, you have the power to create very minor telekinetic effects at will, so your hair might always be in motion, you could have a few tiny objects floating around you, or you might wear a long cape that’s always billowing.	Mental Abilities: If you wield other overt abilities, those that would normally use force or other energy instead use telekinetic force. For example, a force blast is a telekinetic blast from your mind. This alteration changes nothing except that you don’t need a free hand to perform abilities that otherwise require it. Minor Effect Suggestion: An object moves faster or more efficiently. Major Effect Suggestion: You can move or affect twice as much as normal.	1. Pick one other PC. This character can cause your telekinetic powers to act oddly. Every once in a while, if he stands directly next to you, your powers are canceled, but at other times, they seem improved when used near him. 2. Pick one other PC. This person thinks that your powers are completely hypothetical. 3. Pick one other PC. You once joked that you could read her mind. Whether she found that exciting or utterly terrifying is up to her. 4. Pick one other PC. You feel strangely protective of that character and plan to do your best to keep him from harm.	focuses_mind_over_matter	1
30	Fuses Flesh And Steel	At some point in your past, some of your organic parts were replaced with artificial components. You are a cyborg. Bionic. Alternatively, you belong to a secret race of biomechanical hybrids. Your artificial components might be subdermal, or they might resemble overt metal or synth plating on your skin. They can also take the form of threadlike tendrils of circuitry winding across your flesh. Whatever their appearance, these components give you special abilities. As you advance, you can add to, modify, or discover new functions for them. Unfortunately, your artificial body also has special requirements when it takes damage. You probably wear a cloak with a hood or something similar to hide your artificial parts from those who would persecute you. Because your components are tricky to repair, as time goes on, it might become more difficult to conceal your true nature, with exposed circuitry, metal plates, and more in a state of partial disassembly.	Additional Equipment: You have a bag of light tools and a variety of parts to repair yourself. Minor Effect Suggestion: Your servos learn from your successful actions. You gain a +1 bonus to similar actions involving the same task (such as making attacks against the same foe or operating the same device). Major Effect Suggestion: You discharge a small pulse of power into your foe. Make an immediate attack against that foe (using the same stat as the action that caused the major effect). If the attack succeeds, it deals 4 points of electrical damage.	1. Pick one other PC. This character knows your true nature, even if no one else does. If your components are not particularly hidden, she knows a different secret of yours, such as a preprogrammed word that will shut you down for ten minutes. 2. Pick one other PC. Being close to this person sometimes makes your mechanical parts vibrate slightly. You can decide whether this sensation is unnerving or pleasant. 3. Pick one other PC. You’re pretty sure that he is just here to mine you for parts. He chooses whether or not this is true. 4. Pick one other PC who also has mechanical parts. The two of you have bonded over conversations about this element you share, and you feel a special connection.	fuses_flesh_and_steel	1
43	Lives In The Wilderness	You dwell in the wilds. You probably have done so most, if not all, of your life, coming to understand the mysteries of nature, weather, and survival. The ways of flora and fauna are your ways. Your rough, rugged clothing shows little concern for style. Most of the time, covering yourself in natural smells to keep your scent from arousing suspicion in the wilderness is more important than bathing to keep yourself presentable to other humans.	Additional Equipment: You have an extremely reliable compass. Minor Effect Suggestion: A foe that is a natural creature flees rather than continue to fight you. Major Effect Suggestion: A foe that is a natural creature becomes warily passive.	1. Pick one other PC who isn’t from the wilderness. You can’t help but feel a little contempt for that character and her “civilized” ways, which show disdain for all things natural and (to your mind) true. 2. Pick one other PC. He is one of the few people that you are completely comfortable being around, and you are often surprised at how easily you let down your guard near him. 3. Pick one other PC. She once saved you from an uncomfortable social situation, and you still feel grateful. 4. Pick one other PC. This person seems to understand civilization in the same way that you understand the wilderness. You could choose to help each other or despise each other for this different way of seeing the world.	lives_in_the_wilderness	1
57	Rages	The berserker is a feared fighter who cannot be stopped. You put yourself into a howling battle frenzy that can make you a terror on the battlefield. You might hail from a less civilized society, perhaps even a tribal one. You likely wear little or no armor so as not to restrict your speed or maneuverability. Your clothing is probably simple and utilitarian.	Minor Effect Suggestion: When fighting multiple foes, you knock one into another, putting both off balance. As a result, treat both foes as one level lower for one round. Major Effect Suggestion: Your foe is terrified of your rage and uses his next two actions to flee.	1. Choose one other PC. You feel strangely protective of that character and don’t want to see her come to harm. 2. Pick one other PC. That character knows a secret about your past that is tied to your Frenzy ability. 3. Pick one other PC. The first time you went into a frenzy was in an attempt to save her loved one from an attack. You failed, partly because of your inexperience. 4. Choose one other PC. He is terrified by your rage and sometimes can’t help but flee at inopportune times.	rages	1
36	Hunts Outcasts	Mutants. Witches. Aliens. They’ve got weird powers, and they’re a threat to everything you hold dear. They represent everything that is wrong with your world. They are a scourge upon humanity—a disease that must be put down. You don’t necessarily take pleasure in their eradication, but it must be done for the good of the human race. If this cancer is not destroyed now, it will only spread. You must choose a type of forbidden outcast or a hated supernatural person or being appropriate to the setting at hand. In this context, an outcast is something or someone that has powers or abilities beyond those of normal humans; examples include wizards or fey in a magical setting, mutants in a science fiction setting, weird psionic aliens, ghosts, vampires, and so on. You hunt them. You very likely have had experiences with the outcasts in your past. You know that they’re all not hideous monstrosities—that’s the problem. Outcasts who are not obvious typically pose the greatest threat because they can hide in plain sight. As an outcast hunter, you know that it takes special tools to fight creatures with crazy powers and abilities. You have learned to adapt devices to aid in finding outcasts and defending yourself against them. This might mean imbibing or injecting potions, nanites, or other strange treatments to even the odds.	Additional Equipment: You have a small collection of items, such as charms, chemicals, or nanites, that you believe help you hunt and destroy outcasts. Minor Effect Suggestion: Your foe is so intimidated by your prowess that it backs away, unwilling to attack. It can still defend itself. Major Effect Suggestion: Your foe is disrupted and off balance and can’t use any special powers that require an action for two rounds.	1. Pick one other PC. You believe that this character might hate and fear outcasts as much as you do (although it’s up to him as to whether this is true). 2. Pick one other PC. In the past, when you were with this character, she was harmed by an outcast, which helped inspire you to hunt them in the first place. 3. Pick one other PC. This character seems to believe that outcasts should be left in peace. 4. Pick one other PC. You worry that this character might be a latent outcast.	hunts_outcasts	1
75	Would Rather Be Reading	Your whole life, people have been asking you why you read so much. Would you rather read about life than live it, they ask? Yes, you answer, probably inwardly. Books are your friends. You love fiction that gives you escape and nonfiction that enriches your mind. You’re always learning new things. What’s more important than knowledge? Nothing. You probably carry a bag of books (or a tablet with ebooks on it, or both) with you at all times.	Minor Effect Suggestion: You draw on your experiences and reduce the difficulty of your next action by one step. Major Effect Suggestion: You can make a free, no-action recovery roll.	1. Pick one other PC. She seems to understand you and knows that you need your space and time alone to read now and again. 2. Pick one other PC. This character is ignorant and uneducated, in your opinion. 3. Pick one other PC. He reminds you a lot of the main character of one of your favorite books. You can’t help but like him. 4. Pick one other PC. This character owes you a fair bit of money.	would_rather_be_reading	1
80	Artificially Intelligent	You are a machine—not just a sentient machine, but a sapient one. Your awareness might make you an exception, or there may be many like you, depending on the setting. Artificially intelligent characters have machine minds of one type or another. This can involve an advanced computer brain, but it could also be a liquid computer, a quantum computer, or a network of smart dust particles creating an ambient intelligence. You might even have been an organic creature whose mind was uploaded into a machine. Your body, of course, is also a machine. Most people refer to you as a robot or an android, although you know neither term describes you very well, as you are as free-willed and free-thinking as they are.	Superintelligent: +4 to your Intellect Pool.\r\nArtificial Body: +3 to your Might Pool and your Speed Pool.\r\nShell: +1 to Armor.\r\nLimited Recovery: Resting restores points only to your Intellect Pool, not to your Might Pool or your Speed Pool.\r\nMechanics, Not Medicines: Conventional healing methods, including the vast majority of restorative devices and medicines, do not restore points to any of your Pools. You can recover points to your Intellect Pool only by resting, and you can recover points to your Speed and Might Pools only through repair. The difficulty of the repair task is equal to the number of points of damage sustained, to a maximum of 10. Repairing your Might and Speed Pools are always two different tasks.\r\nMachine Vulnerabilities and Invulnerabilities: Damaging effects and other threats that rely on an organic system—poison, disease, cell disruption, and so on—have no effect on you. Neither do beneficial drugs or other effects. Conversely, things that normally affect only inorganic or inanimate objects can affect you, as can effects that disrupt machines.\r\nUncanny Valley: You have a hard time relating to organic beings, and they don’t react well to you. The difficulty of all positive interaction tasks with such beings is increased by two steps.		artificially_intelligent	1
\.


--
-- Data for Name: cyphercore_focusability; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_focusability (id, tier, ability_id, focus_id) FROM stdin;
1	1	12	2
2	1	13	2
3	2	14	2
4	3	15	2
5	3	16	2
6	4	17	2
7	5	18	2
8	5	19	2
9	6	20	2
\.


--
-- Data for Name: cyphercore_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_genre (id, name, sourcebook_id) FROM stdin;
1	Fantasy	1
2	Modern	1
3	Science Fiction	1
4	Horror	1
5	Superheroes	1
6	Post-Apocalyptic	2
7	Mythological	2
8	Fairy Tale	2
9	Childhood Adventure	2
10	Historical	2
11	Crime and Espionage	2
12	Hard Science Fiction	2
\.


--
-- Data for Name: cyphercore_skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_skill (id, name) FROM stdin;
3	Healing
4	Astronomy
5	Balancing
6	Biology
7	Botany
8	Carrying
9	Climbing
10	Computers
11	Deceiving
12	Disguise
13	Escaping
14	Geography
15	Geology
16	History
17	Identifying
18	Initiative
19	Intimidation
20	Jumping
21	Leatherworking
22	Lockpicking
23	Machinery
24	Metalworking
25	Perception
26	Persuasion
27	Philosophy
28	Physics
29	Pickpocketing
30	Piloting
31	Repairing
32	Riding
33	Smashing
34	Sneaking
35	Stealth
36	Swimming
37	Vehicle driving
38	Woodworking
\.


--
-- Data for Name: cyphercore_sourcebook; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_sourcebook (id, name, enabled) FROM stdin;
1	Cypher System Core	t
2	Cypher System - Expanded Worlds	t
\.


--
-- Data for Name: cyphercore_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_type (id, name, description, abilities, cypher_limit, effort, intellect_edge, intellect_pool, might_edge, might_pool, speed_edge, speed_pool, pool_points, slug, sourcebook_id) FROM stdin;
2	Adept	You master powers or abilities outside the experience, understanding, and sometimes belief of others. They might be magic, psychic powers, mutant abilities, or just a wide variety of intricate devices, depending on the setting.\r\nIndividual Role: Adepts are usually thoughtful, intelligent types. They often think carefully before acting and rely heavily on their supernatural abilities.\r\nGroup Role: Adepts are not powerful in straightforward combat, although they often wield abilities that provide excellent combat support, both offensively and defensively. They sometimes possess abilities that facilitate overcoming challenges. For example, if the group must get through a locked door, an adept might be able to destroy it or teleport everyone to the other side.\r\nSocietal Role: In settings where the supernatural is rare, strange, or feared, adepts are likely rare and feared as well. They remain hidden, shadowy figures. When this is not the case, adepts are more likely to be common and forthright. They might even take leadership roles. Advanced Adepts: Even at low tiers, adept powers are impressive. Higher-tier adepts can accomplish amazing deeds that can reshape matter and the environment around them.	Effort: Your Effort is 1.\r\nGenius: You have an Intellect Edge of 1, a Might Edge of 0, and a Speed Edge of 0.\r\nExpert Cypher Use: You can bear three cyphers at a time.\r\nStarting Equipment: Appropriate clothing, plus two expensive items, two moderately priced items, and up to four inexpensive items of your choice.	3	1	1	12	0	7	0	9	6	adept	1
4	Speaker	You’re good with words and good with people. You talk your way past challenges and out of jams, and you get people to do what you want. Individual Role: Speakers are smart and charismatic. They like people and, more important, they understand them. This helps speakers get others to do what needs to be done.\r\nGroup Role: The speaker is often the face of the group, serving as the person who speaks for all and negotiates with others. Combat and action are not a speaker’s strong suits, so other characters sometimes have to defend the speaker in times of danger.\r\nSocietal Role: Speakers are frequently political or religious leaders. Just as often, however, they are con artists or criminals.\r\nAdvanced Speakers: Higher-tier speakers use their abilities to control and manipulate people as well as aid and nurture their friends. They can talk their way out of danger and even use their words as weapons.	Practiced With Light Weapons: You can use light weapons without penalty. If you wield a medium weapon, increase the difficulty of the attack by one step. If you wield a heavy weapon, increase it by two steps. You also start with one light weapon of your choice. Enabler.\r\nStarting Equipment: Appropriate clothing and a light weapon of your choice, plus two expensive items, two moderately priced items, and up to four inexpensive items.	2	1	1	11	0	8	0	9	6	speaker	1
1	Warrior	You’re a good ally to have in a fight. You know how to use weapons and defend yourself. Depending on the genre and setting in question, this might mean wielding a sword and shield in the gladiatorial arena, an AK-47 and a bandolier of grenades in a savage firefight, or a blaster rifle and powered armor when exploring an alien planet. Individual Role: Warriors are physical, action-oriented people. They’re more likely to overcome a challenge using force than by other means, and they often take the most straightforward path toward their goals.\r\nGroup Role: Warriors usually take and deal the most punishment in a dangerous situation. Often it falls on them to protect the other group members from threats. This sometimes means that warriors take on leadership roles as well, at least in combat and other times of danger.\r\nSocietal Role: Warriors aren’t always soldiers or mercenaries. Anyone who is ready for violence, or even potential violence, might be a warrior in the general sense. This includes guards, watchmen, police officers, sailors, or people in other roles or professions who know how to defend themselves with skill. \r\nAdvanced Warriors: As warriors advance, their skill in battle — whether defending themselves or dishing out damage — increases to impressive levels. At higher tiers, they can often take on groups of foes by themselves or stand toe to toe with anyone.	Effort: Your Effort is 1.\r\nPhysical Nature: You have a Might Edge of 1 and a Speed Edge of 0, or you have a Might Edge of 0 and a Speed Edge of 1. Either way, you have an Intellect Edge of 0.\r\nCypher Use: You can bear two cyphers at a time.\r\nPracticed With All Weapons: You can use any weapon. Enabler. Starting Equipment: Appropriate clothing and two weapons of your choice, plus one expensive item, two moderately priced items, and up to four inexpensive items.	2	1	0	8	1	10	0	10	6	warrior	1
3	Explorer	You are a person of action and physical ability, fearlessly facing the unknown. You travel to strange, exotic, and dangerous places, and discover new things. This means you’re physical but also probably knowledgeable.\r\nIndividual Role: Although explorers can be academics or well studied, they are first and foremost interested in action. They face grave dangers and terrible obstacles as a routine part of life. Group Role: Explorers sometimes work alone, but far more often they operate in teams with other characters. The explorer frequently leads the way, blazing the trail. However, she’s also likely to stop and investigate anything intriguing she stumbles upon.\r\nSocietal Role: Not all explorers are out traipsing through the wilderness or poking about an old ruin. Sometimes, an explorer is a teacher, a scientist, a detective, or an investigative reporter. In any event, an explorer bravely faces new challenges and gathers knowledge to share with others.\r\nAdvanced Explorers: Higher-tier explorers gain more skills, some combat abilities, and a number of abilities that allow them to deal with danger. In short, they become more and more well-rounded, able to deal with any challenge.	Effort: Your Effort is 1.\r\nPhysical Nature: You have a Might Edge of 1, a Speed Edge of 0, and an Intellect Edge of 0.\r\nCypher Use: You can bear two cyphers at a time.\r\nPracticed With Light and Medium Weapons: You can use light and medium weapons without penalty. If you wield a heavy weapon, increase the difficulty of the attack by one step. Enabler.\r\nStarting Equipment: Appropriate clothing and a weapon of your choice, plus two expensive items, two moderately priced items, and up to four inexpensive items.	2	1	0	9	1	10	0	9	6	explorer	1
\.


--
-- Data for Name: cyphercore_typeability; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_typeability (id, tier, ability_id, type_id) FROM stdin;
1	1	1	1
2	1	2	1
3	1	3	1
4	1	4	1
5	1	5	1
6	1	6	1
7	1	7	1
8	1	8	1
9	1	9	1
10	1	10	1
11	1	11	1
12	1	21	1
13	2	22	1
14	2	23	1
15	2	24	1
16	2	25	1
17	2	26	1
18	2	27	1
19	2	28	1
20	3	29	1
21	3	30	1
22	3	31	1
23	3	32	1
24	3	33	1
25	3	34	1
26	3	35	1
27	3	36	1
28	3	37	1
29	3	38	1
30	4	39	1
31	4	40	1
32	4	41	1
33	4	42	1
34	4	43	1
35	4	44	1
36	4	45	1
37	4	46	1
38	5	47	1
39	5	48	1
40	5	49	1
41	5	50	1
42	5	51	1
43	5	52	1
44	5	53	1
45	5	54	1
46	6	55	1
47	6	56	1
48	6	57	1
49	6	58	1
50	6	59	1
51	6	60	1
52	1	61	2
53	1	62	2
54	1	63	2
55	1	64	2
56	1	65	2
57	1	66	2
58	1	67	2
59	1	68	2
60	1	69	2
61	1	70	2
62	1	71	2
63	1	72	2
64	1	73	2
65	2	74	2
66	2	75	2
67	2	76	2
68	2	77	2
69	2	78	2
70	2	79	2
71	2	80	2
72	2	81	2
73	3	47	2
74	3	82	2
75	3	83	2
76	3	84	2
77	3	85	2
78	3	86	2
79	3	87	2
80	4	88	2
81	4	89	2
82	4	90	2
83	4	91	2
84	4	92	2
85	4	93	2
86	4	94	2
87	4	95	2
88	4	96	2
89	4	97	2
90	5	98	2
91	5	99	2
92	5	100	2
93	5	101	2
94	5	102	2
95	5	103	2
96	5	104	2
97	5	105	2
98	5	106	2
99	5	107	2
100	6	108	2
101	6	109	2
102	6	110	2
103	6	111	2
104	6	112	2
105	1	113	3
106	1	114	3
107	1	115	3
108	1	116	3
109	1	3	3
110	1	117	3
111	1	118	3
112	1	119	3
113	1	4	3
114	1	6	3
115	1	8	3
116	1	120	3
117	1	121	3
118	1	21	3
119	2	122	3
120	2	123	3
121	2	124	3
122	2	125	3
123	2	126	3
124	2	127	3
125	2	128	3
126	2	27	3
127	2	129	3
128	2	130	3
129	2	131	3
130	3	132	3
131	3	30	3
132	3	31	3
133	3	133	3
134	3	134	3
135	3	135	3
136	3	136	3
137	3	26	3
138	3	137	3
139	3	138	3
140	3	139	3
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-07-10 22:08:53.354384-05	132	Controlled Fall	1	[{"added": {}}]	4	1
2	2018-07-10 22:17:52.087014-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Controlled Fall"}}]	2	1
3	2018-07-10 22:18:59.900934-05	133	Ignore the Pain	1	[{"added": {}}]	4	1
4	2018-07-10 22:19:22.772218-05	134	Resilience	1	[{"added": {}}]	4	1
5	2018-07-10 22:19:47.559789-05	135	Run and Fight	1	[{"added": {}}]	4	1
6	2018-07-10 22:20:19.157865-05	136	Seize Opportunity	1	[{"added": {}}]	4	1
7	2018-07-10 22:20:24.798481-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Experienced With Armor"}}, {"added": {"name": "type ability", "object": "Expert Cypher Use"}}, {"added": {"name": "type ability", "object": "Ignore the Pain"}}, {"added": {"name": "type ability", "object": "Resilience"}}, {"added": {"name": "type ability", "object": "Run and Fight"}}, {"added": {"name": "type ability", "object": "Seize Opportunity"}}]	2	1
8	2018-07-10 22:21:12.062751-05	137	Stone Breaker	1	[{"added": {}}]	4	1
9	2018-07-10 22:21:35.979408-05	138	Think Your Way Out	1	[{"added": {}}]	4	1
10	2018-07-10 22:22:09.049476-05	139	Wrest From Chance	1	[{"added": {}}]	4	1
11	2018-07-10 22:22:14.818652-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Skill With Attacks"}}, {"added": {"name": "type ability", "object": "Stone Breaker"}}, {"added": {"name": "type ability", "object": "Think Your Way Out"}}, {"added": {"name": "type ability", "object": "Wrest From Chance"}}]	2	1
12	2018-07-10 22:23:43.748589-05	3	Explorer	2	[{"changed": {"fields": ["description", "abilities"]}}]	2	1
13	2018-07-10 22:24:23.730344-05	2	Adept	2	[{"changed": {"fields": ["description", "abilities"]}}]	2	1
14	2018-07-10 22:24:47.720066-05	4	Speaker	2	[{"changed": {"fields": ["description", "abilities"]}}]	2	1
15	2018-07-10 22:26:09.620223-05	1	Warrior	2	[{"changed": {"fields": ["description", "abilities"]}}]	2	1
16	2018-07-10 22:26:51.98096-05	2	Abides In Stone	2	[{"changed": {"fields": ["connections", "other_details"]}}]	3	1
17	2018-07-10 22:29:46.324474-05	80	Artificially Intelligent	2	[{"changed": {"fields": ["description", "other_details"]}}]	3	1
18	2018-07-10 22:30:06.711886-05	3	Awakens Dreams	2	[{"changed": {"fields": ["connections", "other_details"]}}]	3	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	cyphercore	descriptor
2	cyphercore	type
3	cyphercore	focus
4	cyphercore	ability
5	cyphercore	focusability
6	cyphercore	typeability
7	cyphercore	equipment
8	cyphercore	cypher
9	cyphercore	sourcebook
10	cyphercore	skill
11	cyphercore	genre
12	admin	logentry
13	auth	permission
14	auth	group
15	auth	user
16	contenttypes	contenttype
17	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-07-10 21:35:50.394602-05
2	auth	0001_initial	2018-07-10 21:35:50.743268-05
3	admin	0001_initial	2018-07-10 21:35:50.85298-05
4	admin	0002_logentry_remove_auto_add	2018-07-10 21:35:50.896706-05
5	contenttypes	0002_remove_content_type_name	2018-07-10 21:35:51.013019-05
6	auth	0002_alter_permission_name_max_length	2018-07-10 21:35:51.045416-05
7	auth	0003_alter_user_email_max_length	2018-07-10 21:35:51.09393-05
8	auth	0004_alter_user_username_opts	2018-07-10 21:35:51.135122-05
9	auth	0005_alter_user_last_login_null	2018-07-10 21:35:51.187369-05
10	auth	0006_require_contenttypes_0002	2018-07-10 21:35:51.198266-05
11	auth	0007_alter_validators_add_error_messages	2018-07-10 21:35:51.239924-05
12	auth	0008_alter_user_username_max_length	2018-07-10 21:35:51.304073-05
13	auth	0009_alter_user_last_name_max_length	2018-07-10 21:35:51.354389-05
14	cyphercore	0001_initial	2018-07-10 21:35:51.399369-05
15	cyphercore	0002_auto_20180704_0441	2018-07-10 21:35:51.421092-05
16	cyphercore	0003_auto_20180704_0456	2018-07-10 21:35:51.489206-05
17	cyphercore	0004_descriptor_starting_link	2018-07-10 21:35:51.5372-05
18	cyphercore	0005_type	2018-07-10 21:35:51.584984-05
19	cyphercore	0006_auto_20180704_0730	2018-07-10 21:35:51.651566-05
20	cyphercore	0007_auto_20180704_0735	2018-07-10 21:35:51.942228-05
21	cyphercore	0008_focus	2018-07-10 21:35:51.981861-05
22	cyphercore	0009_focus_connections	2018-07-10 21:35:52.028042-05
23	cyphercore	0010_auto_20180704_2155	2018-07-10 21:35:52.09766-05
24	cyphercore	0011_auto_20180704_2205	2018-07-10 21:35:52.132632-05
25	cyphercore	0012_auto_20180705_0013	2018-07-10 21:35:52.224141-05
26	cyphercore	0013_auto_20180705_0043	2018-07-10 21:35:52.24687-05
27	cyphercore	0014_ability	2018-07-10 21:35:52.30088-05
28	cyphercore	0015_auto_20180705_0256	2018-07-10 21:35:52.317922-05
29	cyphercore	0016_focusability	2018-07-10 21:35:52.382365-05
30	cyphercore	0017_auto_20180705_0339	2018-07-10 21:35:52.484019-05
31	cyphercore	0018_auto_20180706_2317	2018-07-10 21:35:52.623023-05
32	cyphercore	0019_focus_slug	2018-07-10 21:35:52.696876-05
33	cyphercore	0020_auto_20180707_0012	2018-07-10 21:35:52.784579-05
34	cyphercore	0021_auto_20180707_0019	2018-07-10 21:35:52.878886-05
35	cyphercore	0022_auto_20180707_0023	2018-07-10 21:35:52.906066-05
36	cyphercore	0023_equipment	2018-07-10 21:35:52.949039-05
37	cyphercore	0024_equipment_genre	2018-07-10 21:35:52.992781-05
38	cyphercore	0025_auto_20180707_0446	2018-07-10 21:35:53.055458-05
39	cyphercore	0026_auto_20180707_0623	2018-07-10 21:35:53.098505-05
40	cyphercore	0027_auto_20180707_0624	2018-07-10 21:35:53.168778-05
41	cyphercore	0028_auto_20180708_2010	2018-07-10 21:35:53.197189-05
42	cyphercore	0029_equipment_slug	2018-07-10 21:35:53.273298-05
43	cyphercore	0030_auto_20180709_0519	2018-07-10 21:35:53.319852-05
44	cyphercore	0031_cypher_slug	2018-07-10 21:35:53.374635-05
45	cyphercore	0032_remove_cypher_subtle	2018-07-10 21:35:53.398046-05
46	cyphercore	0033_auto_20180710_0034	2018-07-10 21:35:53.484915-05
47	cyphercore	0034_auto_20180710_0208	2018-07-10 21:35:53.592513-05
48	cyphercore	0035_descriptor_sourcebook	2018-07-10 21:35:53.696029-05
49	cyphercore	0036_auto_20180710_0222	2018-07-10 21:35:53.816812-05
50	cyphercore	0037_auto_20180710_0224	2018-07-10 21:35:53.873608-05
51	cyphercore	0038_auto_20180710_0226	2018-07-10 21:35:54.368086-05
52	cyphercore	0039_auto_20180710_0238	2018-07-10 21:35:54.416483-05
53	cyphercore	0040_skill	2018-07-10 21:35:54.455469-05
54	cyphercore	0041_auto_20180710_0325	2018-07-10 21:35:54.481339-05
55	cyphercore	0042_auto_20180710_0327	2018-07-10 21:35:54.499004-05
56	cyphercore	0043_auto_20180710_0336	2018-07-10 21:35:54.6725-05
57	cyphercore	0044_auto_20180710_0341	2018-07-10 21:35:54.932304-05
58	cyphercore	0045_genre_sourcebook	2018-07-10 21:35:55.027578-05
59	cyphercore	0046_remove_skill_skill_type	2018-07-10 21:35:55.054546-05
60	cyphercore	0047_auto_20180710_0400	2018-07-10 21:35:55.09238-05
61	sessions	0001_initial	2018-07-10 21:35:55.145956-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
em3gdzguzy83n848x0sawljai2mk8aj4	OTk2YTg2YTRjN2VlMmNmNTNjMjhiYWQ5YmY0MGJlZDQ2YTJhNzRiMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YzNjODhiMjIwNDkxMTk3OTk3MWQ3NDMzZThmNzczOTNlMDcwYzYyIn0=	2018-07-24 21:57:40.628275-05
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 51, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: cyphercore_ability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_ability_id_seq', 139, true);


--
-- Name: cyphercore_cypher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_cypher_id_seq', 1, true);


--
-- Name: cyphercore_descriptor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_descriptor_id_seq', 50, true);


--
-- Name: cyphercore_equipment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_equipment_id_seq', 42, true);


--
-- Name: cyphercore_focus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_focus_id_seq', 81, true);


--
-- Name: cyphercore_focusability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_focusability_id_seq', 9, true);


--
-- Name: cyphercore_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_genre_id_seq', 12, true);


--
-- Name: cyphercore_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_skill_id_seq', 38, true);


--
-- Name: cyphercore_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_source_id_seq', 2, true);


--
-- Name: cyphercore_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_type_id_seq', 4, true);


--
-- Name: cyphercore_typeability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_typeability_id_seq', 140, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 18, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 61, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cyphercore_ability cyphercore_ability_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_ability
    ADD CONSTRAINT cyphercore_ability_name_key UNIQUE (name);


--
-- Name: cyphercore_ability cyphercore_ability_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_ability
    ADD CONSTRAINT cyphercore_ability_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_cypher cyphercore_cypher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_cypher
    ADD CONSTRAINT cyphercore_cypher_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_descriptor cyphercore_descriptor_name_e9fe6d6e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_descriptor
    ADD CONSTRAINT cyphercore_descriptor_name_e9fe6d6e_uniq UNIQUE (name);


--
-- Name: cyphercore_descriptor cyphercore_descriptor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_descriptor
    ADD CONSTRAINT cyphercore_descriptor_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_equipment cyphercore_equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_equipment
    ADD CONSTRAINT cyphercore_equipment_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_focus cyphercore_focus_name_6b204cd7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_focus
    ADD CONSTRAINT cyphercore_focus_name_6b204cd7_uniq UNIQUE (name);


--
-- Name: cyphercore_focus cyphercore_focus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_focus
    ADD CONSTRAINT cyphercore_focus_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_focusability cyphercore_focusability_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_focusability
    ADD CONSTRAINT cyphercore_focusability_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_genre cyphercore_genre_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_genre
    ADD CONSTRAINT cyphercore_genre_name_key UNIQUE (name);


--
-- Name: cyphercore_genre cyphercore_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_genre
    ADD CONSTRAINT cyphercore_genre_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_skill cyphercore_skill_name_a62c2dfe_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_skill
    ADD CONSTRAINT cyphercore_skill_name_a62c2dfe_uniq UNIQUE (name);


--
-- Name: cyphercore_skill cyphercore_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_skill
    ADD CONSTRAINT cyphercore_skill_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_sourcebook cyphercore_source_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_sourcebook
    ADD CONSTRAINT cyphercore_source_name_key UNIQUE (name);


--
-- Name: cyphercore_sourcebook cyphercore_source_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_sourcebook
    ADD CONSTRAINT cyphercore_source_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_type cyphercore_type_name_0d313a9e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_type
    ADD CONSTRAINT cyphercore_type_name_0d313a9e_uniq UNIQUE (name);


--
-- Name: cyphercore_type cyphercore_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_type
    ADD CONSTRAINT cyphercore_type_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_typeability cyphercore_typeability_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_typeability
    ADD CONSTRAINT cyphercore_typeability_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: cyphercore_ability_name_ad313a31_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_ability_name_ad313a31_like ON public.cyphercore_ability USING btree (name varchar_pattern_ops);


--
-- Name: cyphercore_ability_slug_5fd98add; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_ability_slug_5fd98add ON public.cyphercore_ability USING btree (slug);


--
-- Name: cyphercore_ability_slug_5fd98add_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_ability_slug_5fd98add_like ON public.cyphercore_ability USING btree (slug varchar_pattern_ops);


--
-- Name: cyphercore_ability_sourcebook_id_cfa3b9d9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_ability_sourcebook_id_cfa3b9d9 ON public.cyphercore_ability USING btree (sourcebook_id);


--
-- Name: cyphercore_cypher_slug_0e3d54ec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_cypher_slug_0e3d54ec ON public.cyphercore_cypher USING btree (slug);


--
-- Name: cyphercore_cypher_slug_0e3d54ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_cypher_slug_0e3d54ec_like ON public.cyphercore_cypher USING btree (slug varchar_pattern_ops);


--
-- Name: cyphercore_cypher_sourcebook_id_5b097526; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_cypher_sourcebook_id_5b097526 ON public.cyphercore_cypher USING btree (sourcebook_id);


--
-- Name: cyphercore_descriptor_name_e9fe6d6e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_descriptor_name_e9fe6d6e_like ON public.cyphercore_descriptor USING btree (name varchar_pattern_ops);


--
-- Name: cyphercore_descriptor_slug_a6544323; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_descriptor_slug_a6544323 ON public.cyphercore_descriptor USING btree (slug);


--
-- Name: cyphercore_descriptor_slug_a6544323_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_descriptor_slug_a6544323_like ON public.cyphercore_descriptor USING btree (slug varchar_pattern_ops);


--
-- Name: cyphercore_descriptor_sourcebook_id_9f8023cd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_descriptor_sourcebook_id_9f8023cd ON public.cyphercore_descriptor USING btree (sourcebook_id);


--
-- Name: cyphercore_equipment_genre_id_8a2e02f4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_equipment_genre_id_8a2e02f4 ON public.cyphercore_equipment USING btree (genre_id);


--
-- Name: cyphercore_equipment_slug_4eddb5fb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_equipment_slug_4eddb5fb ON public.cyphercore_equipment USING btree (slug);


--
-- Name: cyphercore_equipment_slug_4eddb5fb_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_equipment_slug_4eddb5fb_like ON public.cyphercore_equipment USING btree (slug varchar_pattern_ops);


--
-- Name: cyphercore_equipment_sourcebook_id_35248e09; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_equipment_sourcebook_id_35248e09 ON public.cyphercore_equipment USING btree (sourcebook_id);


--
-- Name: cyphercore_focus_name_6b204cd7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_focus_name_6b204cd7_like ON public.cyphercore_focus USING btree (name varchar_pattern_ops);


--
-- Name: cyphercore_focus_slug_e97950c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_focus_slug_e97950c1 ON public.cyphercore_focus USING btree (slug);


--
-- Name: cyphercore_focus_slug_e97950c1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_focus_slug_e97950c1_like ON public.cyphercore_focus USING btree (slug varchar_pattern_ops);


--
-- Name: cyphercore_focus_sourcebook_id_73f475ce; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_focus_sourcebook_id_73f475ce ON public.cyphercore_focus USING btree (sourcebook_id);


--
-- Name: cyphercore_focusability_ability_id_85c3749a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_focusability_ability_id_85c3749a ON public.cyphercore_focusability USING btree (ability_id);


--
-- Name: cyphercore_focusability_focus_id_4e08d994; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_focusability_focus_id_4e08d994 ON public.cyphercore_focusability USING btree (focus_id);


--
-- Name: cyphercore_genre_name_b42f25bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_genre_name_b42f25bd_like ON public.cyphercore_genre USING btree (name varchar_pattern_ops);


--
-- Name: cyphercore_genre_sourcebook_id_89eb9339; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_genre_sourcebook_id_89eb9339 ON public.cyphercore_genre USING btree (sourcebook_id);


--
-- Name: cyphercore_skill_name_a62c2dfe_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_skill_name_a62c2dfe_like ON public.cyphercore_skill USING btree (name varchar_pattern_ops);


--
-- Name: cyphercore_source_name_9dd772e6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_source_name_9dd772e6_like ON public.cyphercore_sourcebook USING btree (name varchar_pattern_ops);


--
-- Name: cyphercore_type_name_0d313a9e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_type_name_0d313a9e_like ON public.cyphercore_type USING btree (name varchar_pattern_ops);


--
-- Name: cyphercore_type_slug_464a0a26; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_type_slug_464a0a26 ON public.cyphercore_type USING btree (slug);


--
-- Name: cyphercore_type_slug_464a0a26_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_type_slug_464a0a26_like ON public.cyphercore_type USING btree (slug varchar_pattern_ops);


--
-- Name: cyphercore_type_sourcebook_id_b0693c82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_type_sourcebook_id_b0693c82 ON public.cyphercore_type USING btree (sourcebook_id);


--
-- Name: cyphercore_typeability_ability_id_68b8a346; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_typeability_ability_id_68b8a346 ON public.cyphercore_typeability USING btree (ability_id);


--
-- Name: cyphercore_typeability_type_id_a47d67fe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_typeability_type_id_a47d67fe ON public.cyphercore_typeability USING btree (type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_ability cyphercore_ability_sourcebook_id_cfa3b9d9_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_ability
    ADD CONSTRAINT cyphercore_ability_sourcebook_id_cfa3b9d9_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_cypher cyphercore_cypher_sourcebook_id_5b097526_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_cypher
    ADD CONSTRAINT cyphercore_cypher_sourcebook_id_5b097526_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_descriptor cyphercore_descripto_sourcebook_id_9f8023cd_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_descriptor
    ADD CONSTRAINT cyphercore_descripto_sourcebook_id_9f8023cd_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_equipment cyphercore_equipment_genre_id_8a2e02f4_fk_cyphercore_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_equipment
    ADD CONSTRAINT cyphercore_equipment_genre_id_8a2e02f4_fk_cyphercore_genre_id FOREIGN KEY (genre_id) REFERENCES public.cyphercore_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_equipment cyphercore_equipment_sourcebook_id_35248e09_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_equipment
    ADD CONSTRAINT cyphercore_equipment_sourcebook_id_35248e09_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_focus cyphercore_focus_sourcebook_id_73f475ce_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_focus
    ADD CONSTRAINT cyphercore_focus_sourcebook_id_73f475ce_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_focusability cyphercore_focusabil_ability_id_85c3749a_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_focusability
    ADD CONSTRAINT cyphercore_focusabil_ability_id_85c3749a_fk_cyphercor FOREIGN KEY (ability_id) REFERENCES public.cyphercore_ability(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_focusability cyphercore_focusabil_focus_id_4e08d994_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_focusability
    ADD CONSTRAINT cyphercore_focusabil_focus_id_4e08d994_fk_cyphercor FOREIGN KEY (focus_id) REFERENCES public.cyphercore_focus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_genre cyphercore_genre_sourcebook_id_89eb9339_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_genre
    ADD CONSTRAINT cyphercore_genre_sourcebook_id_89eb9339_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_type cyphercore_type_sourcebook_id_b0693c82_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_type
    ADD CONSTRAINT cyphercore_type_sourcebook_id_b0693c82_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_typeability cyphercore_typeabili_ability_id_68b8a346_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_typeability
    ADD CONSTRAINT cyphercore_typeabili_ability_id_68b8a346_fk_cyphercor FOREIGN KEY (ability_id) REFERENCES public.cyphercore_ability(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_typeability cyphercore_typeability_type_id_a47d67fe_fk_cyphercore_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_typeability
    ADD CONSTRAINT cyphercore_typeability_type_id_a47d67fe_fk_cyphercore_type_id FOREIGN KEY (type_id) REFERENCES public.cyphercore_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

