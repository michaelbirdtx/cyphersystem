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
    usage character varying(10) NOT NULL,
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
-- Name: cyphercore_artifact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_artifact (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    level_range character varying(10) NOT NULL,
    effect text NOT NULL,
    depletion character varying(20) NOT NULL,
    slug character varying(50) NOT NULL,
    genre_id integer NOT NULL,
    sourcebook_id integer NOT NULL,
    form text NOT NULL
);


ALTER TABLE public.cyphercore_artifact OWNER TO postgres;

--
-- Name: cyphercore_artifact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_artifact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_artifact_id_seq OWNER TO postgres;

--
-- Name: cyphercore_artifact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_artifact_id_seq OWNED BY public.cyphercore_artifact.id;


--
-- Name: cyphercore_character; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_character (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    background text NOT NULL,
    notes text NOT NULL,
    tier integer NOT NULL,
    effort integer NOT NULL,
    cypher_limit integer NOT NULL,
    money integer NOT NULL,
    xp integer NOT NULL,
    might_current integer NOT NULL,
    might_pool integer NOT NULL,
    might_edge integer NOT NULL,
    speed_current integer NOT NULL,
    speed_pool integer NOT NULL,
    speed_edge integer NOT NULL,
    intellect_current integer NOT NULL,
    intellect_pool integer NOT NULL,
    intellect_edge integer NOT NULL,
    armor integer NOT NULL,
    recovery_roll integer NOT NULL,
    impaired boolean NOT NULL,
    debilitated boolean NOT NULL,
    one_action boolean NOT NULL,
    ten_minutes boolean NOT NULL,
    one_hour boolean NOT NULL,
    ten_hours boolean NOT NULL,
    slug character varying(100) NOT NULL,
    descriptor_id integer NOT NULL,
    focus_id integer NOT NULL,
    type_id integer NOT NULL,
    genre_id integer NOT NULL,
    portrait_link character varying(200) NOT NULL
);


ALTER TABLE public.cyphercore_character OWNER TO postgres;

--
-- Name: cyphercore_character_abilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_character_abilities (
    id integer NOT NULL,
    character_id integer NOT NULL,
    ability_id integer NOT NULL
);


ALTER TABLE public.cyphercore_character_abilities OWNER TO postgres;

--
-- Name: cyphercore_character_abilities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_character_abilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_character_abilities_id_seq OWNER TO postgres;

--
-- Name: cyphercore_character_abilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_character_abilities_id_seq OWNED BY public.cyphercore_character_abilities.id;


--
-- Name: cyphercore_character_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_character_id_seq OWNER TO postgres;

--
-- Name: cyphercore_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_character_id_seq OWNED BY public.cyphercore_character.id;


--
-- Name: cyphercore_characterartifact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_characterartifact (
    id integer NOT NULL,
    level integer NOT NULL,
    artifact_id integer NOT NULL,
    character_id integer NOT NULL
);


ALTER TABLE public.cyphercore_characterartifact OWNER TO postgres;

--
-- Name: cyphercore_characterartifact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_characterartifact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_characterartifact_id_seq OWNER TO postgres;

--
-- Name: cyphercore_characterartifact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_characterartifact_id_seq OWNED BY public.cyphercore_characterartifact.id;


--
-- Name: cyphercore_charactercypher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_charactercypher (
    id integer NOT NULL,
    level integer NOT NULL,
    appearance text NOT NULL,
    character_id integer NOT NULL,
    cypher_id integer NOT NULL
);


ALTER TABLE public.cyphercore_charactercypher OWNER TO postgres;

--
-- Name: cyphercore_charactercypher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_charactercypher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_charactercypher_id_seq OWNER TO postgres;

--
-- Name: cyphercore_charactercypher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_charactercypher_id_seq OWNED BY public.cyphercore_charactercypher.id;


--
-- Name: cyphercore_characterequipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_characterequipment (
    id integer NOT NULL,
    quantity integer NOT NULL,
    character_id integer NOT NULL,
    equipment_id integer NOT NULL
);


ALTER TABLE public.cyphercore_characterequipment OWNER TO postgres;

--
-- Name: cyphercore_characterequipment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_characterequipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_characterequipment_id_seq OWNER TO postgres;

--
-- Name: cyphercore_characterequipment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_characterequipment_id_seq OWNED BY public.cyphercore_characterequipment.id;


--
-- Name: cyphercore_characterskill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cyphercore_characterskill (
    id integer NOT NULL,
    skill_level character varying(1) NOT NULL,
    character_id integer NOT NULL,
    skill_id integer NOT NULL
);


ALTER TABLE public.cyphercore_characterskill OWNER TO postgres;

--
-- Name: cyphercore_characterskill_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cyphercore_characterskill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cyphercore_characterskill_id_seq OWNER TO postgres;

--
-- Name: cyphercore_characterskill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cyphercore_characterskill_id_seq OWNED BY public.cyphercore_characterskill.id;


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
    base_abilities text NOT NULL,
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
-- Name: cyphercore_artifact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_artifact ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_artifact_id_seq'::regclass);


--
-- Name: cyphercore_character id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_character_id_seq'::regclass);


--
-- Name: cyphercore_character_abilities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character_abilities ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_character_abilities_id_seq'::regclass);


--
-- Name: cyphercore_characterartifact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterartifact ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_characterartifact_id_seq'::regclass);


--
-- Name: cyphercore_charactercypher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_charactercypher ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_charactercypher_id_seq'::regclass);


--
-- Name: cyphercore_characterequipment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterequipment ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_characterequipment_id_seq'::regclass);


--
-- Name: cyphercore_characterskill id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterskill ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_characterskill_id_seq'::regclass);


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
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add descriptor	7	add_descriptor
20	Can change descriptor	7	change_descriptor
21	Can delete descriptor	7	delete_descriptor
22	Can add type	8	add_type
23	Can change type	8	change_type
24	Can delete type	8	delete_type
25	Can add focus	9	add_focus
26	Can change focus	9	change_focus
27	Can delete focus	9	delete_focus
28	Can add ability	10	add_ability
29	Can change ability	10	change_ability
30	Can delete ability	10	delete_ability
31	Can add focus ability	11	add_focusability
32	Can change focus ability	11	change_focusability
33	Can delete focus ability	11	delete_focusability
34	Can add type ability	12	add_typeability
35	Can change type ability	12	change_typeability
36	Can delete type ability	12	delete_typeability
37	Can add equipment	13	add_equipment
38	Can change equipment	13	change_equipment
39	Can delete equipment	13	delete_equipment
40	Can add cypher	14	add_cypher
41	Can change cypher	14	change_cypher
42	Can delete cypher	14	delete_cypher
43	Can add source	15	add_source
44	Can change source	15	change_source
45	Can delete source	15	delete_source
46	Can add sourcebook	15	add_sourcebook
47	Can change sourcebook	15	change_sourcebook
48	Can delete sourcebook	15	delete_sourcebook
49	Can add skill	16	add_skill
50	Can change skill	16	change_skill
51	Can delete skill	16	delete_skill
52	Can add genre	17	add_genre
53	Can change genre	17	change_genre
54	Can delete genre	17	delete_genre
55	Can add artifact	18	add_artifact
56	Can change artifact	18	change_artifact
57	Can delete artifact	18	delete_artifact
58	Can add character	19	add_character
59	Can change character	19	change_character
60	Can delete character	19	delete_character
61	Can add character skill	20	add_characterskill
62	Can change character skill	20	change_characterskill
63	Can delete character skill	20	delete_characterskill
64	Can add character equipment	21	add_characterequipment
65	Can change character equipment	21	change_characterequipment
66	Can delete character equipment	21	delete_characterequipment
67	Can add character cypher	22	add_charactercypher
68	Can change character cypher	22	change_charactercypher
69	Can delete character cypher	22	delete_charactercypher
70	Can add character artifact	23	add_characterartifact
71	Can change character artifact	23	change_characterartifact
72	Can delete character artifact	23	delete_characterartifact
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$tgVvlTAuZ6eE$ZHttJYXDJ5HOa7vCrJujk/cINW1k4NNYTlpuz0hhHxI=	2018-07-21 19:43:00.73126-05	t	michael	Michael	Bird	michaelbirdtx@icloud.com	t	t	2018-07-03 23:43:27-05
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

COPY public.cyphercore_ability (id, name, usage, cost, description, slug, sourcebook_id) FROM stdin;
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
12	Golem Body	Enabler	-	You gain +1 to Armor, +1 to your Might Edge, and 5 additional points to your Might Pool. You do not need to eat, drink, or breathe (though you do need rest and sleep). You move more stiffly than a creature of flesh, which means you can never be trained or specialized in Speed defense rolls.\r\nFurthermore, you are practiced in using your stone fists as a medium weapon. Enabler.	golem_body	1
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
28	Successive Attack	Enabler	2 Speed	If you take down a foe, you can immediately make another attack on that same turn against\r\na new foe within your reach. The second attack is part of the same action. You can use this ability with melee attacks and ranged attacks. Enabler.	successive_attack	1
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
88	Exile	Action	5 Intellect	You send a target that you touch hurtling into another random dimension or universe, where it remains\r\nfor ten minutes. You have no idea what happens to the target while it’s gone, but at the end of ten minutes, it returns to the precise spot it left. Action.	exile	1
89	Invisibility	Action	4 Intellect	You become invisible for ten minutes. While invisible, you are specialized in stealth and Speed defense tasks. This effect ends if you do something to reveal your presence or position—attacking, using an ability, moving a large object, and so on. If this occurs, you can regain the remaining invisibility effect by taking an action to focus on hiding your position. Action to initiate or reinitiate.	invisibility	1
90	Matter Cloud	Action	5 Intellect	Pebbles, dirt, sand, and debris rise into the air around you to form a swirling cloud. The cloud extends out to immediate range, moves with you, and lasts for one minute. When it ends, all the materials fall to the ground around you. The cloud makes it harder for other creatures to attack you, giving you an asset on Speed defense rolls. In addition, while the cloud is around you, you can use an action to whip the material so that it abrades everything within immediate range, dealing 1 point of damage to each creature and object in the area. Action to initiate.	matter_cloud	1
91	Mind Control	Action	6 Intellect	You control the actions of another creature you touch. This effect lasts for ten minutes. The target must be level 2 or lower. Once you have established control, you maintain mental contact with the target and sense what it senses. You can allow it to act freely or override its control on a case-by- case basis. Instead of applying Effort to decrease the difficulty, you can apply Effort to increase the maximum level of the target. Thus, to control the mind of a level 5 target (three levels above the normal limit), you must apply three levels of Effort. Smart adepts use the Scan ability on a creature to learn its level before trying to control its mind. When the effect ends, the creature doesn’t remember being controlled or anything it did while under your command. Action to initiate.	mind_control	1
93	Rapid Processing	Action	6 Intellect	You or a target you touch experiences a higher level of mental and physical reaction time for about a minute. During that period, the difficulty of all Speed tasks (including Speed defense rolls) is reduced by one step. In addition, the target can take one extra action at any time before the ability’s duration expires. Action.	rapid_processing	1
94	Regeneration	Action	6 Intellect	You restore points to a target’s Might Pool or Speed Pool in one of two ways: either the chosen Pool regains up to 6 points, or it is restored to a total value of 12. You make this decision when you initiate this ability. Points are restored at a rate of 1 point each round. You must maintain contact with the target the whole time. In no case can this ability raise a Pool higher than its normal maximum. Action.	regeneration	1
95	Reshape	Action	5 Intellect	You reshape matter within short range in an area no larger than a 5-foot (1 m) cube. If you spend only one action on this ability, the changes you make are crude at best. If you spend at least ten minutes and succeed at an appropriate crafting task (with a difficulty at least one step higher than normal, due to the circumstances), you can make complex changes to the material. You can’t change the nature of the material, only its shape. Thus, you can make a hole in a wall or floor, or you can seal one up. You can fashion a rudimentary sword from a large piece of iron. You can break or repair a chain. With multiple uses of this ability, you could bring about large changes, making a bridge, a wall, or a similar structure. Action.	reshape	1
147	Again and Again	Enabler	8 Speed	You can take an additional action in a round in which you have already acted. Enabler.	again-and-again	1
311	Abiding	Enabler	-	Either you keep fit (giving you 5 points to divide between your Might Pool and your Speed Pool however you wish) or you have street smarts (giving you 5 points to add to your Intellect Pool)—your choice. Enabler.	abiding	1
98	Absorb Energy	Action	7 Intellect	You touch an object and absorb its energy, if any. If you touch a cypher, you render it useless. If you touch an artifact, roll for its depletion. If you touch another kind of powered machine or device, the GM determines whether its power is fully drained. In any case, you absorb energy from the object touched and regain 1d10 Intellect points. If this would give you more Intellect than your Pool’s maximum, the extra points are lost, and you must make a Might defense roll with a difficulty equal to the number of extra points you absorbed. If you fail the roll, you take 5 points of damage and are unable to act for one round. You can use this ability as a defense action when you’re the target of an incoming energy-based attack. Doing so cancels the incoming attack, and you absorb the energy as if it were a device. Action.	absorb_energy	1
101	Create	Action	7 Intellect	You create something from nothing. You can create any item you choose that would ordinarily have a difficulty of 5 or lower (using the crafting rules). Once created, the item lasts for a number of hours equal to 6 minus the difficulty to create it. Thus, if you create a motorbike (difficulty 5), it would last for one hour. Action.	create	1
102	Divide Your Mind	Action	7 Intellect	You split your consciousness into two parts. For one minute, you can take two actions on each of your turns, but only one of them can be to use a special ability. Action.	divide_your_mind	1
125	Hand to Eye	Enabler	-	This ability provides an asset to any tasks involving manual dexterity, such as pickpocketing, lockpicking, games involving agility, and so on. Each use lasts up to a minute; a new use (to switch tasks) replaces the previous use. Action to initiate.	hand-eye	1
85	Fire and Ice	Action	4 Intellect	You cause a target within short range to become either very hot or very cold (your choice). The target suffers 3 points of ambient damage (ignores Armor) each round for up to three rounds, although a new roll is required each round to continue to affect the target. Action to initiate.	fire_ice	1
106	Teleportation	Action	6+ Intellect	You instantaneously transmit yourself to any location that you have seen or been to,\r\nno matter the distance, as long as it is on the same world as you. Instead of applying Effort to decrease the difficulty, you can apply Effort to bring other people with you; each level of Effort affects up to three additional targets. You must touch additional targets to teleport them. Action.	teleportation	1
107	True Senses	Enabler	-	You can see in complete darkness up to 50 feet (15 m) as if it were dim light. You recognize holograms, disguises, optical illusions, sound mimicry, and other such tricks (for all senses) for what they are. Enabler.	true_senses	1
104	Knowing the Unknown	Action	6 Intellect	Tapping into a source of information beyond yourself, you can ask the GM one question and get a general answer. The GM assigns a level to the question, so the more obscure the answer, the more difficult the task. Generally, knowledge that you could find by looking somewhere other than your current location is level 1, and obscure knowledge of the past is level 7. Gaining knowledge of the future is impossible. Action.	knowing_the_unknown	1
103	Dust to Dust	Action	7 Intellect	With a touch, you disintegrate one nonliving object that is smaller than you and whose level\r\nis less than or equal to your tier. If the GM feels it appropriate to the circumstances, you can disintegrate a portion of an object (the total volume of which is smaller than you) rather than the entire thing. Action.	dust_to_dust	1
132	Controlled Fall	Enabler	-	When you fall while you are able to use actions and within reach of a vertical surface, you can attempt to slow your fall. Make a Speed roll with a difficulty of 1 for every 20 feet (6 m) you fall. On a success, you take half damage from the fall. If you reduce the difficulty to 0, you take no damage. Enabler.	controlled-fall	1
133	Ignore the Pain	Enabler	-	You do not feel the detrimental effects of being impaired on the damage track, and when you are debilitated, you ignore those effects and experience the effects normally associated with being impaired instead. (Dead is still dead.) Enabler.	ignore-pain	1
134	Resilience	Enabler	-	You have +1 to Armor against any kind of physical damage, even damage that normally ignores Armor. Enabler.	resilience	1
135	Run and Fight	Action	4 Might	You can move a short distance and make a melee attack that inflicts 2 additional points of damage. Action.	run-and-fight	1
136	Seize Opportunity	Enabler	4 Speed	If you succeed on a Speed defense roll to resist an attack, you gain an action. You can use it immediately even if you have already taken a turn in the round. If you use this action to attack, the difficulty of your attack is reduced by one step. You don’t take an action during the next round. Enabler.	seize-opportunity	1
137	Stone Breaker	Enabler	-	Your attacks against objects inflict 4 additional points of damage when you use a melee weapon that you wield in two hands. Enabler.	stone-breaker	1
138	Think Your Way Out	Enabler	-	When you wish it, you can use points from your Intellect Pool rather than your Might Pool or Speed Pool on any noncombat action. Enabler.	think-your-way-out	1
139	Wrest From Chance	Enabler	-	If you roll a natural 1 on a d20, you can reroll the die. If you reroll, you avoid a GM intrusion—unless you roll a second 1—and might succeed on your task. Once you use this ability, it is not available again until after you make a ten-hour recovery roll. Enabler.	wrest-chance	1
140	Expert	Enabler	-	Instead of rolling a d20, you can choose to automatically succeed on a task you’re trained in. The task must be difficulty 4 or lower, and it can’t be an attack roll or a defense roll. Enabler.	expert	1
141	Increased Effects	Enabler	-	You treat rolls of natural 19 as rolls of natural 20 for either Might actions or Speed actions (your choice when you gain this ability). This allows you to gain a major effect on a natural 19 or 20. Enabler.	increased-effects	1
142	Read the Signs	Action	4 Intellect	You examine an area and learn precise, useful details about the past (if any exist). You can ask the GM up to four questions about the immediate area; each requires its own roll. Action.	read-signs	1
143	Runner	Enabler	-	Your standard movement distance becomes long. Enabler.	runner	1
144	Physically Gifted	Enabler	-	Any time you spend points from your Might Pool or Speed Pool on an action for any reason, if you roll a 1 on the associated die, you reroll, always taking the second result (even if it’s another 1). Enabler.	physically-gifted	1
145	Take Command	Action	3 Intellect	You issue a specific command to another character. If that character chooses to listen, the difficulty of any attack he attempts is reduced by one step, and a hit deals 3 additional points of damage. If your command is to perform a task other than an attack, the difficulty of the task is reduced by two steps. Action.	take-command	1
146	Vigilant	Enabler	5 Might	When you would normally be dazed or stunned, you are not dazed or stunned. Enabler.	vigilant	1
148	Wild Vitality	Action	4 Intellect	You attune with the life force of a natural creature (your size or bigger) within long range that you\r\ncan see. This is a level 2 Intellect task. If you succeed, the creature is not harmed, but through resonance with its wild vitality, you gain several benefits for up to one minute: an asset to all your Might-based tasks (including attacks and defenses), +2 to your Might Edge and Speed Edge, and 2 additional points\r\nof damage on all successful melee attacks. Action to initiate.	wild-vitality	1
149	Aggression	Action	2 Intellect	Your words twist the mind of a character within short range who is able to understand you, unlocking her more primitive instincts. As a result, she gains an asset on her Might-based attack rolls for one minute. Action to initiate.	aggression	1
150	Encouragement	Action	1 Intellect	While you maintain this ability through ongoing inspiring oration, your allies within short range modify the difficulty of one of the following task types (your choice) by one step to their benefit: defense tasks, attack tasks, or tasks related to any skill that you are trained or specialized in. Action.	encouragement	1
151	Enthrall	Action	1 Intellect	While talking, you grab and keep another creature’s attention, even if the creature can’t understand you. For as long as you do nothing but speak (you can’t even move), the other creature takes no actions other than to defend itself, even over multiple rounds. If the creature is attacked, the effect ends. Action.	enthrall	1
152	Fast Talk	Action	1 Intellect	When speaking with an intelligent creature who can understand you and isn’t hostile, you convince that creature to take one reasonable action in the next round. A reasonable action must be agreed upon by the GM; it should not put the creature or its allies in obvious danger or be wildly out of character. Action.	fast-talk	1
153	Interaction Skills	Enabler	-	You are trained in two skills in which you are not already trained. Choose two of the following: deceiving, persuading, public speaking, seeing through deception, or intimidating. You can select this ability multiple times. Each time you select it, you must choose two different skills. Enabler.	interaction-skills	1
154	Practiced With Light and Medium Weapons	Enabler	-	You can use light and medium weapons without penalty. If you wield a heavy weapon, increase the difficulty of the attack by one step. Enabler.	practiced-light-and-medium-weapons	1
155	Spin Identity	Action	2+ Intellect	You convince all intelligent creatures who can see, hear, and understand you that you are someone or something other than who you actually are. You don’t impersonate a specific individual known to the victim. Instead, you convince the victim that you are someone they do not know belonging\r\nto a certain category of people. “We’re from the government.” “I’m just a simple farmer from the next town over.” “Your commander sent me.” A disguise isn’t necessary, but a good disguise will almost certainly be an asset to the roll involved. If you attempt to convince more than one creature, the Intellect cost increases by 1 point per additional victim. Fooled creatures remain so for up to an hour, unless your actions or other circumstances reveal your true identity earlier. Action.	spin-identity	1
156	Terrifying Presence	Action	2+ Intellect	You convince one intelligent target of level 3 or lower that you are its worst nightmare. The target must be within short range and be able to understand you. For as long as you do nothing but speak (you can’t even move), the target is paralyzed with fear, runs away, or takes some other action appropriate to the circumstances. Instead of applying Effort to decrease the difficulty of the roll, you can apply Effort to increase the maximum level of the target. Thus, to terrorize a level 5 target (two levels above the normal limit), you must apply two levels of Effort. Action.	terrifying-presence	1
157	Understanding	Action	2 Intellect	You observe or study a creature or object. The next time you interact with it, the difficulty of the related task is reduced by one step. Action.	understanding	1
158	Babel	Enabler	-	After hearing a language spoken for a few minutes, you can speak it and make yourself understood. If you continue to use the language to interact with native speakers, your skills improve rapidly, to the point where you might be mistaken for a native speaker after just a few hours of speaking the new language. Enabler.	babel	1
159	Impart Ideal	Action	3 Intellect	After interacting for at least one minute with a creature who can hear and understand you, you can attempt to temporarily impart an ideal to it that you could not otherwise convince it to adopt. An ideal is different than a specific suggestion or command; an ideal is an overarching value such as “all life is sacred,” “my political party is the best,” “children should be seen, not heard,” and so on. An ideal influences a creature’s behavior but doesn’t control it. The imparted ideal lasts for as long as befits the situation, but usually at least a few hours. The ideal is jeopardized if someone friendly to the creature spends a minute or more bringing it back to its senses. Action.	impart-ideal	1
160	Skills	Enabler	-	You are trained in one task of your choosing (other than attacks or defense). If you choose a task you’re already trained in, you become specialized in that task. You can’t choose a task you’re already specialized in.	skills	1
161	Speed Recovery	Action	3 Intellect	Your words enhance the normal regenerative ability of a character within short range who is able to understand you. When he makes a recovery roll, he must spend only half the normal amount of time required to do so (minimum one action). Action.	speed-recovery	1
162	Unexpected Betrayal	Enabler	-	Within a round or two of successfully using Enthrall, Fast Talk, or a similar ability on a target within short range, the difficulty of the first attack you make on that target is decreased by two steps. Once you use Unexpected Betrayal on a target, the difficulty of using your abilities or attempting simple persuasion on that target is permanently increased by two steps. Enabler.	unexpected-betrayal	1
163	Accelerate	Action	4+ Intellect	Your words imbue the spirit of a character within immediate range who is able to understand you, accelerating her so that she gains an asset on initiative tasks and Speed defense rolls for ten minutes. Instead of applying Effort to decrease the difficulty, you can use it to affect more targets; each level of Effort affects one additional target. You must speak to additional targets to accelerate them, one target per round. Action per target to initiate.	accelerate	1
164	Blend In	Action	4 Intellect	When you blend in, creatures still see you, but they attach no importance to your presence for about a minute. While blending in, you are specialized in stealth and Speed defense tasks. This effect ends if you do something to reveal your presence or position— attacking, using an ability, moving a large object, and so on. If this occurs, you can regain the remaining period of effect by taking an action to focus on seeming innocuous and as if you belong. Action to initiate or reinitiate.	blend-in	1
165	Discerning Mind	Enabler	-	You have +3 to Armor against damaging attacks and damaging effects that target your mind and Intellect. The difficulty of defense rolls you make against attacks that attempt to confuse, persuade, frighten, or otherwise influence you is decreased by one step. Enabler.	discerning-mind	1
166	Grand Deception	Action	3 Intellect	You convince an intelligent creature that can understand you and isn’t hostile of something that is wildly and obviously untrue. Action.	grand-deception	1
167	Oratory	Action	4 Intellect	When speaking with a group of intelligent creatures that can understand you and aren’t hostile, you convince them to take one reasonable action in the next round. A reasonable action must be agreed upon by the GM; it should not put the creatures or their allies in obvious danger or be wildly out of character. Action.	oratory	1
168	Telling	Action	2 Intellect	This ability provides an asset to any tasks attempting to deceive, persuade, or intimidate. Each use lasts up to a minute; a new use (to switch tasks) replaces the previous use. Action to initiate.	telling	1
169	Anticipate Attack	Action	4 Intellect	You can sense when and how creatures attacking you will make their attacks. The difficulty of Speed defense rolls is reduced by one step for one minute. Action.	anticipate-attack	1
170	Confounding Banter	Action	4 Intellect	You spew a stream of nonsense to distract a foe within immediate range. On a successful Intellect roll, the difficulty of your defense roll against the creature’s next attack before the end of the next round is reduced by one step. Action.	confounding-banter	1
171	Heightened Skills	Enabler	-	You are trained in two tasks of your choosing (other than attacks or defense). If you choose a task you’re already trained in, you instead become specialized in that task. You can’t choose a task you’re already specialized in.	heightened-skills	1
172	Psychosis	Action	4 Intellect	Your words inflict a destructive psychosis in the mind of a target within long range that can understand you, dealing 6 points of Intellect damage (ignores Armor) per round. The psychosis can be dispersed if a target spends an action doing nothing but calming and centering itself. Action to initiate.	psychosis	1
173	Quick Wits	Enabler	-	When performing a task that would normally require spending points from your Intellect Pool, you can spend points from your Speed Pool instead. Enabler.	quick-wits	1
174	Suggestion	Action	4 Intellect	You suggest an action to another creature (level 2 or lower) within immediate range. If the action doesn’t seem completely at odds with the creature’s nature, it follows your suggestion for up to a minute. Instead of applying Effort to decrease the difficulty, you can apply it to increase the maximum level of the target by 1. When the effect ends, the creature remembers following the suggestion, but believes that it chose to do so willingly. Action to initiate.	suggestion	1
175	Flee	Action	6 Intellect	All non-allies within short distance who can hear your dreadful, intimidating words flee from you at top speed for one minute.	flee	1
176	Font of Inspiration	Enabler	-	With your approval, characters within immediate range can use an action to gain inspiration from your presence; the difficulty of one action they take in the following round is reduced by one step. This inspiration costs each affected character 2 Intellect points. Once this ability is used, others can’t gain inspiration from you again until after you make a recovery roll. Enabler.	font-inspiration	1
177	Foul Aura	Action	5 Intellect	Your words, gestures, and touch invest an object no larger than yourself with an aura of doom, fear, and doubt for one day. Creatures that can hear and understand you feel an urge to move at least a short distance away from the object. If a creature does not move away, the difficulty of all tasks, attacks, and defenses it attempts while within the aura is increased by one step. The duration of the aura is extended by one day per level of Effort applied. The aura is temporarily blocked while the object is covered or contained. Action to initiate.	foul-aura	1
178	Stimulate	Action	6 Intellect	Your words encourage a target you touch who can understand you. The difficulty of the next action it takes is decreased by three steps. Action.	stimulate	1
179	Battle Management	Action	4 Intellect	As long as you spend your action each round giving orders or advice, the difficulty of attack and defense actions by your allies within short range is decreased by one step. Action.	battle-management	1
180	Inspiring Success	Enabler	6 Intellect	When you succeed on a roll to perform a task related to the stat that you choose upon selecting this ability, and you applied at least one level of Effort, you may choose another character within short range.\r\nThat PC has an asset on the next task she attempts using that stat on her next turn. Enabler.	inspiring-success	1
181	Shatter Mind	Action	7+ Intellect	Your words reverberate destructively in the brain of an intelligent level 1 target within short range that can understand you. They destroy tissue, memories, and personality, triggering a vegetative state. Instead of applying Effort to decrease the difficulty of the attack, you can apply Effort to increase the maximum level of the target. Thus, to shatter the mind of a level 5 target (four levels above the normal limit), you must apply four levels of Effort. Action.	shatter-mind	1
182	Word of Command	Action	6 Intellect + cypher	You utter a word so powerful that to fully invest it, you sacrifice a cypher in your possession that is level 6 or higher. You issue the word to one creature within long range that you can see. The affected target must obey the command for several hours before it is free to act as it wishes. Targets that are attacked while under the effect of the command can defend themselves. Typical commands include “retreat,” “calm,” “come,” and “stay.” The GM decides how the target acts once a command is given. Action.	word-command	1
183	Awakens Dreams	Action	1 Intellect	You pull an image from a dream into the waking world and place it somewhere within long range. The dream lasts for up to one minute, and it can be tiny or fill an area an immediate distance in diameter. Though it appears solid, the dream is intangible. The dream (a scene, a creature, or an object) is static unless you spend your action each round animating it. As part of that animation, you could move the dream up to a short distance each round, as long as it remains within long range. If you animate the dream, it can make sound but does not produce odor. Direct physical interaction or sustained interaction with the dream shatters it into dispersing mist. For example, attacking the dream shatters it, as does the strain of keeping up appearances when an NPC moves through a dream scene or engages a dream creature in conversation for more than a couple of rounds. Action to initiate; action to animate.	awakens-dreams	1
184	Oneirochemy	Enabler	-	You are trained in tasks related to sleep and mixing natural elixirs to help creatures fall asleep. Enabler.	oneirochemy	1
185	Dream Thief	Action	2 Intellect	You steal a previous dream from a living creature within short range. The creature loses 2 points of Intellect (ignores Armor), and you learn something the GM chooses to reveal about the creature—its nature, a portion of its plans, a memory, and so on. Action.	dream-thief	1
186	Dream Becomes Reality	Action	4 Intellect	You create a dream object of any shape you can imagine that is your size or smaller, which takes on apparent substance and heft. The object is crude and can have no moving parts, so you can make a sword, a shield, a short ladder, and so on. The dream object has the approximate mass of the real object, if you choose. Your dream objects are as strong as iron, but if you do not remain within long range of them, they function for only one minute before fading away. Action.	dream-becomes-reality	1
187	Consummate Dreamer	Enabler	-	You add 2 points to your Intellect Pool. Enabler.	consummate-dreamer	1
188	Daydream	Action	4 Intellect	You pull someone into a daydream, substituting a dream of your own creation for the target’s reality for up to one minute. You can affect a target within long range that you can see, or a target within 10 miles (16 km) that you have hair or skin clippings from. To all outward appearances, an affected target stands (or lies) unmoving. But inside, the substituted reality (or dream within a dream, if the target was sleeping) is what the target experiences. If the target is under duress, it can attempt another Intellect defense roll each round to break free, though the target may not realize its state. Either the dream unfolds according to a script you prepared when you used this ability, or if you spend your own actions (forcing you into a similar state as the target), you can direct the unfolding dream from round to round. Using this ability on a sleeping target decreases the difficulty of your initial attack by one step. Action to initiate; if you direct the dream, action to direct per round.	daydream	1
189	Nightmare	Action	5 Intellect	You pull a horrifying creature from your worst nightmare into the waking world and sic it on your foes. The nightmare persists each round while you spend your action concentrating on it (or until you disperse it or it is destroyed). It has one of the following abilities, which you choose when you call it.\r\nHorrify. Instead of making a normal attack, the nightmare’s attack horrifies the target, dropping the target to its knees (or similar appendages). The target takes 3 points of damage that ignore Armor and is dazed for one round, during which time the difficulty of all its tasks is modified by one step to its detriment.\r\nConfusion. Instead of making a normal attack, the nightmare’s attack confuses the target for one round. On its next action, the target attacks an ally.\r\nPustule Eruption. Instead of making a normal attack, the nightmare’s attack causes rancid, painful pustules to rise all over the target’s skin for one minute. If the target takes a forceful action (such as attacking another creature or moving farther than an immediate distance), the pustules burst, dealing 5 points of damage that ignore Armor.	nightmare	1
190	Chamber of Dreams	Action	8+ Intellect	You and your allies can step into a chamber of dreams, decorated as you wish, that contains a number of doors. The doors correspond with other locations that you have visited or know reasonably well. Stepping through one of the doors delivers you to the desired location. This is a difficulty 2 Intellect-based task (which could be modified upward by the GM if the location is warded). Action to step into chamber of dreams; action to move through a door in the chamber.	chamber-dreams	1
191	Machine Vulnerabilities	Enabler	-	You inflict 3 additional points of damage against robots and animate machines of all kinds. Enabler.	machine-vulnerabilities	1
192	Machine Knowledge	Enabler	-	You are trained in robotics and computers. Enabler.	machine-knowledge	1
193	Defense Against Robots	Enabler	-	You have studied your enemy and can anticipate the actions that an automaton or machine is likely to take in a fight. The difficulty of all defense tasks against such foes is decreased by one step. Enabler.	defense-against-robots	1
194	Machine Hunting	Enabler	-	The difficulty of tracking, spotting, or otherwise finding automatons and animate machines is decreased by one step. You are also trained in all stealth tasks. Enabler.	machine-hunting	1
195	Disable Mechanisms	Action	3 Speed	With a keen eye and quick moves, you disrupt some of an automaton’s functions and inflict upon it one of the following maladies:\r\n• The difficulty of all tasks is increased by one step for one minute.\r\n• The robot’s speed is halved.\r\n• The robot can take no action for one round.\r\n• The robot deals 2 fewer points of damage (minimum 1 point) for one minute.\r\nYou must touch the robot to disrupt it (if you are making an attack, it inflicts no normal damage). Action.	disable-mechanisms	1
196	Machine Fighter	Enabler	-	You are trained in all attacks against robots or similar animate machines. Enabler.	machine-fighter	1
197	Pierce Metal Hides	Enabler	-	You ignore 2 points of Armor on a robot. Enabler.	pierce-metal-hides	1
198	Drain Power	Action	5 Speed	You affect the main power source of the robot, inflicting upon it all four conditions listed for Disable Mechanisms at once. You must touch the robot to do this (if you are making an attack, it inflicts no normal damage). Action.	drain-power	1
199	Blind Machine	Action	6 Speed	You deactivate the sensory apparatus of the robot, making it effectively blind. You must either touch the target or strike it with a ranged attack (inflicting no normal damage). Action.	blind-machine	1
200	Shroud of Flame	Enabler	1 Intellect	At your command, your entire body becomes shrouded in flames that last up to ten minutes. The fire doesn’t burn you, but it automatically inflicts 2 points of damage to anyone who tries to touch you or strike you with a melee attack. Flames from another source can still hurt you. While the shroud is active, you gain +2 to Armor only against damage from fire from another source. Enabler.	shroud-flame	1
201	Hurl Flame	Action	2 Intellect	While your Shroud of Flame is active, you can reach into your halo and hurl a handful of fire at a target. This is a short-range attack that deals 4 points of fire damage. Action.	hurl-flame	1
218	Robot Fleet	Enabler	-	You can choose another upgrade from tier 4, or you can take Robot Fleet. If you take Robot Fleet, you build up to four level 2 robot assistants, each no larger than yourself. (They are in addition to the assistant you built at first tier, which has seen a few upgrades since then.) You and the GM must work out the details of these additional robots. If a robot is destroyed, you can build a new one (or repair the old one from its parts) after a week of half-time labor. Enabler.	robot-fleet	1
219	Robot Evolution	Enabler	-	You can choose another upgrade from tier 4, or you can take Robot Evolution. If you take Robot Evolution, your first artificial assistant increases to level 5, and each of your level 2 robots increases to level 3. Enabler.	robot-evolution	1
202	Fiery Hand of Doom	Action	3 Intellect	While your Shroud of Flame is active, you can reach into your halo and produce a hand made of animate flame that is twice the size of a human hand. The hand acts as you direct, floating in the air. Directing the hand is an action. Without a command, the hand does nothing. It can move a long distance in a round, but it never moves farther away from you than long range. The hand can grab, move, and carry things, but anything it touches takes 1 point of damage per round from the heat. The hand can also attack. It’s a level 3 creature and deals 1 extra point of damage from fire when it attacks. Once created, the hand lasts for ten minutes. Action to create; action to direct.	fiery-hand-doom	1
203	Flameblade	Enabler	4 Intellect	When you wish it, you extend your halo of fire to cover a weapon you wield in flame for one hour. The flame ends if you stop holding or carrying the weapon. While the flame lasts, the weapon inflicts 2 additional points of damage. Enabler.	flameblade	1
204	Fire Tendrils	Enabler	5 Intellect	When you wish it, your halo sprouts three tendrils of flame that last for up to ten minutes. As an action, you can use the tendrils to attack, making a separate attack roll for each. Each tendril inflicts 4 points of damage. Otherwise, the attacks function as standard attacks. If you don’t use the tendrils to attack, they remain but do nothing. Enabler.	fire-tendrils	1
205	Fire Servant	Action	6 Intellect	You reach into your halo and produce an automaton of fire that is your general shape and size. It acts as you direct each round. Directing the servant is an action, and you can command it only when you are within long range of it. Without a command, the servant continues to follow your previous command. You can also give it a simple programmed action, such as “Wait here, and attack anyone who comes within short range until they’re dead.” The servant lasts for ten minutes, is a level 5 creature, and deals 1 extra point of damage from fire when it attacks. Action to create; action to direct.	fire-servant	1
206	Enlightened	Enabler	-	You are trained in any perception task that involves sight. Enabler.	enlightened	1
207	Illuminating Touch	Action	1 Intellect	You touch an object, and that object sheds light to illuminate everything in short range. The light remains until you use an action to touch the object again. Action.	illuminating-touch	1
208	Dazzling Radiance	Action	-	As an Intellect action, you send a barrage of dazzling colors at a creature within short range, dealing 2 points of damage. In addition, until the end of the next round, the difficulty of all defense actions to resist the creature’s attacks is reduced by one step. The difficulty is not reduced if the creature relies on senses other than sight to “see.” Action.	dazzling-radiance	1
209	Burning Light	Action	3 Intellect	As an Intellect action, you send a beam of light at a creature within long range and tighten the beam until it burns, dealing 5 points of damage. Action.	burning-light	1
210	Sunlight	Action	3 Intellect	A mote of light travels from you to a spot you choose within 100 feet (30 m). When the mote reaches that spot, it flares and casts bright light in a 200-foot (61 m) radius, and darkness within 1,000 feet (305 m) of the mote becomes dim light. The light lasts for one hour or until you use an action to dismiss it. Action.	sunlight	1
211	Disappear	Action	4 Intellect	You bend light that falls on you so you seem to disappear. You are invisible to other creatures for ten minutes. While invisible, you are specialized in stealth and Speed defense tasks. This effect ends if you do something to reveal your presence or position—attacking, using an ability, moving a large object, and so on. If this occurs, you can regain the remaining invisibility effect by taking an action to focus on hiding your position. Action to initiate or reinitiate.	disappear	1
212	Living Light	Action	5 Intellect	Your body dissolves into a cloud of photons that instantly travels to a location you choose and then reforms. You can choose any open space big enough to contain you that you can see within long range. When you reform, it takes until the end of the round for your body to become fully solid, so until the start of the next round, you take half damage (minimum 1 point) from all physical sources. Action.	living-light	1
213	Robot Assistant	Enabler	-	A level 2 robot of your size or smaller (built by you) accompanies you and follows your instructions. You and the GM must work out the details of your robot. You’ll probably make rolls for your robot when it takes actions. An assistant robot in combat usually doesn’t make separate attacks but helps with yours. On your action, if the artificial assistant is next to you, it serves as an asset for one attack you make on your turn. If the robot is destroyed, you can repair the original with a few days’ worth of tinkering, or build a new one with a week’s worth of half-time labor. Enabler.	robot-assistant	1
214	Robot Builder	Enabler	-	You are trained in tasks related to building and repairing robots. For the purposes of repair, you can use this skill to heal robots that use similar technology. Enabler.	robot-builder	1
215	Robot Control	Action	2+ Intellect	You use your knowledge of robot command and control (and possibly devices that transmit on the proper frequency) to affect any mechanized system or robot of level 2 or lower within short range. You can render several targets inactive for as long as you focus all your attention on them. If you focus on just one target, you can attempt to take active control of it for one minute, commanding it to do simple tasks on your behalf while you concentrate. Instead of applying Effort to decrease the difficulty, you can apply Effort to increase the maximum level of the mechanized system or robot. Thus, to affect a level 4 target (two levels above the normal limit), you must apply two levels of Effort. Action to initiate.	robot-control	1
216	Robot Improvement	Enabler	-	Your artificial assistant increases to level 4. Enabler.	robot-improvement	1
217	Robot Upgrade	Enabler	-	You modify your artificial assistant with one new capability. Standard options include the following. Work with your GM if you prefer a different capability.\r\nFlight. The robot can fly a long distance each round. It can carry you, but only for up to an hour between each of your ten-hour recovery rolls. Enabler.\r\nCypher Pod. The robot can carry one extra cypher for you. Enabler.\r\nForce Shield. The robot can erect an opaque level 5 force field around itself and anyone within 10 feet (3 m) of it for one minute (or until it is destroyed). It cannot do so again until after your next recovery roll. Action.\r\nMounted Laser Configuration. The robot can reconfigure itself and become an immobile laser weapon on a gimbal mount. In this configuration, the robot is a heavy weapon that deals 7 points of damage. If the robot acts as an autonomous turret, treat it as a level 3 creature instead of level 4. However, if the laser is fired by you or someone else who has your permission, the difficulty of the laser attacks is decreased by one step. Action to reconfigure; action to return to normal robot configuration.	robot-upgrade	1
220	Predictive Equation	Action	2 Intellect	You observe or study a creature, object, or location for at least one round. The next time you interact with it (possibly in the following round), the difficulty of a related task (such as persuading the creature, attacking it, or defending from its attack) is reduced by one step. Action.	predictive-equation	1
221	Higher Mathematics	Enabler	-	You are trained in standard and higher mathematics.	higher-mathematics	1
222	Predictive Model	Action	2+ Intellect	If you’ve used Predictive Equation on a creature, object, or location within the last few days, you can learn one random fact about the subject that is pertinent to a topic you designate. If you also have the magic flavor ability Premonition, one use of either ability grants you two random but related facts about the subject. In addition, you can use Predictive Model on the same subject multiple times (even if you’ve learned a creature’s level), but each time you do, you must apply one additional level of Effort than on your previous use. Action.	predictive-model	1
223	Subconscious Defense	Enabler	-	Your subconscious constantly runs predictive models for avoiding danger. The difficulty of your Speed defense tasks is reduced by one step. Enabler.	subconscious-defense	1
224	Cognizant Offense	Enabler	-	During combat, your brain shifts into a sort of battle mode where all potential attacks you could make are plotted on vector graphs in your mind’s eye, which always provides the best option. The difficulty of your attacks is reduced by one step. Enabler.	cognizant-offense	1
225	Genius	Enabler	-	The more you use your brain, the better it gets. You add 5 points to your Intellect Pool. Enabler.	genius	1
226	One Step Ahead of Everyone	Action	6 Intellect	Few things elude your intellectual grasp. Ask the GM one question and get a general answer. The GM assigns a level to the question, so the more obscure the answer, the more difficult the task. Generally, knowledge that you could find by looking somewhere other than your current location is level 1, and obscure knowledge of the past is level 7. Gaining knowledge of the future is impossible, unless you have the ability to see into the future through other means. Action.	one-step-ahead-everyone	1
227	Archer	Enabler	-	To be truly deadly with a bow, you must know where to aim. You can spend points from either your Speed Pool or your Intellect Pool to apply levels of Effort to increase your bow damage. As usual, each level of Effort adds 3 points of damage to a successful attack. Enabler.	archer	1
228	Fletcher	Enabler	-	You are trained in making arrows. Enabler.	fletcher	1
229	Covering Fire	Enabler	1 Speed	In a round where you attack with your bow, if you fire an additional arrow, the difficulty of attacks and special abilities used by the target is increased by one step. Enabler.	covering-fire	1
230	Bowyer	Enabler	-	You are trained in making bows. Enabler.	bowyer	1
231	Trained Archer	Enabler	-	You are trained in using bows. Enabler.	trained-archer	1
232	Master Fletcher	Enabler	-	You are specialized in making arrows. Enabler.	master-fletcher	1
233	Quick Shot	Enabler	-	If you roll a natural 17 or higher with a bow attack, instead of adding damage or having a minor or major effect, you can make another attack with your bow. This attack reuses the same Effort and bonuses (if any) from the first attack. Enabler.	quick-shot	1
234	Master Bowyer	Enabler	-	You are specialized in making bows. Enabler.	master-bowyer	1
235	Phenomenal Archer	Enabler	-	You are specialized in using bows. Enabler.	phenomenal-archer	1
236	Powerful Shot	Enabler	2 Might	You inflict 3 additional points of damage with a bow. The Might points spent to use this ability are in addition to any Speed points spent on the attack. Enabler.	powerful-shot	1
237	Spellbook 1	Enabler	-	You’ve compiled a tome of spells, formulas, and notes that grants you flexibility that other sorcerers don’t possess. With your spellbook, you can replace one of your readied spells (such as Arcane Flare, Magic Shield, Ray of Confusion, and so on) with a different one of the same tier that is also in your spellbook. You can have only one readied spell of a given tier at a time. To make the switch, spend ten minutes studying your spellbook, after which time your readied spell is changed out. A spellcaster can choose to vary her readied spells up to twice per day, immediately after a one-hour or ten- hour recovery roll. (Changing out the spell requires only about a minute.)\r\nChoose one of the following spells as your readied spell for tier 1.\r\nArcane Flare (1 Intellect point). You enhance the damage of another attack spell with an extra charge of energy so that it deals 1 additional point of damage. Alternatively, you attack a target within long range by projecting a flare of raw magic that inflicts 4 points of damage. Enabler for enhancement; action for long-range attack.\r\nMagic Shield (1 Intellect point). You gain +1 to Armor for an hour. Action to initiate.	spellbook-1	1
238	Spellbook 2	Enabler	-	You add the following spells to your spellbook. Choose one of them as your readied spell for tier 2.\r\nRay of Confusion (2 Intellect points). You project a grey beam of confusion at a creature within short range, inflicting 1 point of damage that ignores Armor. In addition, until the end of the next round, the difficulty of all tasks, attacks, and defenses the target attempts is modified by one step to its detriment. Action.\r\nLock (2+ Intellect points). A door, gate, chest, drawer, locket, or other object that can be closed within long range snaps shut and is magically locked (level 3 effect) for one hour. If an object or creature is physically holding the target object open, you must also succeed on an Intellect-based attack. For each level of Effort you apply, the quality of the magical lock increases by one level. Action to initiate.	spellbook-2	1
239	Spellbook 3	Enabler	-	Tier 3: Spellbook. You add the following spells to your spellbook. Choose one of them as your readied spell for tier 3.\r\nFire Bloom (4+ Intellect points). Fire blooms within long range, filling an area 10 feet\r\n(3 m) in radius and inflicting 3 points of damage on all affected targets. Effort applied to one attack counts for all attacks against targets in the area of the bloom. Even on an unsuccessful attack, a target in the area still takes 1 point of damage. Flammable objects in the area may catch fire. Action.\r\nSummon Giant Spider (4+ Intellect points). A giant spider appears within immediate range. If you applied a level of Effort as part of the summoning, the spider is amenable to your instructions; otherwise, it acts according to its nature. Regardless, the creature persists for up to one minute before it fades away. Action to initiate.	spellbook-3	1
308	Taking Care of Yourself	Enabler	-	Choose one type of attack in which you are not already trained: light bashing, light bladed, light ranged, medium bashing, medium bladed, medium ranged, heavy bashing, heavy bladed, or heavy ranged. You are trained in attacks using that type of weapon. Enabler.	taking-care-yourself	1
240	Spellbook 4	Enabler	-	You add the following spells to your spellbook. Choose one of them as your readied spell for tier 4.\r\nSoul Interrogation (5 Intellect points). You determine the weaknesses, vulnerabilities, qualities, and mannerisms of a single creature within long range. The GM should reveal the creature’s level, basic abilities, and obvious weaknesses (if any). The difficulty of all actions you attempt that affect that creature—attack, defense, interaction, and so on—is reduced by one step for a few months afterward. Action.\r\nElemental Protection (4+ Intellect points). You and every target you designate within immediate range gains +5 to Armor against direct damage from one type of elemental damage (such as fire, lightning, shadow, or thorn) for one hour, or until you cast this spell again. Each level of Effort applied increases the elemental protection by +2. Action to initiate.	spellbook-4	1
241	Spellbook 5	Enabler	-	You add the following spells to your spellbook. Choose one of them as your readied spell for tier 5.\r\nDragon’s Maw (6 Intellect points). You fashion and control a “hovering” phantasmal construct of magic within long range that resembles a dragon’s head. The construct lasts for up to an hour, until it is destroyed, or until you cast another spell. It is a level 4 construct that inflicts 6 points of damage with its bite when directed. While the construct persists, you can use it to manipulate large objects, carry heavy items in its mouth, or attack foes. If you use it to attack foes, you must spend your action directly controlling the phantom maw for each attack. Action to initiate.\r\nGranite Wall (7+ Intellect points). You create a level 6 granite wall within short range. The wall is 1 foot (30 cm) thick and up to 20 feet by 20 feet (6 m by 6 m) in size. It appears resting on a solid foundation and lasts for about ten hours. If you apply three levels of Effort, the wall is permanent until destroyed naturally. Action to initiate.	spellbook-5	1
242	Spellbook 6	Enabler	-	You add the following spells to your spellbook. Choose one of them as your readied spell for tier 6.\r\nSummon Demon (7+ Intellect points). A demon appears within immediate range. If you applied a level of Effort as part of the summoning, the demon is amenable to your instructions; otherwise, it acts according to its nature. Regardless, the demon persists for up to one minute before it fades away—you hope. Action to initiate.\r\nWord of Death (5+ Intellect points). Your attack is the utterance of a magic word so terrible that it snuffs the life from a living target within short range. The target must be level 1. Instead of applying Effort to decrease the difficulty, you can apply Effort to increase the maximum level of the target. Thus, to kill a level 5 target (four levels above the normal limit), you must apply four levels of Effort. Action.	spellbook-6	1
243	Divine Knowledge	Enabler	-	You are trained in all tasks related to knowledge of godly beings. Enabler.	divine-knowledge	1
244	Blessing of the Gods	Enabler	-	As a servant of the gods, you can call up blessings in their name. This blessing depends on the god’s general demeanor and area of influence. Choose two of the abilities described below.\r\nAuthority/Law/Peace (3 Intellect points). You prevent a foe that can hear and understand you from attacking anyone or anything for one round. Action.\r\nBenevolence/Righteousness/Spirit (2+ Intellect points). One level 1 demon, spirit, or similar creature within short range is destroyed or banished. Instead of applying Effort to decrease the difficulty, you can apply Effort to increase the maximum level of the target. Thus, to destroy or banish a level 5 target (four levels above the normal limit), you must apply four levels of Effort. Action.\r\nDeath/Darkness (2 Intellect points). A target you choose within short range withers, suffering 3 points of damage. Action.\r\nDesire/Love/Health (3 Intellect points). With a touch, you restore 1d6 points to one stat Pool of any creature, including yourself. This ability is a difficulty 2 Intellect task. Each time you attempt to heal the same creature, the task difficulty increases by one step. The difficulty returns to 2 after that creature rests for ten hours. Action.\r\nEarth/Stone. You are trained in climbing, stonecraft, and spelunking. Enabler.\r\nKnowledge/Wisdom (3 Intellect points). Choose up to three creatures (potentially including yourself). For one minute, the difficulty of a particular type of task (but not an attack roll or defense roll) is reduced by one step for those creatures, but only while they remain within immediate range of you. Action.\r\nNature/Animals/Plants. You are trained in botany and handling natural animals. Enabler.\r\nProtection/Silence (3 Intellect points). You create a quiet bubble of protection around you to an immediate radius for one minute. The bubble moves with you. The difficulty of all defense rolls for you and all creatures you designate within the bubble is decreased by one step, and no noise, regardless of its origin, sounds louder than a normal speaking voice. Action to initiate.\r\nSky/Air (2 Intellect points). A creature you touch is immune to airborne toxins or contaminants for ten minutes. Action.\r\nSun/Light/Fire (2 Intellect points). You cause one creature or object within short range to catch fire, inflicting 1 point of ambient damage each round until the fire is extinguished (requiring an action). Action.\r\nTrickery/Greed/Commerce. You are trained in detecting the deceptions of other creatures. Enabler.\r\nWar (1 Intellect point). A target you choose within short range (potentially yourself) deals 2 additional points of damage with its next successful weapon attack. Action.\r\nWater/The Sea (2 Intellect points). A target you touch can breathe water for ten minutes. Action.	blessing-gods	1
245	Divine Fortitude	Enabler	-	Your faith gives you additional reserves. Add 4 points to your Intellect Pool.	divine-fortitude	1
246	Divine Radiance	Action	2 Intellect	Your prayer calls divine radiance from the heavens to punish an unworthy target within long range, inflicting 4 points of damage. If the target is a demon, spirit, or something similar, it also stands in unwilling awe of the divine energy coursing through it and is unable to act on its next turn. Once exposed to this blessing, the target can’t be awed by this attack again for several hours. Action.	divine-radiance	1
247	Overawe	Action	5 Intellect	A blast of divine radiance from the heavens spotlights a target you select within long range, pushing the target to its knees (or similar appendages, if any) and rendering it helpless in the light for up to ten minutes, or until it breaks free. The overawed target cannot defend itself, make attacks, or attempt anything other than to shake free of the divine awe each round. If the target is a demon, spirit, or something similar, it also takes 1 point of damage that ignores Armor each round it remains affected. Action to initiate.	overawe	1
248	Divine Intervention	Action	See Description	You ask the divine to intervene on your behalf, usually against a creature within long range, changing the course of its life in a small way by introducing a major special effect upon it. The major special effect is akin to what occurs when you roll a natural 20 on an attack. If you want to try for a larger effect, and if the GM allows it, you can attempt a divine intervention with a more far-reaching effect, which is more like the kind of GM intrusion initiated by the GM on her players. In this case, Divine Intervention costs 4 XP, the effect may not work out exactly like you hope, and you may not make another plea for divine intervention for a week. Action.	divine-intervention	1
249	Divine Symbol	Action	5+ Intellect	You invoke divine power by scribing a glowing symbol in the air with your fingers. Writhing pillars of divine radiance spear up to five targets within long range. A successful attack on a target inflicts 5 points of damage. If you apply Effort to increase the damage, you deal 2 additional points of damage per level of Effort (instead of 3 points); however, targets take 1 point of damage even if you fail the attack roll. Action.	divine-symbol	1
309	Life Lessons 2	Enabler	-	Choose any two noncombat skills. You are trained in those skills. Enabler.	life-lessons-2	1
333	Defensive Phasing	Action	-	You can change your phase so that some attacks pass through you harmlessly. For the next ten minutes, the difficulty of all your Speed defense tasks is reduced by one step, but during this time you lose any benefit from armor you wear. Action to initiate.	defensive-phasing	1
250	Telepathic	Action	1+ Intellect	You can speak telepathically with others who are within short range. Communication is two-way, but the other party must be willing and able to communicate. You don’t have to see the target, but you must know that it’s within range. You can have more than one active contact at once, but you must establish contact with each target individually. Each contact lasts up to ten minutes. If you apply a level of Effort to increase the duration rather than affect the difficulty, the contact lasts for twenty-four hours. Action to establish contact.	telepathic	1
251	Psychic Burst	Action	3+ Intellect	You blast waves of mental force into the minds of up to three targets within short range (make an Intellect roll against each target). This burst inflicts 3 points of Intellect damage (ignores Armor). For each 2 additional Intellect points you spend, you can make an Intellect attack roll against an additional target. Action.	psychic-burst	1
252	Use Senses of Others	Action	4 Intellect	You can see, hear, smell, touch, and taste through the senses of anyone with whom you have telepathic contact. You can attempt to use this ability on a willing or unwilling target within long range; an unwilling target can try to resist. You don’t need to see the target, but you must know that it’s within range. Your shared senses last ten minutes. Action to establish.	use-senses-others	1
253	Telepathic Network	Enabler	0+ Intellect	When you wish it, you can contact up to ten creatures known to you, no matter where they are. All targets must be willing and able to communicate. You automatically succeed at establishing a telepathic network; no roll is required. All creatures in the network are linked and can communicate telepathically with one another. They can also “overhear” anything said in the network, if they wish. Activating this ability doesn’t require an action and doesn’t cost Intellect points; to you, it’s as easy as speaking out loud. The network lasts until you choose to end it. If you spend 5 Intellect points, you can contact twenty creatures at once, and for every 1 Intellect point you spend above that, you can add ten more creatures to the network. These larger networks last for ten minutes. Creating a network of twenty or more creatures does require an action to establish contact. Enabler.	telepathic-network	1
254	Lab Analysis	Action	3 Intellect	You analyze the scene of a crime, the site of a mysterious incident, or a series of unexplained phenomena, and maybe learn a surprising amount of information about the perpetrators, the participants, or force(s) responsible. To do so, you must collect samples from the scene. Samples are paint or wood scrapings, dirt, photographs of the area, hair, an entire corpse, and so on. With samples in hand, you can discover up to three pertinent pieces of information about the scene, possibly clearing up a lesser mystery and pointing the way to solving a greater one. The GM will decide what you learn and what level of difficulty is needed to learn it. (For comparison, discovering that a victim was killed not by a fall, as seems immediately obvious, but rather by electrocution, is a difficulty 3 task for you.) The difficulty of the task is modified by one step in your favor if you take the time to transport the samples to a permanent lab (if you have access to one), as opposed to conducting the analysis with your field science kit. Action to initiate, 2d20 minutes to complete.	lab-analysis	1
255	Scientist	Enabler	-	You are trained in one area of scientific knowledge of your choice.	scientist	1
256	Modify Device	Action	4 Intellect	You jury-rig a piece of mechanical or electrical equipment to make it function above its rated specs for a very limited time. To do so, you must use spare parts equal to an expensive item, have a field science kit (or a permanent lab, if you have access to one), and succeed at a difficulty 3 Intellect-based task. When complete, using the device modifies all tasks performed in conjunction with the device by one step in the user’s favor, until the device inevitably breaks. For example, you could overclock a computer so research tasks using it are easier, modify an espresso maker so that each cup of coffee made with it is better, modify a car’s engine so that it goes faster (or its steering, so it handles better), and so on. Each use of the modified device requires a depletion roll of 1–5 on a d20. Action to initiate, one hour to complete.	modify-device	1
257	Better Living Through Chemistry	Action	4 Intellect	You’ve developed drug cocktails specifically designed to work with your own biochemistry. Depending on which one you inject, it makes you smarter, faster, or tougher, but when it wears off, the crash is a doozy, so you use it only in desperate situations. You gain 2 to your Might Edge, Speed Edge, or Intellect Edge for one minute, after which you can’t gain the benefit again for one hour. During this follow-up hour, every time you spend points from a Pool, increase the cost by 1. Action.	better-living-through-chemistry	1
258	Extensive Training	Enabler	-	You are specialized in one area of knowledge of your choice. Enabler.	extensive-training	1
259	Just a Bit Mad	Enabler	-	You are trained in Intellect defense tasks. Enabler.	just-bit-mad	1
260	Weird Science Breakthrough	Action	5 Intellect	Your research leads to a breakthrough, and you imbue an object with a truly amazing property, though you can use the item only once. To do so, you must buy spare parts equivalent to an expensive item, have a field science kit (or a permanent lab, if you have access to one), and succeed at a difficulty 4 Intellect-based roll to create a random cypher of up to level 2. The GM decides the nature of the cypher you create. Attempting to create a specified cypher increases the difficulty by two steps. Creating a cypher does not allow you to surpass your normal cypher limit. Action to initiate, one hour to complete.	weird-science-breakthrough	1
261	Incredible Feat of Science	Action	12 Intellect	You do something amazing in the lab. This takes a full day of work (or longer, depending on the circumstances) and parts and materials equivalent to three expensive items. Possible incredible feats include:\r\n• Reanimate and command a dead body for one hour.\r\n• Create an engine that runs on perpetual motion.\r\n• Create a teleportation gate that remains open for one minute.\r\n• Transmute one substance into another substance.\r\n• Cure one person with an incurable disease or condition.\r\n• Create a weapon designed to hurt something that can’t otherwise be hurt.\r\n• Create a defense designed to protect against something that can’t otherwise be stopped.	incredible-feat-science	1
262	Improved Weird Science Breakthrough	Enabler	-	When you successfully use Weird Science Breakthrough, you can create a cypher of up to level 6. Enabler.	improved-weird-science-breakthrough	1
263	Speaker for the Dead	Action	2+ Intellect	You can ask a question of a dead being whose corpse you are touching. Because the answer comes through the filter of the being’s understanding and personality, it can’t answer questions that it wouldn’t have understood in life, and it can’t provide answers that it wouldn’t have known in life. In fact, the being is not compelled to answer at all, so you might need to interact with it in a way that would have convinced it to answer while it was alive. For each additional Intellect point you spend when you activate the ability, you can ask the being an additional question. Action.	speaker-dead	1
264	Necromancy	Action	3+ Intellect	You animate the body of a dead creature of approximately your size or smaller, creating a level 1 creature. It has none of the intelligence, memories, or special abilities that it had in life. The creature follows your verbal commands for one hour, after which it becomes an inert corpse. Unless the creature is killed by damage, you can reanimate it again when its time expires, but any damage it had when it became inert applies to its newly reanimated state. If you have access to multiple bodies, you can create an additional undead creature for each additional Intellect point you spend when you activate the ability. Action to animate.	necromancy	1
265	Reading the Room	Action	3 Intellect	You gain knowledge about an area by speaking with dead spirits or reading residual energies from the past. You can ask the GM a single, matter-of-fact question about the location and get an answer if you succeed on the Intellect roll. “What killed the cattle in this barn?” is a good example of a simple question. “Why were these cattle killed?” is not an appropriate question because it has more to do with the mindset of the killer than the barn. Simple questions usually have a difficulty of 2, but extremely technical questions or those that involve facts meant to be kept secret can have a much higher difficulty. Action.	reading-room	1
266	Greater Necromancy	Action	5+ Intellect	This ability works like the second- tier Necromancy ability except that it creates a level 3 creature. Action to animate.	greater-necromancy	1
267	Death Gaze	Action	6 Intellect	You project a chilling gaze at all living creatures within short range who can see you. Make a separate Intellect attack roll for each target. Success means that the creature is frozen in fear, not moving or taking actions for one minute or until it is attacked. Some creatures without minds (such as robots) might be immune to Death Gaze. Action.	death-gaze	1
268	True Necromancy	Action	8+ Intellect	This ability works like the second-tier Necromancy ability except that it creates a level 5 creature. Action to animate.	true-necromancy	1
269	Beast Companion	Enabler	-	A level 2 creature of your size or smaller accompanies you and follows your instructions. You and\r\nthe GM must work out the details of your creature, and you’ll probably make rolls for it in combat or when it takes actions. The beast companion acts on your turn. Its movement is based on its creature type (avian, swimmer, and so on). If your beast companion dies, you can hunt in the wild for 1d6 days to find a new companion. Enabler.	beast-companion	1
270	Soothe the Savage	Action	2 Intellect	You calm a nonhuman beast within 30 feet (9 m). You must speak to it (although it doesn’t need to understand your words), and it must see you. It remains calm for one minute or for as long as you focus all your attention on it. The GM has final say over what counts as a nonhuman beast, but unless some kind of deception is at work, you should know whether you can affect a creature before you attempt to use this ability on it. Aliens, extradimensional entities, very intelligent creatures, and automatons never count. Action.	soothe-savage	1
271	Communication	Action	2 Intellect	You can convey a basic concept to a creature that normally can’t speak or understand speech. The creature can also give you a very basic answer to a simple question. Action.	communication	1
272	Mount	Enabler	-	A level 3 creature serves you as a mount and follows your instructions. While you’re mounted on it, the creature can move and you can attack on your turn, or it can attack foes when you do. You and the GM must work out the details of the creature, and you’ll probably make rolls for it in combat or when it takes actions. The mount acts on your turn. If your mount dies, you can hunt in the wild for 3d6 days to find a new one. Enabler.	mount	1
273	Beast Eyes	Action	3 Intellect	You can sense through your beast companion’s senses if it is within 1 mile (2 km) of you. This effect lasts up to ten minutes. Action to establish.	beast-eyes	1
275	Beast Call	Action	5 Intellect	You summon a horde of small animals or a single level 4 beast to help you temporarily. These creatures do your bidding for as long as you focus your attention, but you must use your action each turn to direct them. Creatures are native to the area and arrive under their own power, so if you’re in an unreachable place, this ability won’t work. Action.	beast-call	1
276	Control the Savage	Action	6 Intellect	You can control a calm nonhuman beast within 30 feet (9 m). You control it for as long as you focus all your attention on it, using your turn each round. The GM has final say over what counts as a nonhuman beast, but unless some kind of deception is at work, you should know whether you can affect a creature before you attempt to use this ability on it. Aliens, extradimensional entities, very intelligent creatures, and robots never count. Action.	control-savage	1
277	Improved Companion 2	Enabler	-	Your beast companion increases to level 5. Enabler.	improved-companion-2	1
274	Improved Companion 1	Enabler	-	Your beast companion increases to level 4. Enabler.	improved-companion-1	1
278	Lessening Gravity’s Pull	Enabler	-	By manipulating gravity’s pull on yourself, you gain +1 to your Speed Edge. Enabler.	lessening-gravitys-pull	1
279	Gravity Cleave	Action	3 Intellect	You can harm a target within short range by rapidly increasing gravity’s pull on one portion of the target and decreasing it on another, inflicting 6 points of damage. Action.	gravity-cleave	1
280	Field of Gravity	Enabler	4 Intellect	When you wish it, a field of manipulated gravity around you pulls incoming ranged projectile attacks to the ground. You are immune to such attacks until your turn in the next round. You must be aware of an attack to foil it. This ability does not work on energy attacks. Enabler.	field-gravity	1
281	Flight	Action	4+ Intellect	You can float and fly through the air for one hour. For each level of Effort applied, you can affect one additional creature of your size or smaller. You must touch the creature to bestow the power of flight. You direct the other creature’s movement, and while flying, it must remain within sight of you or fall. In terms of overland movement, a flying creature moves about 20 miles (32 km) per hour and is not affected by terrain. Action to initiate.	flight	1
282	Weight of the World	Action	6+ Intellect	You can increase a target’s weight dramatically. The target is pulled to the ground and can’t move physically under its own power for one minute. The target must be within short range. For each level of Effort applied, you can affect one additional creature. Action.	weight-world	1
310	The Best Offense	Enabler	-	You are trained in Might defense, Speed defense, or Intellect defense (your choice). If you are already trained in that type of defense, you are specialized. Enabler.	best-offense	1
335	Ghost	Action	4 Intellect	For the next ten minutes, you are trained in sneaking tasks. During this time, you can move through solid barriers (but not energy barriers) at a rate of 1 foot (30 cm) per round, and you can perceive while phased within a barrier or object, which allows you to peek through walls. Action to initiate.	ghost	1
283	Minor Illusion	Action	1 Intellect	You create a single image of a creature or object within immediate range. The image must fit within a 10-foot (3 m) cube. The image can move (for example, you could make the illusion of a person walk or attack), but it can’t leave the area defined by the cube. The illusion includes sound but not smell. It lasts for ten minutes, but if you want to change the original illusion significantly— such as making a creature appear to be wounded—you must concentrate on it again (though doing so doesn’t cost additional Intellect points). If you move beyond immediate range of the cube, the illusion vanishes. Action to create; action to modify.	minor-illusion	1
284	Disguise	Action	2+ Intellect	You appear to be someone or something else, roughly of your size and shape, for up to one hour. Once created, the disguise requires no concentration. For each additional Intellect point you spend, you can disguise one other creature. All disguised creatures must stay within sight of you or lose their disguise. Action to create.	disguise	1
285	Major Illusion	Action	3 Intellect	You create a complex scene of images within immediate range. The entire scene must fit within a 100-foot (30 m) cube. The images can move, but they can’t leave the area defined by the cube. The illusion includes sound and smell. It lasts for ten minutes and changes as you direct (no concentration is needed). If you move beyond immediate range of the cube, the illusion vanishes. Action to create.	major-illusion	1
286	Illusory Selves	Action	4 Intellect	You create four holographic duplicates of yourself within short range. The duplicates last for one minute. You mentally direct their actions, and the duplicates aren’t mirror images—each one can do different things. If struck violently, they either disappear permanently or freeze motionless (your choice). Action to create.	illusory-selves	1
287	Terrifying Image	Action	6 Intellect	You use a bit of subtle telepathy to learn which images would appear terrifying to creatures that you choose within long range. Those images appear within that area and menace the appropriate creatures. Make an Intellect attack roll against each creature you want to affect. Success means the creature flees in terror for one minute, pursued by its nightmares. Failure means the creature ignores the images, which do not hamper it in any way. Action.	terrifying-image	1
288	Grandiose Illusion	Action	8 Intellect	You create a fantastically complex scene of images that fit within a 1-mile (2 km) cube that you are also within. You must be able to see the images when you create them. The images can move in the cube and act in accordance with your desires. They can also act logically (such as reacting appropriately to fire or attacks) when you aren’t directly observing them. The illusion includes sound and smell. For example, armies can clash in battle, with air support from machines or flying creatures, on and above terrain of your creation. The illusion lasts for one hour (or longer, if you concentrate on it after that time). Action.	grandiose-illusion	1
289	Crafter	Enabler	-	You are trained in the crafting of two kinds of items. Enabler.	crafter	1
290	Master Identifier	Action	-	You are trained in identifying the function of any kind of device. Enabler.	master-identifier	1
291	Tinkerer	Enabler	-	If you spend at least one day tinkering with an artifact in your possession, it functions at one level higher than normal. This applies to all artifacts in your possession, but they retain this bonus only for you. Enabler.	tinkerer	1
292	Quick Work	Action	3+ Intellect	One use of any artifact (or one minute of its continuous function) is increased by one level if you use it within the next minute. If you spend 4 additional Intellect points, the use is increased by two levels if you use it within the next minute. Action.	quick-work	1
293	Master Crafter	Enabler	-	You are trained in the crafting of two more kinds of items, or you are specialized in two kinds of items that you are already trained in. Enabler.	master-crafter	1
294	Cyphersmith	Enabler	-	All cyphers you use function at one level higher than normal. If given a week and the right tools, chemicals, and parts, you can tinker with one of your cyphers, transforming it into another cypher of the same type that you had in the past. The GM and player should collaborate to ensure that the transformation is logical— for example, you probably can’t transform a pill into a helmet. Enabler.	cyphersmith	1
295	Innovator	Enabler	-	You can modify any artifact to give it different or better abilities as if that artifact were one level lower than normal, and the modification takes half the normal time. Enabler.	innovator	1
296	Inventor	Enabler	-	You can create new artifacts in half the time, as if they were two levels lower, by spending half the normal XP. Enabler.	inventor	1
297	Courageous	Enabler	-	You are trained in Intellect defense tasks and initiative tasks. Enabler.	courageous	1
298	Warding Shield	Enabler	-	You have +1 to Armor while you are wielding a shield. Enabler.	warding-shield	1
299	Devoted Defender	Action	2 Intellect	Choose one character you can see. That character becomes your ward. You are trained in all tasks involving finding, healing, interacting with, and protecting your ward. You can have only one ward at a time. Action to initiate.	devoted-defender	1
300	Astute	Enabler	-	You are trained in tasks to discern others’ motives and to ascertain their general nature. You have a knack for sensing whether or not someone is truly innocent. Enabler.	astute	1
301	True Guardian	Enabler	2 Might	When you stand guard as your action, you decrease the difficulty of all defense tasks by one step for characters you choose that are adjacent to you. This lasts until the end of your next turn. Enabler.	true-guardian	1
302	Combat Challenge	Enabler	-	You are trained in intimidation tasks and in Intellect tasks made to draw an attack. Enabler.	combat-challenge	1
303	Willing Sacrifice	Enabler	-	When you take an attack for another character, the attack does not deal 1 additional point of damage. Enabler.	willing-sacrifice	1
304	Drive Back	Enabler	4 Might	When you deal damage with an attack, you can drive the creature away from your companions. Until the end of the next round, all characters other than you have an asset on Speed defense rolls made to resist attacks from this creature. Enabler.	drive-back	1
305	True Defender	Action	6 Intellect	This ability functions as your Devoted Defender ability, except the benefit applies to up to three characters you choose. If you choose just one character, you become specialized in the tasks described under the Devoted Defender ability. Action to initiate.	true-defender	1
307	Totally Chill	Enabler	-	Your ten-minute recovery roll takes you only one round. Enabler.	totally-chill	1
306	Life Lessons 1	Enabler	-	Choose any two noncombat skills. You are trained in those skills. Enabler.	life-lessons-1	1
312	Drawing on Life’s Experiences	Action	6 Intellect	You’ve seen a lot and done a lot, and that experience comes in handy. Ask the GM one question, and you’ll receive a general answer. The GM assigns a level to the question, so the more obscure the answer, the more difficult the task. Generally, knowledge that you could find by looking somewhere other than your current location is level 1, and obscure knowledge of the past is level 7. Action.	drawing-lifes-experiences	1
313	Move Metal	Action	1 Intellect	You can exert force on metal objects within short range for one round. Once activated, your power has an effective Might Pool of 10, a Might Edge of 1, and an Effort of 2 (approximately equal to the strength of a fit, capable adult human), and you can use it to move metal objects, push against metal objects, and so on. For example, in your round, you could lift and pull a light metal object anywhere within range to yourself or move a heavy object (like a piece of furniture) about 10 feet (3 m). This power lacks the fine control to wield a weapon or move objects with much speed, so in most situations, it’s not a means of attack. You can’t use this ability on your own body. Action.	move-metal	1
314	Repel Metal	Enabler	-	By manipulating magnetism, you are trained in Speed defense tasks against any incoming attack that uses metal. Enabler.	repel-metal	1
315	Destroy Metal	Action	3 Intellect	You instantly tear, rip, or burst a metal object that is within sight, within short range, and no bigger than half your size. Make an Intellect roll to destroy the object; the difficulty of this task is decreased by three steps (compared to breaking it with brute strength). Action.	destroy-metal	1
316	Magnetic Field	Enabler	4 Intellect	When you wish it, a field of magnetism around you pulls incoming ranged, metallic projectile attacks (such as arrows, bullets, a thrown metal knife, and so on) to the ground. You are immune to such attacks for one round. You must be aware of an attack to foil it. Enabler.	magnetic-field	1
317	Command Metal	Action	5 Intellect	You reshape a metallic item as you desire. The item must be within sight and within short range, and its mass can be no greater than your own. You can affect multiple items at once as long as their combined mass falls within these limits. You can fuse multiple items together. You can use this power to destroy a metal object (as the Destroy Metal ability), or you can craft it into another desired shape (crudely, unless you have the proper crafting skills). You can then move the new object anywhere within range. For example, you could take a few metal shields, fuse them together, and use the resulting shape to block a doorway. You can use this ability to make an attack— causing a foe’s armor to constrict, rendering a metal item into shards that you fling across the battlefield, and so on—against one target within short range. Regardless of the form of the attack, it is an Intellect action that deals 7 points of damage. Action.	command-metal	1
318	Diamagnetism	Enabler	-	You magnetize any nonmetallic object within short range so that it can be affected by your other powers. Thus, with Move Metal, you can move any object. With Repel Metal, you are trained in all Speed defense tasks, regardless of whether the incoming attack uses metal. And so on. Enabler.	diamagnetism	1
319	Levity	Enabler	-	Through wit, charm, humor, and grace, you are trained in all social interactions other than those involving coercion or intimidation. During rests, you put friends and comrades at ease so much that they gain +1 to their recovery rolls. Enabler.	levity	1
320	Inspiration	Enabler	-	Through stories, songs, art, or other forms of entertainment, you inspire your friends. After spending twenty-four hours with you, once per day each of your friends can decrease the difficulty of a task by one step. This benefit is ongoing while you remain in the friend’s company. It ends if you leave, but it resumes if you return to the friend’s company within twenty-four hours. If you leave the friend’s company for longer than that, you must spend another twenty-four hours together to reactivate the benefit. Enabler.	inspiration	1
321	Knowledge	Enabler	-	Your stories and songs contain truth. You are trained in two areas of knowledge of your choosing. Enabler.	knowledge	1
322	Calm	Action	3 Intellect	Through jokes, song, or other art, you prevent a living foe from attacking anyone or anything for one round. Action.	calm	1
323	Able Assistance	Enabler	-	When you help someone with a task, you always reduce the difficulty of the task by one step regardless of your own skill at that task. Enabler.	able-assistance	1
324	Master Entertainer	Enabler	-	Your Inspiration ability works more effectively, allowing your friends to decrease the difficulty of a task by two steps rather than one step. Enabler.	master-entertainer	1
325	Duplicate	Action	2 Might	You cause a duplicate of yourself to appear at any point you can see within short range. The duplicate has no clothing or possessions when it appears. The duplicate is a level 2 NPC with 6 health. The duplicate obeys your commands and does as you direct it. The duplicate remains until you dismiss it using an action or until it is killed. When the duplicate disappears, it leaves behind anything it was wearing or carrying. If the duplicate disappears because it was killed, you take 4 points of damage that ignore Armor, and you lose your next action. Action to initiate.	duplicate	1
326	Share Senses	Enabler	-	While your duplicate is in existence and within 1 mile (2 km), you know everything it experiences and can communicate with it telepathically. Enabler.	share-senses	1
327	Superior Duplicate	Enabler	2 Might	When you use your Duplicate ability, you can create a superior duplicate instead of a normal duplicate. A superior duplicate is a level 3 NPC with 15 health. Enabler.	superior-duplicate	1
328	Damage Transference	Enabler	-	When you or your duplicate would take damage, you can transfer 1 point of damage from one to the other provided that you and your duplicate are within 1 mile (2 km) of each other. Enabler.	damage-transference	1
329	Coordinated Effort	Action	3 Intellect	When you and your duplicate would attack the same creature, you can choose to make one attack roll with an asset. If you hit, you inflict damage with both attacks and treat the attacks as if they were one attack for the purpose of subtracting Armor from the damage. Action.	coordinated-effort	1
330	Resilient Duplicate	Enabler	-	Increase the health of any duplicate you create by 5.	resilient-duplicate	1
331	Multiplicity	Action	6 Might	This ability functions as Duplicate, except you can create two duplicates. Action to initiate.	multiplicity	1
332	Walk Through Walls	Action	2 Intellect	You can slowly pass through physical barriers at a rate of 1 inch (3 cm) per round (minimum of one round to pass through any barrier). You can’t act (other than moving) or perceive anything until you pass entirely through the barrier. You can’t pass through energy barriers. Action.	walk-through-walls	1
334	Phased Attack	Enabler	3 Intellect	The attack you make on this turn ignores your foe’s Armor. The ability works for whatever kind of attack you use (melee, ranged, energy, and so on). Enabler.	phased-attack	1
336	Untouchable	Action	6 Intellect	You change your phase state for the next minute so that you can’t affect or be affected by normal matter or energy. Only mental attacks and special transdimensional energies, devices, or abilities can affect you, but likewise you can’t attack, touch, or otherwise affect anything. Action to initiate.	untouchable	1
337	Enhanced Phased Attack	Enabler	5 Intellect	This ability works like the third-tier Phased Attack ability except that your attack also disrupts the foe’s vitals, dealing 5 additional points of damage. Enabler.	enhanced-phased-attack	1
338	Trained Explorer	Enabler	-	You are trained in searching, listening, climbing, balancing, and jumping tasks. Enabler.	trained-explorer	1
339	Trained Infiltrator	Enabler	-	You are trained in lockpicking and tinkering with devices. Enabler.	trained-infiltrator	1
340	Eyes Adjusted	Enabler	-	You can see in very dim light as though it were bright light. You can see in total darkness as if it were very dim. Enabler.	eyes-adjusted	1
341	Slippery Customer	Enabler	-	You are trained in escaping from bonds, fitting in tight spaces, and other contortionist tasks. Thanks to your experience, you also are trained in Speed defense tasks while wearing light armor or no armor. Enabler.	slippery-customer	1
342	Resilient	Enabler	-	In your explorations of dark places, you’ve been exposed to all sorts of terrible things and are developing a general resistance. You gain +1 to Armor and are trained in Might defense tasks. Enabler.	resilient	1
343	Dark Explorer	Enabler	-	You ignore penalties for any action (including fighting) in very dim light or in cramped spaces. Combined with your Eyes Adjusted ability, you can act without penalty even in total darkness. You are also trained in sneaking tasks while in dim or no light. Enabler.	dark-explorer	1
344	Blinding Attack	Action	3 Speed	If you have a source of light, you can use it to make a melee attack against a target. If successful, the attack deals no damage, but the target is blinded for one minute. Action.	blinding-attack	1
345	Diver	Enabler	-	You can safely dive into water from heights of up to 100 feet (30 m), and you can withstand pressure when in water as deep as 100 feet (30 m). Enabler.	diver	1
346	Hold Breath	Enabler	-	You can hold your breath for up to five minutes. Enabler.	hold-breath	1
347	Trained Swimmer	Enabler	-	While underwater, you are trained in escaping, perception, sneaking, and swimming tasks, as well as in tasks to identify aquatic creatures and geography. Enabler.	trained-swimmer	1
348	Resist Underwater Hazards	Enabler	-	Whether you’re resisting the crushing waters from exploring the depths or a sting from a poisonous fish, the difficulty of all defense actions while submerged in water is reduced by one step. Enabler.	resist-underwater-hazards	1
349	Aquatic Combat	Enabler	-	You ignore penalties for any action (including fighting) in underwater environments. Enabler.	aquatic-combat	1
350	Athletic Conditioning	Enabler	-	You add 1 point to your Might Pool and your Speed Pool. Enabler.	athletic-conditioning	1
351	Nimble Swimmer	Enabler	-	You are trained in all defense actions while underwater. Enabler.	nimble-swimmer	1
352	Swim	Action	1+ Intellect	You can swim like a fish through water and similar liquid for one hour. For each level of Effort applied, you can extend the duration by one hour. You swim about 10 miles (16 km) per hour, and you are not affected by currents in the water. Action to initiate.	swim	1
353	Communication (Underwater)	Action	2 Intellect	You can convey a basic concept or ask a simple question to a creature that lives underwater and cannot speak or understand speech, and the creature can provide you with a basic answer. Action.	communication-underwater	1
354	Elusive	Enabler	2 Speed	When you succeed on a Speed defense action, you immediately gain an action. You can use this action only to move. Enabler.	elusive	1
355	Deep Water Guide	Enabler	-	While underwater, any creature you choose that can see you has an asset on swimming tasks. Enabler.	deep-water-guide	1
356	Master of the Deep Waters	Enabler	-	While underwater, your Might Edge, Speed Edge, and Intellect Edge each increase by 1. Enabler.	master-deep-waters	1
357	Water Adaptation	Enabler	-	You can breathe water as easily as you breathe air. Enabler.	water-adaptation	1
358	Taking Advantage	Enabler	-	When your foe is weakened, dazed, stunned, moved down the damage track, or disadvantaged in some other way, the difficulty of your attacks against that foe is decreased by one step beyond any other modifications due to the disadvantage. Enabler.	taking-advantage	1
359	Liar	Enabler	-	You are trained in all forms of deception. Enabler.	liar	1
360	Eye Gouge	Action	2 Speed	You make an attack against a creature with an eye. The difficulty of the attack is increased by one step, but if you hit, the creature has trouble seeing for the next hour. During this time, the difficulty of the creature’s tasks that rely on sight (which is most tasks) is increased by one step. Action.	eye-gouge	1
361	Spot Weakness	Enabler	-	If a creature that you can see has a special weakness, such as a vulnerability to fire, a negative modification to perception, or so on, you know what it is. (Ask and the GM will tell you.) Enabler.	spot-weakness	1
362	Betrayal	Enabler	-	Any time you convince a foe that you are not a threat and then suddenly attack it (without provocation), the attack deals 4 additional points of damage. Enabler.	betrayal	1
363	Mind Games	Action	3 Intellect	You use lies and trickery against a foe that can understand you. If successful, the foe is stunned for one round and cannot act, and it is dazed in the following round, during which time the difficulty of its tasks is increased by one step.	mind-games	1
364	Tooth and Nail	Enabler	-	If, during a melee combat, you are willing to literally bite and claw at a foe in addition to attacking with your normal weapon, you inflict 1 additional point of damage each time you strike with your standard attack. Some creatures (such as automatons or incorporeal creatures) might not be subject to this, and attempting to bite some creatures might be dangerous. Enabler.	tooth-and-nail	1
365	Using the Environment	Action	4 Intellect	You find some way to use the environment to your advantage in a fight. For the next ten minutes, the difficulty of attack rolls and Speed defense rolls is decreased by one step. Action to initiate.	using-environment	1
366	Twisting the Knife	Action	4 Speed	In a round after successfully striking a foe with a melee weapon, you can opt to automatically deal standard damage to the foe with that same weapon without any modifiers (2 points for a light weapon, 4 points for a medium weapon, or 6 points for a heavy weapon). Action.	twisting-knife	1
\.


--
-- Data for Name: cyphercore_artifact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_artifact (id, name, level_range, effect, depletion, slug, genre_id, sourcebook_id, form) FROM stdin;
1	Angelic Ward	1d6+2	Once activated, the figurine’s spirit emerges and becomes semisolid as a glowing, human-sized winged angel. It follows within 3 feet (1 m) of the figurine owner. Anything within long range that attacks the owner is attacked by the spirit ward, which sends out a bolt of flesh-rotting energy, doing damage equal to the artifact’s level. Once activated, it functions for a day.	1 in 1d10	angelic-ward	1	1	A tiny figurine of a winged angel.
\.


--
-- Data for Name: cyphercore_character; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_character (id, name, background, notes, tier, effort, cypher_limit, money, xp, might_current, might_pool, might_edge, speed_current, speed_pool, speed_edge, intellect_current, intellect_pool, intellect_edge, armor, recovery_roll, impaired, debilitated, one_action, ten_minutes, one_hour, ten_hours, slug, descriptor_id, focus_id, type_id, genre_id, portrait_link) FROM stdin;
1	Aldor Donatus			1	1	2	0	0	15	15	0	10	10	0	13	13	1	0	1	f	f	f	f	f	f	aldor-donatus	42	11	4	1	
\.


--
-- Data for Name: cyphercore_character_abilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_character_abilities (id, character_id, ability_id) FROM stdin;
1	1	243
2	1	244
3	1	149
4	1	151
5	1	154
6	1	156
\.


--
-- Data for Name: cyphercore_characterartifact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_characterartifact (id, level, artifact_id, character_id) FROM stdin;
1	6	1	1
\.


--
-- Data for Name: cyphercore_charactercypher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_charactercypher (id, level, appearance, character_id, cypher_id) FROM stdin;
1	5	This is a test.	1	1
\.


--
-- Data for Name: cyphercore_characterequipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_characterequipment (id, quantity, character_id, equipment_id) FROM stdin;
1	1	1	15
2	1	1	29
3	1	1	21
\.


--
-- Data for Name: cyphercore_characterskill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_characterskill (id, skill_level, character_id, skill_id) FROM stdin;
6	T	1	8
7	T	1	9
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
42	Strong	You’re extremely strong and physically powerful, and you use these qualities well, whether through violence or feats of prowess. You likely have a brawny build and impressive muscles.	Very Powerful: +4 to your Might Pool.\r\nSkill: You’re trained in all actions involving breaking inanimate objects.\r\nSkill: You’re trained in all jumping actions.\r\nAdditional Equipment: You have an extra medium weapon or heavy weapon.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger.\r\n2. One of the other PCs convinced you that joining the group would be in your best interests.\r\n3. You’re afraid of what might happen if the other PCs fail.\r\n4. There is reward involved, and you need the money.	strong	1
17	Graceful	You have a perfect sense of balance, moving and speaking with grace and beauty. You’re quick, lithe, flexible, and dexterous. Your body is perfectly suited to dance, and you use that advantage in combat to dodge blows. You might wear garments that enhance your agile movement and sense of style.	Agile: +2 to your Speed Pool.\r\nSkill: You’re trained in all tasks involving balance and careful movement.\r\nSkill: You’re trained in all tasks involving physical performing arts.\r\nSkill: You’re trained in all Speed defense tasks.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger.\r\n2. One of the other PCs convinced you that joining the group would be in your best interests.\r\n3. You’re afraid of what might happen if the other PCs fail.\r\n4. There is reward involved, and you need the money.	graceful	1
38	Sharp-Eyed	You’re perceptive and well aware of your surroundings. You notice the little details and remember them. You can be difficult to surprise.	Skill: You’re trained in initiative actions.\r\nSkill: You’re trained in perception actions.\r\nFind the Flaw: If an opponent has a straightforward weakness (takes extra damage from fire, can’t see out of his left eye, and so on), the GM will tell you what it is.	1. You heard about what was going on, saw a flaw in the other PCs’ plan, and joined up to help them out.\r\n2. You noticed that the PCs have a foe (or at least a tail) they weren’t aware of.\r\n3. You saw that the other PCs were up to something interesting and got involved.\r\n4. You’ve been noticing some strange things going on, and this all appears related.	sharp-eyed	1
4	Charming	You’re a smooth talker and a charmer. Whether through seemingly supernatural means or just a way with words, you can convince others to do as you wish. Most likely, you’re physically attractive or at least highly charismatic, and others enjoy listening to your voice. You probably pay attention to your appearance, keeping yourself well groomed. You make friends easily. You play up the personality facet of your Intellect stat; intelligence is not your strong suit. You’re personable, not necessarily studious or strong-willed.	Personable: +2 to your Intellect Pool.\r\nSkill: You’re trained in all tasks involving positive or pleasant social interaction.\r\nSkill: You’re trained when using special abilities that influence the minds of others.\r\nContact: You have an important contact who is in an influential position, such asa minor noble, the captain of the town guard/police, or the head of a large gang of thieves. You and the GM should work out the details together.\r\nInability: You were never good at studying or retaining facts. The difficulty of any task involving lore, knowledge, or understanding is increased by one step.\r\nInability: Your willpower is not one of your strong points. Whenever you try to resist a mental attack, the difficulty is increased by one step.\r\nAdditional Equipment: You’ve managed to talk your way into some decent discounts and bonuses in recent weeks. As a result, you have enough cash jangling in your pocket to purchase a moderately priced item.	1. You convinced one of the other PCs to tell you what he was doing.\r\n2. You instigated the whole thing and convinced the others to join you.\r\n3. One of the other PCs did a favor for you, and now you’re repaying that obligation by helping her with the task at hand.\r\n4. There is reward involved, and you need the money.	charming	1
2	Brash	You’re a self-assertive sort, confident in your abilities, energetic, and perhaps a bit irreverent toward ideas that you don’t agree with. Some people call you bold and brave, but those you’ve put in their place might call you puffed up and arrogant. Whatever. It’s not in your nature to care what other people think about you, unless those people are your friends or family. Even someone as brash as you knows that friends sometimes have to come first.	Energetic: +2 to your Speed Pool.\r\nSkill: You are trained in initiative.\r\nBold: You are trained in all actions that involve overcoming or ignoring the effects of fear or intimidation.	1. You noticed something weird going on, and without much thought, you jumped in with both feet.\r\n2. You showed up when and where you did on a dare because, hey, you don’t back down from dares.\r\n3. Someone called you out, but instead of walking into a fight, you walked into your current situation.\r\n4. You told your friend that nothing could scare you, and nothing you saw would change your mind. She brought you to your current point.	brash	1
44	Swift	You move quickly, able to sprint in short bursts and work with your hands with dexterity. You’re great at crossing distances quickly but not always smoothly. You are likely slim and muscular.	Fast: +4 to your Speed Pool.\r\nSkill: You’re trained in initiative actions (to determine who goes first in combat).\r\nSkill: You’re trained in running actions.\r\nInability: You’re fast but not necessarily graceful. The difficulty of any task involving balance is increased by one step.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger.\r\n2. One of the other PCs convinced you that joining the group would be in your best interests.\r\n3. You’re afraid of what might happen if the other PCs fail.\r\n4. There is reward involved, and you need the money.	swift	1
43	Strong-Willed	You’re tough-minded, willful, and independent. No one can talk you into anything or change your mind when you don’t want it changed. This quality doesn’t necessarily make you smart, but it does make you a bastion of willpower and resolve. You likely dress and act with unique style and flair, not caring what others think.	Willful: +4 to your Intellect Pool.\r\nSkill: You’re trained in resisting mental effects.\r\nSkill: You’re trained in tasks requiring incredible focus or concentration.\r\nInability: Willful doesn’t mean brilliant. The difficulty of any task that involves figuring out puzzles or problems, memorizing things, or using lore is increased by one step.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger.\r\n2. One of the other PCs convinced you that joining the group would be in your best interests.\r\n3. You’re afraid of what might happen if the other PCs fail.\r\n4. There is reward involved, and you need the money.	strong-willed	1
3	Calm	You’ve spent most of your life in sedentary pursuits—books, movies, hobbies, and so on—rather than active ones. You’re well versed in all manner of academia or other intellectual pursuits, but nothing physical. You’re not weak or feeble, necessarily (although this is a good descriptor for characters who are elderly), but you have no experience in more physical activities.	Bookish: +2 to your Intellect Pool.\r\nSkills: You are trained in four nonphysical skills of your choice.\r\nTrivia: You can come up with a random fact pertinent to the current situation when you wish it. This is always a matter of fact, not conjecture or supposition, and must be something you could have logically read or seen in the past. You can do this one time, although the ability is renewed each time you make a recovery roll.\r\nInability: You’re just not a fighter. The difficulty of all physical attacks is increased by one step.\r\nInability: You’re not the outdoorsy type. The difficulty of all climbing, running, jumping, and swimming tasks is increased by one step.	1. You read about the current situation somewhere and decided to check it out for yourself.\r\n2. You were in the right (wrong?) place at the right (wrong?) time.\r\n3. While avoiding an entirely different situation, you walked into your current situation.\r\n4. One of the other PCs dragged you into it.	calm	1
6	Clumsy	Graceless and awkward, you were told that you’d grow out of it, but you never did. You often drop things, trip over your own feet, or knock things (or people) over. Some people get frustrated by this quality, but most find it funny and even a little charming.	Butterfingers: −2 to your Speed Pool. Thick-Muscled: +2 to your Might Pool.\r\nInelegant: You have a certain lovable charm. You are trained in all pleasant social interactions when you express a lighthearted, self-deprecating manner.\r\nDumb Luck: The GM can introduce a GM intrusion on you, based on your clumsiness, without awarding you any XP (as if you had rolled a 1 on a d20 roll). However, if this happens, 50% of the time, your clumsiness works to your advantage. Rather than hurting you (much), it helps, or it hurts your enemies. You slip, but it’s just in time to duck an attack. You fall down, but you trip your enemies as you crash into their legs. You turn around too quickly, but you end up knocking the weapon from your foe’s hand. You and the GM should work together to determine the details. The GM can use GM intrusions based on your clumsiness normally (awarding XP) if she desires.\r\nSkill: You’ve got a certain bull-like quality. You are trained in tasks involving breaking things.\r\nInability: The difficulty of any task that involves balance, grace, or hand-to-eye coordination is increased by one step.	1. You were in the right place at the right time.\r\n2. You had a piece of information that the other PCs needed to make their plans.\r\n3. A sibling recommended you to the other PCs.\r\n4. You stumbled into the PCs as they were discussing their mission, and they took a liking to you.	clumsy	1
18	Guarded	You conceal your true nature behind a mask and are loath to let anyone see who you really are. Protecting yourself, physically and emotionally, is what you care about most, and you prefer to keep everyone else at a safe distance. You may be suspicious of everyone you meet, expecting the worst from people so you won’t be surprised when they prove you right. Or you might just be a bit reserved, careful about letting people through your gruff exterior to the person you really are.\r\nNo one can be as reserved as you are and make many friends. Most likely, you have an abrasive personality and tend to be pessimistic in your outlook. You probably nurse an old hurt and find that the only way you can cope is to keep it and your personality locked down.	Suspicious: +2 to your Intellect Pool.\r\nSkill: You are trained in all Intellect defense tasks.\r\nSkill: You are trained in all tasks involving discerning the truth, piercing disguises, and recognizing falsehoods and other deceptions.\r\nInability: Your suspicious nature makes you unlikeable. The difficulty of any task involving deception or persuasion is increased by one step.	1. One of the PCs managed to overcome your defenses and befriend you.\r\n2. You want to see what the PCs are up to, so you accompany them to catch them in the act of some wrongdoing.\r\n3. You have made a few enemies and take up with the PCs for protection.\r\n4. The PCs are the only people who will put up with you.	guarded	1
5	Clever	You’re quick-witted, thinking well on your feet. You understand people, so you can fool them but are rarely fooled. Because you easily see things for what they are, you get the lay of the land swiftly, size up threats and allies, and assess situations with accuracy. Perhaps you’re physically attractive, or maybe you use your wit to overcome any physical or mental imperfections.	Smart: +2 to your Intellect Pool.\r\nSkill: You’re trained in all interactions involving lies or trickery.\r\nSkill: You’re trained in defense rolls to resist mental effects.\r\nSkill: You’re trained in all tasks involving identifying or assessing danger, lies, quality, importance, function, or power.\r\nInability: You were never good at studying or retaining trivial knowledge. The difficulty of any task involving lore, knowledge, or understanding is increased by one step.\r\nAdditional Equipment: You see through the schemes of others and occasionally convince them to believe you—even when, perhaps, they should not. Thanks to your clever behavior, you have an additional expensive item.	1. You convinced one of the other PCs to tell you what he was doing.\r\n2. From afar, you observed that something interesting was going on.\r\n3. You talked your way into the situation because you thought it might earn some money. 4. You suspect that the other PCs won’t\r\nsucceed without you.	clever	1
8	Creative	Maybe you have a notebook where you write down ideas so you can develop them later. Perhaps you email yourself ideas that strike you out of the blue so you can sort them in an electronic document. Or maybe you just sit down, stare at your screen and, by indomitable force of will, produce something from nothing. However your gift works, you’re creative—you code, write, compose, sculpt, design, direct, or otherwise create narratives that enthrall other people with your vision.	Inventive: +2 to your Intellect Pool. Original: You’re always coming up with something new. You’re trained in any task related to creating a narrative (such as a story, play, or scenario). This includes deception, if the deception involves a narrative you’re able to tell.\r\nSkill: You are naturally inventive. You are trained in one specific creative skill of your choice: writing, computer coding, music composition, and so on.\r\nSkill: You love solving riddles and the like. You are trained in puzzle-solving tasks. Skill: To be creative requires that you always be learning. You are trained in any task that involves learning something new, such as when you’re digging through a library, data bank, news archive, or similar collection of knowledge.\r\nInability: You’re inventive but not charming. The difficulty of all tasks related to pleasant social interaction is one step higher for you.	1. You were doing research for a project and convinced the PCs to bring you along. 2. You’re looking for new markets for the results of your creative output.\r\n3. You fell in with the wrong crowd, but they grew on you.\r\n4. A creative life is often one beset with financial hurdles. You joined the PCs because you hoped it would be profitable.	creative	1
10	Dishonorable	There is no honor among thieves—or betrayers, backstabbers, liars, or cheats. You are all of these things, and either you don’t lose any sleep over it, or you deny the truth to others or to yourself. Regardless, you are willing to do whatever it takes to get your own way. Honor, ethics, and principles are merely words. In your estimation, they have no place in the real world.	Sneaky: +4 to your Speed Pool.\r\nJust Desserts: When the GM gives another player an experience point to award to someone for a GM intrusion, that player cannot give it to you.\r\nSkill: You are trained in deception.\r\nSkill: You are trained in stealth.\r\nSkill: You are trained in intimidation.\r\nInability: People don’t like or trust you. The difficulty of pleasant social interactions is increased by one step.	1. You are interested in what the PCs are doing, so you lied to them to get into their group.\r\n2. While skulking about, you overheard the PCs’ plans and realized that you wanted in.\r\n3. One of the other PCs invited you, having no idea of what you’re truly like.\r\n4. You bullied your way in with intimidation and bluster.	dishonorable	1
11	Doomed	You are quite certain that your fate is leading you, inextricably, toward a terrible end. This fate might be yours alone, or you might be dragging along the others closest to you.	Jumpy: +2 to your Speed Pool.\r\nSkill: Always on the lookout for danger, you are trained in perception-related tasks. Skill: You are defense minded, so you are trained in Speed defense tasks.\r\nSkill: You are cynical and expect the worst. Thus, you are resistant to mental shocks. You are trained in Intellect defense tasks having to do with losing your sanity.\r\nDoom: Every other time the GM uses GM intrusion on your character, you cannot refuse it and do not get an XP for it (you still get an XP to award to another player). This is because you are doomed. The universe is a cold, uncaring place, and your efforts are futile at best.	1. You attempted to avoid it, but events seemed to conspire to draw you to where you are.\r\n2. Why not? It doesn’t matter. You’re doomed no matter what you do.\r\n3. One of the other PCs saved your life, and now you’re repaying that obligation by helping her with the task at hand.\r\n4. You suspect that the only hope you have of avoiding your fate might lie on this path.	doomed	1
12	Driven	You have set your sights on a goal, and everything you do is in pursuit of that objective. The thing you seek defines you—it shapes your decisions, colors your outlook, and impels you to take action even when your body and mind scream for you to give up and set the task aside, at least for a while. No matter the hardships you face along the way, you believe in your purpose and will let nothing stop you from achieving it.\r\nWhen you choose this descriptor, choose a goal that is possible to attain. You might set a goal of finding a lost parent, making a sacrifice at a rumored temple, learning how to perform a particular task, or gaining the funds to pay for medical treatment for a loved one. Once you achieve this goal, you may choose a new one.\r\nYou probably talk about your mission all the time, bringing it up even when it’s only tangentially connected to the conversation. You usually consider other pursuits in the context of whether or not they advance your own agenda.	Determined: +2 to your Might Pool.\r\nSkill: You’re trained in Intellect defense\r\nSkill: Each day, choose one skill that you believe will clearly help you reach your goal. You are trained in tasks related to that skill.\r\nInability: Your commitment to your goals makes it hard to relate to others who don’t share your objectives or to notice things that don’t pertain to your present mission. The difficulty of all perception tasks is increased by one step.	1. You saw that the other PCs were pursuing the same goal as you, and you believed that joining forces would improve both of your chances at attaining your objectives.\r\n2. One of the PCs gave you information or other assistance in your mission, and you now repay the favor.\r\n3. Helping the PCs may put key resources you need to complete your mission into your hands.\r\n4. One of the other PCs found you when you were wounded and nursed you back to health.	driven	1
14	Exiled	You have walked a long and lonely road, leaving your home and your life behind. You might have committed a heinous crime, something so awful that your people forced you out, and if you dare return, you face death. You might have been accused of a crime you didn’t commit and now must pay the price for someone else’s wicked deed. Your exile might be the result of a social gaffe— perhaps you shamed your family or a friend, or you embarrassed yourself in front of your peers, an authority, or someone you respect. Whatever the reason, you have left your old life behind and now strive to make a new one.\r\nYou probably have a memento from your past—an old picture, a locket with a few strands of hair inside, or a lighter given to you by someone important. You keep the object close at hand and pull it out to help you remember better times.	Self-Reliant: +2 to your Might Pool. Loner: You gain no benefit when you get help with a task from another character who is trained or specialized in that task.\r\nSkill: You’re trained in all tasks involving sneaking.\r\nSkill: You’re trained in all tasks involving foraging, hunting, and finding safe places to rest or hide.\r\nInability: Living on your own for as long as you have makes you slow to trust others and awkward in social situations. The difficulty of any task involving social interactions is increased by one step.	1. The other PCs earned your trust by helping you when you were in need. You accompany them to repay their aid.\r\n2. While exploring on your own, you discovered something strange. When you traveled to a settlement, the PCs were the only ones who believed you, and they have accompanied you to help you deal with the problem.\r\n3. One of the other PCs reminds you of someone you used to know.\r\n4. You have grown weary of your isolation. Joining the other PCs gives you a chance to belong.	exiled	1
16	Foolish	Not everyone can be brilliant. Oh, you don’t think of yourself as stupid, and you’re not. It’s just that others might have a bit more... wisdom. Insight. You prefer to barrel along headfirst through life and let other people worry about things. Worrying’s never helped you, so why bother? You take things at face value and don’t fret about what tomorrow might bring.\r\nPeople call you “idiot” or “numbskull,” but it doesn’t faze you much.	Unwise: −4 to your Intellect Pool. Carefree: You succeed more on luck than anything. Every time you roll for a task, roll twice and take the higher result.\r\nIntellect Weakness: Any time you spend points from your Intellect Pool, it costs you 1 more point than usual.\r\nInability: The difficulty of any Intellect defense task is increased by one step.\r\nInability: The difficulty of any task that involves seeing through a deception, an illusion, or a trap is increased by one step.	1. Who knows? Seemed like a good idea at the time.\r\n2. Someone asked you to join up with the other PCs. They told you not to ask too many questions, and that seemed fine to you.\r\n3. Your parent (or a parental/mentor figure) got you involved to give you something to do and maybe “teach you some sense.”\r\n4. The other PCs needed some muscle that wouldn’t overthink things.	foolish	1
15	Fast	You’re fleet of foot. Because you’re quick, you can accomplish tasks more rapidly than others can. You’re not just quick on your feet, however—you’re quick with your hands, and you think and react quickly. You even talk quickly.	Energetic: +2 to your Speed Pool.\r\nSkill: You are trained in running.\r\nFast: You can move a short distance and still take another action in the same round, or you can move a long distance as your action without needing to make any kind of roll.\r\nInability: You’re a sprinter, not a long-distance runner. You don’t have a lot of stamina. The difficulty of any Might defense roll is increased by one step.	1. You jumped in to save one of the other PCs who was in dire need.\r\n2. One of the other PCs recruited you for your unique talents.\r\n3. You’re impulsive, and it seemed like a good idea at the time.\r\n4. This mission ties in with a personal goal of your own.	fast	1
30	Mechanical	You have a special talent with machines of all kinds, and you’re adept at understanding and, if need be, repairing them. Perhaps you’re even a bit of an inventor, creating new machines from time to time. You get called “techie,” “tech,” “mech,” “gear-head,” “motor-head,” or any of a number of other nicknames. Mechanics usually wear practical work clothes and carry around a lot of tools.	Smart: +2 to your Intellect Pool.\r\nSkill: You’re trained in all actions involving identifying or understanding machines. Skill: You’re trained in all actions involving using, repairing, or crafting machines. Additional Equipment: You start with a variety of machine tools.	1. While repairing a nearby machine, you overheard the other PCs talking.\r\n2. You need money to buy tools and parts.\r\n3. It was clear that the mission couldn’t succeed without your skills and knowledge. 4. Another PC asked you to join them.	mechanical	1
20	Hideous	You are physically repugnant by almost any human standard. You might have had a serious accident, a harmful mutation, or just poor genetic luck, but you are incontrovertibly ugly.\r\nYou’ve more than made up for your appearance in other ways, however. Because you had to hide your appearance, you excel at sneaking about unnoticed or disguising yourself. But perhaps most important, being ostracized while others socialized, you took the time growing up to develop yourself as you saw fit—you grew strong or quick, or you honed your mind.	Versatile: You get 4 additional points to divide among your stat Pools.\r\nSkill: You are trained in intimidation and any other fear-based interactions.\r\nSkill: You are trained in disguise and stealth tasks.\r\nInability: The difficulty of all tasks relating to pleasant social interaction is increased by one step.	1. One of the other PCs approached you while you were in disguise, recruiting you while believing you were someone else.\r\n2. While skulking about, you overheard the other PCs’ plans and realized you wanted in.\r\n3. One of the other PCs invited you, but you wonder if it was out of pity.\r\n4. You bullied your way in with intimidation and bluster.	hideous	1
21	Honorable	You are trustworthy, fair, and forthright. You try to do what is right, to help others, and to treat them well. Lying and cheating are no way to get ahead—these things are for the weak, the lazy, or the despicable. You probably spend a lot of time thinking about your personal honor, how best to maintain it, and how to defend it if challenged. In combat, you are straightforward and offer quarter to any foe.\r\nYou were likely instilled with this sense of honor by a parent or a mentor. Sometimes the distinction between what is and isn’t honorable varies with different schools of thought, but in broad strokes, honorable people can agree on most aspects of what honor means.	Stalwart: +2 to your Might Pool.\r\nSkill: You are trained in pleasant social interactions.\r\nSkill: You are trained in discerning people’s true motives or seeing through lies.	1. The PCs’ goals appear to be honorable and commendable.\r\n2. You see that what the other PCs are about to do is dangerous, and you’d like to help protect them.\r\n3. One of the other PCs invited you, hearing of your trustworthiness.\r\n4. You asked politely if you could join the other PCs in their mission.	honorable	1
22	Impulsive	You have a hard time tamping down your enthusiasm. Why wait when you can just do it (whatever it is) and get it done? You deal with problems when they arise rather than plan ahead. Putting out the small fires now prevents them from becoming one big fire later. You are the first to take risks, to jump in and lend a hand, to step into dark passages, and to find danger.\r\nYour impulsiveness likely gets you into trouble. While others might take time to study the items they discover, you use such items without hesitation. After all, the best way to learn what something can do is to use it. When a cautious explorer might look around and check for danger nearby, you have to physically stop yourself from bulling on ahead. Why fuss around when the exciting thing is just ahead?	Reckless: +2 to your Speed Pool.\r\nSkill: You’re trained in initiative actions (to determine who goes first in combat). Skill: You’re trained in Speed defense actions.\r\nInability: You’ll try anything once or twice. The difficulty of any task that involves patience, willpower, or discipline is increased by one step.	1. You heard what the other PCs were up to and suddenly decided to join them.\r\n2. You pulled everyone together after you heard rumors about something interesting you want to see or do.\r\n3. You blew all of your money and now find yourself strapped for cash.\r\n4. You’re in trouble for acting recklessly. You join the other PCs because they offer a way out of your problem.	impulsive	1
24	Intelligent	You’re quite smart. Your memory is sharp, and you easily grasp concepts that others might struggle with. This aptitude doesn’t necessarily mean that you’ve had years of formal education, but you have learned a great deal in your life, primarily because you pick things up quickly and retain so much.	Smart: +2 to your Intellect Pool.\r\nSkill: You’re trained in an area of knowledge of your choice.\r\nSkill: You’re trained in all actions that involve remembering or memorizing things you experience directly. For example, instead of being good at recalling details of geography that you read about in a book, you can remember a path through a set of tunnels that you’ve explored before.	1. One of the other PCs asked your opinion of the mission, knowing that if you thought it was a good idea, it probably was.\r\n2. You saw value in what the other PCs were doing.\r\n3. You believed that the task might lead to important and interesting discoveries.\r\n4. A colleague requested that you take part in the mission as a favor.	intelligent	1
23	Inquisitive	The world is vast and mysterious, with wonders and secrets to keep you amazed for several lifetimes. You feel the tugging on your heart, the call to explore the wreckage of past civilizations, to discover new peoples, new places, and whatever bizarre wonders you might find along the way. However, as strongly as you feel the pull to roam the world, you know there is danger aplenty,\r\nand you take precautions to ensure that you are prepared for any eventuality. Research, preparation, and readiness will help you live long enough to see everything you want to see and do everything you want to do.\r\nYou probably have a dozen books and travelogues about the world on you at any time. When not hitting the road and looking around, you spend your time with your nose in a book, learning everything you can about the place you’re going so you know what to expect when you get there.	Smart: +4 to your Intellect Pool.\r\nSkill: You are eager to learn. You are trained in any task that involves learning something new, whether you’re talking to a local to get information or digging through old books to find lore.\r\nSkill: You have made a study of the world. You are trained in any task involving geography or history.\r\nInability: You tend to fixate on the details, making you somewhat oblivious to what’s going on around you. The difficulty of any task to hear or notice dangers around you is increased by one step.\r\nInability: When you see something interesting, you hesitate as you take in all the details. The difficulty of initiative actions (to determine who goes first in combat) is increased by one step.\r\nAdditional Equipment: You have three books on whatever subjects you choose.	1. One of the PCs approached you to learn information related to the mission, having heard you were an expert.\r\n2. You have always wanted to see the place where the other PCs are going.\r\n3. You were interested in what the other PCs were up to and decided to go along with them.\r\n4. One of the PCs fascinates you, perhaps due to a special or weird ability she has.	inquisitive	1
25	Jovial	You’re cheerful, friendly, and outgoing. You put others at ease with a big smile and a joke, possibly one at your own expense, though lightly ribbing your companions who can take it is also one of your favorite pastimes. Sometimes people say you never take anything seriously. That’s not true, of course, but you have learned that to dwell on the bad too long quickly robs the world of joy. You’ve always got a new joke in your back pocket because you collect them like some people collect bottles of wine.	Witty: +2 to your Intellect Pool.\r\nSkill: You’re convivial and set most people at ease with your attitude. You are trained in all tasks related to pleasant social interaction.\r\nSkill: You have an advantage in figuring out the punch lines of jokes you’ve never heard before. You are trained in all tasks related to solving puzzles and riddles.	1. You solved a riddle before realizing that answering it would launch you into the adventure.\r\n2. The other PCs thought you’d bring some much-needed levity to the team.\r\n3. You decided that all fun and no work was not the best way to get through life, so you joined up with the PCs.\r\n4. It was either go with the PCs or face up to a circumstance that was anything but jovial.	jovial	1
26	Kind	It’s always been easy for you to see things from the point of view of other people. That ability has made you sympathetic to what they really want or need. From your perspective, you’re just applying the old proverb that “it’s easier to catch flies with honey than with vinegar,” but others simply see your behavior as kindness. Of course, being kind takes time, and yours is limited. You’ve learned that a small fraction of people don’t deserve your time or kindness—true sadists, narcissists, and similar folk will only waste your energy. So you deal with them swiftly, saving your kindness for those who deserve it and can benefit from your attention.	Emotionally Intuitive: +2 to your Intellect Pool.\r\nSkill: You know what it’s like to go a mile in someone else’s shoes. You’re trained in all tasks related to pleasant social interaction and discerning the dispositions of others.\r\nKarma: Sometimes, strangers just help you out. To gain the aid of a stranger, you must pay 1 XP to the GM, and the GM determines the nature of the aid you gain. Usually, the act of kindness isn’t enough to turn a bad situation completely around, but it may moderate a bad situation and lead to new opportunities. For example, if you are captured, a guard loosens your bonds slightly, brings you water, or delivers a message.\r\nInability: Being kind comes with a few risks. The difficulty of all tasks related to detecting falsehoods in the speech and mannerisms of other creatures is increased by one step.	1. A PC needed your help, and you agreed to come along and add your expertise.\r\n2. You gave the wrong person access to your money, and now you need to make some back.\r\n3. You’re ready to take your benevolence on the road and help more people than you could if you didn’t join the PCs.\r\n4. Your job, which seemed like it would be personally rewarding, is the opposite. You join the PCs to escape the drudgery.	kind	1
29	Mad	You have delved too deeply into subjects people were not meant to know. You are knowledgeable in things beyond the scope of most, but this knowledge has come at a terrible price. You are likely in questionable physical shape and occasionally shake with nervous tics. You sometimes mutter to yourself without realizing it.	Knowledgeable: +4 to your Intellect Pool.\r\nFits of Insight: Whenever such knowledge is appropriate, the GM feeds you information although there is no clear explanation as to how you could know such a thing. This is up to the GM’s discretion, but it should happen as often as once each session.\r\nErratic Behavior: You are prone to acting erratically or irrationally. When you are in the presence of a major discovery or subjected to great stress (such as a serious physical threat), the GM can use GM intrusion that directs your next action without awarding XP. You can still pay 1 XP to refuse the intrusion. The GM’s influence is the manifestation of your madness and thus is always something you would not likely do otherwise, but it is not directly, obviously harmful to you unless there are extenuating circumstances. (For example, if a foe suddenly leaps out of the darkness, you might spend the first round babbling incoherently or screaming the name of your first true love.)\r\nSkill: You are trained in one area of knowledge (probably something weird or esoteric).\r\nInability: Your mind is quite fragile. Whenever you try to resist a mental attack, the difficulty is increased by one step.	1. Voices in your head told you to go.\r\n2. You instigated the whole thing and convinced the others to join you.\r\n3. One of the other PCs obtained a book of knowledge for you, and now you’re repaying that favor by helping her with the task at hand.\r\n4. You feel compelled by inexplicable intuition.	mad	1
27	Learned	You have studied, either on your own or with an instructor. You know many things and are an expert on a few topics, such as history, biology, geography, mythology, nature, or any other area of study. Learned characters typically carry a few books around with them and spend their spare time reading.	Smart: +2 to your Intellect Pool.\r\nSkill: You’re trained in three areas of knowledge of your choice.\r\nInability: You have few social graces. The difficulty of any task involving charm, persuasion, or etiquette is increased by one step.\r\nAdditional Equipment: You have two additional books on topics of your choice.	1. One of the other PCs asked you to come along because of your knowledge.\r\n2. You need money to fund your studies.\r\n3. You believed that the task might lead to important and interesting discoveries.\r\n4. A colleague requested that you take part in the mission as a favor.	learned	1
33	Naive	You’ve lived a sheltered life. Your childhood was safe and secure, so you didn’t get a chance to learn much about the world—and even less chance to experience it. Whether you were training for something, had your nose in a book, or just were sequestered in a secluded place, you haven’t done much, met many people, or seen many interesting things so far. That’s probably going to change soon, but as you go forward into a larger world, you do so without some of the understanding that others possess about how it all works.	Fresh: You add +1 to your recovery rolls. Incorruptible: You are trained in Intellect defense tasks and all tasks that involve resisting temptation.\r\nSkill: You’re wide-eyed. You are trained in perception tasks.\r\nInability: The difficulty of any task that involves seeing through deceptions or determining someone’s secret motive is increased by one step.	1. Someone told you that you should get involved.\r\n2. You needed money, and this seemed like a good way to earn some.\r\n3. You believed that you could learn a lot by joining the other PCs.\r\n4. Sounded like fun.	naive	1
34	Noble	You are of noble birth. You are not of the common people. Your family has a title and the prestige and (probably) the wealth that goes along with it.\r\nThe world can be a classist place, and in that structure you are in the top echelon. Often, laws don’t apply to you, you enjoy special treatment, and sometimes people do as you command. You probably dress\r\nin finery and walk with a noble bearing, but sometimes the nobility must conceal their station to keep themselves safe—from brigands, thieves, protestors, or aristocratic enemies and their servants.	Respect: People who are not of noble station often treat you with deference. A few, however, secretly treat you with contempt. The difficulty of interactions with non- nobles is decreased by one step 75% of the time, and increased by one step 25% of the time.\r\nRetainer or Mount: You start with a level 2 servant or mount that serves you faithfully. You and the GM should work out the details.\r\nContact: You have a contact among the nobility who helps you and treats you well. You and the GM should work out the details.\r\nSkill: You are trained in etiquette and interacting with the nobility.\r\nAdditional Equipment: You begin the game with an additional expensive item.	1. It seemed like a lark.\r\n2. You’re on the run from an enemy, and joining the PCs seemed like a good way to hide among the common folk.\r\n3. The mission involves somehow redeeming or helping your family.\r\n4. Your parent(s) forced you into it, hoping the experience would be good for you.	noble	1
35	Perceptive	You miss little. You pick out the small details in the world around you and are skilled at making deductions from the information you find. Your talents make you an exceptional sleuth, a formidable scientist, or a talented scout.\r\nAs adept as you are at finding clues, you have no skill at picking up on social cues. You overlook an offense that your deductions give or how uncomfortable your scrutiny can make the people around you. You tend to dismiss others as being intellectual dwarfs compared to you, which avails you little when you need a favor.	Smart: +2 to your Intellect Pool.\r\nSkill: You have an eye for detail. You are trained in any task that involves finding or noticing small details.\r\nSkill: You know a little about everything. You are trained in any task that involves identifying objects or calling to mind a minor detail or bit of trivia.\r\nSkill: Your skill at making deductions can be imposing. You are trained in any task that involves intimidating another creature.\r\nInability: Your confidence comes off as arrogance to people who don’t know you. The difficulty of any task involving positive social interactions is increased by one step.\r\nAdditional Equipment: You have a bag of light tools.	1. You overheard the other PCs discussing their mission and volunteered your services.\r\n2. One of the PCs asked you to come along, believing that your talents would be invaluable to the mission.\r\n3. You believe that the PCs’ mission is somehow related to one of your investigations.\r\n4. A third party recruited you to follow the PCs and see what they were up to.	perceptive	1
32	Mystical	You think of yourself as mystical, attuned with the mysterious and the paranormal. Your true talents lie with the supernatural. You likely have experience with ancient lore, and you can sense and wield the supernatural—though whether that means “magic,” “psychic phenomena,” or something else is up to you (and probably up to those around you as well). Mystical characters often wear jewelry, such as a ring or an amulet, or have tattoos or other marks that show their interests.	Smart: +2 to your Intellect Pool.\r\nSkill: You’re trained in all actions involving identifying or understanding the supernatural.\r\nSense Magic: You can sense whether the supernatural is active in situations where its presence is not obvious. You must study an object or location closely for a minute to get a feel for whether a mystical touch is at work.\r\nSpell: You can perform the following spell when you have a free hand and can pay the Intellect point cost.\r\nHedge Magic (1 Intellect point): You can perform small tricks: temporarily change the color or basic appearance of a small object, cause small objects to float through the air, clean a small area, mend a broken object, prepare (but not create) food, and so on. You can’t use hedge magic to harm another creature or object. Action.\r\nInability: You have a manner or an aura that others find a bit unnerving. The difficulty of any task involving charm, persuasion, or deception is increased by one step.	1. A dream guided you to this point.\r\n2. You need money to fund your studies.\r\n3. You believed the mission would be a great way to learn more about the supernatural.\r\n4. Various signs and portents led you here.	mystical	1
36	Resilient	You can take a lot of punishment, both physically and mentally, and still come back for more. It takes a lot to put you down. Neither physical nor mental shocks or damage have a lasting effect. You’re tough to faze. Unflappable. Unstoppable.	Resistant: +2 to your Might Pool, and +2 to your Intellect Pool.\r\nRecover: You can make an extra recovery roll each day. This roll is just one action. So you can make two recovery rolls that each take one action, one roll that takes ten minutes, a fourth roll that takes one hour, and a fifth roll that requires ten hours of rest.\r\nSkill: You are trained in Might defense tasks.\r\nSkill: You are trained in Intellect defense tasks.\r\nInability: You’re hardy but not necessarily strong. The difficulty of any task involving moving, bending, or breaking things is increased by one step.\r\nInability: You have a lot of willpower and mental fortitude, but you’re not necessarily smart. The difficulty of any task involving knowledge or figuring out problems or puzzles is increased by one step.	1. You saw that the PCs clearly need someone like you to help them out.\r\n2. Someone asked you to watch over one of the PCs in particular, and you agreed.\r\n3. You are bored and desperately in need of a challenge.\r\n4. You lost a bet—unfairly, you think— and had to take someone’s place on this mission.	resilient	1
39	Skeptical	You possess a questioning attitude regarding claims that are often taken for granted by others. You’re not necessarily a “doubting Thomas” (a skeptic who refuses to believe anything without direct personal experience), but you’ve often benefited from questioning the statements, opinions, and received knowledge presented to you by others.	Insightful: +2 to your Intellect Pool.\r\nSkill: You’re trained in identifying.\r\nSkill: You’re trained in all actions that involve seeing through a trick, illusion, rhetorical ruse designed to evade the issue, or lie. For example, you’re better at keeping your eye on the cup containing the hidden ball, sensing an illusion, or realizing if someone is lying to you (but only if you specifically concentrate and use this skill).	1. You overheard other PCs holding forth on a topic with an opinion you were quite skeptical about, so you decided to approach the group and ask for proof.\r\n2. You were following one of the other PCs because you were suspicious of him, which brought you into the action.\r\n3. Your theory about the nonexistence of the supernatural can be invalidated only by your own senses, so you came along.\r\n4. You need money to fund your research.	skeptical	1
41	Stealthy	You’re sneaky, slippery, and fast. These talents help you hide, move quietly, and pull off tricks that require sleight of hand. Most likely, you’re wiry and small. However, you’re not much of a sprinter—you’re more dexterous than fleet of foot.	Quick: +2 to your Speed Pool.\r\nSkill: You’re trained in all stealth tasks. Skill: You’re trained in all interactions involving lies or trickery.\r\nSkill: You’re trained in all special abilities involving illusions or trickery.\r\nInability: You’re sneaky but not fast. The difficulty of all movement-related tasks is one step higher for you.	1. You attempted to steal from one of the other PCs. That character caught you and forced you to come along with her.\r\n2. You were tailing one of the other PCs for reasons of your own, which brought you into the action.\r\n3. An NPC employer secretly paid you to get involved.\r\n4. You overheard the other PCs talking about a topic that interested you, so you decided to approach the group.	stealthy	1
48	Virtuous	Doing the right thing is a way of life. You live by a code, and that code is something you attend to every day. Whenever you slip, you reproach yourself for your weakness and then get right back on track. Your\r\ncode probably includes moderation, respect for others, cleanliness, and other characteristics that most people would agree are virtues, while you eschew their opposites: sloth, greed, gluttony, and so on.	Dauntless: +2 to your Might Pool. Skill: You are trained in discerning\r\npeople’s true motives or seeing through lies.\r\nSkill: Your adherence to a strict moral code has hardened your mind against fear, doubt, and outside influence. You are trained in Intellect defense tasks.	1. The PCs are doing something virtuous, and you’re all about that.\r\n2. The PCs are on the road to perdition, and you see it as your task to set them on the proper moral route.\r\n3. One of the other PCs invited you, hearing of your virtuous ways.\r\n4. You put virtue before sense and defended someone’s honor in the face of an organization or power far greater than you. You joined the PCs because they offered aid and friendship when, out of fear of reprisals, no one else would.	virtuous	1
47	Vengeful	One moment changed everything for you. One dreadful encounter, one betrayal, or one horrific tragedy altered your course and made you who you are today. Looking back at that time, you often wonder how your life would have unfolded if not for the event that ruined everything. The life you imagine you should have had haunts you and feeds your appetite for revenge until vengeance is the only thing you have left.\r\nTo be vengeful, you must have someone or something you want revenge against and someone or something to avenge. Work with your GM to determine what happened that affected you so strongly. Maybe a group of bandits wiped out your family. A corrupt official stole your family’s savings or otherwise brought ruin to you and your loved ones. Perhaps a rival destroyed your romance by sullying your name. Death, finances, love: any of these can support your motivation.\r\nIn addition, consider to what extent your character will go to gain vengeance. Will you compromise your values to destroy the ones who wronged you? Will you sacrifice your companions to get what you want? Can you imagine a life after you get revenge, or will you throw yours away to punish the people who wronged you?	Skill: The fires of your hatred make you an imposing figure. You’re trained in any task that involves intimidation, threats, or inflicting pain through torture.\r\nSkill: You will follow your enemies to the ends of the earth. You’re trained in any task that involves finding and following tracks.\r\nSkill: You’re trained in Speed defense actions.\r\nAdditional Equipment: You have an additional medium weapon.	1. You and the other PCs are headed in the same direction.\r\n2. You believe that one of the PCs knows something about your enemy. You accompany the group to find out what that character knows.\r\n3. One of the PCs survived the event that caused you to become vengeful. You travel with that character to protect him or her.\r\n4. You drew everyone together to help you get revenge on your enemies.	vengeful	1
50	Weird	You aren’t like anyone else, and that’s fine with you. People don’t seem to understand you — they even seem put off by you — but who cares? You understand the world better than they do because you’re weird, and so is the world you live in. The concept of “the weird” is well known to you. Strange devices, ancient locales, bizarre creatures, storms that can transform you, living energy fields, conspiracies, aliens, and things most people can’t even name populate the world, and you thrive on them. You have a special attachment to it all, and the more you discover about the weirdness in the world, the more you might discover about yourself.\r\nWeird characters might be mutants or people born with strange qualities, but sometimes they started out “normal” and adopted the weird by choice.	Inner Light: +2 to your Intellect Pool.\r\nDistinctive Physical Quirk: You have a unique physical aspect that is, well, bizarre. Depending on the setting, this can vary greatly. You might have purple hair or metal spikes on your head. Maybe you have nothing but a massive scar where your nose used to be, or you were born without a nose. Perhaps your hands don’t connect to your arms, although they move as if they do. Maybe a third eye stares out from the side of your head, or superfluous tendrils grow from your back. Whatever it is, your quirk might be a mutation, a supernatural trait (a blessing or curse), or a feature with no explanation.\r\nA Sense for the Weird: Sometimes—at the GM’s discretion—weird things relating to the supernatural or its effects on the world seem to call out to you. You can sense them from afar, and if you get within long range of such a thing, you can sense whether it is overtly dangerous or not.\r\nSkill: You are trained in supernatural knowledge.\r\nInability: People find you unnerving. The difficulty of all tasks relating to pleasant social interaction is increased by one step.	1. It seemed weird, so why not?\r\n2. Whether the other PCs realize it or not, their mission has to do with something weird that you know about, so you got involved.\r\n3. As an expert in the weird, you were specifically recruited by the other PCs.\r\n4. You felt drawn to join the other PCs, but you don’t know why.	weird	1
46	Tough	You’re strong and can take a lot of physical punishment. You might have a large frame and a square jaw. Tough characters frequently have visible scars.	Resilient: +1 to Armor.\r\nHealthy: Add 1 to the points you regain when you make a recovery roll.\r\nSkill: You’re trained in Might defense actions.\r\nAdditional Equipment: You have an extra light weapon.	1. You’re acting as a bodyguard for one of the other PCs.\r\n2. One of the PCs is your sibling, and you came along to watch out for her.\r\n3. You need money because your family is in debt.\r\n4. You stepped in to defend one of the PCs when that character was threatened. While talking to him afterward, you heard about the group’s task.	tough	1
40	Spiritual	A sense of awe washes over you when you appreciate a new facet of your religion or a scientific discipline. When a stranger does something kind for someone he’s never met before, it’s spiritual. However you meditate—whether by taking in breathtaking scenery, reading a book, or repeating mental syllables in a quiet space—it’s spiritual. Your spirituality isn’t necessarily about religion, though it could be. The main thing is that you’re a person who appreciates and even thrills to the positive aspects of existence, and you may help other people do the same.	Meditative: +2 to your Intellect Pool.\r\nLikeable: People and animals just seem to like you. You are trained in all tasks related to pleasant social interaction.\r\nSkill: With maturity comes good judgment. You’re trained in Intellect defense tasks and all tasks that involve resisting temptation.\r\nHelpful: When you help someone with a task, he adds 1 to his roll (this bonus is in addition to the regular benefits of helping someone).\r\nInability: When you encounter something novel, you hesitate as you take in all the details. The difficulty of initiative actions (to determine who goes first in combat) is increased by one step.	1. You heard the PCs would be visiting someplace amazing and wanted to share the experience.\r\n2. You have a message of hope, and going along with the PCs might allow you to get that message across to a larger number of people.\r\n3. The mission involves helping others, and you couldn’t say no.\r\n4. You were asked by a different organization to keep tabs on the PCs and help them if they got into trouble.	spiritual	1
7	Craven	Courage fails you at every turn. You lack the willpower and resolve to stand fast in the face of danger. Fear gnaws at your heart, chewing away at your mind, driving you to distraction until you cannot bear it. Most times, you back down from confrontations. You flee from threats and vacillate when faced with difficult decisions.\r\nYet for all that fear dogs you and possibly shames you, your cowardly nature proves to be a useful ally from time to time. Listening to your fears has helped you escape danger and avoid taking unnecessary risks. Others may have suffered in your place, and you might be the first to admit this fact, but secretly you feel intense relief from having avoided an unthinkable and terrible fate.	Furtive: +2 to your Speed Pool.\r\nSkill: You’re trained in stealth-based tasks. Skill: You’re trained in running actions. Skill: You’re trained in any action taken to escape danger, flee from a dangerous situation, or wheedle your way out of trouble.\r\nInability: You do not willingly enter dangerous situations. The difficulty of any initiative actions (to determine who goes first in combat) is increased by one step.\r\nInability: You fall to pieces when you have to undertake a dangerous task alone. The difficulty of any potentially dangerous task you undertake alone (such as attacking a creature by yourself) is increased by one step.\r\nAdditional Equipment: You have a good luck charm or protective device to keep you out of harm’s way.	1. You believe that you’re being hunted, and you have hired one of the other PCs as your protector.\r\n2. You seek to escape your shame and take up with capable individuals in the hopes of repairing your reputation.\r\n3. One of the other PCs bullied you into coming along.\r\n4. The group answered your cries for help when you were in trouble.	craven	1
9	Cruel	Misfortune and suffering do not move you. When another endures hardship, you find it hard to care, and you may even enjoy the pain and difficulty the person experiences. Your cruel streak may derive from bitterness brought about by your own struggles and disappointments. You might be a hard pragmatist, doing what you feel you must even if others are worse for it. Or you could be a sadist, delighting in the pain you inflict.\r\nBeing cruel does not necessarily make you a villain. Your cruelty may be reserved for those who cross you or other people useful to you. You might have become cruel as the result of an intensely awful experience. Abuse and torture, for example, can strip away compassion for other living beings.\r\nAs well, you need not be cruel in every situation. In fact, others might see you as personable, friendly, and even helpful. But when angered or frustrated, your true nature reveals itself, and those who have earned your scorn are likely to suffer for it.	Cunning: +2 to your Intellect Pool.\r\nCruelty: When you use force, you can choose to maim or deliver painful injuries to draw out your foe’s suffering. Whenever you inflict damage, you can choose to inflict 2 fewer points of damage to decrease the difficulty of the next attack against that foe by one step.\r\nSkill: You’re trained in tasks related to deception, intimidation, and persuasion when you interact with characters experiencing physical or emotional pain.\r\nInability: You have a hard time connecting with others, understanding their motives, or sharing their feelings. The difficulty of any task to ascertain another character’s motives, feelings, or disposition is increased by one step.\r\nAdditional Equipment: You have a valuable memento from the last person you destroyed. The memento is moderately priced, and you can sell it or trade it for an item of equal or lesser value.	1. You suspect that you might gain a long-term advantage from helping the other PCs and may be able to use that advantage against your enemies.\r\n2. By joining the PCs, you see an opportunity to grow your personal power and status at the expense of others.\r\n3. You hope to make another PC’s life more difficult by joining the group.\r\n4. Joining the PCs gives you an opportunity to escape justice for a crime you committed.	cruel	1
13	Empathic	Other people are open books to you. You may have a knack for reading a person’s tells, those subtle movements that convey an individual’s mood and disposition. Or you may receive information in a more direct way, feeling a person’s emotions as if they were tangible things, sensations that lightly brush against your mind. Your gift for empathy helps you navigate social situations and control them to avoid misunderstandings and prevent useless conflicts from erupting.\r\nThe constant bombardment of emotions from those around you likely takes a toll. You might move with the prevailing mood, swinging from giddy happiness to bitter sorrow with little warning. Or you might close yourself off and remain inscrutable to others out of a sense of self-preservation or an unconscious fear that everyone else might learn how you truly feel.	Open Mind: +4 to your Intellect Pool.\r\nSkill: You’re trained in tasks involving sensing other emotions, discerning dispositions, and getting a hunch about people around you.\r\nSkill: You’re trained in all tasks involving social interaction, pleasant or otherwise.\r\nInability: Being so receptive to others’ thoughts and moods makes you vulnerable to anything that attacks your mind. The difficulty of Intellect defense rolls is increased by one step.	1. You sensed the commitment to the task the other PCs have and felt moved to help them.\r\n2. You established a close bond with another PC and can’t bear to be parted from him or her.\r\n3. You sensed something strange in one of the PCs and decided to join the group to see if you can sense it again and uncover the truth.\r\n4. You joined the PCs to escape an unpleasant relationship or negative environment.	empathic	1
19	Hardy	Your body was built to take abuse. Whether you’re pounding down stiff drinks while holding up a bar in your favorite watering hole or trading blows with a thug in a back alley, you keep going, shrugging off hurts and injuries that might slow or incapacitate a lesser person. Neither hunger nor thirst, cut flesh nor broken bone can stop you. You just press on through the pain and continue.\r\nAs fit and healthy as you are, the signs of wear show in the myriad scars crisscrossing your body, your thrice-broken nose, your cauliflower ears, and any number of other disfigurements you wear with pride.	Mighty: +4 to your Might Pool.\r\nFast Healer: You halve the time it takes to make a recovery roll (minimum one action).\r\nUnstoppable: While you are impaired on the damage track, you function as if you were hale. While you are debilitated, you function as if you were impaired. In other words, you don’t suffer the effects of being impaired until you become debilitated, and you never suffer the effects of being debilitated. You still die if all your stat Pools are 0.\r\nSkill: You are trained in Might defense actions.\r\nInability: Your big, strong body is slow to react. The difficulty of any task involving initiative is increased by one step.\r\nPonderous: When you apply Effort when making a Speed roll, you must spend 1 extra point from your Speed Pool.	1. The PCs recruited you after learning about your reputation as a survivor.\r\n2. You join the PCs because you want or need the money.\r\n3. The PCs offer you a challenge equal to your physical power.\r\n4. You believe the only way the PCs will succeed is if you are along to protect them.	hardy	1
31	Mysterious	The dark figure lurking silently in the corner? That’s you. No one really knows where you came from or what your motives are—you play things close to the vest. Your manner perplexes and confounds others, but that doesn’t make you a poor friend or ally. You’re just good at keeping things to yourself, moving about unseen, and concealing your presence and identity.	Skill: You are trained in all stealth tasks.\r\nSkill: You are trained in resisting interrogation or tricks to get you to talk.\r\nConfounding: You pull talents and abilities seemingly out of nowhere. You can attempt one task in which you have no training as if you were trained. This ability refreshes every time you make a recovery roll, but the uses never accumulate.\r\nInability: People never know where they stand with you. The difficulty of any task involving getting people to believe or trust you is increased by one step.	1. You just showed up one day.\r\n2. You convinced one of the other PCs that you had invaluable skills.\r\n3. Some equally mysterious figure told you where to be and when (but not why) to join the group.\r\n4. Something — a feeling, a dream — told you where to be and when to join the group.	mysterious	1
45	Tongue-Tied	You’ve never been much of a talker. When forced to interact with others, you never think of the right thing to say—words fail you entirely, or they come out all wrong. You often end up saying precisely the wrong thing and insult someone unintentionally. Most of the time, you just keep mum.\r\nThis makes you a listener instead—a careful observer. It also means that you’re better at doing things than talking about them. You’re quick to take action.	Actions, Not Words: +2 to your Might Pool, and +2 to your Speed Pool.\r\nSkill: You are trained in perception.\r\nSkill: You are trained in initiative (unless it’s a social situation).\r\nInability: The difficulty of all tasks relating to social interaction is increased by one step.\r\nInability: The difficulty of all tasks involving verbal communication or relaying information is increased by one step.	1. You just tagged along and no one told you to leave.\r\n2. You saw something important the other PCs did not and (with some effort) managed to relate it to them.\r\n3. You intervened to save one of the other PCs when he was in danger.\r\n4. One of the other PCs recruited you for your talents.	tongue-tied	1
49	Wealthy	You can’t remember a time when you wanted for anything. You have always had money and have largely lived a life of comfort and plenty. You might be stingy with your wealth, hiding your abundance lest others try to steal it from you. Or you might be magnanimous, spreading it around to any and all who need it.\r\nThe source of your funds is up to you. Maybe you inherited your vast fortune from a relative. A sudden windfall could have made you flush with funds and given you a life you never dreamed of. You might be a successful merchant or entrepreneur, making your fortune through hard work and determination.	Connected: You have connections, resources, and a head for business. Whenever you spend at least an hour in a community with a population of 1,000 or more, you can find comfortable accommodations for you and your companions for as long as you stay there. The accommodations also provide you\r\nwith food and whatever inexpensive or moderately priced items you need.\r\nAdditional Starting Equipment: You start with an additional expensive item, and all your starting possessions are of very fine quality.\r\nMoney Is No Object: You can buy whatever inexpensive items you need wherever they are available.	1. You crave a life of adventure. You hired all the other PCs for your expedition.\r\n2. Having wealth only creates an appetite for more. You join the other PCs to grow your fortunes.\r\n3. You want to do good works with your wealth, and you see the PCs’ mission as an opportunity to help people.\r\n4. The source of your wealth—a relative, a business, or your position in the community — controls your life, and you have begun to feel stifled. You disguise your true identity and accompany the PCs for a chance at the freedom your fortune denies you.	wealthy	1
28	Lucky	You rely on chance and timely good luck to get you through many situations. When people say that someone was born under a lucky star, they mean you. When you try your hand at something new, no matter how unfamiliar the task is, as often as not you find a measure of success. Even when disaster strikes, it’s rarely as bad as it could be. More often, small things seem to go your way, you win contests, and you’re often in the right place at the right time.	Luck Pool: You have one additional Pool called Luck that begins with 3 points, and it has a maximum value of 3 points. When spending points from any other Pool, you can take one, some, or all the points from your Luck Pool first. When you make a recovery roll, your Luck Pool is one additional Pool to which you can add recovered points. When your Luck Pool is at 0 points, it does not count against your damage track. Enabler.\r\nAdvantage: When you use 1 XP to reroll a d20 for any roll that affects only you, add 3 to the reroll.	1. Knowing that lucky people notice and take active advantage of opportunities, you became involved in your first adventure by choice.\r\n2. You literally bumped into someone else on this adventure through sheer luck.\r\n3. You found a briefcase lying alongside the road. It was battered, but inside you found a lot of strange documents that led you here.\r\n4. Your luck saved you when you avoided a speeding car by a fortuitous fall through an open manhole. Beneath the street, you found something you couldn’t ignore.	lucky	1
37	Rugged	You’re a nature lover accustomed to living rough, pitting your wits against the elements. Most likely, you’re a skilled hunter, gatherer, or naturalist. Years of living in the wild have left their mark with a worn countenance, wild hair, or scars. Your clothing is probably much less refined than the garments worn by city dwellers.	Skill: You’re trained in all tasks involving climbing, jumping, running, and swimming. Skill: You’re trained in all tasks involving training, riding, or placating natural animals.\r\nSkill: You’re trained in all tasks involving identifying or using natural plants.\r\nInability: You have no social graces and prefer animals to people. The difficulty of any task involving charm, persuasion, etiquette, or deception is increased by one step.\r\nAdditional Equipment: You carry an explorer’s pack with rope, two days’ rations, a bedroll, and other tools needed for outdoor survival.	1. Against your better judgment, you joined the other PCs because you saw that they were in danger.\r\n2. One of the other PCs convinced you that joining the group would be in your best interests.\r\n3. You’re afraid of what might happen if the other PCs fail.\r\n4. There is reward involved, and you need the money.	rugged	1
1	Appealing	You’re attractive to others, but perhaps more important, you are likeable and charismatic. You’ve got that “special something” that draws others to you. You often know just the right thing to say to make someone laugh, put them at ease, or spur them to action. People like you, want to help you, and want to be your friend.	Charismatic: +2 to your Intellect Pool.\r\nSkill: You are trained in pleasant social interactions.\r\nResistant to Charms: You’re aware of how others can manipulate and charm people, and you notice when those tactics are used on you. Because of this awareness, you are trained in resisting any kind of persuasion or seduction if you wish it.	1. You met a total stranger (one of the other PCs) and charmed him so much that he invited you to come along.\r\n2. The PCs were looking for someone else, but you convinced them that you were the perfect person to join them instead.\r\n3. Pure happenstance—because you just go along with the flow of things and everything usually works out well.\r\n4. Your charismatic ways helped get one of the PCs out of a difficult spot a long time ago, and she always asks you to join her on new adventures.	appealing	1
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
2	Abides In Stone	You are a golem: a being of stone rather than flesh. Your stone body resembles that of a hulking humanoid, and you can move, speak, and feel pain. Your rock body means that it takes a lot to damage you, but once damaged, your wounds are not quite as easy to recover from.\r\nAs someone made of animate stone, you typically do not wear clothing, although your stone skin is usually carved to appear as if you’re wearing it. Such carved clothing could be elaborate armor, robes, or stylistic ridges and ripples.	Minor Effect Suggestion: You step on the target, and your immense weight prevents it from moving on its next turn.\r\nMajor Effect Suggestion: You break a weapon, shield, or piece of armor the target is using.	1. Pick one other PC. She roused you from a long period of inactivity, and you feel indebted to her for returning you (perhaps accidentally) to mobility.\r\n2. Pick one other PC. You were once convinced that he wanted to reduce you to rubble, but you have since grown to think that what you believed wasn’t true, or at least no longer is so.\r\n3. Pick one other PC. She knows the secret of your origin, but whenever she speaks of it, you forget it. Perhaps you suffer from a curse?\r\n4. Pick one other PC. If you go berserk, you’ll never attack that character.	abides_in_stone	1
4	Battles Robots	Life is for the living—the biological. Automatons, robots, animate machines, thinking machines, and anything similar are abominations. You excel at battling these anathemas, cleansing the world of their contaminating presence.\r\nMaybe your desire to battle automatons comes from religious zealotry. Maybe it’s steeped in revenge for some past crime committed by a machine. Maybe you don’t know why you’re driven to destroy animate machines. Maybe you’re just good at it.\r\nYou probably bear the trophies of former “kills” on you, wearing bits of circuitry or servos on your belt or around your neck. You also likely use heavy weaponry, ideal for penetrating armor. While sometimes a big, heavy weapon is useful against these foes, those who are quick and nimble, able to leap in and cut a few vital wires here or slice through a component panel there, also excel as robot hunters.	Additional Equipment: You have bits and pieces that you tore from the husks of automatons you have destroyed in the past.\r\nAnti-Machine Abilities: If you wield special abilities (like spells, psionics, and so on) that inflict damage, they inflict 1 additional point of damage to robots and similar beings, and 1 less point of damage to biological, living targets. If you have abilities that normally would not work against robots (like mind control), they will now.\r\nMinor Effect Suggestion: Your robot foe experiences an error for one round, during which time the difficulty of all its tasks is modified by one step to its detriment.\r\nMajor Effect Suggestion: Your robot foe experiences a major error and loses its next turn.	1. Pick one other PC. You suspect that this character is put off by your hatred of animate machines. You can choose whether or not she knows of your suspicions.\r\n2. Pick one other PC. You know that this character has suffered at the hands of automatons in the past, and perhaps you can convince him to help you in your calling. Regardless, you feel protective of him.\r\n3. Pick one other PC. This character does not appear to share your feelings about automatons. In fact, you believe that she might secretly have machine parts herself.\r\n4. Pick one other PC. This character comes from the same place you do, and you knew each other as children.	battles_robots	1
5	Bears a Halo of Fire	You can create a sheath of flames around your body. You leave scorch marks wherever you go, and you can’t handle combustible objects without first dousing your inherent flames. If you have other extraordinary abilities, all your effects are tainted with flame. Fiery visuals accompany your powers, and in some cases, your predilection for flame actually reshapes your abilities to take on a fiery nature where none existed before.\r\nYou probably wear red and yellow, or perhaps black.	Occasionally when you use Hurl Flame to harm a foe, his vulnerable body part bursts into flame. The flame doesn’t harm him or his equipment, but it can be an impediment during combat due to surprise.\r\nAdditional Equipment: You have an artifact—a device that sprays inanimate objects to make them fire-resistant. All your starting gear has already been treated unless you don’t want it to be.\r\nFire Abilities: If you perform special abilities, those that would normally use force or other energy (such as electricity) instead use fire. For example, force blasts are blasts of flame. These alterations change nothing except the type of damage and the fact that it might start fires. As another example, a wall of energy instead creates a wall of roaring flames. In this case, the alteration changes the ability so that\r\nthe barrier is not solid but instead inflicts 1 point of damage to anything that touches\r\nit and 4 points of damage to anyone who passes through it.\r\nMinor Effect Suggestion: The target or something near the target catches fire.\r\nMajor Effect Suggestion: An important item on the target’s person is destroyed.	1. Pick one other PC. Through a quirk of fate, your fire cannot harm that character.\r\n2. Pick one other PC. You recently discovered that if she stands near you when you use your Shroud of Flame ability, she too becomes covered in flames. This doesn’t harm her, and anyone who tries to touch her or strike her with a melee attack suffers 1 point of damage. She must remain within short range of you.\r\n3. Pick one other PC. He had a devastating experience with fire in his past and must decide how to react to your constant use of flame around him.\r\n4. Pick one other PC. For some reason, one of his limbs is especially vulnerable to your flames.	bears_a_halo_of_fire	1
7	Builds Robots	Your brilliance is mechanically focused, and it allows you to create artificial entities who accept you for who you are. As an added bonus, they do what you command without complaint. You’re not entirely sure you’ve arrived at nirvana by surrounding yourself with artificial beings, but it’ll do for now.\r\nBecause your robots don’t have an opinion, you’re not too concerned with your appearance. You tend to throw the same shop coat over whatever you happen to be wearing beneath.	Additional Equipment: Robot spare parts, robot tool kit.\r\nMinor Effect Suggestion: The robot jolts your foe, which modifies any action taken by the foe on its next turn by one step to its detriment.\r\nMajor Effect Suggestion: Your robot takes an immediate extra action that you choose.	1. Pick one other PC. Your robotic artificial assistant will take commands from that character as well as from you.\r\n2. Pick one other PC. You created a robot companion for that character, but it promptly tried to kill her, so it had to be destroyed. You’re not sure what went wrong.\r\n3. Pick one other PC. You are certain that character is secretly an artificial entity, even if he denies it.\r\n4. Pick one other PC. You created a robotic catlike entity (a level 1 creature) for that character that sometimes shows up but is usually absent pursuing vermin.	builds_robots	1
10	Casts Spells	You can cast spells of arcing lightning, rolling fire, creeping shadow, and summoning. As a spellcaster, you understand that the world is a construct built on hidden formulas, flows of energy, and encrypted arcane secrets. Spells are specific flaws in reality that have been identified, studied, and codified into a spellbook for ease of reference and use. Though you likely apprenticed under a more accomplished spellcaster, sorcerer, or wizard, you quickly learned that the most powerful spells—those that can alter a creature’s form, open pathways to other worlds, or kill with a single word—are jealously guarded secrets even among friendly spellcasters, including between master and apprentice.\r\nYou probably wear sturdy robes stitched with esoteric symbols, carry a staff etched with indecipherable glyphs, and, last but certainly not least, carry a tome of magic spells wherever you go.	Additional Equipment: Spellbook, notes taken from another caster’s spellbook you’ve yet to decipher.\r\nSpellcasting Special Abilities: If you have other dramatic abilities, they are spells you cast, which involve an arcane gesture or two, a few mystical words, and possibly a pinch of dust or other material to invoke the effect. (These abilities appear as spells codified in your spellbook.) This alteration changes nothing other than how you trigger the effects. For example, when a character who Casts Spells uses Enthrall, she does so by first making a particular hand gesture and uttering the syllables of the spell, after which her eyes glow with a captivating, enthralling light.\r\nMinor Effect Suggestion: Your spell hazes the target’s vision with a magical glow so that the difficulty of all tasks it attempts on its next action is modified by one step to its detriment.\r\nMajor Effect Suggestion: A pulse of arcane energy removes the target from reality for a brief period. When the target reappears a couple of rounds later, no time has passed for it.	1. Pick one other PC. You worry that she is trying to get a look at your spellbook, but you don’t know why.\r\n2. Pick one other PC. You once accidentally turned him into a tiny, insignificant creature. Though you were unable to revert him, he eventually returned to his normal form.\r\n3. Pick one other PC. That character is related to the spellcaster you apprenticed under.\r\n4. Pick one other PC. Every so often when you cast a spell, that character later reacts as if she had an allergic reaction. She doesn’t yet know the cause of her affliction, but you do. You’re still debating whether to tell her or let her suffer in ignorance while you work on a spell to assuage her condition.	casts_spells	1
9	Carries a Quiver	The archer is a skilled combatant, deadly in any fight. With a keen eye and quick reflexes, you can eliminate foes at range before they reach you. A good archer also learns to make his own arrows and bows.\r\nYou probably wear no more than light armor so you can move quickly when needed.\r\nYou can use this focus with crossbows instead of bows if you wish.	Additional Equipment: You start with a well-made bow and two dozen arrows.\r\nMinor Effect Suggestion: Hit in a tendon or muscle, the target takes 2 points of Speed damage as well as normal damage.\r\nMajor Effect Suggestion: The target is pinned in place with an arrow.	1. Pick one other PC to be the true friend who gave you the excellent bow that you currently use. Secretly pick a second PC (preferably one who is likely to get in the way of your attacks). When you miss with\r\na bow and the GM rules that you struck someone other than your target, you hit the second character, if possible.\r\n2. Pick one other PC that you’ve known for a while. The two of you used to do an act where you shot an apple out of her mouth, either for money or just the enjoyment\r\nof friends. One time you missed and hit\r\nher in the cheek. She may or may not still bear a physical or mental scar from this experience. Either way, you never did your act again.\r\n3. Pick one other PC who is interested in studying archery. He is a quick learner, and\r\nif you spend one hour teaching him a few of your secrets, you both gain +1 to any die rolls when you fight the same foe using your bows.\r\n4. Pick one other PC. That person brings up strong emotions in you, whether of anger, desire, or something else. If she is within short range while you’re using your bow, you find it difficult to concentrate and shoot straight.	carries_a_quiver	1
11	Channels Divine Blessings	You are a devout follower of a divine being and serve as its representative among mortals. In other words, you are a priest. The power of your god or gods flows through you and allows you to perform miracles on their behalf.\r\nYou wear simple clothes, though you also display the symbols and insignia of your deity. Normally humble, you are strident when speaking with the authority of the divine.	Additional Equipment: A symbol of your faith carved in iron.\r\nMinor Effect Suggestion: The power of faith knocks the target back several paces.\r\nMajor Effect Suggestion: The power of faith knocks the target prone.	1. Pick one other PC. You were a drunk or otherwise lost to questionable practices until this character plucked you out of the gutter and cleaned you up. You found your calling after that.\r\n2. Pick one other PC. You’re concerned that her spirit is bound for darkness.\r\n3. Pick one or more other PCs. You say a prayer for each of them, each day. They may or may not know or care that you are doing so.\r\n4. Pick one other PC. That character has confided in you that he doesn’t think the gods are real. You’re not sure how to deal with that.	channels_divine_blessings	1
17	Crafts Illusions	You create holographic images that appear real. You are, in effect, an artist—a crafter of light and sound. Holographic images can never inflict direct harm or exert real force, but they can fool creatures, changing opinions and even behaviors if you craft them cleverly.\r\nYou likely dress with flair and color. The appearance of things is important to you, both their beauty and their ugliness. You are a visual performer who can entertain, terrify, or fool everyone you encounter.	Psychedelic Abilities: If you have other overt abilities, they take on flamboyant visual and auditory qualities of your choosing. This alteration changes nothing other than the appearance of the effects. For example, your attack might look like a monster made of energy that assails your foes. If you have the Stasis ability, it might look like a tentacled beast holds the victim in place. If you have Teleportation, it might seem like a hole in space opens up and swallows you.\r\nMinor Effect Suggestion: Your illusion has a special quality to it—perhaps an observer sees an image of something from his past.\r\nMajor Effect Suggestion: The illusion lasts for one hour, or if it already lasts that long, it lasts for twenty-four hours.	1. Pick one other PC. This character is never fooled by your illusions and is never affected by the trickery of your special abilities. You can choose whether or not you know this fact.\r\n2. Pick one other PC. He has a special angle on your illusions and can sometimes point out potential places of weakness.\r\n3. Pick two other PCs who are willing to be trained as your assistants. When you use your Minor Illusion ability, if both of these characters are in immediate range, they can assist you, together decreasing the difficulty of your action by one step.\r\n4. Pick one other PC. That character’s face is so intriguing to you in a way you don’t understand that your minor illusions sometimes look like him, even when you don’t intend them to.	crafts_illusions	1
18	Crafts Unique Objects	The raw materials for a crafter offer themselves to those who know where to look. You are a maker, a crafter, an inventor, and a builder. You might start out working with wood or metal, but eventually you will master far greater creations. Whether magic or technology is your field, you know that you can master it and use it for your own designs.\r\nYou likely carry a wide array of tools and spare parts wherever you go. Your work apron is probably a mainstay of your wardrobe, its pockets and loops brimming with the instruments of your trade. Your calloused fingers might be stained with grease that will never come completely clean, but these marks are badges of honor.	Additional Equipment: You begin the game with a bag of light tools, the tools needed to make your first-tier crafts, and any normal item (of level 1 or 2) that you can make with your skills.\r\nMinor Effect Suggestion: Any rolls you make regarding that artifact gain a +1 bonus for twenty-four hours.\r\nMajor Effect Suggestion: Any rolls you make regarding that artifact gain a +2 bonus for twenty-four hours.	1. Pick one other PC. The character has an extra item of regular equipment that you fashioned for her. (She chooses the item.)\r\n2. Pick one other PC. She seems to have in her possession an object that you made for someone else a long time ago.\r\n3. Pick one other PC. He has commissioned you to create something for him. You’ve already been paid but haven’t yet completed the item.\r\n4. Pick one other PC. You’ve seen that character admiring your crafting skills many times. Perhaps he would like a lesson. (You won’t know until you ask.)	crafts_unique_objects	1
24	Exists Partially Out Of Phase	You have the ability to change your phase state. In fact, you’re always slightly out of phase, giving you a ghostly translucence. With concentration, you can pass your hand through a solid object, allow a solid object to pass harmlessly through you, or literally walk through walls. However, moving in and out of different phase states requires extreme force of will and can be mentally taxing.\r\nYou might do whatever you can to play up your translucent appearance by wearing diaphanous, billowy clothing, or, depending on your personality, you might do just the opposite.	Minor Effect Suggestion: While out of phase, you also gain +1 to all Speed defense rolls.\r\nMajor Effect Suggestion: While out of phase, you are also invisible.	1. Pick one other PC. You have known that character for a while, and he helped you gain control of your phase states.\r\n2. Pick one other PC. Sometime in his past, he had a devastating experience with going out of phase. Whether he chooses to tell you about it is up to him.\r\n3. Pick one other PC. You once accidentally moved your hand right through her. It was clearly an unnerving experience for you both.\r\n4. Pick two other PCs. They both really want to go out of phase and have been pestering you about it. But you’re not convinced they even know what that phrase means.	exists_partially_out_of_phase	1
45	Masters Defense	Protecting yourself is obviously important in dangerous situations, and you are particularly good at it. Cautious and prudent, you learn techniques to defend against all kinds of attacks, both physical and mental. The winner is often the last person standing, and you’ve done all you can to ensure that person will be you.\r\nYou carry a shield and probably wear the best armor you can find.	Additional Equipment: You have a shield.\r\nMinor Effect Suggestion: You gain a +1 bonus to Speed defense rolls for one round.\r\nMajor Effect Suggestion: You gain a +2 bonus to Speed defense rolls for one round.	1. Pick one other PC. This character protected you from harm recently, and you feel indebted to him for saving your life.\r\n2. Pick one other PC. She thinks you are an incredibly selfish person, perhaps based on her belief that you always save yourself first.\r\n3. Pick one other PC. You once fought on opposite sides of a combat.\r\n4. Pick one other PC. This character seems to be a jinx for you. Whenever she is next to you, the difficulty of your defense tasks is increased by one step. However, you’re the opposite for her—when you’re next to her, the difficulty of her defense tasks is decreased by one step.	masters_defense	1
46	Masters The Swarm	Insects. Rats. Bats. Even birds. You master one type of small creature, and they respond to you in number. It’s a weird skill—as you’ve been told far too many times—but you’ve seen the benefits both in and out of battle, and you’ve fully embraced it.\r\nYour dress likely bears some mark of your predilections. Random creatures of your chosen kind sometimes alight on your person even when you don’t purposefully call them.	Minor Effect Suggestion: The swarm is particularly thick and angry, and everyone\r\nwithin it suffers 1 point of damage this round.\r\nMajor Effect Suggestion: Everyone within the swarm suffers 3 points of damage this round.	1. Pick one other PC. This person seems deathly afraid of your creatures and has a watchful eye on you.\r\n2. Pick one other PC. Your creatures are attracted to this person for reasons you cannot understand.\r\n3. Pick one other PC. You are indebted to this character for an act of kindness in the past.\r\n4. Pick one other PC. This character has an oddly shaped birthmark, mole, or other feature that reminds you of your creatures. Does it mean something?	masters_the_swarm	1
20	Doesn't Do Much	You’re a slacker. You’ve had a number of jobs in your life, but nothing’s really stuck. No one thing consumes you, compels you, or drives you. You float from event to event. That doesn’t mean you’re unhappy, necessarily. It’s not a bad life. You like to take it easy. Appreciate the little things. Partake in a few relaxing substances now and again. Enjoy the rug that ties the whole room together. Not a lot of stress, and you know a little about a lot of different things.\r\nYou dress casually. You might be in decent physical shape—if, you know, that’s your thing—or maybe you’re more cerebral (a pseudo-intellectual). It’s all good.	Minor Effect Suggestion: You draw on your experiences and reduce the difficulty of your next action by one step.\r\nMajor Effect Suggestion: You get a free, no-action recovery roll.	1. Pick one other PC. She’s always been there for you. Got you out of jams from time to time. She’s cool.\r\n2. Pick one other PC. This character is too uptight for your tastes. He’s got to learn to chill.\r\n3. Pick one other PC. You’re a little jealous of this character because she’s better\r\nthan you at your favorite hobby (bowling, karaoke, or whatever it is).\r\n4. Pick one other PC. You owe him money, but you’re hoping he’ll forget that.	doesnt_do_much	1
21	Employs Magnetism	Electromagnetism is a fundamental force in the universe, and it is yours to command. You are a master of metal.\r\nYou probably wear a lot of metal, perhaps as part of your clothing or armor, as part of your accessories (such as jewelry or piercings), embedded into your body surgically, or in some combination of these options.	Minor Effect Suggestion: The duration of the effect is doubled.\r\nMajor Effect Suggestion: An important item on the target’s person is destroyed.	1. Pick one other PC. Whenever you use your powers, the metallic items on that character’s body shudder, rattle, clink, and shake if he is within short range.\r\n2. Pick one other PC. You worked together in the past, and the job ended badly.\r\n3. Pick two other PCs. While practicing your Diamagnetism ability, you once accidentally sent them careening into each other. You’ve never been able to repeat it. Whether you tell them that you’ve been trying to replicate the strange effect is up to you.\r\n4. Pick one other PC who has metallic elements in his body. You’re afraid to use your magnetism abilities near him because you once had a bad experience involving Move Metal and a (probably former) friend’s mechanical eyes.	employs_magnetism	1
23	Exists In Two Places At Once	One day, you looked into a mirror or another reflective surface and noticed that the reflection didn’t quite match your movements. After some time, the image stepped free from the surface and where there was one, there were now two.\r\nYou have a doppelganger, a duplicate you can call into existence when you wish. This duplicate may be a quirk of your nature, brought on by exposure to weird energy or a piece of scarcely understood technology. Then again, this other might hail from another reality, a branching timeline that may be similar to or quite different from your own. Of course, the copy could simply be a manifestation of your will on a cloud of nanites that assume your shape when you command them. Whatever the reason for your ability, you can call forth the copy and be in two places at once.\r\nYour duplicate is your twin. It shares more than your appearance. It duplicates your mannerisms, manner of speech, expressions, and habits. In effect, you have another you.	Four Hands Are Better Than Two: When you and your duplicate work together to complete a task, the difficulty of that task is decreased by one step (if cooperation would be helpful).\r\nMinor Effect Suggestion: For your target, the difficulty of the next task it attempts involving you or your duplicate before the end of the next round is increased by one step.\r\nMajor Effect Suggestion: You have an asset on the next roll you make within the next hour.	1. Pick one other PC. This character finds your talent unnerving and unsettling. For her, the difficulty of any task made to help your duplicate is increased by one step.\r\n2. Pick one other PC. This character seems convinced that you are really a pair of identical twins with no actual powers.\r\n3. Pick one other PC with a companion. This PC’s companion seems to have an unusual relationship with your duplicate.\r\n4. Pick one other PC. You used to move in the same social circles and knew of each other, but you had never been introduced.	exists_in_two_places_at_once	1
28	Fights With Panache	You know that style is at least as important as substance. Defeating foes is secondary to looking good while doing it. Some might call you a swashbuckler or daredevil. You leap through the air, make a flourish with your weapon, and attack, usually with a clever, biting show of wit. Your enemies hate you, but your allies adore you. Just watching you fight is entertaining.\r\nYou very likely wear no armor, instead preferring stylish clothing—perhaps even a hat with a feather.	Additional Equipment: You begin with a set of extremely stylish clothes and a jeweled weapon.\r\nMinor Effect Suggestion: The target is so dazzled by your style that it is dazed for one round, during which time the difficulty of its tasks is modified by one step to its detriment.\r\nMajor Effect Suggestion: Make an additional attack with your weapon on your turn.	1. Pick one other PC. You’re always trying to impress this character with your skill, wit, appearance, or bravado. Perhaps she is a rival, perhaps you need her respect, or perhaps you’re romantically interested in her.\r\n2. Pick one other PC. This character seems to anticipate your next move almost before you even begin it. When he collaborates with you on the same task or fights the same foe, you gain +1 to any die rolls.\r\n3. Pick one other PC. You fear that she is jealous of your abilities and worry that it might lead to problems.\r\n4. Pick one other PC. This character is so enamored of your swashbuckling, entertaining ways during combat that he sometimes forgets to take action himself.	fights_with_panache	1
31	Fuses Mind And Machine	You believe that the finest machine ever created is the human brain (although some scientists would disagree). Experience and training have taught you that any machine can be improved. Through the use of implants and mechanical enhancements, your brain processes input faster, stores more information, and eventually can tap right into the Internet (or similar data network). Mentally, you function on an entirely different level than your fellows.\r\nDid you make these improvements yourself? Did someone else? Was it with your blessing or against your will? Regardless, you are now more than just a person. You are both living creature and machine. But unlike what others might assume, all of your refinements and upgrades are on the inside. You don’t need mech eyes or metal arms to be enhanced. It’s all about what’s inside your skull.	Additional Equipment: You have an artifact that protects your implants and enhancements from disruption or intrusion. The difficulty of resisting such attacks is decreased by one step.\r\nMinor Effect Suggestion: You foresee your foes’ moves so well that the difficulty of your Speed defense rolls for the next round is decreased by one step.\r\nMajor Effect Suggestion: Processing surge! On your next action, you can use points from your Intellect Pool rather than your Might or Speed Pools.	1. Pick one other PC. This character knows a few things that can help when your implants and enhancements malfunction.\r\n2. Pick one other PC. He seems to find you off-putting. You wonder if it’s because you’re clearly smarter than he is or if it’s for some other reason.\r\n3. Pick one other PC. This character has a small device that can shut down your brain with a single switch. However, you don’t think he has any idea of what it is or what it can do.\r\n4. Pick one other PC. Within your memory circuits, you have data of someone who looks just like that character committing terrible crimes—hundreds of years ago. You have no explanation.	fuses_mind_and_machine	1
33	Grows To Towering Heights	You have the ability to become a towering giant for short periods. When you do, everything and everyone seems to shrink around you, until it’s like you’re walking through a children’s play area, where everything is sized for toddlers. As you grow ever larger, your sense of scale shifts further. At your maximum height, most other creatures are as insects, and unless you take care, you easily crush them beneath your colossal feet.\r\nWhen you’re not growing, you look normal. Only the clothing in direct contact with your skin grows with you, so you wear expensive outerwear only when you’re fairly certain you won’t have to trigger your Enlarge ability.	Minor Effect Suggestion: Your opponent is so startled by your size that it is dazed, during which time the difficulty of all tasks it performs is modified by one step to its detriment.\r\nMajor Effect Suggestion: All opponents within short range are so startled by your sudden growth that they are dazed, during which time the difficulty of all tasks they perform is modified by one step to their detriment.	1. Pick one other PC. When you grow, if that character is next to you, she also grows, but only about a foot in height.\r\n2. Pick one other PC. That character helped you find a way to mentally control your ability to grow; at first, it triggered only when you were emotionally distressed.\r\n3. Pick two other PCs. At great risk to themselves, they pulled your oversized, unconscious body from a bad situation and saved your life.\r\n4. Pick one other PC. This character inadvertently hinders your actions. If he is within immediate range, the difficulty of any action that you take related to this focus is increased by one step.	grows_to_towering_heights	1
34	Howls At The Moon	You are a lycanthrope—a werewolf, werebear, wererat, weretiger, or something similar. You are cursed and blessed to be able to transform into a powerful creature, drawing additional mass from a transdimensional source. You and the GM should work out the exact nature of the creature, including its appearance, but it’s a wild beast of rage and blood—at least until you learn to control it.\r\nStyle and appearance are probably low on your list of concerns. Your clothes might be ragged because your transformation is hard on them (or they’re cheap because you know they’ll be destroyed the next time you transform).	Additional Equipment: You have an accurate timepiece that always lets you know when the next transformation is coming.\r\nMinor Effect Suggestion: The target is so intimidated by your bestial attack that it is dazed for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment.\r\nMajor Effect Suggestion: Your attack conveys a small bit of your lycanthropy.\r\nIf your foe survives, one month later, he transforms into an uncontrolled beast. The GM decides what happens from there.	1. Pick one other PC. That character is able to soothe you when you’re in beast form. You’ll never attack him while transformed, and if he spends three consecutive turns using his action to calm you down, you can revert to your normal form without having to make a roll.\r\n2. Pick one other PC. You believe that he intends to convince you (or capture you) to join the circus or some other entertainment venue. He chooses whether or not this is true.\r\n3. Pick two other PCs. They know that it’s beneficial for you to kill and eat a creature while you’re in beast form, and they often work together to make sure that happens.\r\n4. Pick one other PC. Since she saw you in beast form, she has clearly been terrified of you. You are determined to show her that you’re not as dangerous as she thinks.	howls_at_the_moon	1
35	Hunts Nonhumans	You see orcs, lizard people, aliens from Rigel, elves, undead, or some other sort\r\nof inhuman group as a threat to humanity. The threat is obvious to you—they attack, abduct, enslave, prey upon, or murder humans. But the threat can also be far more subtle. They infiltrate, control, subvert, undermine, and terrorize. These threats must be eradicated for the good of all.\r\nNonhuman hunters choose their dedicated foe and focus all their attention on that one opponent whenever possible. In this context, a nonhuman is something that isn’t human and often comes in great numbers. In a fantasy setting, it might be goblins. In a science fiction setting, it might be insectlike alien hordes. Zombies and in some cases mutants might also fit the bill, but keep in mind the similar focus Hunts Outcasts for those who specialize in fighting foes with supernatural abilities.\r\nWhatever the foe, hunters of nonhumans know their enemy’s tactics, methods, weapons, defenses, and abilities.	Minor Effect Suggestion: Your foe is so intimidated by your prowess that it backs away, unwilling to attack. It can still defend itself.\r\nMajor Effect Suggestion: Your foe is terrified by your skill and flees.	1. Pick one other PC. This character has had experiences with the foe in the past, and you’d like to know more about them.\r\n2. Pick one other PC. You are friends, and you’d hate to see this character harmed.\r\n3. Pick one other PC. This character doesn’t understand just how dangerous and horrible the foe can be.\r\n4. Pick one other PC. The inhuman foes are sometimes drawn to certain people. They always seem to attack those people first and with more fervor. This character appears to be one such person.	hunts_nonhumans	1
39	Interprets The Law	You know the law as well as the back of your hand. Broad mandates, narrow rulings, well-meaning overreaches, regulatory considerations, and outright loopholes in the law are all the tools you need to twist outcomes to suit your desire. Knowledge is power, which is why many people who have crossed you now fear you. It’s your decision whether you put your prowess toward noble causes or use it for your own aggrandizement.\r\nYou wear nice suits and designer sunglasses, carry a briefcase, and walk around in shoes that cost more than many people earn in a month.	Additional Equipment: Suit and briefcase.\r\nMinor Effect Suggestion: The target is confused, causing it to stumble and drop whatever it’s holding.\r\nMajor Effect Suggestion: The target can’t believe what you just said and is dazed and unable to take actions for a round as it tries to reconcile your statement with reality.	1. Pick one other PC. That character seriously hurt someone in an altercation, but you got her off with no charges. She may feel grateful or ashamed.\r\n2. Pick one other PC. He borrowed your copy of The Prince by Niccolò Machiavelli and still hasn’t returned it.\r\n3. Pick one other PC. You once defended him in a court of law but suffered one of your very few defeats because of the case or perhaps your own failing—you’re not sure which.\r\n4. Pick one other PC. That character has confided in you that she hates “bloodsucking lawyers” and is glad you’re not one. You haven’t decided yet if you’re going to reveal your profession to her.	interprets_the_law	1
37	Hunts With Great Skill	You are a tracker. Perhaps you hunt animals or more deadly creatures. Perhaps you go after people as a bounty hunter, law enforcer, or killer for hire. Whatever form your hunting takes, you are trained in\r\nstalking your quarry and bringing it down. You are a dangerous individual.\r\nIf you hunt animals or creatures, you might carry the trophies of past kills, such as teeth or skins. If you’re a bounty hunter, you probably wear whatever your quarry would find most intimidating so it feels as though it has no chance of getting away from you.	Minor Effect Suggestion: You can attempt an intimidating task to cause your foe to immediately surrender.\r\nMajor Effect Suggestion: Your foe pauses, terrified by your prowess, and takes no action on his turn.	1. Pick one other PC. That person once saw you show surprising mercy toward your prey, and now you hope she keeps that information quiet—it might harm your reputation.\r\n2. Pick one other PC. You accidentally caught her in one of your traps and she had to free herself.\r\n3. Pick one other PC. Back in your bounty hunter days (which may or may not be over), you were hired to track down someone close to him.\r\n4. Pick one other PC. You’ve noticed that it’s almost impossible to track him, but you’re determined to figure out a way.	hunts_with_great_skill	1
40	Is Idolized By Millions	Some celebrities are known for their talent, while others are simply known for being known. However the spotlight found you, you’re a celebrity now, and people love you—often a little too much. You can’t\r\ngo anywhere publicly without people recognizing you, approaching you for a shared selfie, or pointing at you from afar. Whenever you do anything, whether it’s going to the beach, adopting a new pet,\r\nor going out clubbing, the event becomes pablum for celebrity TV shows and websites, which often twist the facts into a caricature of reality. But hey, like your publicists say, no PR is bad PR.\r\nYou wear oversized sunglasses, designer clothing, and expensive shoes that are also comfortable.	Additional Equipment: Designer clothing and sunglasses.\r\nMinor Effect Suggestion: Your foe realizes who you are and leaves himself open; the difficulty of your next attack is reduced by one step.\r\nMajor Effect Suggestion: Nearby strangers recognize you, scream your name, and run to get your autograph, shielding you from enemy attacks for a couple of rounds.	1. Pick one other PC. You were childhood friends. As you got famous, she continued to live a normal life, and you worry that she resents you.\r\n2. Pick one other PC. That character knows that though you’re quick with a smile, as if having the time of your life, on the inside you feel empty and alone.\r\n3. Pick one other PC. That character once called you a “narcissistic douchecopter” on social media. You’re not sure if it was a joke.\r\n4. Pick one other PC. The media thinks that you and that character have a secret relationship and uses any pretext to revisit the story and give it new life.	is_idolized_by_millions	1
41	Is Licensed To Carry	You’re a proficient adversary when armed. Hundreds of hours of training mean that you don’t crack when under fire; you take care of business before the bad guys even know you’re there. Those who are Licensed to Carry might be cops, crooks, hunters, or citizens interested in protecting themselves.\r\nYou dress in clothing that allows you either to conceal your weapon or to quickly access it, and preferably both, which is why you’re probably known for your trench coat.	Additional Equipment: A firearm and three magazines of ammo.\r\nMinor Effect Suggestion: After being hit on the side of the head, the target is deafened for a few minutes.\r\nMajor Effect Suggestion: An artery hit causes the target to bleed for 1 point of damage each round until he succeeds at a difficulty 3 Intellect or Speed task to bind the wound.	1. Pick one other PC. In the recent past, while doing a little target practice, you accidentally winged him, leaving him badly\r\nwounded. It is up to that PC to decide whether he resents, fears, or forgives you.\r\n2. Pick two PCs (preferably ones who are likely to get in the way of your attacks). When you miss with a gun and the GM rules that you struck someone other\r\nthan your target, you hit one of these two characters.\r\n3. Pick one other PC. You can see that the character needs some advice on how to handle a firearm.\r\n4. Pick one other PC. You’re not sure how or from where, but this character has a line on guns and ammunition and can get them for you for half price.	is_licensed_to_carry	1
44	Looks For Trouble	You are a fighter. A scrapper. You like nothing more than to take off the kid gloves and confront your opposition in the most direct way possible. You don’t hide, and you don’t shirk. You take things head-on in a physical way. Your friends all likely feel better about going into danger with you at their side or their back.\r\nYou probably wear bright colors—yellow, pink, or red—to help you stand out. You might even wear a T-shirt with a printed obscenity for added style.	Additional Equipment: A melee weapon of your choice.\r\nMinor Effect Suggestion: The target is also dazed for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment.\r\nMajor Effect Suggestion: You destroy a piece of equipment worn or held by your opponent.	1. Pick one other PC. Due to past experiences, you watch over her. That PC\r\nis your default charge regarding your tier 2 ability, if you have not named someone else.\r\n2. Pick one or two other PCs. They seem pretty tough, and you’re secretly hoping that at some point you’ll see who’s tougher— you or them.\r\n3. Pick one other PC. If this character is within immediate range when you’re in a fight, sometimes she helps, and sometimes she accidentally hinders (50% chance either way, determined per fight). When this character helps, you gain a +1 bonus to all attack rolls. When she hinders, you suffer a –1 penalty to attack rolls.\r\n4. Pick one other PC. You used to be in a relationship with him, but it’s long since over.	looks_for_trouble	1
42	Leads	Using charisma, natural leadership, and perhaps some training, you command the actions of others, who follow you willingly. You are a politician, a captain, a leader, or a manager. Your skills allow you to make people do what you want, but you also have the wisdom to know what actions would be best for your followers and allies.\r\nSince you need the respect of others, you probably dress and carry yourself in such a way that inspires, endears, or intimidates. You have a voice suited to barking orders that can be heard even on a noisy battlefield.	Minor Effect Suggestion: The next time you attempt to command, captivate, or otherwise influence the same foe, the difficulty of the task is decreased by one step.\r\nMajor Effect Suggestion: The foe is influenced, captivated, or otherwise affected by your ability for twice as long as normal.	1. Pick one other PC. That character was once a follower of yours, but you have since grown to think of her as a peer.\r\n2. Pick one other PC. Independent and stubborn, he is not affected by your abilities.\r\n3. Pick one other PC. She introduces you to the follower you gain at tier 2.\r\n4. Pick one other PC. You were once very close with that character in the distant past.	leads	1
53	Never Says Die	You are as stalwart, hardy, and driven as can be imagined. When others are ready to quit, you’re just getting started.\r\nYou probably don’t spend a lot of time on your appearance—it is far less important than actions. For that matter, so are words. You’re likely not much of a talker. You’re a doer.\r\nCharacters with this focus are sometimes called stalwarts or diehards. They often are soldiers, mercenaries, or other tough-as-nails individuals, but sometimes they take a more heroic stance. A character who is hard to kill is around longer to help others, after all.	Minor Effect Suggestion: You restore 2 points to your Might Pool.\r\nMajor Effect Suggestion: The difficulty of your next action is decreased by two steps.	1. Pick one other PC. You feel the overwhelming need to impress this character, although you’re not sure why.\r\n2. Pick one other PC. This character seems quite capable, but in your mind, his spirit needs motivating. You’re constantly trying to convince him to keep trying, go the distance, and fight the good fight.\r\n3. Pick one other PC. You feel very protective of this character and don’t want to see her harmed.\r\n4. Pick one other PC. This character comes from the same place you do, and you knew each other as children.	never_says_die	1
48	Metes Out Justice	So much injustice in the world. It takes a special person to take it upon himself to right wrongs, protect the innocent, and punish the guilty. You are such a person.\r\nJusticars, as they are sometimes called, are often knights errant who wear armor, bear swords and shields, and travel the land looking for tyranny, corruption, or oppression. But some operate a little less ostentatiously. Sometimes justice comes from more subtle tactics. In a more modern setting, a justicar might be a masked vigilante or just a badass who rights wrongs.\r\nThe importance of justice in your life might come from religion, your upbringing, or your highly developed sense of principles. Regardless, you not only adhere to your values, but you also believe it is your calling to act on them and help make the world more just, more fair, and more ethical. You want to see wrongdoing punished.	Additional Equipment: You have a shield to help you protect yourself and the innocents you find (if appropriate to the setting).\r\nMinor Effect Suggestion: You shame or intimidate your foe so much that he is shaken and uses his next turn to flee.\r\nMajor Effect Suggestion: You mark your foe permanently with a distinctive scar so that her guilt will be known by all.	1. Pick one other PC. You strongly suspect that this person has a past that might involve serious crimes or wrongdoing. You have no proof, however, and you’ve never witnessed him do anything seriously wrong.\r\n2. Pick one other PC. This character seems to share your value systems and sees right and wrong the same way you do, which is refreshing.\r\n3. Pick one other PC. This character, while ethical, defines right and wrong in different ways than you do.\r\n4. Pick one other PC. In the past, you and this character witnessed an event that helped shape your moral code. She may or may not have come away with a similar outlook.	metes_out_justice	1
49	Moves Like A Cat	You are extremely dexterous. Your speed and agility make you almost a thing of wonder. Your body is lithe, flexible, and graceful. Your training—or perhaps a bit of magic or technology—allows you to move quickly and smoothly, land safely when you fall, and avoid danger.\r\nYou likely wear tight clothing that doesn’t hinder you as you move. Likewise, you probably don’t allow yourself to be overburdened by a lot of equipment. You’ll wear armor only if it doesn’t slow you down.	Minor Effect Suggestion: You restore 2 points to your Speed Pool.\r\nMajor Effect Suggestion: You can take a second action this round.	1. Pick one other PC. His occasional clumsiness and loud behavior irritates you.\r\n2. Pick one other PC. This character comes from the same place you do, and you knew each other as children.\r\n3. Pick one other PC. You aid her with advice and a helping hand when she needs it. Anytime the two of you are next to each other, the difficulty of balancing, climbing, and jumping tasks is decreased by one step for her.\r\n4. Pick one other PC. He owes you a significant amount of money.	moves_like_a_cat	1
50	Moves Like The Wind	You are extraordinarily fast. Through some agency beyond human limits (such as magic, technology, mutant powers, or the like), you are a blur of movement. You\r\ncan outrun anyone, and as your abilities increase, you can eventually run rings around flying birds or speeding cars.\r\nYou likely wear tight clothing that doesn’t hinder you as you move. Likewise, you probably don’t allow yourself to be overburdened by a lot of equipment.	Minor Effect Suggestion: You restore 2 points to your Speed Pool.\r\nMajor Effect Suggestion: You can take a second action this round.	1. Pick one other PC. He moves so slowly! It irritates you.\r\n2. Pick one other PC. This character is attractive and alluring to you.\r\n3. Pick one other PC. She inspires you. When she is within immediate distance, the difficulty of all physical actions (other than defense) is decreased by one step.\r\n4. Pick one other PC. He owes you a significant amount of money.	moves_like_the_wind	1
47	Masters Weaponry	You have worked long and hard with one particular type of weapon: swords, axes, daggers, whips, or whatever you choose. Thus, you are a swordsman, an axemaster, a mistress of knives, or whatever is appropriate to your chosen weapon. A master of the rapier is different from a master of the warhammer.\r\nYou might wear a symbol—a badge, a pin, a tattoo, an amulet, certain colors, and so on—that indicates the school in which you trained, the style of fighting you have mastered, or the name of your mentor. Your weapon is almost certainly your finest possession. Not only is it well cared for and of high quality, but you probably keep it in a beautiful scabbard, harness, belt, case, or something similar.	Additional Equipment: You have a high- quality weapon of your choosing.\r\nWeaponry Abilities: If you cast spells or have similarly overt abilities, your attacks always look like your chosen weapon. So a force blast appears to be a large weapon made of force. These alterations change nothing other than the appearance of the effects. As another example, Barrier becomes a wall of swirling blades of energy. This alteration changes the ability such that it is not a solid barrier but rather inflicts 1 point of damage to anyone who touches it and 4 points of damage to anyone who passes through it.\r\nMinor Effect Suggestion: The target is so dazzled by your expertise that it is dazed for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment.\r\nMajor Effect Suggestion: Make an immediate additional attack with the weapon as part of your turn.	1. Pick one other PC. That character shows potential in the use of your weapon. You would like to train her, but you’re not necessarily qualified to teach (that’s up\r\nto you), and she might not be interested (that’s up to her).\r\n2. Pick one other PC. If she is within immediate range when you’re in a fight, sometimes she helps, and sometimes she accidentally hinders (50% chance either way, determined per fight). When she helps, you gain +1 to all attack rolls. When she hinders, you suffer a –1 penalty to attack rolls.\r\n3. Pick one other PC. You once saved his life, and he clearly feels indebted to you. You wish he didn’t; it’s all just part of the job.\r\n4. Pick one other PC. This person recently mocked your combat stance. How you deal with this (if at all) is up to you.	masters_weaponry	1
52	Needs No Weapon	You don’t use weapons—you are a weapon. With powerful punches, kicks, and full- body moves, you inflict incredible damage on your foes. By focusing your energy, the combined power of your body and mind means you can do incredible amounts of damage without depleting your energy reserves. You might have gained your skills through intense training, various implants and enhancements, genetic mutations, or any combination of these things. Whatever the origin of your feats, you likely take good care of your body, ensuring that it remains the sharpest, most dependable weapon at your disposal.\r\nWeaponless martial artists are both feared and revered. They wear loose, comfortable clothing that allows them a full range of movement, and they rarely use weapons other than their body’s own implements (although some carry items designed to enhance their body movements for greater effect, such as knuckle weapons, knee spikes, or boot blades).	Minor Effect Suggestion: You trip your target and knock him prone.\r\nMajor Effect Suggestion: You strike your target in a limb, making that limb useless for the next minute.	1. Pick one other PC. He seems to believe that the only true weapons are those that you can hold in your hand, and he might look at you with disdain.\r\n2. Pick one other PC. This person seems incredibly unaware of her body and always happens to get in your way. If you miss your foe and accidentally hit someone else in close range, it’s likely to be her.\r\n3. Pick one other PC. You once trained with a close friend of his, and you owe that mutual friend much.\r\n4. Pick two other PCs. Once these two heard about your skills, they expressed interest in being your students. However, only one seems to have any aptitude.	needs_no_weapon	1
55	Performs Feats Of Strength	A lifetime of physical training rewards you with incredible power. Your muscles ripple beneath your skin, evident in your extraordinary build and frame, and you can do things others would not dream possible. You can haul incredible weight, hurl your body through the air, and punch through doors.\r\nSuperior strength can manifest in many ways. You could have the physique of a bodybuilder, almost godlike in its perfection, or you might be a lumbering, hulking monster of a person, as heavy with fat as you are with muscle. Then again, you could be short and wiry, your strength belied by your slight frame.	Additional Equipment: You have a heavy weapon.\r\nMinor Effect Suggestion: You knock the creature to the ground.\r\nMajor Effect Suggestion: You send the creature flying through the air so that it lands on the ground in a heap 1d20 feet away from you.	1. Pick one other PC. You have been friends with this character for as long as you remember and often heed her advice and guidance.\r\n2. Pick one other PC. For some reason— nerves, perhaps, or attraction—he makes you feel weak in the knees. You prefer if he stays out of immediate range when you’re in combat.\r\n3. Pick one other PC. You once carried him from combat after he was wounded. Whether he feels embarrassment, gratitude, or something else is up to him.\r\n4. Pick two other PCs. They have a game where they ask you to perform harder and harder feats of strength. Whether you play along is up to you.	performs_feats_of_strength	1
51	Murders	The murderous assassin is a master of dealing death. No one is better at sneaking into a location, eliminating a target, and slipping out again. Obviously, a professional killer is not likely to have a lot of friends.\r\nYou probably wear dark colors—black, charcoal grey, or midnight blue—to help blend into the shadows. But since you’re also a master of disguise, in truth you could look like anyone.	Additional Equipment: You start with a disguise kit and three doses of a level 2 blade poison that inflicts 5 points of damage.\r\nMinor Effect Suggestion: No one but the foe notices that you make the attack.\r\nMajor Effect Suggestion: If you have poison amid your belongings, you were able to apply it just before the strike, adding the poison’s effects to the normal attack damage.	1. Pick one other PC. That character knows your real identity, profession, and background. To all others, the truth about you is a closely guarded secret.\r\n2. Pick one other PC. You were recently approached by someone who wanted to hire you to take that character out. You haven’t yet decided whether to take the job or warn her that her life’s in danger.\r\n3. Pick two other PCs. One night after perhaps too much celebrating, you loudly claimed responsibility for a murder you didn’t commit. These two characters were the only ones who heard. Whether they believe you or not is up to them.\r\n4. Pick one other PC. That character is the one who got you started down the path of taking lives, whether he knows it or not.	murders	1
56	Pilots Starcraft	You’re a crack starship pilot. You feel most alive when the engines are running hot, the floor plates are thrumming beneath your feet, and the stars stream past the viewports in a continuous accelerating streak. Whether you pilot starcraft along a dangerous trade route, explore places no one has gone before, or work as a courier, you are the master of your own domain: your starship.\r\nPiloting is a glamorous job that requires glamorous attire, so you wear striking clothing, possibly including holo-tattoos, data jewelry, and other elaborate accessories.	Additional Equipment: With your GM’s approval, access to a small starcraft.\r\nMinor Effect Suggestion: The difficulty of the next task attempted by an ally (either personally or in operating one of the starcraft’s systems, such as communication, sensors, weapons, and so on) is reduced by one step.\r\nMajor Effect Suggestion: You can take an immediate extra action, either personally or in operating one of the starcraft’s systems, such as communication, sensors, weapons, and so on.	1. Pick one other PC. You promised that character a trip anywhere she wanted to go in a starship. She hasn’t yet taken you up on your offer.\r\n2. Pick one other PC. You smuggled goods in your starcraft for him in the past, and it ended up entangling you in legal trouble. You’ve mostly forgotten the incident. Mostly.\r\n3. Pick one other PC. That character confided in you that she suspects you are an agent of an enemy organization. You deny it.\r\n4. Pick one or more other PCs. You accidentally crashed your starcraft when those characters were aboard. Everyone was hurt, and one other former comrade was killed in the incident.	pilots_starcraft	1
59	Sees Beyond	Unlike most people, you know there are far more than three dimensions. More colors than can be found in the rainbow. More things in the world than most can see, sense, or even understand. With practice and help (through drugs, lenses, manipulated energy fields, magic, special heritage, or a combination of some or all of these), you can perceive things that others cannot.\r\nWhat you see in other dimensions has changed your understanding of even the most basic things like weapon and dress. Where others might see your drab outfit and plain weapons, you see something entirely different—myriad colors and patterns that showcase your unique vision of the world. Your weapons likely bear marks of other dimensions as well.	Minor Effect Suggestion: The period of concentration needed is cut in half.\r\nMajor Effect Suggestion: You see even more than you normally do and can ask the GM one question about what you’re looking at.	1. Pick one other PC. You are fairly certain that this character doesn’t believe that your abilities are real.\r\n2. Pick one other PC. You see a gathering of energy and colors on this character that seem to imply that she too can see beyond. Whether you ask her about it is up to you.\r\n3. Pick one other PC. Whenever this character is near, your abilities seem to take longer and become more difficult.\r\n4. Pick one other PC. Wherever this character goes, you are aware of the general distance and direction of his location.	sees_beyond	1
65	Speaks For The Land	You not only speak for the land, you also protect it and the natural creatures and forests that it supports. In that sense, you are the land’s champion. You might be part of an ancient priesthood of a select few who are able to commune with the spirits of nature and who call upon the magic of the forest, moon, storm, and beast. In particular, you know how certain long-lived trees are conduits of worldly magic. When lightning falls from the sky, fires rage, or the earth shakes, these elder trees channel that elemental fury into themselves. An event may burn away a limb or blow off bark, but the energy contained within the tree becomes part of the magic of the land— magic that you, in turn, draw upon.\r\nAs a speaker for the land, you probably wear rough, rugged clothing that shows little concern for style. Most of the time, covering yourself in natural smells to keep your scent from spooking wildlife is more important than bathing to be presentable to other humans.	Additional Equipment: A talisman of petrified oak.\r\nMinor Effect Suggestion: A hawk or raven attacks your foe’s head for one round, during which time the difficulty of all tasks the foe performs is modified by one step to its detriment.\r\nMajor Effect Suggestion: A large ferret, eagle, or similar natural creature snags and makes off with a piece of equipment worn or held by your foe.	1. Pick one other PC. You found that character lying unconscious in the woods with no memory of how she got there. Without your help, she likely would have died of exposure.\r\n2. Pick one or more other PCs not from the wilderness. You’ve decided that you will mentor them to become more appreciative of the land and its natural beauty.\r\n3. Pick one other PC. More often than not, that character is accidentally singed, snagged, bitten, or otherwise caught when you use one of your special abilities.\r\n4. Pick one other PC. That character’s sibling is responsible for felling a sacred elder tree that was important to you.	speaks_for_the_land	1
60	Separates Mind From Body	Your mind is to your body as a captain is to her ship. Your body obeys your commands, moving and behaving as you direct it, but at any time you choose, your mind can wriggle free from its container and explore the world freely. When you project your mind, there are few places you cannot go, few secrets that can remain hidden from you.\r\nYou probably regard your body as merely a vessel. As a result, you’re not likely to put a lot of effort into style or keeping yourself especially clean. Your clothing is likely tattered and dirty.	Additional Equipment: You possess a silvery ball about 3 inches (8 cm) in diameter. The ball’s highly polished surface looks as if it reflects your surroundings, but examining its surface reveals that it reflects the surroundings of another location, one you have not yet found. In the images shown on the ball, you have seen many strange and unsettling things.\r\nMinor Effect Suggestion: You have an asset on any action that involves using your senses, such as perceiving or attacking, until the end of the next round.\r\nMajor Effect Suggestion: Your Intellect Edge increases by 1 until the end of the next round.	1. Pick one other PC. Through a quirk of fate or careful cultivation (your choice), you always know where that character is in relation to you. You are always aware of the direction and distance you must travel to reach him.\r\n2. Pick two other PCs. You believe that while using your Third Eye power, you once saw them engaged in something covert and possibly illegal. It’s up to those characters whether one, both, or neither were actually involved.\r\n3. Pick one other PC. For reasons beyond understanding, your focus abilities do not function when she is next to you and in your field of vision.\r\n4. Pick one other PC. He is fascinated by your skills and wants to study you more closely. It’s up to you whether or not you let him.	separates_mind_from_body	1
58	Rides The Lightning	Through practice and inherent ability (or the subtle use of hidden or implanted devices), you control electricity. Not only can you create and discharge electrical power, but you can eventually learn to use it to transport yourself.\r\nYou probably wear tight-fitting clothing that allows you to move quickly. Your garments might be blue and black, perhaps with a lightning-bolt motif.	Additional Equipment: You have a bag of miscellaneous batteries and power cells (if appropriate to the setting). Whenever you find a new device that operates on batteries or cells (GM discretion), there is a 75% chance that the bag contains one that will power the device if it depletes.\r\nElectrical Abilities: If you use special abilities that would normally use force or other energy, they instead use electricity. For example, a force blast is a blast of lightning. This alteration changes nothing other than the type of damage and the fact that it might start fires.\r\nMinor Effect Suggestion: The target is dazed by electricity for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment. Electricity can also shut down an android, robot, or other automaton for one round.\r\nMajor Effect Suggestion: Devices filled with electrical power explode. You can target and destroy an artifact that a foe is holding or wearing.	1. Pick one other PC. This character has been your friend for a long time, and you have learned to bring her along when you ride the lightning. If the character is standing right next to you, you can take her with you when you use Bolt Rider or Electrical Flight. (Normally, neither ability allows you to transport other creatures.)\r\n2. Pick two other PCs. You know about an important connection between them that even they don’t know about.\r\n3. Pick one other PC. This character has interesting ideas about electricity and how it can be harnessed. If you are trained with machines, after you talk to this character for an hour, you gain an asset on any task involving identifying, crafting, or repairing a machine that uses electricity.\r\n4. Pick one other PC. He has the worst luck with electrical devices of anyone you’ve ever met. You want to help him, but you aren’t sure how or even whether he will be open to your assistance.	rides_the_lightning	1
61	Shepherds Spirits	You see things that others do not: wandering souls of the dead, nature spirits, ephemeral figures leaping amid the flames of a fire, and all the other unseen folk. You can speak to these otherworldly entities and interact with them. They are drawn to you, for they recognize that you walk in two worlds.\r\nShepherds usually wear distinctive robes and a variety of symbols, often with macabre imagery. Runes stitched across your cloak help you concentrate on your abilities.	Spirit Abilities: When you perform abilities that would normally use force or other energy, they instead use spirit energy. For example, a force blast appears as if delivered by a ghostly revenant whose touch drains life energy. This alteration changes nothing other than the type of damage.\r\nMinor Effect Suggestion: You can ask an additional question of a spirit you petition.\r\nMajor Effect Suggestion: The spirit you are questioning knows a surprising amount of information about the topic.	1. Pick one other PC. When spirits whisper to you, as they often do (you’ve learned to ignore it), that character can sometimes hear what they say.\r\n2. Pick one other PC. She came to you with questions for a departed friend, family member, or enemy.\r\n3. Pick one other PC. You may or may not have told him this, but the spirits whisper to you that he is destined to die soon.\r\n4. Pick one other PC. You owe that character a significant amount of money.	shepherds_spirits	1
62	Siphons Power	You are an energy vampire, draining power from machines or living creatures. You use this power to restore your own physical energy reserves. Perhaps you take great joy in this ability, or perhaps you grudgingly accept it as a boon to yourself and your companions and use it only when you must. Either way, you are likely feared and unwelcome in many communities for your dangerous powers. You might try to conceal your true nature, dressing so that you don’t attract attention and give yourself away, or perhaps you flaunt it, using the rumors to your advantage, wearing black clothing and embodying a sinister countenance.	Minor Effect Suggestion: When draining, you gain 2 additional points to divide between your Speed Pool and Might Pool.\r\nMajor Effect Suggestion: When draining, you gain 5 additional points to divide between your Speed Pool and Might Pool.	1. Pick one other PC. This character is immune to your powers for some inexplicable reason.\r\n2. Pick one other PC. This character appears to think of you as some kind of monster.\r\n3. Pick one other PC with a living or machine companion. This character seems convinced that you’re going to use his companion for your own ill-gotten purposes.\r\n4. Pick one other PC. You believe she can help you control and understand your abilities, if you can get her to talk about it.	siphons_power	1
63	Slays Monsters	You live in a world populated not just by normal folk, but by creatures that should belong only to tall tales or nightmares. Dragons. Gorgons. Many-headed hydras. Werewolves. Worse.\r\nYou decided to stand up to this menace, even though it means putting yourself in more peril. And if you give your life, others will tell stories of your bravery. Usually heavily armed and armored knights, monster slayers are often afforded great respect.	Minor Effect Suggestion: You can immediately move up to a short distance after this action.\r\nMajor Effect Suggestion: You can immediately take a second action during this turn.	1. Pick one other PC. You saved him from a monster (though not by defeating the creature, which is still out there).\r\n2. Pick one other PC. You tried but failed to save her loved one from a monster. You still bear the scars.\r\n3. Pick one other PC. He knows the name and lair of a monster, but for some reason he won’t share that information with you.\r\n4. Pick one other PC. That character shows potential in the art and philosophy of monster slaying. You would like to train her but aren’t sure she’s interested.	slays_monsters	1
66	Stands Like A Bastion	You are a wall. A stone. An island against a storm of weapons and words. Nothing moves you. Nothing even really dents you. Perhaps it’s your physical size that lends you such stopping power, perhaps you’ve enhanced your physique with mechanisms and machinery, or perhaps it’s merely your incredible strength of will that forces foes to stay their swings.\r\nYour armor is probably just like you: solid, strong, and utterly impenetrable. Every flourish and bit of flair—if you have any— does double duty as protection.	Additional Equipment: You have armor of your choice and a shield.\r\nMinor Effect Suggestion: You add +2 to Armor.\r\nMajor Effect Suggestion: You regain 2 points to your Might Pool.	1. Pick one other PC. You feel indebted to this character and go out of your way to protect her from harm.\r\n2. Pick one other PC. You once saved this character from a dangerous situation.\r\n3. Pick one other PC. This character once ran full bore into you while running away from . . . something. You stopped him just by being in the wrong place at the wrong time, but he seems to hold it against you.\r\n4. Pick two other PCs. You would like to ask them to help you train by attacking you at the same time, but you’re uncertain how to approach them with this request.	stands_like_a_bastion	1
13	Conducts Weird Science	You could be a respected scientist, having been published in several peer-reviewed journals. Or you might be considered a crank by your contemporaries, pursuing fringe theories on what others consider to be scant evidence. Truth is, you have\r\na particular gift for sifting the edges of what’s possible. You can find new insights and unlock odd phenomena with your experiments. Where others see a crackpot cornucopia, you sift the conspiracy theories for revelation. Whether you conduct your enquiries as a government contractor, a university researcher, a corporate scientist, or an indulger of curiosity in your own garage lab following your muse, you push the boundaries of what’s possible.\r\nYou probably care more about your work than trivialities such as your appearance, polite or proper behavior, or social norms, but then again, an eccentric like you might turn the tables on that stereotype too.	Minor Effect Suggestion: You learn one additional piece of information in your analysis.\r\nMajor Effect Suggestion: Foes within sight are dazed for one round upon seeing your strange creation or its results. During this time, the difficulty of all tasks they perform is modified by one step to their detriment.	1. Pick one other PC. The character believes your experiments once cured someone close to her of a fatal condition. You’re not sure if they did, or if the condition just went into remission.\r\n2. Pick one other PC. You created a scientific instrument designed to give this character a restful night’s sleep, but you now fear unanticipated long-term side effects.\r\n3. Pick one other PC. You’re pretty sure that one of your experiments from when you were younger and brasher is responsible for giving him some special gifts or drawbacks. The PC might know this, or he might just vaguely remember you from long ago.\r\n4. Pick one other PC. She asked you to design a gun that could shoot through walls. You took the cash, but you are still working on the prototype.	conducts_weird_science	1
68	Throws With Deadly Accuracy	Sometimes you wonder if your hand and your mind’s eye are connected in an intricate perfection of timing and aim. Everything that leaves your hand goes exactly where you’d like it to and at the range and speed to make the perfect impact. Your expertise might be in carefully crafted throwing daggers and shuriken, or perhaps you use whatever’s nearby.\r\nWhat you wear doesn’t matter, as long as it doesn’t come between you and your throwing implements. Lots of pockets, equipment belts, and pouches make it easy to keep your preferred weapons close at hand. You might even have a hat with a variety of throwing items tucked into its brim, ready to meet their target with your perfect aim.	Additional Equipment: You have three throwing weapons of your choice.\r\nMinor Effect Suggestion: You hit your target in the eye and blind him for one round.\r\nMajor Effect Suggestion: You strike your target in a limb, making that limb useless for the next minute.	1. Pick one other PC. You believe that this character shows potential for being an excellent ranged attacker, but you don’t know if she would be interested in the rigorous training and practice required.\r\n2. Pick one other PC. This character once saved you from a dangerous situation.\r\n3. Pick one other PC. You owe this character a significant amount of money.\r\n4. Pick one other PC. He is always getting in the way. If the GM determines that your attack strikes the wrong target, it almost always hits this character.	throws_with_deadly_accuracy	1
69	Travels Through Time	You have the unusual ability to travel through time in a way others can never dream of.\r\nYou have likely experienced jumps where time seems to have passed but you have no memory of what happened. You probably also suffer from déjà vu, sensing that you have been in a situation or witnessed an event before and are now experiencing it all over again. You have begun to realize the extent of your powers and work to master them so that perhaps one day you can travel farther into the future or deeper into the past.\r\nTime travel poses many risks. Often, you have no clear sense about what the future might hold or what might have been happening in the spot where you appear when you travel to the past. Death waits for the bold and the incautious.\r\nWorse than mishap, you must guard against paradox. When you change an event in the past, you could inadvertently cause the future to be rewritten. On the other hand, cosmic forces may move in to correct paradoxes by changing circumstances to accommodate the ability, causing your memories to become false ones when the world you know changes to adapt to your meddling. Of course, if you attempt anything too radical, the universe might write you out of existence so that your efforts to change the past never occur.\r\nYou likely wear clothing and have personal effects in a range of styles, choosing items from many different periods. This eclectic approach to your possessions may give\r\nyou a shabby appearance or make you look strange and alien to others in the present.\r\nAny type of character can have this focus, though its power is extraordinarily rare.	Temporal Abilities: If you have other overt powers, time appears to slow down when you use them. You and everything around you moves in slow motion for a moment, and then time snaps back into place. The temporal distortion changes nothing about the effects of your abilities except for the appearance of the world around you.\r\nMinor Effect Suggestion: One creature you choose within short range either acts first or acts last during the next round.\r\nMajor Effect Suggestion: You step a few moments into the future. To other characters, it looks as if you disappear. At the start of the next round, you reappear and you have an asset for any task you perform during that round.	1. Pick one other PC. You are either a distant ancestor or a descendant of that character. He served as a focal point for your travel and anchors you to the present.\r\n2. Pick one other PC. For some reason, when you use your Anticipation power to look ahead, you specifically see how her future might unfold. You can choose whether or not to tell her what you see.\r\n3. Pick one other PC. You secretly believe that he can also travel through time, since you once fought a person who looked exactly like him.\r\n4. Pick one other PC. You once stepped forward in time to save her from death, but she doesn’t know it. You may choose whether or not to tell her.	travels_through_time	1
67	Talks To Machines	Since you were young, you had an affinity for machines. It seemed almost like you were speaking to them.\r\nYou were. You have the ability to use your organic brain like a computer, interfacing “wirelessly” with any electronic device. You can control and influence them in ways that others can’t. Computers are your friends and companions. You have also learned to repair machines of all kinds because the better they work, the better off you are as well.\r\nYou likely wear a tool belt full of various implements, and machine oils stain your clothes and fingertips.	Additional Equipment: A bag of small tools.\r\nMinor Effect Suggestion: The duration of influence or control is doubled.\r\nMajor Effect Suggestion: The duration of influence or control becomes twenty-four hours.	1. Pick one other PC. That character seems to have a terrible relationship with machines—or at least the machines that you communicate with. If she is next to a machine that you interact with in a friendly manner, that machine is treated in all ways as being one level lower than normal (unless doing so benefits you or her, in which case the level does not change).\r\n2. Pick one other PC. He seems especially leery of you, though this could just be your perception.\r\n3. Pick one other PC. She has a small machine among her equipment but won’t tell you any details about it or let you see it.\r\n4. Pick one other PC. You know that this character knows an incriminating or\r\nembarrassing secret about you, and you hope that he doesn’t reveal it.	talks_to_machines	1
70	Wears A Sheen Of Ice	Through your studies, you have learned to focus your natural talents to command the powers of ice and cold. People might refer to you as an ice mage. Sometimes ice mages are thought to come into conflict with those known as fire mages, but this is a fallacy believed by ordinary folks more than anything based in truth.\r\nYou likely wear white or blue garments that are heavier than they need to be— unless you live in a cold region or wintry clime, in which case you probably wear less clothing than other people do because the cold doesn’t bother you.	Ice Abilities: If you possess abilities that would normally use force or other energy, they instead use cold and ice. For example, a force blast is a ray of frost. This alteration changes nothing other than the type of damage. As another example, Barrier creates a wall of ice. This alteration changes nothing except the wall’s appearance and the fact that it takes 2 additional points of damage from fire.\r\nMinor Effect Suggestion: The surface around the target becomes slick and difficult to stand on.\r\nMajor Effect Suggestion: The target is covered in ice that hinders its movement for one minute, during which time the difficulty of all tasks it performs is modified by one step to its detriment.	1. Pick one other PC. Due to a quirk of fate, if that character is standing next to you when you use your Ice Armor ability, he is also protected by a sheen of ice. (He does not get the added protection of your Resilient Ice Armor ability.)\r\n2. Pick one other PC. For a reason unknown to you, her very presence seems to heat the air around you, making it more difficult to command the powers of ice and cold. If she is within immediate range, her presence occasionally makes it one step more difficult to hit a target with a focus ability.\r\n3. Pick one other PC. That person is especially susceptible to the cold that radiates from you. How he handles that vulnerability is up to him.\r\n4. Pick one other PC. The two of you have a long history and almost always disagree about the best way to handle situations.	wears_a_sheen_of_ice	1
71	Wields Two Weapons At Once	You bear steel with both hands, ready to take on any foe. You fight with two weapons in melee, sometimes called dual wielding. A fearsome warrior, quick and strong, you believe that the best defense is a strong offense.\r\nYou probably sheathe one weapon on each side or both crossed behind your back. They are likely your most prized possessions, and you might have names for them.	Additional Equipment: You start with an additional light melee weapon.\r\nMinor Effect Suggestion: The target is intimidated and flees as its next action.\r\nMajor Effect Suggestion: You can make an immediate additional attack with one of your weapons.	1. Pick one other PC. You have trained with this character so much that if the two of you stand back to back in a fight, you both gain a +1 bonus to Speed defense rolls.\r\n2. Pick one other PC. This character always seems to inadvertently foil your actions, or at least make them more difficult. If she is within immediate range, the difficulty of any action related to this focus is increased by one step.\r\n3. Pick one other PC. You recently had a weapon go missing, and you’re becoming convinced that he took it. Whether or not he did is up to him.\r\n4. Pick one other PC. You used to dislike him immensely, but as you get to know him, you’re growing fond of him against your better judgment.	wields_two_weapons_at_once	1
73	Works The Back Alleys	The thief, the burglar, the pickpocket: these are the dangerous individuals who haunt the back alleys of every community. You are a thief in a city or town, making your livelihood at the expense of the wealthy. Your talents, however, prepare you for all kinds of pursuits, even when you’re not crouching in an alley or climbing into a window.\r\nUsually, you dress to blend in with the crowd. When you’re on a mission, black, form-fitting clothing allows you to swim in the shadows.	Additional Equipment: You start with a bag of light tools.\r\nMinor Effect Suggestion: You can immediately attempt to hide after this action.\r\nMajor Effect Suggestion: You can immediately take a second action during this turn.	1. Pick one other PC. The character knew you beforehand and convinced you to leave your life of crime for other pursuits—at least temporarily.\r\n2. Pick one other PC. A while back, you attempted to “borrow” something from her, but she busted you in the process. You managed to convince her that it was a simple misunderstanding, but she may not entirely trust you.\r\n3. Pick one other PC. You never seem to be able to hide so that he can’t see you.\r\n4. Pick one other PC. She knows your real identity (if it’s a secret) or that you work undercover (if it’s a secret) and has kept the knowledge to herself so far. It’s up to her whether she continues to do so.	works_the_back_alleys	1
54	Operates Undercover	Espionage is not something you know anything about. At least, that’s what you want everyone to believe, because in truth, you’ve been trained as a spy or covert agent. You might work for a government or for yourself. You might be a police detective or a criminal. You could even be an investigative reporter.\r\nRegardless, you learn information that others attempt to keep secret. You collect rumors and whispers, stories and hard-won evidence, and you use that knowledge to aid your own endeavors and, if appropriate, provide your employers with the information they desire. Alternatively, you might sell what you have learned to those willing to pay a premium.\r\nYou probably wear dark colors—black, charcoal grey, or midnight blue—to help blend into the shadows, unless the cover you’ve chosen requires you to look like someone else.	Additional Equipment: A disguise kit.\r\nMinor Effect Suggestion: You can immediately attempt to hide after this action.\r\nMajor Effect Suggestion: You get a +2 bonus to Speed defense rolls for one round.	1. Pick one other PC. The character knows your real identity (if that’s a secret) or that you work undercover (if that’s a secret), and has kept that information private until now.\r\n2. Pick one other PC. You know an important secret about her, but she is unaware that you know.\r\n3. Pick two other PCs. You know about an important connection between these two that even they don’t know about.\r\n4. Pick one other PC. No matter how you hide or disguise yourself, this character always seems to know where and who you really are.	operates_undercover	1
64	Solves Mysteries	You are a master of deduction. With a keen eye for detail and a quick wit, you can use a selection of clues to figure out what really happened when others are left scratching their heads. While a character that solves mysteries might be thought of as a detective or an investigator, a professor or even a scientist might also be a mystery solver.\r\nYou wear sensible clothing and comfortable shoes, walking that fine line between practical and stylish. You might carry a briefcase for all the tools you require to solve mysteries.	Minor Effect Suggestion: You discover an additional clue about the mystery you are attempting to solve.\r\nMajor Effect Suggestion: When you solve a mystery, the target of your revelation is stunned by your dazzling wit, unable to move or act for a round.	1. Pick one other PC. She is the true friend who got you started reading mysteries and detective fiction, which led to your current obsession.\r\n2. Pick one other PC. That character does not seem to trust or like you, but you feel compelled to win him over.\r\n3. Pick one other PC. This character is a good sounding board. After you talk to her for an hour, you gain an asset on any knowledge-based task you are trained in.\r\n4. Pick one other PC. You were rivals with him in some endeavor in the past.	solves_mysteries	1
74	Works The System	You’ve knocked around a lot and run afoul of the law a few times, but you’ve evaded authorities on a variety of fronts more often than not. That’s because you are adept at noticing flaws and exploits in systems, whether those systems are civil laws, investment regulations, computer codes, games of all sorts, or similar artificial constructions. Once you notice and fully comprehend a system, you can manipulate it to your own ends.\r\nYou are a manipulator, but you likely keep a term like that to yourself. Tell people you’re an entrepreneur—that always sounds good.	Additional Equipment: A laptop computer and a smartphone.\r\nMinor Effect Suggestion: You learn something completely unexpected but useful.\r\nMajor Effect Suggestion: You can immediately take a second action during this turn.	1. Pick one other PC. You turned her failing grade into a passing one, fixed\r\nan immigration issue, made a driving offense disappear from computer records, or managed some similar aid for that character.\r\n2. Pick one other PC. You’re aware that he knows an incriminating or embarrassing secret about you.\r\n3. Pick one other PC. Whenever he is next to you, the difficulty of tasks involving interactions with people or attempts to use machines is increased by one step.\r\n4. Pick one other PC. Whenever you charm or persuade others, this character always gains the same benefits of your actions as you do.	works_the_system	1
72	Works Miracles	You manipulate matter and time to help others and are beloved by everyone you encounter. Some people consider you a representative of the gods or a power from beyond this world. Perhaps they’re right. Your abilities might be a gift of the angels or a powerful and benevolent god.\r\nYou probably wear simple clothes—nothing too flashy or stylish. There’s no need to call more attention to yourself.	Minor Effect Suggestion: The target is healed for 1 additional point.\r\nMajor Effect Suggestion: The target is healed for 2 additional points.	1. Pick one other PC. This character quietly suspects that you’re a messiah or supernatural being. You can choose whether or not you’re aware of his suspicion.\r\n2. Pick one other PC. He knows a secret of yours, and you desperately hope that he doesn’t tell anyone.\r\n3. Pick one other PC. She believes that you cured someone close to her of a deadly disease, and she is grateful. You aren’t sure whether you actually helped or if that person wasn’t as sick as she thought.\r\n4. Pick one other PC. You secretly believe that she might be a hypochondriac, and you’re never sure whether she actually needs your help.	works_miracles	1
38	Infiltrates	You focus on subtlety, guile, and stealth. Your body has been trained (or perhaps even genetically or magically altered) to make you the perfect infiltrator. You use a wide variety of disguises and tools to perform your duties, but your greatest tools are your own skills and training.\r\nInfiltrators are spies, agents, thieves, assassins, or information gatherers. They often wear slick bodysuits and face-concealing masks when not wearing a disguise.	Minor Effect Suggestion: Your opponent is so startled by your moves that it is dazed, during which time the difficulty of all tasks it performs is increased by one step.\r\nMajor Effect Suggestion: All opponents within short range are so startled by your moves that they are dazed, during which time the difficulty of all tasks they perform is increased by one step.	1. Pick one other PC. This character inadvertently foils your actions, or at least makes them more difficult. If this PC is within immediate range, the difficulty of any action that you take related to this focus is increased by one step.\r\n2. Pick one other PC. No matter how hard you try, you cannot seem to hide from him.\r\n3. Pick two other PCs. The three of you worked as a team on a mission long ago, but you had a falling out.\r\n4. Pick one other PC. That character is your sibling, and thus you look very much alike.	infiltrates	1
80	Artificially Intelligent	You are a machine—not just a sentient machine, but a sapient one. Your awareness might make you an exception, or there may be many like you, depending on the setting.\r\nArtificially intelligent characters have machine minds of one type or another. This can involve an advanced computer brain, but it could also be a liquid computer, a quantum computer, or a network of smart dust particles creating an ambient intelligence. You might even have been an organic creature whose mind was uploaded into a machine.\r\nYour body, of course, is also a machine. Most people refer to you as a robot or an android, although you know neither term describes you very well, as you are as free- willed and free-thinking as they are.	Superintelligent: +4 to your Intellect Pool. Artificial Body: +3 to your Might Pool and your Speed Pool.\r\nShell: +1 to Armor.\r\nLimited Recovery: Resting restores points only to your Intellect Pool, not to your Might Pool or your Speed Pool.\r\nMechanics, Not Medicines: Conventional healing methods, including the vast majority of restorative devices and medicines, do not restore points to any of your Pools. You can recover points to your Intellect Pool only by resting, and you can recover points to your Speed and Might Pools only through repair. The difficulty of the repair task is equal to the number of points of damage sustained, to a maximum of 10. Repairing your Might and Speed Pools are always two different tasks.\r\nMachine Vulnerabilities and Invulnerabilities: Damaging effects and other threats that rely on an organic system—poison, disease, cell disruption, and so on—have no effect on you. Neither do beneficial drugs or other effects. Conversely, things that normally affect only inorganic or inanimate objects can affect you, as can effects that disrupt machines.\r\nUncanny Valley: You have a hard time relating to organic beings, and they don’t react well to you. The difficulty of all positive interaction tasks with such beings is increased by two steps.		artificially_intelligent	1
16	Controls Gravity	Gravity is a force so basic and primal that we take it for granted. Through a quirk of fate, some unique device(s), or supreme devotion (or a combination of all three), you have learned to tap into the power of gravity.\r\nYou might prefer billowy garments that display your mastery of gravity’s pull and conceal your identity and intentions.	Additional Equipment: You have a pen-sized device that tells the weight of whatever you point it at (within short range). The weight is displayed on a small glass plate in letters that only you can decipher.\r\nMinor Effect Suggestion: The duration of the effect is doubled.\r\nMajor Effect Suggestion: An important item on the target’s person is destroyed.	1. Pick one other PC. In the recent past, while using your gravitational powers, you accidentally sent that character hurtling into the air or plummeting toward the ground. Either way, she barely survived. It is up\r\nto the player of that character to decide whether she resents, fears, or forgives you.\r\n2. Pick one other PC whose focus intertwines with yours. This odd connection affects her in some way. For example, if the character Carries a Quiver, your ability to manipulate gravity sometimes extends the range of her arrows. If she Entertains, her jumps, dances, and juggling balls seem less bound by the laws of gravity. If she Masters Weaponry, her weapons sometimes feel lighter.\r\n3. Pick one other PC. He is deathly afraid of heights. Through your ability to control gravity, you would like to teach him how to be more comfortable with his feet off the ground. He must decide whether or not to take you up on your offer.\r\n4. Pick one other PC. She is skeptical of your ability to control gravity and thinks it’s just one big illusion. She might even attempt to discredit you or discover the “secret” behind your so-called skills.	controls_gravity	1
25	Explores Dark Places	You explore foreboding ruins, mysterious locales of ancient times, dungeons deep, dark caverns, and similar places, trained in such activities by those who have gone before you. You’re the archetypal treasure hunter, scavenger, and finder of lost things. You spend so much of your time in the dark that you slowly adapt to it, almost becoming a creature of the gloom yourself. Even in civilized areas, you prefer to keep to the shadows.\r\nMost likely, you wear dark clothing to help you blend into the blackness. On the other hand, you might wear sensible garments and gear because you have serious and dangerous business to attend to in the dark.	Additional Equipment: You carry an explorer’s pack with rope, two days’ rations, a bedroll, and other tools needed for outdoor survival.\r\nShadow Abilities: If you have other overt abilities (spells, psionic powers, or the like), they make almost no sound, and whatever visual displays they produce are dark and shadowy. These alterations change nothing other than the appearance of the effects.\r\nA Flash is a silent burst of shadows, a Barrier is a mass of shadowy wisps, and so on.\r\nMinor Effect Suggestion: The target is also dazed for one round, during which time the difficulty of all tasks it performs is modified by one step to its detriment.\r\nMajor Effect Suggestion: The target is also stunned and loses its next turn.	1. Pick one other PC. This character has been your adventuring partner in previous expeditions, and the two of you work so well together that you both gain +1 to any die rolls when you collaborate on the same task, fight the same foe, and so on.\r\n2. Pick two other PCs. You think you once saw them through a keyhole doing something illegal. You can choose whether or not to share that information. The characters can choose whether it was really them (it could have been neither, one, or both), and they may or may not share that information in return.\r\n3. Pick one other PC. This person always seems to hear you, no matter how stealthy you try to be.\r\n4. Pick one other PC. She is so loud in everything she does that you feel obligated to try to help her learn to move more quietly through the world. Whether or not she’s interested is up to her.	explores_dark_places	1
29	Focuses Mind Over Matter	Telekinesis. Psychokinesis. Mind over matter. The power has many names, but in the end, it all boils down to one thing— the molecules that make up all matter are yours to command. You likely call yourself a telekinetic or just a TK.\r\nMany telekinetics prefer to wear tight clothing without many accoutrements so there is little another TK could grab hold of psychically. On the other hand, you have the power to create very minor telekinetic effects at will, so your hair might always be in motion, you could have a few tiny objects floating around you, or you might wear a long cape that’s always billowing.	Mental Abilities: If you wield other overt abilities, those that would normally use force or other energy instead use telekinetic force. For example, a force blast is a telekinetic blast from your mind. This alteration changes nothing except that you don’t need a free hand to perform abilities that otherwise require it.\r\nMinor Effect Suggestion: An object moves faster or more efficiently.\r\nMajor Effect Suggestion: You can move or affect twice as much as normal.	1. Pick one other PC. This character can cause your telekinetic powers to act oddly. Every once in a while, if he stands directly next to you, your powers are canceled, but at other times, they seem improved when used near him.\r\n2. Pick one other PC. This person thinks that your powers are completely hypothetical.\r\n3. Pick one other PC. You once joked that you could read her mind. Whether she found that exciting or utterly terrifying is up to her.\r\n4. Pick one other PC. You feel strangely protective of that character and plan to do your best to keep him from harm.	focuses_mind_over_matter	1
30	Fuses Flesh And Steel	At some point in your past, some of your organic parts were replaced with artificial components. You are a cyborg. Bionic. Alternatively, you belong to a secret race of biomechanical hybrids. Your artificial components might be subdermal, or they might resemble overt metal or synth plating on your skin. They can also take the form of threadlike tendrils of circuitry winding across your flesh. Whatever their appearance, these components give you special abilities. As you advance, you can add to, modify, or discover new functions for them. Unfortunately, your artificial body also has special requirements when it takes damage.\r\nYou probably wear a cloak with a hood or something similar to hide your artificial parts from those who would persecute you. Because your components are tricky to repair, as time goes on, it might become more difficult to conceal your true nature, with exposed circuitry, metal plates, and more in a state of partial disassembly.	Additional Equipment: You have a bag of light tools and a variety of parts to repair yourself.\r\nMinor Effect Suggestion: Your servos learn from your successful actions. You gain a +1 bonus to similar actions involving the same task (such as making attacks against the same foe or operating the same device).\r\nMajor Effect Suggestion: You discharge a small pulse of power into your foe. Make an immediate attack against that foe (using the same stat as the action that caused the major effect). If the attack succeeds, it deals 4 points of electrical damage.	1. Pick one other PC. This character knows your true nature, even if no one else does.\r\nIf your components are not particularly hidden, she knows a different secret of yours, such as a preprogrammed word that will shut you down for ten minutes.\r\n2. Pick one other PC. Being close to this person sometimes makes your mechanical parts vibrate slightly. You can decide whether this sensation is unnerving or pleasant.\r\n3. Pick one other PC. You’re pretty sure that he is just here to mine you for parts. He chooses whether or not this is true.\r\n4. Pick one other PC who also has mechanical parts. The two of you have bonded over conversations about this element you share, and you feel a special connection.	fuses_flesh_and_steel	1
43	Lives In The Wilderness	You dwell in the wilds. You probably have done so most, if not all, of your life, coming to understand the mysteries of nature, weather, and survival. The ways of flora and fauna are your ways.\r\nYour rough, rugged clothing shows little concern for style. Most of the time, covering yourself in natural smells to keep your scent from arousing suspicion in the wilderness is more important than bathing to keep yourself presentable to other humans.	Additional Equipment: You have an extremely reliable compass.\r\nMinor Effect Suggestion: A foe that is a natural creature flees rather than continue to fight you.\r\nMajor Effect Suggestion: A foe that is a natural creature becomes warily passive.	1. Pick one other PC who isn’t from the wilderness. You can’t help but feel a little contempt for that character and her “civilized” ways, which show disdain for all things natural and (to your mind) true.\r\n2. Pick one other PC. He is one of the few people that you are completely comfortable being around, and you are often surprised at how easily you let down your guard near him.\r\n3. Pick one other PC. She once saved you from an uncomfortable social situation, and you still feel grateful.\r\n4. Pick one other PC. This person seems to understand civilization in the same way that you understand the wilderness. You could choose to help each other or despise each other for this different way of seeing the world.	lives_in_the_wilderness	1
57	Rages	The berserker is a feared fighter who cannot be stopped. You put yourself into a howling battle frenzy that can make you a terror on the battlefield. You might hail from a less civilized society, perhaps even a tribal one.\r\nYou likely wear little or no armor so as not to restrict your speed or maneuverability. Your clothing is probably simple and utilitarian.	Minor Effect Suggestion: When fighting multiple foes, you knock one into another, putting both off balance. As a result, treat both foes as one level lower for one round.\r\nMajor Effect Suggestion: Your foe is terrified of your rage and uses his next two actions to flee.	1. Choose one other PC. You feel strangely protective of that character and don’t want to see her come to harm.\r\n2. Pick one other PC. That character knows a secret about your past that is tied to your Frenzy ability.\r\n3. Pick one other PC. The first time you went into a frenzy was in an attempt to save her loved one from an attack. You failed, partly because of your inexperience.\r\n4. Choose one other PC. He is terrified by your rage and sometimes can’t help but flee at inopportune times.	rages	1
36	Hunts Outcasts	Mutants. Witches. Aliens. They’ve got weird powers, and they’re a threat to everything you hold dear. They represent everything that is wrong with your world. They are a scourge upon humanity—a disease that must be put down. You don’t necessarily take pleasure in their eradication, but it must be done for the good of the human race. If this cancer is not destroyed now, it will only spread.\r\nYou must choose a type of forbidden outcast or a hated supernatural person or being appropriate to the setting at hand.\r\nIn this context, an outcast is something or someone that has powers or abilities beyond those of normal humans; examples include wizards or fey in a magical setting, mutants in a science fiction setting, weird psionic aliens, ghosts, vampires, and so on. You hunt them.\r\nYou very likely have had experiences with the outcasts in your past. You know that they’re all not hideous monstrosities—that’s the problem. Outcasts who are not obvious typically pose the greatest threat because they can hide in plain sight.\r\nAs an outcast hunter, you know that it takes special tools to fight creatures with crazy powers and abilities. You have learned to adapt devices to aid in finding outcasts and defending yourself against them. This might mean imbibing or injecting potions, nanites, or other strange treatments to even the odds.	Additional Equipment: You have a small collection of items, such as charms, chemicals, or nanites, that you believe help you hunt and destroy outcasts.\r\nMinor Effect Suggestion: Your foe is so intimidated by your prowess that it backs away, unwilling to attack. It can still defend itself.\r\nMajor Effect Suggestion: Your foe is disrupted and off balance and can’t use any special powers that require an action for two rounds.	1. Pick one other PC. You believe that this character might hate and fear outcasts as much as you do (although it’s up to him as to whether this is true).\r\n2. Pick one other PC. In the past, when you were with this character, she was harmed by an outcast, which helped inspire you to hunt them in the first place.\r\n3. Pick one other PC. This character seems to believe that outcasts should be left in peace.\r\n4. Pick one other PC. You worry that this character might be a latent outcast.	hunts_outcasts	1
75	Would Rather Be Reading	Your whole life, people have been asking you why you read so much. Would you rather read about life than live it, they ask? Yes, you answer, probably inwardly. Books are your friends. You love fiction that gives you escape and nonfiction that enriches your mind. You’re always learning new things. What’s more important than knowledge? Nothing.\r\nYou probably carry a bag of books (or a tablet with ebooks on it, or both) with you at all times.	Minor Effect Suggestion: You draw on your experiences and reduce the difficulty of your next action by one step.\r\nMajor Effect Suggestion: You can make a free, no-action recovery roll.	1. Pick one other PC. She seems to understand you and knows that you need your space and time alone to read now and again.\r\n2. Pick one other PC. This character is ignorant and uneducated, in your opinion.\r\n3. Pick one other PC. He reminds you a lot of the main character of one of your favorite books. You can’t help but like him.\r\n4. Pick one other PC. This character owes you a fair bit of money.	would_rather_be_reading	1
3	Awakens Dreams	Your dreams are more vivid than other people’s. When you dream, those dreams linger on, and when the time is right, you can loose them into reality to impress, confuse, or scare other creatures. You’ve learned the oneiromancer’s craft, which means that you know the secrets of lucid dreaming, gauging the dream state in others, and mixing herbal elixirs that bring about a restful, dream-filled sleep.\r\nYour clothing probably reflects the eclectic dreamland where you spend so much of your time, including several layers, bright silk ribbons, and odd symbols that made sense when you were dreaming them.	Minor Effect Suggestion: The target gets turned around, and its next attack is modified by one step to its detriment.\r\nMajor Effect Suggestion: You are refreshed by your dream and recover 4 points to one of your Pools.	1. Pick one other PC. That character always recognizes your dreams as illusions free of substance and is not fooled or affected by them.\r\n2. Pick one other PC. You accidentally sent that character into a sleep so deep she didn’t wake for three days. Whether she forgives you or not is up to her.\r\n3. Pick one other PC. You are certain that you created him from one of your dreams, even if he doesn’t believe it.\r\n4. Pick one other PC. You accidentally glimpsed that character’s dreams and learned something that she was trying to keep a secret.	awakens_dreams	1
6	Blazes With Radiance	You have the ability to create and sculpt light, to bend it away from you or gather it to use as a weapon. You might gain your powers from the sun, or you might wield a mysterious artifact that produces light that you can manipulate. Regardless, you love the light and curse the darkness. People are often drawn to those wielding the light, either because they are heartened by it (as opposed to someone lurking in darkness) or because it is dramatic and impressive. Of course, those who enjoy the darkness or fear the light despise you.\r\nMost people able to command light favor bright colors in their clothing since those colors reflect light rather than absorb it.	Additional Equipment: You have a crystal lens. When you shine light through it, the light extends for double the normal distance.\r\nRadiant Abilities: If you possess powers that would normally use force or other energy, they instead use light and heat. For example, if you use Ward, light dapples your body and flares when you would be attacked, preventing your enemies from landing a solid blow.\r\nMinor Effect Suggestion: A flash of light leaves the creature dazzled. The difficulty of defense actions to resist the creature’s attacks decreases by one step.\r\nMajor Effect Suggestion: An intense flash of light leaves the creature blinded for one minute.	1. Pick one other PC. You have a strong emotional connection to this character, and when in his presence, you can change the color of the light you create.\r\n2. Pick one other PC. She is especially sensitive to your light, and occasionally your flashes leave her dazzled, increasing the difficulty of her defense actions by one step.\r\n3. Pick one other PC. Something about his nature dampens the light. When he stands immediately next to you, your light-based powers cost 1 additional Intellect point.\r\n4. Pick one other PC. This character appears to have a treasured item that was once yours, but that you lost in a game of chance years ago.	blazes_with_radiance	1
8	Calculates the Incalculable	Other people are a little in awe of your mind, though you feel normal enough. Admittedly, you are sometimes surprised when others fail to grasp easy concepts, or how they don’t share your appreciation of the beauty in dynamical systems theory, elliptic curve geometry, Riemann meromorphic functions, and all the other wondrous things.\r\nYou live a little too much in your head to concern yourself with how you look. Your hair is probably slightly too long and tousled, your clothing is casual and stained with coffee, and your socks don’t match.	Minor Effect Suggestion: You don’t have to spend an action observing to make your next predictive equation or predictive model.\r\nMajor Effect Suggestion: Intuition flares, and you can ask the GM one question about what you’re looking at.	1. Pick one other PC. If it wasn’t for you, this character never would have passed his college math requirements.\r\n2. Pick one other PC. She seems strangely interested in your mathematical skills.\r\nIt’s up to her whether she is fascinated or disturbed by them.\r\n3. Pick one other PC. Based on a couple of comments you’ve overheard, you suspect that this character doesn’t hold math in the highest regard.\r\n4. Pick one other PC. The character seems to be a variable that never quite solves the same way twice when you include him in an equation, but you haven’t the slightest idea why.	calculates_the_incalculable	1
12	Commands Mental Powers	You have always had special abilities that others didn’t seem to share. Through practice and devotion, you have honed this unique talent so that you can harness the power of your mind to perform deeds.\r\nNo one can tell that you have this ability just by looking at you, although you wear a crystal or jewel somewhere on your head to help focus your power. Either this focusing object was given to you by someone who recognized your ability, or you came upon it by accident and it triggered your abilities. Some people with mental powers—often called psychics or psionics by ordinary folks—are secretive and a little paranoid.	Additional Equipment: You have a crystal or jewel artifact that, when worn against your forehead or temple, adds 1 point to your Intellect Pool. If you’re ever without the artifact, subtract 5 points from your Intellect Pool; the points are restored if you regain the item.\r\nMental Abilities: If you have abilities like Mind Control or Mind Reading from your type (or elsewhere), you’re automatically trained in them. Enabler.\r\nMinor Effect Suggestion: The range or duration of the mental power is doubled.\r\nMajor Effect Suggestion: You can take another action on that same turn.	1. Pick one other PC. You have found that this character is particularly tuned into your mental powers. While you’re within short range of him, the two of you are always in telepathic contact, and he is never harmed by your Psychic Burst.\r\n2. Pick one other PC. She is what you might call a “loud thinker,” and her thoughts sometimes come through to you when you are within short range, even when you’re not using your Mind Reading ability. You can’t seem to turn this off. Whether you tell her or not is up to you.\r\n3. Pick one other PC. For some reason, he seems to act as an antenna for your mental powers. If the two of you are touching,\r\nyour Telepathic and Mind Reading abilities sometimes extend to long range.\r\n4. Pick one other PC. Your close mentor or teacher once used Mind Control on her and forced her to do something against her will. To this day, you haven’t talked about it, but you are both intensely aware of the connection.	commands_mental_powers	1
14	Consorts With the Dead	Through the study of science or magic to which most people give a wide berth, you have mastered the ability to speak with and reanimate the dead. Necromancy, however, is shunned as a taboo. It is gruesome, morbid, and in the eyes of most, forbidden.\r\nYou probably wear black clothing, which might be adorned with skulls, bones, teeth, or other symbols of death. Some who consort with the dead paint their skin and dye their hair black, red, and white to bring them visually closer to the bodies they interact with.	Additional Equipment: You carry an innocuous memento of someone close to you who died. It might be a locket, a ring, a letter, a coin, or something similar.\r\nNecromantic Abilities: If you perform abilities that would normally use force\r\nor other energy (such as electricity), they instead use deathly energies. For example, a force blast is a blast of cold, life-draining energy. This alteration changes nothing except that the type of damage is different, and it harms only living creatures.\r\nMinor Effect Suggestion: The animated creature adds 1 to all rolls, or the target is dazed for one round, during which time the difficulty of all its tasks is modified by one step to its detriment.\r\nMajor Effect Suggestion: The animated creature adds 2 to all rolls, or the target is stunned and loses his next turn.	1. Pick one other PC. You suspect that this character finds your predilections abhorrent. You can choose whether or not she knows of your suspicions.\r\n2. Pick one other PC. This character recently lost a loved one and wants you to contact that person in the afterlife. Whether you try to explain that this isn’t how it works is up to you.\r\n3. Pick one other PC. This character looks upon you as some kind of religious figure (whether you encourage this behavior is up to you).\r\n4. Pick one other PC. This character comes from the same place you do, and you knew each other as children.	consorts_with_the_dead	1
15	Controls Beasts	To say that you have a way with animals and nonhuman creatures doesn’t begin to cover it. Your mastery and communication with beasts is positively uncanny. They come to you fearlessly, and it’s not uncommon for birds to alight on your shoulder or for small animals to climb up your arms or legs.\r\nYou probably wear tough clothing and have a disheveled or grizzled appearance that suggests a rugged, outdoor life. Perhaps you even smell like an animal.	Additional Equipment: You have three days’ worth of food for your beast companion, plus a harness, collar, or similar accoutrements.\r\nMinor Effect Suggestion: The duration of calmness or control is doubled.\r\nMajor Effect Suggestion: The duration of calmness or control extends to twenty-four hours.	1. Pick one other PC. That character seems to disturb your creatures in a way that you can’t explain. You know that you must keep your animals away from him if possible, or you might lose control of them.\r\n2. Pick one other PC. The creature that you’re bonded with seems to have a special bond with this other person as well. You must decide whether it brings up feelings of jealousy or camaraderie within you and whether to thwart the connection or help it blossom.\r\n3. Pick one other PC. Recently, he accidentally (or perhaps intentionally) put your beast companion in a position of danger. Your companion is now nervous around him, and you are struggling with your own emotional response to the incident.\r\n4. Pick one other PC. She dislikes beasts of all kinds, seeing them as little more\r\nthan food or prey. You hope that exposing her to your beast companion will change her mind. It’s up to that player how her character responds to the experience.	controls_beasts	1
19	Defends the Weak	Someone has to stand up for the helpless, the weak, and the unprotected. You believe this duty, this obligation, falls to you, and thus you have spent much of your life watching out for the people around you. When you see them in trouble, you are the first to come to their aid. You might give up your last dime to help the hungry, take a beating to save a person from the same, or rally your friends to take on injustice wherever you find it.\r\nYou probably bear many scars from previous conflicts, but for each scar, you likely also have a token of gratitude. You may have a dried flower given to you by a lady you saved from brigands, or a bit of metal given to you by a starving man you fed.	Additional Equipment: You have a shield.\r\nMinor Effect Suggestion: You can draw an attack without having to use an action at any point before the end of the next round.\r\nMajor Effect Suggestion: You can take an extra action. You can use this action only to guard.	1. Pick one other PC. You failed to protect this character at some point in the past, and you feel compelled to make up for it.\r\n2. Pick one other PC. That character claimed innocence during a long-ago event, and you protected him. Now that time has passed, you’re not entirely convinced that he was blameless.\r\n3. Pick two other PCs. They seem to think that you are more of an arbitrator than\r\nyou really are, and they keep asking you to choose which one of them is correct.\r\n4. Pick one other PC. She believes that one of the tokens of gratitude you carry came from her father.	defends_the_weak	1
22	Entertains	You are an entertainer: a singer, dancer, poet, storyteller, or something similar. You perform for the benefit of others. Naturally charismatic and talented, you have also studied to master your art. You know all the old poems, songs, jokes, and stories, and you’re skilled at creating new ones, too.\r\nYou probably wear flamboyant or at least fashionable clothes and use cosmetics, tattoos, or hair stylings for dramatic effect.	Additional Equipment: You start with a musical instrument or other tools needed to perform.\r\nMinor Effect Suggestion: You enchant the target, who remains enchanted as long as you focus all your attention on keeping her that way.\r\nMajor Effect Suggestion: The target is forever favorably disposed toward you.	1. Pick one other PC. This character is your worst critic. Your abilities to help or inspire others don’t function for her.\r\n2. Pick one other PC. He seems to really enjoy your attempts to entertain, and this brings out the performer in you. It’s up to that character whether his appreciation is real or if he is just being polite.\r\n3. Pick one other PC. She is so inspired and put at ease by your stories or other forms of entertainment when you use Levity that she gains +2 to her recovery rolls (instead of +1).\r\n4. Pick one other PC. This person knows the secret to one of your favorite forms of entertainment. You worry constantly that he will steal it or reveal it.	entertains	1
26	Explores Deep Waters	You have nothing to fear from the depths. You have always been a good swimmer,\r\nable to hold your breath longer than anyone else, tread water for as long as you wanted, and delve deeper into the swirling darkness than your friends, all without stretching your resources. The depths you so freely explore harbor many secrets, and the waters that shelter you become part of who you are, an extension of your identity.\r\nWhen you bother to wear clothes, you favor snug, tight-fitting garments that stay close to your skin and do not hamper your mobility.\r\nThe abilities granted by this focus might result from special equipment you make along the way, weird transformations that began when you first swam into the deepest, darkest places, or simply an expression of an unusual gift or heritage.	Additional Equipment: You have a special device that, when fitted in your mouth, allows you to breathe underwater. The device functions for up to four hours at a time, after which you must wait four hours before you can use it again.\r\nWater Abilities: If you wield powers that would normally use force or other energy, they instead use water or ice. For example, a blast of energy might create a wave of water that crashes down on your target.\r\nIn addition, if you wish, you can swap an ability gained from your type for the following.\r\nCreate Water (2 Intellect points). You cause water to bubble up from a spot on the ground you can see. The water flows from that spot for one minute, creating about 1 gallon (4 liters) by the time it stops.\r\nMinor Effect Suggestion: You can take an extra action. You may use this action only to move or perform a movement-related activity.\r\nMajor Effect Suggestion: The difficulty of any Speed defense actions you take before the end of the next round is reduced by one step.	1. Pick one other PC. That character nearly drowned while following you on one of your expeditions underwater. It’s up to him whether he trusts you in such an environment again.\r\n2. Pick one other PC. She knows something about your past that you wish she didn’t.\r\n3. Pick one other PC. You think he suspects that you were involved with pirates or other criminals. Whether you were or not is up to you.\r\n4. Pick one other PC. She can’t swim very well and fears open water. You believe that you can help her overcome these issues, if she is willing to let you.	explores_deep_waters	1
27	Fights Dirty	You know one thing for certain: the only important element of a fight is who wins. How? Why? These questions are inconsequential. Thus, you’ll do anything to win a fight. Some might say you have\r\nno honor, no class, or some other foolish statement, but they’re missing the point. You come out on top in a battle—and that’s all that matters.\r\nYou bite, scratch, kick, and trip. You tangle foes in draperies, push them down stairs, and throw dirt in their eyes. You trick them into looking the wrong way, call them names, and say terrible things about their mothers.\r\nMaybe you learned your methods while living on the streets, or maybe you barely survived a particularly horrific battle in a military campaign. Perhaps you simply have never bought into the idea of rules or honor when your life is on the line.\r\nYou’re likely to carry a few hidden tricks, sometimes literally up your sleeve. You might have a knife in your boot, a poisoned needle in your ring, a razor in the hem of your cloak, or a handful of stinging and itching powder in a hidden pocket. Your clothing probably has a lot of pockets, actually—more than a few of them well hidden.	Additional Equipment: You have a weapon that is easily hidden and a dose of level 3 poison that inflicts 6 points of damage.\r\nMinor Effect Suggestion: You manage to make your foe trip and fall prone.\r\nMajor Effect Suggestion: You tangle something around your foe’s legs, and he not only falls down but also loses his next turn.	1. Pick one other PC. He’s a good fighter, but if you could teach him a few of your tricks, he’d really excel.\r\n2. Pick one other PC. In the past, she taught you a few tricks to use in a fight.\r\n3. Pick one other PC. This character doesn’t seem to approve of your methods.\r\n4. Pick one other PC. Long ago, the two of you were on opposite sides of a fight. You won, using your particular tactics. Now she’s interested in a (friendly) rematch at some point and claims to be ready for you.	fights_dirty	1
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
10	1	183	3
11	1	184	3
12	2	185	3
13	3	186	3
14	3	187	3
15	4	188	3
16	5	189	3
17	6	190	3
18	1	191	4
19	1	192	4
20	2	193	4
21	2	194	4
22	3	195	4
23	4	196	4
24	4	197	4
25	5	198	4
26	6	199	4
27	1	200	5
28	2	201	5
29	3	202	5
30	4	203	5
31	5	204	5
32	6	205	5
33	1	206	6
34	1	207	6
35	2	208	6
36	3	209	6
37	4	210	6
38	5	211	6
39	6	212	6
40	1	213	7
41	1	214	7
42	2	215	7
43	3	216	7
44	4	217	7
45	5	218	7
46	6	219	7
47	1	221	8
48	1	220	8
49	2	222	8
50	3	223	8
51	4	224	8
52	5	225	8
53	6	226	8
54	1	227	9
55	1	228	9
56	2	229	9
57	2	230	9
58	3	231	9
59	3	232	9
60	4	233	9
61	4	234	9
62	5	235	9
63	6	236	9
64	1	237	10
65	2	238	10
66	3	239	10
67	4	240	10
68	5	241	10
69	6	242	10
70	1	243	11
71	1	244	11
72	2	245	11
73	3	246	11
74	4	247	11
75	5	248	11
76	6	249	11
77	1	250	12
78	2	78	12
79	3	251	12
80	4	252	12
81	5	91	12
82	6	253	12
83	1	254	13
84	1	255	13
85	2	256	13
86	3	257	13
87	4	258	13
88	4	259	13
89	5	260	13
90	6	261	13
91	6	262	13
92	1	263	14
93	2	264	14
94	3	265	14
95	4	266	14
96	5	267	14
97	6	268	14
98	1	269	15
99	2	270	15
100	2	271	15
101	3	272	15
102	4	273	15
103	4	274	15
104	5	275	15
105	6	276	15
106	6	277	15
107	1	77	16
108	2	278	16
109	3	279	16
110	4	280	16
111	5	281	16
112	6	282	16
113	1	283	17
114	2	284	17
115	3	285	17
116	4	286	17
117	5	287	17
118	6	288	17
119	1	289	18
120	1	290	18
121	2	291	18
122	2	292	18
123	3	293	18
124	4	294	18
125	5	295	18
126	6	296	18
127	1	297	19
128	1	298	19
129	2	299	19
130	2	300	19
131	3	301	19
132	4	302	19
133	4	303	19
134	5	304	19
135	6	305	19
136	1	306	20
137	2	307	20
138	3	308	20
139	4	309	20
140	4	310	20
141	5	311	20
142	6	312	20
143	1	313	21
144	2	314	21
145	3	315	21
146	4	316	21
147	5	317	21
148	6	318	21
149	1	319	22
150	2	320	22
151	3	321	22
152	4	322	22
153	5	323	22
154	6	324	22
155	1	325	23
156	2	326	23
157	3	327	23
158	4	328	23
159	5	329	23
160	5	330	23
161	6	331	23
162	1	332	24
163	2	333	24
164	3	334	24
165	4	335	24
166	5	336	24
167	6	337	24
168	1	338	25
169	2	339	25
170	2	340	25
171	3	341	25
172	4	342	25
173	5	343	25
174	6	344	25
175	1	345	26
176	1	346	26
177	1	347	26
178	2	340	26
179	2	348	26
180	3	349	26
181	3	350	26
182	4	351	26
183	4	352	26
184	5	353	26
185	5	354	26
186	6	355	26
187	6	356	26
188	6	357	26
189	1	358	27
190	1	359	27
191	2	360	27
192	3	361	27
193	3	362	27
194	4	363	27
195	4	364	27
196	5	365	27
197	6	366	27
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
13	Any	3
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
3	Other	t
\.


--
-- Data for Name: cyphercore_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cyphercore_type (id, name, description, base_abilities, cypher_limit, effort, intellect_edge, intellect_pool, might_edge, might_pool, speed_edge, speed_pool, pool_points, slug, sourcebook_id) FROM stdin;
2	Adept	You master powers or abilities outside the experience, understanding, and sometimes belief of others. They might be magic, psychic powers, mutant abilities, or just a wide variety of intricate devices, depending on the setting.\r\nIndividual Role: Adepts are usually thoughtful, intelligent types. They often think carefully before acting and rely heavily on their supernatural abilities.\r\nGroup Role: Adepts are not powerful in straightforward combat, although they often wield abilities that provide excellent combat support, both offensively and defensively. They sometimes possess abilities that facilitate overcoming challenges. For example, if the group must get through a locked door, an adept might be able to destroy it or teleport everyone to the other side.\r\nSocietal Role: In settings where the supernatural is rare, strange, or feared, adepts are likely rare and feared as well. They remain hidden, shadowy figures. When this is not the case, adepts are more likely to be common and forthright. They might even take leadership roles.\r\nAdvanced Adepts: Even at low tiers, adept powers are impressive. Higher-tier adepts can accomplish amazing deeds that can reshape matter and the environment around them.	Effort: Your Effort is 1.\r\nGenius: You have an Intellect Edge of 1, a Might Edge of 0, and a Speed Edge of 0.\r\nExpert Cypher Use: You can bear three cyphers at a time.\r\nStarting Equipment: Appropriate clothing, plus two expensive items, two moderately priced items, and up to four inexpensive items of your choice.	3	1	1	12	0	7	0	9	6	adept	1
1	Warrior	You’re a good ally to have in a fight. You know how to use weapons and defend yourself. Depending on the genre and setting in question, this might mean wielding a sword and shield in the gladiatorial arena, an AK-47 and a bandolier of grenades in a savage firefight, or a blaster rifle and powered armor when exploring an alien planet.\r\nIndividual Role: Warriors are physical, action-oriented people. They’re more likely to overcome a challenge using force than by other means, and they often take the most straightforward path toward their goals.\r\nGroup Role: Warriors usually take and deal the most punishment in a dangerous situation. Often it falls on them to protect the other group members from threats. This sometimes means that warriors take on leadership roles as well, at least in combat and other times of danger.\r\nSocietal Role: Warriors aren’t always soldiers or mercenaries. Anyone who is ready for violence, or even potential violence, might be a warrior in the general sense. This includes guards, watchmen, police officers, sailors, or people in other roles or professions who know how to defend themselves with skill.\r\nAdvanced Warriors: As warriors advance, their skill in battle — whether defending themselves or dishing out damage — increases to impressive levels. At higher tiers, they can often take on groups of foes by themselves or stand toe to toe with anyone.	Effort: Your Effort is 1.\r\nPhysical Nature: You have a Might Edge of 1 and a Speed Edge of 0, or you have a Might Edge of 0 and a Speed Edge of 1. Either way, you have an Intellect Edge of 0.\r\nCypher Use: You can bear two cyphers at a time.\r\nPracticed With All Weapons: You can use any weapon. Enabler.\r\nStarting Equipment: Appropriate clothing and two weapons of your choice, plus one expensive item, two moderately priced items, and up to four inexpensive items.	2	1	0	8	1	10	0	10	6	warrior	1
3	Explorer	You are a person of action and physical ability, fearlessly facing the unknown. You travel to strange, exotic, and dangerous places, and discover new things. This means you’re physical but also probably knowledgeable.\r\nIndividual Role: Although explorers can be academics or well studied, they are first and foremost interested in action. They face grave dangers and terrible obstacles as a routine part of life.\r\nGroup Role: Explorers sometimes work alone, but far more often they operate in teams with other characters. The explorer frequently leads the way, blazing the trail. However, she’s also likely to stop and investigate anything intriguing she stumbles upon.\r\nSocietal Role: Not all explorers are out traipsing through the wilderness or poking about an old ruin. Sometimes, an explorer is a teacher, a scientist, a detective, or an investigative reporter. In any event, an explorer bravely faces new challenges and gathers knowledge to share with others.\r\nAdvanced Explorers: Higher-tier explorers gain more skills, some combat abilities, and a number of abilities that allow them to deal with danger. In short, they become more and more well-rounded, able to deal with any challenge.	Effort: Your Effort is 1.\r\nPhysical Nature: You have a Might Edge of 1, a Speed Edge of 0, and an Intellect Edge of 0.\r\nCypher Use: You can bear two cyphers at a time.\r\nPracticed With Light and Medium Weapons: You can use light and medium weapons without penalty. If you wield a heavy weapon, increase the difficulty of the attack by one step. Enabler.\r\nStarting Equipment: Appropriate clothing and a weapon of your choice, plus two expensive items, two moderately priced items, and up to four inexpensive items.	2	1	0	9	1	10	0	9	6	explorer	1
4	Speaker	You’re good with words and good with people. You talk your way past challenges and out of jams, and you get people to do what you want.\r\nIndividual Role: Speakers are smart and charismatic. They like people and, more important, they understand them. This helps speakers get others to do what needs to be done.\r\nGroup Role: The speaker is often the face of the group, serving as the person who speaks for all and negotiates with others. Combat and action are not a speaker’s strong suits, so other characters sometimes have to defend the speaker in times of danger.\r\nSocietal Role: Speakers are frequently political or religious leaders. Just as often, however, they are con artists or criminals.\r\nAdvanced Speakers: Higher-tier speakers use their abilities to control and manipulate people as well as aid and nurture their friends. They can talk their way out of danger and even use their words as weapons.	Practiced With Light Weapons: You can use light weapons without penalty. If you wield a medium weapon, increase the difficulty of the attack by one step. If you wield a heavy weapon, increase it by two steps. You also start with one light weapon of your choice. Enabler.\r\nStarting Equipment: Appropriate clothing and a light weapon of your choice, plus two expensive items, two moderately priced items, and up to four inexpensive items.	2	1	1	11	0	8	0	9	6	speaker	1
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
131	1	30	3
132	3	30	3
133	3	31	3
134	3	133	3
135	3	134	3
136	3	135	3
137	3	136	3
138	3	26	3
139	3	137	3
140	3	138	3
141	3	139	3
142	4	39	3
143	4	140	3
144	4	141	3
145	4	142	3
146	4	143	3
147	4	46	3
148	5	47	3
149	5	51	3
150	5	53	3
151	5	54	3
152	5	144	3
153	5	145	3
154	5	146	3
155	6	147	3
156	6	49	3
157	6	52	3
158	6	59	3
159	6	148	3
160	1	149	4
161	1	150	4
162	1	151	4
163	1	62	4
164	1	152	4
165	1	153	4
166	1	154	4
167	1	155	4
168	1	156	4
169	1	157	4
170	2	158	4
171	2	159	4
172	2	8	4
173	2	160	4
174	2	161	4
175	2	162	4
176	3	163	4
177	3	164	4
178	3	165	4
179	3	31	4
180	3	166	4
181	3	78	4
182	3	167	4
183	3	168	4
184	4	169	4
185	4	170	4
186	4	41	4
187	4	171	4
188	4	172	4
189	4	173	4
190	4	142	4
191	4	174	4
192	5	47	4
193	5	30	4
194	5	175	4
195	5	176	4
196	5	177	4
197	5	26	4
198	5	178	4
199	6	179	4
200	6	180	4
201	6	181	4
202	6	107	4
203	6	182	4
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-07-03 23:47:21.689474-05	1	Appealing	1	[{"added": {}}]	7	1
2	2018-07-03 23:57:35.584239-05	1	Appealing	2	[{"changed": {"fields": ["characteristics"]}}]	7	1
3	2018-07-04 00:01:16.158796-05	1	Appealing	2	[{"changed": {"fields": ["systems"]}}]	7	1
4	2018-07-04 00:02:14.482082-05	2	Brash	1	[{"added": {}}]	7	1
5	2018-07-04 00:03:16.49129-05	2	Brash	2	[{"changed": {"fields": ["systems"]}}]	7	1
6	2018-07-04 00:08:37.467597-05	3	Calm	1	[{"added": {}}]	7	1
7	2018-07-04 00:26:32.449803-05	4	Charming	1	[{"added": {}}]	7	1
8	2018-07-04 00:27:08.38503-05	5	Clever	1	[{"added": {}}]	7	1
9	2018-07-04 00:27:14.319765-05	1	Appealing	2	[{"changed": {"fields": ["systems"]}}]	7	1
10	2018-07-04 00:27:19.769344-05	2	Brash	2	[{"changed": {"fields": ["systems"]}}]	7	1
11	2018-07-04 00:29:49.531483-05	1	Appealing	2	[{"changed": {"fields": ["starting_link"]}}]	7	1
12	2018-07-04 00:34:55.332372-05	1	Appealing	2	[]	7	1
13	2018-07-04 00:35:16.603272-05	2	Brash	2	[{"changed": {"fields": ["starting_link"]}}]	7	1
14	2018-07-04 00:35:30.058595-05	3	Calm	2	[{"changed": {"fields": ["starting_link"]}}]	7	1
15	2018-07-04 00:35:45.765317-05	4	Charming	2	[{"changed": {"fields": ["starting_link"]}}]	7	1
16	2018-07-04 00:35:56.440943-05	5	Clever	2	[{"changed": {"fields": ["starting_link"]}}]	7	1
17	2018-07-04 00:37:50.780382-05	6	Clumsy	1	[{"added": {}}]	7	1
18	2018-07-04 00:39:11.759707-05	7	Craven	1	[{"added": {}}]	7	1
19	2018-07-04 00:40:13.850392-05	8	Creative	1	[{"added": {}}]	7	1
20	2018-07-04 00:46:03.366762-05	9	Cruel	1	[{"added": {}}]	7	1
21	2018-07-04 01:28:43.655501-05	10	Dishonorable	1	[{"added": {}}]	7	1
22	2018-07-04 01:29:40.056967-05	11	Doomed	1	[{"added": {}}]	7	1
23	2018-07-04 01:32:09.18654-05	12	Driven	1	[{"added": {}}]	7	1
24	2018-07-04 01:35:29.833371-05	13	Empathic	1	[{"added": {}}]	7	1
25	2018-07-04 01:36:23.351405-05	14	Exiled	1	[{"added": {}}]	7	1
26	2018-07-04 01:36:57.963402-05	15	Fast	1	[{"added": {}}]	7	1
27	2018-07-04 01:37:50.741248-05	16	Foolish	1	[{"added": {}}]	7	1
28	2018-07-04 01:38:37.658093-05	17	Graceful	1	[{"added": {}}]	7	1
29	2018-07-04 01:39:15.880129-05	18	Guarded	1	[{"added": {}}]	7	1
30	2018-07-04 01:47:35.039081-05	19	Hardy	1	[{"added": {}}]	7	1
31	2018-07-04 01:48:08.919758-05	20	Hideous	1	[{"added": {}}]	7	1
32	2018-07-04 01:49:28.492088-05	21	Honorable	1	[{"added": {}}]	7	1
33	2018-07-04 01:50:10.394931-05	22	Impulsive	1	[{"added": {}}]	7	1
34	2018-07-04 01:52:33.070755-05	23	Inquisitive	1	[{"added": {}}]	7	1
35	2018-07-04 01:53:11.038061-05	24	Intelligent	1	[{"added": {}}]	7	1
36	2018-07-04 01:53:54.904567-05	25	Jovial	1	[{"added": {}}]	7	1
37	2018-07-04 01:54:58.918108-05	26	Kind	1	[{"added": {}}]	7	1
38	2018-07-04 01:56:54.789336-05	27	Learned	1	[{"added": {}}]	7	1
39	2018-07-04 01:59:22.394441-05	28	Lucky	1	[{"added": {}}]	7	1
40	2018-07-04 02:00:32.420988-05	29	Mad	1	[{"added": {}}]	7	1
41	2018-07-04 02:01:09.091346-05	30	Mechanical	1	[{"added": {}}]	7	1
42	2018-07-04 02:02:23.632099-05	31	Mysterious	1	[{"added": {}}]	7	1
43	2018-07-04 02:03:19.394919-05	32	Mystical	1	[{"added": {}}]	7	1
44	2018-07-04 02:03:58.53712-05	33	Naive	1	[{"added": {}}]	7	1
45	2018-07-04 02:05:01.026794-05	34	Noble	1	[{"added": {}}]	7	1
46	2018-07-04 02:07:13.253625-05	35	Perceptive	1	[{"added": {}}]	7	1
47	2018-07-04 02:07:50.244761-05	36	Resilient	1	[{"added": {}}]	7	1
48	2018-07-04 02:08:50.81482-05	37	Rugged	1	[{"added": {}}]	7	1
49	2018-07-04 02:09:40.674781-05	38	Sharp-Eyed	1	[{"added": {}}]	7	1
50	2018-07-04 02:10:24.757568-05	39	Skeptical	1	[{"added": {}}]	7	1
51	2018-07-04 02:11:19.064355-05	40	Spiritual	1	[{"added": {}}]	7	1
52	2018-07-04 02:12:03.534394-05	41	Stealthy	1	[{"added": {}}]	7	1
53	2018-07-04 02:12:53.981695-05	42	Strong	1	[{"added": {}}]	7	1
54	2018-07-04 02:13:47.177843-05	43	Strong-Willed	1	[{"added": {}}]	7	1
55	2018-07-04 02:14:29.25129-05	44	Swift	1	[{"added": {}}]	7	1
56	2018-07-04 02:15:06.636509-05	45	Tongue-Tied	1	[{"added": {}}]	7	1
57	2018-07-04 02:15:38.666875-05	46	Tough	1	[{"added": {}}]	7	1
58	2018-07-04 02:16:48.019231-05	47	Vengeful	1	[{"added": {}}]	7	1
59	2018-07-04 02:17:36.276042-05	48	Virtuous	1	[{"added": {}}]	7	1
60	2018-07-04 02:18:37.454368-05	49	Wealthy	1	[{"added": {}}]	7	1
61	2018-07-04 02:20:07.23314-05	50	Weird	1	[{"added": {}}]	7	1
62	2018-07-04 02:32:59.79795-05	1	Warrior	1	[{"added": {}}]	8	1
63	2018-07-04 02:36:27.564668-05	1	Warrior	2	[{"changed": {"fields": ["might_edge", "intellect_pool"]}}]	8	1
64	2018-07-04 02:41:20.710976-05	2	Adept	1	[{"added": {}}]	8	1
65	2018-07-04 02:42:46.662583-05	1	Warrior	2	[{"changed": {"fields": ["abilities"]}}]	8	1
66	2018-07-04 02:43:02.403962-05	2	Adept	2	[{"changed": {"fields": ["abilities"]}}]	8	1
67	2018-07-04 02:45:35.666469-05	3	Explorer	1	[{"added": {}}]	8	1
68	2018-07-04 02:47:48.180389-05	4	Speaker	1	[{"added": {}}]	8	1
69	2018-07-04 02:48:29.432537-05	2	Adept	2	[{"changed": {"fields": ["cypher_limit"]}}]	8	1
70	2018-07-04 02:48:35.837951-05	1	Warrior	2	[]	8	1
71	2018-07-04 02:48:43.14526-05	4	Speaker	2	[{"changed": {"fields": ["abilities"]}}]	8	1
72	2018-07-04 02:49:18.635385-05	2	Adept	2	[{"changed": {"fields": ["description"]}}]	8	1
73	2018-07-04 02:49:49.055167-05	2	Adept	2	[{"changed": {"fields": ["description"]}}]	8	1
74	2018-07-04 02:50:22.581978-05	3	Explorer	2	[{"changed": {"fields": ["description"]}}]	8	1
75	2018-07-04 02:50:29.419597-05	2	Adept	2	[]	8	1
76	2018-07-04 02:50:35.156841-05	3	Explorer	2	[]	8	1
77	2018-07-04 02:50:41.961637-05	4	Speaker	2	[]	8	1
78	2018-07-04 02:51:35.414504-05	1	Warrior	2	[{"changed": {"fields": ["description"]}}]	8	1
79	2018-07-04 16:16:03.776069-05	2	Abides In Stone	1	[{"added": {}}]	9	1
80	2018-07-04 16:36:16.54038-05	3	Awakens Dreams	1	[{"added": {}}]	9	1
81	2018-07-04 16:37:18.162656-05	4	Battles Robots	1	[{"added": {}}]	9	1
82	2018-07-04 16:38:03.352111-05	5	Bears A Halo Of Fire	1	[{"added": {}}]	9	1
83	2018-07-04 16:38:43.26217-05	6	Blazes With Radiance	1	[{"added": {}}]	9	1
84	2018-07-04 16:51:16.118742-05	7	Builds Robots	1	[{"added": {}}]	9	1
85	2018-07-04 16:51:58.734162-05	8	Calculates The Incalculable	1	[{"added": {}}]	9	1
86	2018-07-04 16:54:10.564738-05	2	Abides In Stone	2	[{"changed": {"fields": ["connections", "details"]}}]	9	1
87	2018-07-04 16:56:29.741182-05	2	Abides In Stone	2	[{"changed": {"fields": ["details", "minor_effect", "major_effect"]}}]	9	1
88	2018-07-04 17:04:46.570866-05	2	Abides In Stone	2	[{"changed": {"fields": ["details"]}}]	9	1
89	2018-07-04 17:06:42.573122-05	3	Awakens Dreams	2	[{"changed": {"fields": ["connections", "details"]}}]	9	1
90	2018-07-04 18:21:09.288419-05	3	Awakens Dreams	2	[]	9	1
91	2018-07-04 18:21:28.270037-05	4	Battles Robots	2	[{"changed": {"fields": ["connections", "details"]}}]	9	1
92	2018-07-04 18:21:43.109127-05	5	Bears A Halo Of Fire	2	[{"changed": {"fields": ["connections", "details"]}}]	9	1
93	2018-07-04 18:21:54.729055-05	6	Blazes With Radiance	2	[{"changed": {"fields": ["connections", "details"]}}]	9	1
94	2018-07-04 18:22:05.378936-05	7	Builds Robots	2	[{"changed": {"fields": ["connections", "details"]}}]	9	1
95	2018-07-04 18:22:34.501805-05	8	Calculates The Incalculable	2	[{"changed": {"fields": ["connections", "details"]}}]	9	1
96	2018-07-04 18:23:42.496769-05	9	Carries A Quiver	1	[{"added": {}}]	9	1
97	2018-07-04 18:25:22.593924-05	10	Casts Spells	1	[{"added": {}}]	9	1
98	2018-07-04 18:26:26.894057-05	11	Channels Divine Blessings	1	[{"added": {}}]	9	1
99	2018-07-04 18:26:42.800232-05	2	Abides In Stone	2	[{"changed": {"fields": ["description"]}}]	9	1
100	2018-07-04 18:26:48.286318-05	3	Awakens Dreams	2	[{"changed": {"fields": ["description"]}}]	9	1
101	2018-07-04 18:26:55.77312-05	4	Battles Robots	2	[{"changed": {"fields": ["description"]}}]	9	1
102	2018-07-04 18:27:00.652126-05	4	Battles Robots	2	[]	9	1
103	2018-07-04 18:27:06.440763-05	5	Bears A Halo Of Fire	2	[{"changed": {"fields": ["description"]}}]	9	1
104	2018-07-04 18:27:11.97933-05	6	Blazes With Radiance	2	[{"changed": {"fields": ["description"]}}]	9	1
105	2018-07-04 18:27:18.312052-05	7	Builds Robots	2	[{"changed": {"fields": ["description"]}}]	9	1
106	2018-07-04 18:27:24.071948-05	8	Calculates The Incalculable	2	[{"changed": {"fields": ["description"]}}]	9	1
107	2018-07-04 18:27:30.353947-05	9	Carries A Quiver	2	[{"changed": {"fields": ["description"]}}]	9	1
108	2018-07-04 18:27:35.966427-05	10	Casts Spells	2	[{"changed": {"fields": ["description"]}}]	9	1
109	2018-07-04 18:27:42.670562-05	11	Channels Divine Blessings	2	[{"changed": {"fields": ["description"]}}]	9	1
110	2018-07-04 18:28:02.230871-05	2	Adept	2	[{"changed": {"fields": ["description"]}}]	8	1
111	2018-07-04 18:28:15.237384-05	3	Explorer	2	[{"changed": {"fields": ["description"]}}]	8	1
112	2018-07-04 18:28:28.155718-05	4	Speaker	2	[{"changed": {"fields": ["description"]}}]	8	1
113	2018-07-04 18:28:40.362365-05	1	Warrior	2	[{"changed": {"fields": ["description"]}}]	8	1
114	2018-07-04 18:29:17.447713-05	7	Craven	2	[{"changed": {"fields": ["description"]}}]	7	1
115	2018-07-04 18:29:31.312712-05	9	Cruel	2	[{"changed": {"fields": ["description"]}}]	7	1
116	2018-07-04 18:29:51.445629-05	12	Driven	2	[{"changed": {"fields": ["description"]}}]	7	1
117	2018-07-04 18:30:00.206956-05	13	Empathic	2	[{"changed": {"fields": ["description"]}}]	7	1
118	2018-07-04 18:30:09.973403-05	14	Exiled	2	[{"changed": {"fields": ["description"]}}]	7	1
119	2018-07-04 18:30:20.914278-05	16	Foolish	2	[{"changed": {"fields": ["description"]}}]	7	1
120	2018-07-04 18:30:47.918943-05	18	Guarded	2	[{"changed": {"fields": ["description"]}}]	7	1
121	2018-07-04 18:30:55.362785-05	19	Hardy	2	[{"changed": {"fields": ["description"]}}]	7	1
122	2018-07-04 18:31:04.819156-05	20	Hideous	2	[{"changed": {"fields": ["description"]}}]	7	1
123	2018-07-04 18:31:14.313371-05	21	Honorable	2	[{"changed": {"fields": ["description"]}}]	7	1
124	2018-07-04 18:31:24.572341-05	22	Impulsive	2	[{"changed": {"fields": ["description"]}}]	7	1
125	2018-07-04 18:31:31.521388-05	23	Inquisitive	2	[{"changed": {"fields": ["description"]}}]	7	1
126	2018-07-04 18:31:39.153004-05	23	Inquisitive	2	[{"changed": {"fields": ["description"]}}]	7	1
127	2018-07-04 18:31:44.184527-05	24	Intelligent	2	[]	7	1
128	2018-07-04 18:32:31.434422-05	31	Mysterious	2	[{"changed": {"fields": ["description"]}}]	7	1
129	2018-07-04 18:32:52.206824-05	34	Noble	2	[{"changed": {"fields": ["description"]}}]	7	1
130	2018-07-04 18:33:00.998858-05	35	Perceptive	2	[{"changed": {"fields": ["description"]}}]	7	1
131	2018-07-04 18:33:44.807259-05	40	Spiritual	2	[{"changed": {"fields": ["description"]}}]	7	1
132	2018-07-04 18:33:59.414424-05	41	Stealthy	2	[{"changed": {"fields": ["description"]}}]	7	1
133	2018-07-04 18:34:30.436298-05	45	Tongue-Tied	2	[{"changed": {"fields": ["description"]}}]	7	1
134	2018-07-04 18:34:52.49455-05	47	Vengeful	2	[{"changed": {"fields": ["description"]}}]	7	1
135	2018-07-04 18:35:07.818412-05	49	Wealthy	2	[{"changed": {"fields": ["description"]}}]	7	1
136	2018-07-04 18:35:26.894701-05	50	Weird	2	[{"changed": {"fields": ["description", "characteristics"]}}]	7	1
137	2018-07-04 18:36:51.133616-05	12	Commands Mental Powers	1	[{"added": {}}]	9	1
138	2018-07-04 18:37:32.492139-05	13	Conducts Weird Science	1	[{"added": {}}]	9	1
139	2018-07-04 18:38:15.568253-05	14	Consorts With The Dead	1	[{"added": {}}]	9	1
140	2018-07-04 18:38:55.327868-05	15	Controls Beasts	1	[{"added": {}}]	9	1
141	2018-07-04 18:39:38.524972-05	16	Controls Gravity	1	[{"added": {}}]	9	1
142	2018-07-04 18:44:03.745733-05	17	Crafts Illusions	1	[{"added": {}}]	9	1
143	2018-07-04 18:45:10.617206-05	18	Crafts Unique Objects	1	[{"added": {}}]	9	1
144	2018-07-04 18:45:52.313286-05	19	Defends The Weak	1	[{"added": {}}]	9	1
145	2018-07-04 18:48:54.345602-05	20	Doesn't Do Much	1	[{"added": {}}]	9	1
146	2018-07-04 18:49:38.544746-05	21	Employs Magnetism	1	[{"added": {}}]	9	1
147	2018-07-04 18:50:16.405215-05	22	Entertains	1	[{"added": {}}]	9	1
148	2018-07-04 18:58:44.068189-05	23	Exists In Two Places At Once	1	[{"added": {}}]	9	1
149	2018-07-04 18:59:42.852254-05	24	Exists Partially Out Of Phase	1	[{"added": {}}]	9	1
150	2018-07-04 19:00:36.04398-05	25	Explores Dark Places	1	[{"added": {}}]	9	1
151	2018-07-04 19:03:13.278719-05	26	Explores Deep Waters	1	[{"added": {}}]	9	1
152	2018-07-04 19:04:32.384728-05	27	Fights Dirty	1	[{"added": {}}]	9	1
153	2018-07-04 19:05:29.898746-05	28	Fights With Panache	1	[{"added": {}}]	9	1
154	2018-07-04 19:06:16.17168-05	29	Focuses Mind Over Matter	1	[{"added": {}}]	9	1
155	2018-07-04 19:10:15.512545-05	30	Fuses Flesh And Steel	1	[{"added": {}}]	9	1
156	2018-07-04 19:10:52.786382-05	31	Fuses Mind And Machine	1	[{"added": {}}]	9	1
157	2018-07-04 19:11:06.616321-05	32	Fuses Mind And Machine	1	[{"added": {}}]	9	1
158	2018-07-04 19:11:18.056732-05	32	Fuses Mind And Machine	3		9	1
159	2018-07-04 19:14:52.784067-05	33	Grows To Towering Heights	1	[{"added": {}}]	9	1
160	2018-07-04 19:15:49.628281-05	34	Howls At The Moon	1	[{"added": {}}]	9	1
161	2018-07-04 19:16:28.404749-05	35	Hunts Nonhumans	1	[{"added": {}}]	9	1
162	2018-07-04 19:17:14.932487-05	36	Hunts Outcasts	1	[{"added": {}}]	9	1
163	2018-07-04 19:17:51.642985-05	37	Hunts With Great Skill	1	[{"added": {}}]	9	1
164	2018-07-04 19:18:35.516754-05	38	Infiltrates	1	[{"added": {}}]	9	1
165	2018-07-04 19:21:59.705531-05	39	Interprets The Law	1	[{"added": {}}]	9	1
166	2018-07-04 19:22:42.757282-05	40	Is Idolized By Millions	1	[{"added": {}}]	9	1
167	2018-07-04 19:23:27.540421-05	41	Is Licensed To Carry	1	[{"added": {}}]	9	1
168	2018-07-04 19:24:07.562561-05	42	Leads	1	[{"added": {}}]	9	1
169	2018-07-04 19:25:12.575322-05	43	Lives In The Wilderness	1	[{"added": {}}]	9	1
170	2018-07-04 19:26:47.271887-05	44	Looks For Trouble	1	[{"added": {}}]	9	1
171	2018-07-04 19:27:26.720922-05	45	Masters Defense	1	[{"added": {}}]	9	1
172	2018-07-04 19:39:38.635583-05	46	Masters The Swarm	1	[{"added": {}}]	9	1
173	2018-07-04 19:40:46.139902-05	47	Masters Weaponry	1	[{"added": {}}]	9	1
174	2018-07-04 19:41:28.648801-05	48	Metes Out Justice	1	[{"added": {}}]	9	1
175	2018-07-04 19:42:44.682406-05	49	Moves Like A Cat	1	[{"added": {}}]	9	1
176	2018-07-04 19:43:13.43008-05	50	Moves Like The Wind	1	[{"added": {}}]	9	1
177	2018-07-04 19:44:23.027132-05	50	Moves Like The Wind	2	[]	9	1
178	2018-07-04 19:45:03.428147-05	51	Murders	1	[{"added": {}}]	9	1
179	2018-07-04 19:46:21.509298-05	52	Needs No Weapon	1	[{"added": {}}]	9	1
180	2018-07-04 19:47:04.407042-05	53	Never Says Die	1	[{"added": {}}]	9	1
181	2018-07-04 19:47:38.791672-05	54	Operates Undercover	1	[{"added": {}}]	9	1
182	2018-07-04 19:48:21.555947-05	55	Performs Feats Of Strength	1	[{"added": {}}]	9	1
183	2018-07-04 19:49:17.67188-05	56	Pilots Starcraft	1	[{"added": {}}]	9	1
184	2018-07-04 19:49:50.511358-05	57	Rages	1	[{"added": {}}]	9	1
185	2018-07-04 19:50:59.588817-05	58	Rides The Lightning	1	[{"added": {}}]	9	1
186	2018-07-04 19:51:36.458846-05	59	Sees Beyond	1	[{"added": {}}]	9	1
187	2018-07-04 19:52:12.747357-05	60	Separates Mind From Body	1	[{"added": {}}]	9	1
188	2018-07-04 19:52:42.528791-05	61	Shepherds Spirits	1	[{"added": {}}]	9	1
189	2018-07-04 19:53:12.202843-05	62	Siphons Power	1	[{"added": {}}]	9	1
190	2018-07-04 19:53:45.454957-05	63	Slays Monsters	1	[{"added": {}}]	9	1
191	2018-07-04 19:54:13.843381-05	64	Solves Mysteries	1	[{"added": {}}]	9	1
192	2018-07-04 19:55:06.054689-05	65	Speaks For The Land	1	[{"added": {}}]	9	1
193	2018-07-04 19:55:40.208515-05	66	Stands Like A Bastion	1	[{"added": {}}]	9	1
194	2018-07-04 19:58:15.101858-05	67	Talks To Machines	1	[{"added": {}}]	9	1
195	2018-07-04 19:59:44.818013-05	68	Throws With Deadly Accuracy	1	[{"added": {}}]	9	1
196	2018-07-04 20:02:12.281502-05	69	Travels Through Time	1	[{"added": {}}]	9	1
197	2018-07-04 20:02:56.792542-05	70	Wears A Sheen Of Ice	1	[{"added": {}}]	9	1
198	2018-07-04 20:03:47.964981-05	71	Wields Two Weapons At Once	1	[{"added": {}}]	9	1
199	2018-07-04 20:04:33.512836-05	72	Works Miracles	1	[{"added": {}}]	9	1
200	2018-07-04 20:05:11.604885-05	73	Works The Back Alleys	1	[{"added": {}}]	9	1
201	2018-07-04 20:05:56.651908-05	74	Works The System	1	[{"added": {}}]	9	1
202	2018-07-04 20:06:36.583142-05	75	Would Rather Be Reading	1	[{"added": {}}]	9	1
203	2018-07-04 20:08:10.579045-05	1	Appealing	2	[{"changed": {"fields": ["systems"]}}]	7	1
204	2018-07-04 20:08:22.598568-05	2	Brash	2	[{"changed": {"fields": ["systems"]}}]	7	1
205	2018-07-04 20:08:30.96861-05	5	Clever	2	[{"changed": {"fields": ["systems"]}}]	7	1
206	2018-07-04 20:08:40.487987-05	15	Fast	2	[{"changed": {"fields": ["systems"]}}]	7	1
207	2018-07-04 20:08:48.402389-05	17	Graceful	2	[{"changed": {"fields": ["systems"]}}]	7	1
208	2018-07-04 20:09:03.892429-05	24	Intelligent	2	[{"changed": {"fields": ["systems"]}}]	7	1
209	2018-07-04 20:49:59.588867-05	28	Lucky	2	[{"changed": {"fields": ["systems"]}}]	7	1
210	2018-07-04 20:50:10.127886-05	38	Sharp-Eyed	2	[{"changed": {"fields": ["systems"]}}]	7	1
211	2018-07-04 20:50:18.693338-05	39	Skeptical	2	[{"changed": {"fields": ["systems"]}}]	7	1
212	2018-07-04 20:51:49.923702-05	51	Strange	1	[{"added": {}}]	7	1
213	2018-07-04 21:10:06.721096-05	42	Strong	2	[{"changed": {"fields": ["systems"]}}]	7	1
214	2018-07-04 21:10:15.635817-05	46	Tough	2	[{"changed": {"fields": ["systems"]}}]	7	1
215	2018-07-04 21:11:26.599809-05	2	Abides In Stone	2	[{"changed": {"fields": ["systems"]}}]	9	1
216	2018-07-04 21:11:35.071634-05	9	Carries A Quiver	2	[{"changed": {"fields": ["systems"]}}]	9	1
217	2018-07-04 21:12:43.300922-05	76	Channels Sinfire	1	[{"added": {}}]	9	1
218	2018-07-04 21:14:08.947621-05	77	Adapts To Any Environment	1	[{"added": {}}]	9	1
219	2018-07-04 21:14:37.082658-05	13	Conducts Weird Science	2	[{"changed": {"fields": ["systems"]}}]	9	1
220	2018-07-04 21:15:25.677121-05	51	Strange	3		7	1
221	2018-07-04 21:15:42.19632-05	77	Adapts To Any Environment	3		9	1
222	2018-07-04 21:15:42.233965-05	76	Channels Sinfire	3		9	1
223	2018-07-04 21:16:17.521694-05	43	Lives In The Wilderness	2	[{"changed": {"fields": ["systems"]}}]	9	1
224	2018-07-04 21:16:34.644569-05	71	Wields Two Weapons At Once	2	[{"changed": {"fields": ["systems"]}}]	9	1
225	2018-07-04 21:16:45.752754-05	72	Works Miracles	2	[{"changed": {"fields": ["systems"]}}]	9	1
226	2018-07-04 21:17:08.67935-05	22	Entertains	2	[{"changed": {"fields": ["systems"]}}]	9	1
227	2018-07-04 21:17:20.08369-05	41	Is Licensed To Carry	2	[{"changed": {"fields": ["systems"]}}]	9	1
228	2018-07-04 21:17:28.440528-05	42	Leads	2	[{"changed": {"fields": ["systems"]}}]	9	1
229	2018-07-04 21:17:41.09356-05	44	Looks For Trouble	2	[{"changed": {"fields": ["systems"]}}]	9	1
230	2018-07-04 21:17:56.63149-05	54	Operates Undercover	2	[{"changed": {"fields": ["systems"]}}]	9	1
231	2018-07-04 21:18:08.271852-05	64	Solves Mysteries	2	[{"changed": {"fields": ["systems"]}}]	9	1
232	2018-07-04 21:18:17.408162-05	74	Works The System	2	[{"changed": {"fields": ["systems"]}}]	9	1
233	2018-07-04 21:18:39.859276-05	38	Infiltrates	2	[{"changed": {"fields": ["systems"]}}]	9	1
234	2018-07-04 21:20:51.578321-05	78	Dwarf	1	[{"added": {}}]	9	1
235	2018-07-04 21:21:31.897266-05	79	Elf	1	[{"added": {}}]	9	1
236	2018-07-04 21:23:42.82943-05	80	Artificially Intelligent	1	[{"added": {}}]	9	1
237	2018-07-04 21:26:36.765418-05	81	Quintar	1	[{"added": {}}]	9	1
238	2018-07-04 21:26:48.244158-05	78	Dwarf	2	[{"changed": {"fields": ["systems"]}}]	9	1
239	2018-07-04 21:26:56.728978-05	79	Elf	2	[{"changed": {"fields": ["systems"]}}]	9	1
240	2018-07-04 21:29:25.473919-05	4	Charming	2	[{"changed": {"fields": ["systems"]}}]	7	1
241	2018-07-04 21:29:44.003723-05	5	Clever	2	[{"changed": {"fields": ["systems"]}}]	7	1
242	2018-07-04 21:29:55.140432-05	17	Graceful	2	[{"changed": {"fields": ["systems"]}}]	7	1
243	2018-07-04 21:30:13.485733-05	24	Intelligent	2	[{"changed": {"fields": ["systems"]}}]	7	1
244	2018-07-04 21:30:25.635414-05	27	Learned	2	[{"changed": {"fields": ["systems"]}}]	7	1
245	2018-07-04 21:30:34.231306-05	30	Mechanical	2	[{"changed": {"fields": ["systems"]}}]	7	1
246	2018-07-04 21:30:42.2872-05	32	Mystical	2	[{"changed": {"fields": ["systems"]}}]	7	1
247	2018-07-04 21:30:50.468572-05	37	Rugged	2	[{"changed": {"fields": ["systems"]}}]	7	1
248	2018-07-04 21:31:00.463786-05	41	Stealthy	2	[{"changed": {"fields": ["systems"]}}]	7	1
249	2018-07-04 21:31:23.816452-05	42	Strong	2	[{"changed": {"fields": ["systems"]}}]	7	1
250	2018-07-04 21:31:35.410596-05	43	Strong-Willed	2	[{"changed": {"fields": ["systems"]}}]	7	1
251	2018-07-04 21:31:45.394539-05	44	Swift	2	[{"changed": {"fields": ["systems"]}}]	7	1
252	2018-07-04 21:32:01.089894-05	46	Tough	2	[{"changed": {"fields": ["systems"]}}]	7	1
253	2018-07-04 21:34:27.075859-05	5	Bears A Halo Of Fire	2	[{"changed": {"fields": ["systems"]}}]	9	1
254	2018-07-04 21:34:44.470878-05	9	Carries A Quiver	2	[{"changed": {"fields": ["systems"]}}]	9	1
255	2018-07-04 21:34:51.938726-05	12	Commands Mental Powers	2	[{"changed": {"fields": ["systems"]}}]	9	1
256	2018-07-04 21:35:08.210087-05	15	Controls Beasts	2	[{"changed": {"fields": ["systems"]}}]	9	1
257	2018-07-04 21:35:15.958791-05	16	Controls Gravity	2	[{"changed": {"fields": ["systems"]}}]	9	1
258	2018-07-04 21:35:26.407274-05	17	Crafts Illusions	2	[{"changed": {"fields": ["systems"]}}]	9	1
259	2018-07-04 21:35:33.05982-05	18	Crafts Unique Objects	2	[{"changed": {"fields": ["systems"]}}]	9	1
260	2018-07-04 21:35:43.629189-05	21	Employs Magnetism	2	[{"changed": {"fields": ["systems"]}}]	9	1
261	2018-07-04 21:35:55.246484-05	22	Entertains	2	[{"changed": {"fields": ["systems"]}}]	9	1
262	2018-07-04 21:36:03.823902-05	24	Exists Partially Out Of Phase	2	[{"changed": {"fields": ["systems"]}}]	9	1
263	2018-07-04 21:36:14.083022-05	25	Explores Dark Places	2	[{"changed": {"fields": ["systems"]}}]	9	1
264	2018-07-04 21:36:23.322284-05	28	Fights With Panache	2	[{"changed": {"fields": ["systems"]}}]	9	1
265	2018-07-04 21:36:36.36342-05	29	Focuses Mind Over Matter	2	[{"changed": {"fields": ["systems"]}}]	9	1
266	2018-07-04 21:36:44.937276-05	30	Fuses Flesh And Steel	2	[{"changed": {"fields": ["systems"]}}]	9	1
267	2018-07-04 21:36:53.475217-05	34	Howls At The Moon	2	[{"changed": {"fields": ["systems"]}}]	9	1
268	2018-07-04 21:37:01.148615-05	37	Hunts With Great Skill	2	[{"changed": {"fields": ["systems"]}}]	9	1
269	2018-07-04 21:37:10.643096-05	42	Leads	2	[{"changed": {"fields": ["systems"]}}]	9	1
270	2018-07-04 21:37:21.444899-05	43	Lives In The Wilderness	2	[{"changed": {"fields": ["systems"]}}]	9	1
271	2018-07-04 21:37:33.576219-05	45	Masters Defense	2	[{"changed": {"fields": ["systems"]}}]	9	1
272	2018-07-04 21:37:41.013254-05	47	Masters Weaponry	2	[{"changed": {"fields": ["systems"]}}]	9	1
273	2018-07-04 21:37:49.080904-05	51	Murders	2	[{"changed": {"fields": ["systems"]}}]	9	1
274	2018-07-04 21:37:57.860942-05	57	Rages	2	[{"changed": {"fields": ["systems"]}}]	9	1
275	2018-07-04 21:38:06.845945-05	58	Rides The Lightning	2	[{"changed": {"fields": ["systems"]}}]	9	1
276	2018-07-04 21:38:16.242192-05	67	Talks To Machines	2	[{"changed": {"fields": ["systems"]}}]	9	1
277	2018-07-04 21:38:27.728593-05	70	Wears A Sheen Of Ice	2	[{"changed": {"fields": ["systems"]}}]	9	1
278	2018-07-04 21:38:43.568896-05	71	Wields Two Weapons At Once	2	[{"changed": {"fields": ["systems"]}}]	9	1
279	2018-07-04 21:38:54.223076-05	72	Works Miracles	2	[{"changed": {"fields": ["systems"]}}]	9	1
280	2018-07-04 21:39:02.625321-05	73	Works The Back Alleys	2	[{"changed": {"fields": ["systems"]}}]	9	1
281	2018-07-04 21:53:46.829421-05	1	Bash	1	[{"added": {}}]	10	1
282	2018-07-04 21:55:05.070981-05	2	Control The Field	1	[{"added": {}}]	10	1
283	2018-07-04 21:55:12.525716-05	1	Bash	2	[{"changed": {"fields": ["cost"]}}]	10	1
284	2018-07-04 21:55:49.701854-05	3	Extra Edge	1	[{"added": {}}]	10	1
285	2018-07-04 21:57:12.96067-05	4	No Need For Weapons	1	[{"added": {}}]	10	1
286	2018-07-04 21:58:19.127401-05	5	Overwatch	1	[{"added": {}}]	10	1
287	2018-07-04 21:58:32.473462-05	6	Physical Skills	1	[{"added": {}}]	10	1
288	2018-07-04 21:58:47.170539-05	7	Pierce	1	[{"added": {}}]	10	1
289	2018-07-04 21:59:10.278505-05	8	Practiced In Armor	1	[{"added": {}}]	10	1
290	2018-07-04 21:59:25.461958-05	9	Quick Draw	1	[{"added": {}}]	10	1
291	2018-07-04 21:59:44.755865-05	10	Swipe	1	[{"added": {}}]	10	1
292	2018-07-04 21:59:59.014631-05	11	Thrust	1	[{"added": {}}]	10	1
293	2018-07-04 22:29:07.283-05	12	Golem Body	1	[{"added": {}}]	10	1
294	2018-07-04 22:29:21.539853-05	13	Golem Healing	1	[{"added": {}}]	10	1
295	2018-07-04 22:30:19.30537-05	2	Abides In Stone	2	[{"added": {"name": "focus ability", "object": "Golem Body"}}, {"added": {"name": "focus ability", "object": "Golem Healing"}}]	9	1
296	2018-07-04 22:30:52.909468-05	14	Golem Grip	1	[{"added": {}}]	10	1
297	2018-07-04 22:31:03.138595-05	14	Golem Grip	2	[]	10	1
298	2018-07-04 22:31:34.879309-05	15	Trained Basher	1	[{"added": {}}]	10	1
299	2018-07-04 22:31:52.495883-05	16	Golem Stomp	1	[{"added": {}}]	10	1
300	2018-07-04 22:32:18.688875-05	17	Deep Reserves	1	[{"added": {}}]	10	1
301	2018-07-04 22:32:43.615837-05	18	Specialized Basher	1	[{"added": {}}]	10	1
302	2018-07-04 22:32:59.68117-05	19	Still As A Statue	1	[{"added": {}}]	10	1
303	2018-07-04 22:33:16.577305-05	20	Ultra Enhancement	1	[{"added": {}}]	10	1
304	2018-07-04 22:35:22.399264-05	2	Abides In Stone	2	[{"added": {"name": "focus ability", "object": "Golem Grip"}}, {"added": {"name": "focus ability", "object": "Trained Basher"}}, {"added": {"name": "focus ability", "object": "Golem Stomp"}}, {"added": {"name": "focus ability", "object": "Deep Reserves"}}, {"added": {"name": "focus ability", "object": "Specialized Basher"}}, {"added": {"name": "focus ability", "object": "Still As A Statue"}}, {"added": {"name": "focus ability", "object": "Ultra Enhancement"}}]	9	1
305	2018-07-04 22:43:46.598331-05	21	Trained Without Armor	1	[{"added": {}}]	10	1
306	2018-07-04 22:43:51.190346-05	1	Warrior	2	[{"added": {"name": "type ability", "object": "Bash"}}, {"added": {"name": "type ability", "object": "Control The Field"}}, {"added": {"name": "type ability", "object": "Extra Edge"}}, {"added": {"name": "type ability", "object": "No Need For Weapons"}}, {"added": {"name": "type ability", "object": "Overwatch"}}, {"added": {"name": "type ability", "object": "Physical Skills"}}, {"added": {"name": "type ability", "object": "Pierce"}}, {"added": {"name": "type ability", "object": "Practiced In Armor"}}, {"added": {"name": "type ability", "object": "Quick Draw"}}, {"added": {"name": "type ability", "object": "Swipe"}}, {"added": {"name": "type ability", "object": "Thrust"}}, {"added": {"name": "type ability", "object": "Trained Without Armor"}}]	8	1
307	2018-07-04 22:44:33.073124-05	22	Chop	1	[{"added": {}}]	10	1
308	2018-07-04 22:44:52.733495-05	23	Crush	1	[{"added": {}}]	10	1
309	2018-07-04 22:45:19.022252-05	24	Mighty Blow	1	[{"added": {}}]	10	1
310	2018-07-04 22:45:24.16911-05	1	Warrior	2	[{"added": {"name": "type ability", "object": "Chop"}}, {"added": {"name": "type ability", "object": "Crush"}}, {"added": {"name": "type ability", "object": "Mighty Blow"}}]	8	1
311	2018-07-04 22:58:03.556817-05	25	Reload	1	[{"added": {}}]	10	1
312	2018-07-04 22:58:27.189148-05	26	Skill With Attacks	1	[{"added": {}}]	10	1
313	2018-07-04 22:58:44.528952-05	27	Skill With Defense	1	[{"added": {}}]	10	1
314	2018-07-04 22:59:10.135973-05	28	Successive Attack	1	[{"added": {}}]	10	1
315	2018-07-04 22:59:15.91831-05	1	Warrior	2	[{"added": {"name": "type ability", "object": "Reload"}}, {"added": {"name": "type ability", "object": "Skill With Attacks"}}, {"added": {"name": "type ability", "object": "Skill With Defense"}}, {"added": {"name": "type ability", "object": "Successive Attack"}}]	8	1
316	2018-07-04 23:28:03.259001-05	1	Appealing	2	[]	7	1
317	2018-07-04 23:54:35.732128-05	29	Deadly Aim	1	[{"added": {}}]	10	1
318	2018-07-04 23:54:56.813155-05	30	Experienced With Armor	1	[{"added": {}}]	10	1
319	2018-07-04 23:55:22.673456-05	31	Expert Cypher Use	1	[{"added": {}}]	10	1
320	2018-07-04 23:55:41.399595-05	32	Fury	1	[{"added": {}}]	10	1
321	2018-07-04 23:56:02.848688-05	33	Lunge	1	[{"added": {}}]	10	1
322	2018-07-04 23:56:09.075882-05	1	Warrior	2	[{"added": {"name": "type ability", "object": "Deadly Aim"}}, {"added": {"name": "type ability", "object": "Experienced With Armor"}}, {"added": {"name": "type ability", "object": "Expert Cypher Use"}}, {"added": {"name": "type ability", "object": "Fury"}}, {"added": {"name": "type ability", "object": "Lunge"}}]	8	1
323	2018-07-04 23:56:32.635014-05	34	Reaction	1	[{"added": {}}]	10	1
324	2018-07-04 23:56:56.489156-05	35	Seize The Moment	1	[{"added": {}}]	10	1
325	2018-07-04 23:57:27.75979-05	36	Slice	1	[{"added": {}}]	10	1
326	2018-07-04 23:57:55.478044-05	37	Spray	1	[{"added": {}}]	10	1
327	2018-07-04 23:58:31.38995-05	38	Trick Shot	1	[{"added": {}}]	10	1
328	2018-07-04 23:58:43.38165-05	1	Warrior	2	[{"added": {"name": "type ability", "object": "Reaction"}}, {"added": {"name": "type ability", "object": "Seize The Moment"}}, {"added": {"name": "type ability", "object": "Slice"}}, {"added": {"name": "type ability", "object": "Spray"}}, {"added": {"name": "type ability", "object": "Trick Shot"}}]	8	1
329	2018-07-05 00:01:26.145468-05	39	Capable Warrior	1	[{"added": {}}]	10	1
330	2018-07-05 00:02:04.863426-05	40	Experienced Defender	1	[{"added": {}}]	10	1
331	2018-07-05 00:02:28.516314-05	41	Feint	1	[{"added": {}}]	10	1
332	2018-07-05 00:03:13.560442-05	42	Minor To Major	1	[{"added": {}}]	10	1
333	2018-07-05 00:03:41.011493-05	43	Momentum	1	[{"added": {}}]	10	1
334	2018-07-05 00:04:03.6445-05	44	Opening Gambit	1	[{"added": {}}]	10	1
335	2018-07-05 00:04:24.807045-05	45	Snipe	1	[{"added": {}}]	10	1
336	2018-07-05 00:05:03.228432-05	46	Tough As Nails	1	[{"added": {}}]	10	1
337	2018-07-05 00:05:10.396787-05	1	Warrior	2	[{"added": {"name": "type ability", "object": "Capable Warrior"}}, {"added": {"name": "type ability", "object": "Experienced Defender"}}, {"added": {"name": "type ability", "object": "Feint"}}, {"added": {"name": "type ability", "object": "Minor To Major"}}, {"added": {"name": "type ability", "object": "Momentum"}}, {"added": {"name": "type ability", "object": "Opening Gambit"}}, {"added": {"name": "type ability", "object": "Snipe"}}, {"added": {"name": "type ability", "object": "Tough As Nails"}}]	8	1
338	2018-07-05 00:06:00.162303-05	47	Adroit Cypher Use	1	[{"added": {}}]	10	1
339	2018-07-05 00:06:28.903602-05	48	Arc Spray	1	[{"added": {}}]	10	1
340	2018-07-05 00:06:53.516606-05	49	Greater Skill With Attacks	1	[{"added": {}}]	10	1
341	2018-07-05 00:07:15.904172-05	50	Improved Success	1	[{"added": {}}]	10	1
342	2018-07-05 00:07:42.414425-05	51	Jump Attack	1	[{"added": {}}]	10	1
343	2018-07-05 00:08:06.647841-05	52	Mastery With Armor	1	[{"added": {}}]	10	1
344	2018-07-05 00:08:36.803236-05	53	Mastery With Defense	1	[{"added": {}}]	10	1
345	2018-07-05 00:08:59.07914-05	54	Parry	1	[{"added": {}}]	10	1
346	2018-07-05 00:09:04.403505-05	1	Warrior	2	[{"added": {"name": "type ability", "object": "Adroit Cypher Use"}}, {"added": {"name": "type ability", "object": "Arc Spray"}}, {"added": {"name": "type ability", "object": "Greater Skill With Attacks"}}, {"added": {"name": "type ability", "object": "Improved Success"}}, {"added": {"name": "type ability", "object": "Jump Attack"}}, {"added": {"name": "type ability", "object": "Mastery With Armor"}}, {"added": {"name": "type ability", "object": "Mastery With Defense"}}, {"added": {"name": "type ability", "object": "Parry"}}]	8	1
347	2018-07-05 00:10:11.348838-05	55	Finishing Blow	1	[{"added": {}}]	10	1
348	2018-07-05 00:10:38.400909-05	56	Magnificent Moment	1	[{"added": {}}]	10	1
349	2018-07-05 00:11:11.222671-05	57	Shooting Gallery	1	[{"added": {}}]	10	1
350	2018-07-05 00:11:33.103174-05	58	Slayer	1	[{"added": {}}]	10	1
351	2018-07-05 00:11:55.872184-05	59	Spin Attack	1	[{"added": {}}]	10	1
352	2018-07-05 00:12:36.314368-05	60	Weapon And Body	1	[{"added": {}}]	10	1
353	2018-07-05 00:12:43.605432-05	1	Warrior	2	[{"added": {"name": "type ability", "object": "Finishing Blow"}}, {"added": {"name": "type ability", "object": "Magnificent Moment"}}, {"added": {"name": "type ability", "object": "Shooting Gallery"}}, {"added": {"name": "type ability", "object": "Slayer"}}, {"added": {"name": "type ability", "object": "Spin Attack"}}, {"added": {"name": "type ability", "object": "Weapon And Body"}}]	8	1
354	2018-07-05 00:27:32.624549-05	1	Warrior	2	[]	8	1
355	2018-07-05 00:30:27.052722-05	2	Adept	2	[{"changed": {"fields": ["abilities"]}}]	8	1
356	2018-07-05 00:31:19.499196-05	1	Warrior	2	[{"changed": {"fields": ["abilities"]}}]	8	1
357	2018-07-05 00:33:02.292486-05	61	Distortion	1	[{"added": {}}]	10	1
358	2018-07-05 00:33:25.106578-05	62	Erase Memories	1	[{"added": {}}]	10	1
359	2018-07-05 00:33:46.315217-05	63	Far Step	1	[{"added": {}}]	10	1
360	2018-07-05 00:34:46.482341-05	64	Hedge Magic	1	[{"added": {}}]	10	1
361	2018-07-05 00:35:10.220162-05	65	Magic Training	1	[{"added": {}}]	10	1
362	2018-07-05 00:35:51.180103-05	66	Onslaught	1	[{"added": {}}]	10	1
363	2018-07-05 00:36:16.695153-05	67	Practiced With Light Weapons	1	[{"added": {}}]	10	1
364	2018-07-05 00:36:46.517022-05	68	Push	1	[{"added": {}}]	10	1
365	2018-07-05 00:36:55.824119-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Distortion"}}, {"added": {"name": "type ability", "object": "Erase Memories"}}, {"added": {"name": "type ability", "object": "Far Step"}}, {"added": {"name": "type ability", "object": "Hedge Magic"}}, {"added": {"name": "type ability", "object": "Magic Training"}}, {"added": {"name": "type ability", "object": "Onslaught"}}, {"added": {"name": "type ability", "object": "Practiced With Light Weapons"}}, {"added": {"name": "type ability", "object": "Push"}}]	8	1
366	2018-07-05 00:41:20.638608-05	69	Resonance Field	1	[{"added": {}}]	10	1
367	2018-07-05 00:41:49.945187-05	70	Scan	1	[{"added": {}}]	10	1
368	2018-07-05 00:42:27.275372-05	71	Sculpt Flesh	1	[{"added": {}}]	10	1
369	2018-07-05 00:42:53.970752-05	72	Shatter	1	[{"added": {}}]	10	1
370	2018-07-05 00:43:14.877476-05	73	Ward	1	[{"added": {}}]	10	1
371	2018-07-05 00:43:18.406268-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Resonance Field"}}, {"added": {"name": "type ability", "object": "Scan"}}, {"added": {"name": "type ability", "object": "Sculpt Flesh"}}, {"added": {"name": "type ability", "object": "Shatter"}}, {"added": {"name": "type ability", "object": "Ward"}}]	8	1
372	2018-07-05 00:45:47.507585-05	74	Adaptation	1	[{"added": {}}]	10	1
373	2018-07-05 00:46:34.86738-05	75	Cutting Light	1	[{"added": {}}]	10	1
374	2018-07-05 00:47:24.745886-05	76	Flash	1	[{"added": {}}]	10	1
375	2018-07-05 00:47:45.98497-05	77	Hover	1	[{"added": {}}]	10	1
376	2018-07-05 00:48:09.152045-05	78	Mind Reading	1	[{"added": {}}]	10	1
377	2018-07-05 00:48:50.593816-05	79	Retrieve Memories	1	[{"added": {}}]	10	1
378	2018-07-05 00:49:20.338258-05	80	Reveal	1	[{"added": {}}]	10	1
379	2018-07-05 00:49:49.919423-05	81	Stasis	1	[{"added": {}}]	10	1
380	2018-07-05 00:49:55.096156-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Adaptation"}}, {"added": {"name": "type ability", "object": "Cutting Light"}}, {"added": {"name": "type ability", "object": "Flash"}}, {"added": {"name": "type ability", "object": "Hover"}}, {"added": {"name": "type ability", "object": "Mind Reading"}}, {"added": {"name": "type ability", "object": "Retrieve Memories"}}, {"added": {"name": "type ability", "object": "Reveal"}}, {"added": {"name": "type ability", "object": "Stasis"}}]	8	1
381	2018-07-05 15:33:15.905754-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Adroit Cypher Use"}}]	8	1
382	2018-07-05 15:36:14.222849-05	82	Barrier	1	[{"added": {}}]	10	1
383	2018-07-05 15:36:18.901863-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Barrier"}}]	8	1
384	2018-07-05 17:04:51.581475-05	83	Countermeasures	1	[{"added": {}}]	10	1
385	2018-07-05 17:05:39.031765-05	84	Energy Protection	1	[{"added": {}}]	10	1
386	2018-07-05 17:06:00.004271-05	85	Fire And Ice	1	[{"added": {}}]	10	1
387	2018-07-05 17:06:26.616661-05	86	Sensor	1	[{"added": {}}]	10	1
388	2018-07-05 17:06:47.19903-05	87	Targeting Eye	1	[{"added": {}}]	10	1
389	2018-07-05 17:06:58.406014-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Countermeasures"}}, {"added": {"name": "type ability", "object": "Energy Protection"}}, {"added": {"name": "type ability", "object": "Fire And Ice"}}, {"added": {"name": "type ability", "object": "Sensor"}}, {"added": {"name": "type ability", "object": "Targeting Eye"}}]	8	1
390	2018-07-05 17:47:22.668412-05	88	Exile	1	[{"added": {}}]	10	1
391	2018-07-05 17:47:52.684951-05	89	Invisibility	1	[{"added": {}}]	10	1
392	2018-07-05 17:48:19.439859-05	90	Matter Cloud	1	[{"added": {}}]	10	1
393	2018-07-05 17:49:00.662689-05	91	Mind Control	1	[{"added": {}}]	10	1
394	2018-07-05 17:49:21.599198-05	92	Projection	1	[{"added": {}}]	10	1
395	2018-07-05 17:49:42.468564-05	93	Rapid Processing	1	[{"added": {}}]	10	1
396	2018-07-05 17:50:11.831152-05	94	Regeneration	1	[{"added": {}}]	10	1
397	2018-07-05 17:50:35.654715-05	95	Reshape	1	[{"added": {}}]	10	1
398	2018-07-05 17:51:16.034994-05	96	Slay	1	[{"added": {}}]	10	1
399	2018-07-05 17:51:44.168442-05	97	Wormhole	1	[{"added": {}}]	10	1
400	2018-07-05 17:51:50.061018-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Exile"}}, {"added": {"name": "type ability", "object": "Invisibility"}}, {"added": {"name": "type ability", "object": "Matter Cloud"}}, {"added": {"name": "type ability", "object": "Mind Control"}}, {"added": {"name": "type ability", "object": "Projection"}}, {"added": {"name": "type ability", "object": "Rapid Processing"}}, {"added": {"name": "type ability", "object": "Regeneration"}}, {"added": {"name": "type ability", "object": "Reshape"}}, {"added": {"name": "type ability", "object": "Slay"}}, {"added": {"name": "type ability", "object": "Wormhole"}}]	8	1
401	2018-07-05 17:52:20.576586-05	2	Adept	2	[]	8	1
402	2018-07-06 00:28:27.876922-05	98	Absorb Energy	1	[{"added": {}}]	10	1
403	2018-07-06 00:29:00.372322-05	99	Concussion	1	[{"added": {}}]	10	1
404	2018-07-06 00:29:37.043655-05	100	Conjuration	1	[{"added": {}}]	10	1
405	2018-07-06 00:30:06.056093-05	101	Create	1	[{"added": {}}]	10	1
406	2018-07-06 00:30:42.702649-05	102	Divide Your Mind	1	[{"added": {}}]	10	1
407	2018-07-06 00:30:52.178492-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Absorb Energy"}}, {"added": {"name": "type ability", "object": "Concussion"}}, {"added": {"name": "type ability", "object": "Conjuration"}}, {"added": {"name": "type ability", "object": "Create"}}, {"added": {"name": "type ability", "object": "Divide Your Mind"}}]	8	1
408	2018-07-06 00:32:03.86741-05	103	Dust To Dust	1	[{"added": {}}]	10	1
409	2018-07-06 00:32:56.868755-05	104	Knowing The Unknown	1	[{"added": {}}]	10	1
410	2018-07-06 00:33:44.28729-05	105	Master Cypher Use	1	[{"added": {}}]	10	1
411	2018-07-06 00:34:34.666342-05	106	Teleportation	1	[{"added": {}}]	10	1
412	2018-07-06 00:35:14.874311-05	107	True Senses	1	[{"added": {}}]	10	1
413	2018-07-06 00:35:22.43226-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Dust To Dust"}}, {"added": {"name": "type ability", "object": "Knowing The Unknown"}}, {"added": {"name": "type ability", "object": "Master Cypher Use"}}, {"added": {"name": "type ability", "object": "Teleportation"}}, {"added": {"name": "type ability", "object": "True Senses"}}]	8	1
414	2018-07-06 00:38:40.107943-05	108	Control Weather	1	[{"added": {}}]	10	1
415	2018-07-06 00:39:55.064132-05	109	Earthquake	1	[{"added": {}}]	10	1
416	2018-07-06 00:40:30.70075-05	110	Move Mountains	1	[{"added": {}}]	10	1
417	2018-07-06 00:41:20.839077-05	111	Traverse The Worlds	1	[{"added": {}}]	10	1
418	2018-07-06 00:42:00.472212-05	112	Usurp Cypher	1	[{"added": {}}]	10	1
419	2018-07-06 00:42:06.03146-05	2	Adept	2	[{"added": {"name": "type ability", "object": "Control Weather"}}, {"added": {"name": "type ability", "object": "Earthquake"}}, {"added": {"name": "type ability", "object": "Move Mountains"}}, {"added": {"name": "type ability", "object": "Traverse The Worlds"}}, {"added": {"name": "type ability", "object": "Usurp Cypher"}}]	8	1
420	2018-07-06 18:18:08.403157-05	2	Adept	2	[{"changed": {"fields": ["slug"]}}]	8	1
421	2018-07-06 18:22:56.618369-05	2	Adept	2	[]	8	1
422	2018-07-06 18:30:17.474509-05	3	Explorer	2	[{"changed": {"fields": ["slug"]}}]	8	1
423	2018-07-06 18:30:25.037825-05	4	Speaker	2	[{"changed": {"fields": ["slug"]}}]	8	1
424	2018-07-06 18:30:43.64099-05	1	Warrior	2	[{"changed": {"fields": ["slug"]}}]	8	1
425	2018-07-06 23:13:12.067968-05	1	Arrows	1	[{"added": {}}]	13	1
426	2018-07-06 23:13:25.175517-05	2	Crossbow bolts	1	[{"added": {}}]	13	1
427	2018-07-06 23:14:05.82885-05	3	Knife (rusty and worn)	1	[{"added": {}}]	13	1
428	2018-07-06 23:14:20.310697-05	4	Wooden club	1	[{"added": {}}]	13	1
429	2018-07-06 23:16:21.509007-05	5	Burlap sack	1	[{"added": {}}]	13	1
430	2018-07-06 23:16:34.367421-05	6	Candle	1	[{"added": {}}]	13	1
431	2018-07-06 23:16:51.732403-05	7	Iron rations (1 day)	1	[{"added": {}}]	13	1
432	2018-07-06 23:17:13.097426-05	8	Torch	1	[{"added": {}}]	13	1
433	2018-07-06 23:17:25.262999-05	1	Arrows	2	[{"changed": {"fields": ["description"]}}]	13	1
434	2018-07-06 23:17:33.928755-05	8	Torch	2	[{"changed": {"fields": ["description"]}}]	13	1
435	2018-07-06 23:25:54.228385-05	9	Blowgun	1	[{"added": {}}]	13	1
436	2018-07-06 23:41:27.45996-05	10	Dagger	1	[{"added": {}}]	13	1
437	2018-07-06 23:41:47.531152-05	11	Handaxe	1	[{"added": {}}]	13	1
438	2018-07-06 23:42:16.726985-05	12	Sword (substandard)	1	[{"added": {}}]	13	1
439	2018-07-06 23:42:48.062767-05	13	Throwing knife	1	[{"added": {}}]	13	1
440	2018-07-06 23:48:15.896861-05	5	Burlap sack	2	[{"changed": {"fields": ["type"]}}]	13	1
441	2018-07-06 23:48:29.28936-05	7	Iron rations (1 day)	2	[{"changed": {"fields": ["type"]}}]	13	1
442	2018-07-06 23:48:42.506056-05	6	Candle	2	[{"changed": {"fields": ["type"]}}]	13	1
443	2018-07-06 23:49:08.395179-05	8	Torch	2	[{"changed": {"fields": ["type"]}}]	13	1
444	2018-07-06 23:51:09.542663-05	14	Hides and furs	1	[{"added": {}}]	13	1
445	2018-07-06 23:51:31.658414-05	15	Leather jerkin	1	[{"added": {}}]	13	1
446	2018-07-06 23:52:14.832033-05	14	Hides and furs	2	[{"changed": {"fields": ["notes"]}}]	13	1
447	2018-07-06 23:53:31.779121-05	5	Burlap sack	2	[{"changed": {"fields": ["type"]}}]	13	1
448	2018-07-06 23:53:38.618147-05	6	Candle	2	[{"changed": {"fields": ["type"]}}]	13	1
449	2018-07-06 23:53:44.200449-05	7	Iron rations (1 day)	2	[{"changed": {"fields": ["type"]}}]	13	1
450	2018-07-06 23:53:50.367042-05	8	Torch	2	[{"changed": {"fields": ["type"]}}]	13	1
451	2018-07-07 01:26:49.878563-05	16	Backback	1	[{"added": {}}]	13	1
452	2018-07-07 01:27:25.536932-05	17	Bedroll	1	[{"added": {}}]	13	1
453	2018-07-07 01:27:52.707414-05	18	Crowbar	1	[{"added": {}}]	13	1
454	2018-07-07 01:28:17.545591-05	19	Hourglass	1	[{"added": {}}]	13	1
455	2018-07-07 01:28:37.040379-05	20	Lantern	1	[{"added": {}}]	13	1
456	2018-07-07 01:29:12.181278-05	21	Rope (Hemp, 50ft.)	1	[{"added": {}}]	13	1
457	2018-07-07 01:29:40.36418-05	22	Spikes and hammer	1	[{"added": {}}]	13	1
458	2018-07-07 01:30:25.089053-05	23	Tent	1	[{"added": {}}]	13	1
459	2018-07-07 15:02:14.432955-05	3	Explorer	2	[{"changed": {"fields": ["abilities"]}}]	8	1
460	2018-07-07 15:03:44.250916-05	113	Block	1	[{"added": {}}]	10	1
461	2018-07-07 15:04:08.433918-05	114	Danger Sense	1	[{"added": {}}]	10	1
462	2018-07-07 15:04:28.703015-05	115	Decipher	1	[{"added": {}}]	10	1
463	2018-07-07 15:05:03.595429-05	116	Endurance	1	[{"added": {}}]	10	1
464	2018-07-07 15:05:08.516116-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Block"}}, {"added": {"name": "type ability", "object": "Danger Sense"}}, {"added": {"name": "type ability", "object": "Decipher"}}, {"added": {"name": "type ability", "object": "Endurance"}}]	8	1
465	2018-07-07 15:14:00.499885-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Extra Edge"}}]	8	1
466	2018-07-07 15:14:45.915663-05	3	Extra Edge	2	[{"changed": {"fields": ["description"]}}]	10	1
467	2018-07-07 15:26:18.697343-05	117	Fleet Of Foot	1	[{"added": {}}]	10	1
468	2018-07-07 15:26:38.319821-05	118	Knowledge Skills	1	[{"added": {}}]	10	1
469	2018-07-07 15:27:40.131468-05	119	Muscles Of Iron	1	[{"added": {}}]	10	1
470	2018-07-07 15:28:26.576814-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Fleet Of Foot"}}, {"added": {"name": "type ability", "object": "Knowledge Skills"}}, {"added": {"name": "type ability", "object": "Muscles Of Iron"}}, {"added": {"name": "type ability", "object": "No Need For Weapons"}}, {"added": {"name": "type ability", "object": "Physical Skills"}}, {"added": {"name": "type ability", "object": "Practiced In Armor"}}]	8	1
471	2018-07-07 15:29:10.61858-05	120	Practiced With All Weapons	1	[{"added": {}}]	10	1
472	2018-07-07 15:29:32.1991-05	121	Surging Confidence	1	[{"added": {}}]	10	1
473	2018-07-07 15:29:42.903485-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Practiced With All Weapons"}}, {"added": {"name": "type ability", "object": "Surging Confidence"}}, {"added": {"name": "type ability", "object": "Trained Without Armor"}}]	8	1
474	2018-07-08 20:23:08.868926-05	21	Rope (Hemp, 50ft.)	2	[{"changed": {"fields": ["slug"]}}]	13	1
475	2018-07-08 22:09:09.146213-05	24	Battleaxe	1	[{"added": {}}]	13	1
476	2018-07-08 22:09:39.411724-05	25	Bow	1	[{"added": {}}]	13	1
477	2018-07-08 22:10:07.822916-05	26	Cutlass	1	[{"added": {}}]	13	1
478	2018-07-08 22:10:51.194851-05	27	Light crossbow	1	[{"added": {}}]	13	1
479	2018-07-08 22:18:27.861117-05	28	Quarterstaff	1	[{"added": {}}]	13	1
480	2018-07-08 22:18:46.351883-05	29	Sword	1	[{"added": {}}]	13	1
481	2018-07-08 22:19:07.802302-05	30	Breastplate	1	[{"added": {}}]	13	1
482	2018-07-08 22:19:24.328702-05	31	Brigandine	1	[{"added": {}}]	13	1
483	2018-07-08 22:19:48.607089-05	32	Chainmail	1	[{"added": {}}]	13	1
484	2018-07-08 22:28:27.854999-05	33	Greatsword	1	[{"added": {}}]	13	1
485	2018-07-08 22:29:36.038061-05	34	Heavy crossbow	1	[{"added": {}}]	13	1
486	2018-07-08 22:30:19.64184-05	35	Sword (jeweled)	1	[{"added": {}}]	13	1
487	2018-07-08 22:30:51.371615-05	36	Dwarven breastplate	1	[{"added": {}}]	13	1
488	2018-07-08 22:31:19.537933-05	37	Full plate armor	1	[{"added": {}}]	13	1
489	2018-07-08 22:33:08.007886-05	38	Disguise kit	1	[{"added": {}}]	13	1
490	2018-07-08 22:33:29.091718-05	39	Healing kit	1	[{"added": {}}]	13	1
491	2018-07-08 22:33:52.581311-05	40	Spyglass	1	[{"added": {}}]	13	1
492	2018-07-08 22:34:34.703565-05	41	Elven chainmail	1	[{"added": {}}]	13	1
493	2018-07-08 22:34:52.495716-05	42	Sailing ship (small)	1	[{"added": {}}]	13	1
494	2018-07-08 23:50:43.351232-05	16	Backback	2	[{"changed": {"fields": ["genres"]}}]	13	1
495	2018-07-08 23:50:55.73753-05	18	Crowbar	2	[{"changed": {"fields": ["genres"]}}]	13	1
496	2018-07-09 00:25:39.552422-05	1	Adhesion	1	[{"added": {}}]	14	1
497	2018-07-09 12:02:50.62402-05	122	Enable Others	1	[{"added": {}}]	10	1
498	2018-07-09 12:03:15.659063-05	123	Escape	1	[{"added": {}}]	10	1
499	2018-07-09 12:04:11.050506-05	124	Eye For Detail	1	[{"added": {}}]	10	1
500	2018-07-09 12:04:44.977176-05	125	Hand to Eye	1	[{"added": {}}]	10	1
501	2018-07-09 12:04:51.201447-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Enable Others"}}, {"added": {"name": "type ability", "object": "Escape"}}, {"added": {"name": "type ability", "object": "Eye For Detail"}}, {"added": {"name": "type ability", "object": "Hand to Eye"}}]	8	1
502	2018-07-09 12:21:43.280188-05	124	Eye for Detail	2	[{"changed": {"fields": ["name"]}}]	10	1
503	2018-07-09 12:21:54.874834-05	117	Fleet of Foot	2	[{"changed": {"fields": ["name"]}}]	10	1
504	2018-07-09 12:22:02.18323-05	119	Muscles of Iron	2	[{"changed": {"fields": ["name"]}}]	10	1
505	2018-07-09 12:22:11.311032-05	104	Knowing the Unknown	2	[{"changed": {"fields": ["name"]}}]	10	1
506	2018-07-09 12:22:20.773786-05	103	Dust to Dust	2	[{"changed": {"fields": ["name"]}}]	10	1
507	2018-07-09 12:22:35.658998-05	85	Fire and Ice	2	[{"changed": {"fields": ["name"]}}]	10	1
508	2018-07-09 12:22:56.047081-05	85	Fire and Ice	2	[{"changed": {"fields": ["slug"]}}]	10	1
509	2018-07-09 12:23:09.751902-05	111	Traverse the Worlds	2	[{"changed": {"fields": ["name", "slug"]}}]	10	1
510	2018-07-09 12:23:29.15921-05	60	Weapon and Body	2	[{"changed": {"fields": ["name", "slug"]}}]	10	1
511	2018-07-09 12:24:03.027324-05	8	Practiced in Armor	2	[{"changed": {"fields": ["name", "slug"]}}]	10	1
512	2018-07-09 12:24:13.211274-05	2	Control the Field	2	[{"changed": {"fields": ["name", "slug"]}}]	10	1
513	2018-07-09 12:25:10.020762-05	19	Still As a Statue	2	[{"changed": {"fields": ["name", "slug"]}}]	10	1
514	2018-07-09 12:26:54.619868-05	126	Investigative Skills	1	[{"added": {}}]	10	1
515	2018-07-09 12:27:20.184278-05	127	Quick Recovery	1	[{"added": {}}]	10	1
516	2018-07-09 12:28:15.683498-05	128	Range Increase	1	[{"added": {}}]	10	1
517	2018-07-09 12:29:08.263145-05	129	Stand Watch	1	[{"added": {}}]	10	1
518	2018-07-09 12:29:37.829931-05	130	Travel Skills	1	[{"added": {}}]	10	1
519	2018-07-09 12:30:14.432423-05	131	Wreck	1	[{"added": {}}]	10	1
520	2018-07-09 12:30:19.360966-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Investigative Skills"}}, {"added": {"name": "type ability", "object": "Quick Recovery"}}, {"added": {"name": "type ability", "object": "Range Increase"}}, {"added": {"name": "type ability", "object": "Skill With Defense"}}, {"added": {"name": "type ability", "object": "Stand Watch"}}, {"added": {"name": "type ability", "object": "Travel Skills"}}, {"added": {"name": "type ability", "object": "Wreck"}}]	8	1
521	2018-07-09 21:11:09.556023-05	1	Cypher System Core	1	[{"added": {}}]	15	1
522	2018-07-09 21:11:59.166023-05	2	Cypher System - Expanded Worlds	1	[{"added": {}}]	15	1
523	2018-07-09 22:27:15.669572-05	3	Healing	1	[{"added": {}}]	16	1
524	2018-07-09 22:38:46.654917-05	1	Fantasy	1	[{"added": {}}]	17	1
525	2018-07-09 22:39:18.943867-05	1	Arrows	2	[{"changed": {"fields": ["genres"]}}]	13	1
526	2018-07-09 22:39:29.639851-05	16	Backback	2	[{"changed": {"fields": ["genres"]}}]	13	1
527	2018-07-09 22:43:49.793357-05	2	Modern	1	[{"added": {}}]	17	1
528	2018-07-09 22:43:57.679772-05	3	Science Fiction	1	[{"added": {}}]	17	1
529	2018-07-09 22:44:02.065356-05	4	Horror	1	[{"added": {}}]	17	1
530	2018-07-09 22:44:07.341912-05	5	Superheroes	1	[{"added": {}}]	17	1
531	2018-07-09 22:51:45.81115-05	6	Post-Apocalyptic	1	[{"added": {}}]	17	1
532	2018-07-09 22:52:01.605226-05	7	Mythological	1	[{"added": {}}]	17	1
533	2018-07-09 22:52:12.894027-05	8	Fairy Tale	1	[{"added": {}}]	17	1
534	2018-07-09 22:52:26.145739-05	9	Childhood Adventure	1	[{"added": {}}]	17	1
535	2018-07-09 22:52:55.474352-05	10	Historical	1	[{"added": {}}]	17	1
536	2018-07-09 22:53:07.233863-05	11	Crime and Espionage	1	[{"added": {}}]	17	1
537	2018-07-09 22:53:16.584645-05	12	Hard Science Fiction	1	[{"added": {}}]	17	1
538	2018-07-09 22:55:48.898083-05	4	Astronomy	1	[{"added": {}}]	16	1
539	2018-07-09 22:55:59.485573-05	5	Balancing	1	[{"added": {}}]	16	1
540	2018-07-09 22:56:05.271879-05	6	Biology	1	[{"added": {}}]	16	1
541	2018-07-09 22:56:14.123355-05	7	Botany	1	[{"added": {}}]	16	1
542	2018-07-09 22:56:43.73729-05	8	Carrying	1	[{"added": {}}]	16	1
543	2018-07-09 22:56:53.435428-05	9	Climbing	1	[{"added": {}}]	16	1
544	2018-07-09 22:56:58.920251-05	10	Computers	1	[{"added": {}}]	16	1
545	2018-07-09 22:57:04.148688-05	11	Deceiving	1	[{"added": {}}]	16	1
546	2018-07-09 22:57:12.305761-05	12	Disguise	1	[{"added": {}}]	16	1
547	2018-07-09 22:57:29.25314-05	13	Escaping	1	[{"added": {}}]	16	1
548	2018-07-09 23:00:40.825606-05	14	Geography	1	[{"added": {}}]	16	1
549	2018-07-09 23:00:50.074852-05	15	Geology	1	[{"added": {}}]	16	1
550	2018-07-09 23:00:57.232297-05	16	History	1	[{"added": {}}]	16	1
551	2018-07-09 23:01:04.400638-05	17	Identifying	1	[{"added": {}}]	16	1
552	2018-07-09 23:01:10.219484-05	18	Initiative	1	[{"added": {}}]	16	1
553	2018-07-09 23:01:18.564574-05	19	Intimidation	1	[{"added": {}}]	16	1
554	2018-07-09 23:01:29.772687-05	20	Jumping	1	[{"added": {}}]	16	1
555	2018-07-09 23:01:41.662471-05	21	Leatherworking	1	[{"added": {}}]	16	1
556	2018-07-09 23:01:53.975335-05	22	Lockpicking	1	[{"added": {}}]	16	1
557	2018-07-09 23:02:00.892164-05	23	Machinery	1	[{"added": {}}]	16	1
558	2018-07-09 23:02:06.917577-05	24	Metalworking	1	[{"added": {}}]	16	1
559	2018-07-09 23:02:13.283566-05	25	Perception	1	[{"added": {}}]	16	1
560	2018-07-09 23:02:18.749022-05	26	Persuasion	1	[{"added": {}}]	16	1
561	2018-07-09 23:02:27.289668-05	27	Philosophy	1	[{"added": {}}]	16	1
562	2018-07-09 23:02:33.221832-05	28	Physics	1	[{"added": {}}]	16	1
563	2018-07-09 23:02:39.125994-05	29	Pickpocketing	1	[{"added": {}}]	16	1
564	2018-07-09 23:02:44.995924-05	30	Piloting	1	[{"added": {}}]	16	1
565	2018-07-09 23:02:50.074731-05	31	Repairing	1	[{"added": {}}]	16	1
566	2018-07-09 23:02:54.116507-05	32	Riding	1	[{"added": {}}]	16	1
567	2018-07-09 23:02:58.269032-05	33	Smashing	1	[{"added": {}}]	16	1
568	2018-07-09 23:03:02.591642-05	34	Sneaking	1	[{"added": {}}]	16	1
569	2018-07-09 23:03:08.310026-05	35	Stealth	1	[{"added": {}}]	16	1
570	2018-07-09 23:03:12.293019-05	36	Swimming	1	[{"added": {}}]	16	1
571	2018-07-09 23:03:18.159601-05	37	Vehicle driving	1	[{"added": {}}]	16	1
572	2018-07-09 23:03:22.420272-05	38	Woodworking	1	[{"added": {}}]	16	1
573	2018-07-10 22:42:48.41763-05	132	Controlled Fall	1	[{"added": {}}]	10	1
574	2018-07-10 22:42:54.243293-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Controlled Fall"}}]	8	1
575	2018-07-10 23:23:16.490255-05	2	Cypher System - Expanded Worlds	2	[{"changed": {"fields": ["enabled"]}}]	15	1
576	2018-07-10 23:23:20.953692-05	2	Cypher System - Expanded Worlds	2	[{"changed": {"fields": ["enabled"]}}]	15	1
577	2018-07-10 23:23:29.660952-05	2	Cypher System - Expanded Worlds	2	[]	15	1
578	2018-07-10 23:58:04.057406-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Experienced With Armor"}}]	8	1
579	2018-07-11 00:01:25.001835-05	133	Ignore the Pain	1	[{"added": {}}]	10	1
580	2018-07-11 00:01:48.232297-05	134	Resilience	1	[{"added": {}}]	10	1
581	2018-07-11 00:02:12.190404-05	135	Run and Fight	1	[{"added": {}}]	10	1
582	2018-07-11 00:02:38.889318-05	136	Seize Opportunity	1	[{"added": {}}]	10	1
583	2018-07-11 00:03:24.506305-05	137	Stone Breaker	1	[{"added": {}}]	10	1
584	2018-07-11 00:03:45.782483-05	138	Think Your Way Out	1	[{"added": {}}]	10	1
585	2018-07-11 00:04:06.076031-05	139	Wrest From Chance	1	[{"added": {}}]	10	1
586	2018-07-11 00:04:11.545186-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Experienced With Armor"}}, {"added": {"name": "type ability", "object": "Expert Cypher Use"}}, {"added": {"name": "type ability", "object": "Ignore the Pain"}}, {"added": {"name": "type ability", "object": "Resilience"}}, {"added": {"name": "type ability", "object": "Run and Fight"}}, {"added": {"name": "type ability", "object": "Seize Opportunity"}}, {"added": {"name": "type ability", "object": "Skill With Attacks"}}, {"added": {"name": "type ability", "object": "Stone Breaker"}}, {"added": {"name": "type ability", "object": "Think Your Way Out"}}, {"added": {"name": "type ability", "object": "Wrest From Chance"}}]	8	1
587	2018-07-11 00:31:41.898163-05	140	Expert	1	[{"added": {}}]	10	1
588	2018-07-11 00:32:34.604382-05	141	Increased Effects	1	[{"added": {}}]	10	1
589	2018-07-11 00:33:10.931522-05	142	Read the Signs	1	[{"added": {}}]	10	1
590	2018-07-11 00:33:42.218155-05	143	Runner	1	[{"added": {}}]	10	1
591	2018-07-11 00:33:57.468755-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Capable Warrior"}}, {"added": {"name": "type ability", "object": "Expert"}}, {"added": {"name": "type ability", "object": "Increased Effects"}}, {"added": {"name": "type ability", "object": "Read the Signs"}}, {"added": {"name": "type ability", "object": "Runner"}}, {"added": {"name": "type ability", "object": "Tough As Nails"}}]	8	1
592	2018-07-11 00:50:32.91902-05	144	Physically Gifted	1	[{"added": {}}]	10	1
593	2018-07-11 00:51:21.498459-05	145	Take Command	1	[{"added": {}}]	10	1
594	2018-07-11 00:51:54.107322-05	146	Vigilant	1	[{"added": {}}]	10	1
595	2018-07-11 00:52:00.979033-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Adroit Cypher Use"}}, {"added": {"name": "type ability", "object": "Jump Attack"}}, {"added": {"name": "type ability", "object": "Mastery With Defense"}}, {"added": {"name": "type ability", "object": "Parry"}}, {"added": {"name": "type ability", "object": "Physically Gifted"}}, {"added": {"name": "type ability", "object": "Take Command"}}, {"added": {"name": "type ability", "object": "Vigilant"}}]	8	1
596	2018-07-11 01:01:54.998565-05	147	Again and Again	1	[{"added": {}}]	10	1
597	2018-07-11 01:02:55.919836-05	148	Wild Vitality	1	[{"added": {}}]	10	1
598	2018-07-11 01:03:02.764981-05	3	Explorer	2	[{"added": {"name": "type ability", "object": "Again and Again"}}, {"added": {"name": "type ability", "object": "Greater Skill With Attacks"}}, {"added": {"name": "type ability", "object": "Mastery With Armor"}}, {"added": {"name": "type ability", "object": "Spin Attack"}}, {"added": {"name": "type ability", "object": "Wild Vitality"}}]	8	1
599	2018-07-11 03:33:02.149689-05	1	Warrior	2	[{"changed": {"fields": ["description"]}}]	8	1
600	2018-07-14 17:54:44.016486-05	149	Aggression	1	[{"added": {}}]	10	1
601	2018-07-14 17:55:30.292685-05	150	Encouragement	1	[{"added": {}}]	10	1
602	2018-07-14 17:56:06.811037-05	151	Enthrall	1	[{"added": {}}]	10	1
603	2018-07-14 17:57:02.243959-05	152	Fast Talk	1	[{"added": {}}]	10	1
604	2018-07-14 17:57:06.797918-05	4	Speaker	2	[{"added": {"name": "type ability", "object": "Aggression"}}, {"added": {"name": "type ability", "object": "Encouragement"}}, {"added": {"name": "type ability", "object": "Enthrall"}}, {"added": {"name": "type ability", "object": "Erase Memories"}}, {"added": {"name": "type ability", "object": "Fast Talk"}}]	8	1
605	2018-07-14 17:59:42.872024-05	153	Interaction Skills	1	[{"added": {}}]	10	1
606	2018-07-14 18:00:31.141131-05	154	Practiced With Light and Medium Weapons	1	[{"added": {}}]	10	1
607	2018-07-14 18:01:10.715523-05	155	Spin Identity	1	[{"added": {}}]	10	1
608	2018-07-14 18:01:48.091253-05	156	Terrifying Presence	1	[{"added": {}}]	10	1
609	2018-07-14 18:02:06.613615-05	157	Understanding	1	[{"added": {}}]	10	1
610	2018-07-14 18:02:12.428828-05	4	Speaker	2	[{"added": {"name": "type ability", "object": "Interaction Skills"}}, {"added": {"name": "type ability", "object": "Practiced With Light and Medium Weapons"}}, {"added": {"name": "type ability", "object": "Spin Identity"}}, {"added": {"name": "type ability", "object": "Terrifying Presence"}}, {"added": {"name": "type ability", "object": "Understanding"}}]	8	1
611	2018-07-14 18:04:37.853979-05	158	Babel	1	[{"added": {}}]	10	1
612	2018-07-14 18:05:08.902888-05	159	Impart Ideal	1	[{"added": {}}]	10	1
613	2018-07-14 18:05:57.796399-05	160	Skills	1	[{"added": {}}]	10	1
614	2018-07-14 18:06:44.345803-05	161	Speed Recovery	1	[{"added": {}}]	10	1
615	2018-07-14 18:07:25.977137-05	162	Unexpected Betrayal	1	[{"added": {}}]	10	1
616	2018-07-14 18:07:33.040266-05	4	Speaker	2	[{"added": {"name": "type ability", "object": "Babel"}}, {"added": {"name": "type ability", "object": "Impart Ideal"}}, {"added": {"name": "type ability", "object": "Practiced in Armor"}}, {"added": {"name": "type ability", "object": "Skills"}}, {"added": {"name": "type ability", "object": "Speed Recovery"}}, {"added": {"name": "type ability", "object": "Unexpected Betrayal"}}]	8	1
617	2018-07-14 18:10:03.161584-05	163	Accelerate	1	[{"added": {}}]	10	1
618	2018-07-14 18:10:42.630708-05	164	Blend In	1	[{"added": {}}]	10	1
619	2018-07-14 18:11:10.027823-05	165	Discerning Mind	1	[{"added": {}}]	10	1
620	2018-07-14 18:11:38.186994-05	4	Speaker	2	[{"added": {"name": "type ability", "object": "Accelerate"}}, {"added": {"name": "type ability", "object": "Blend In"}}, {"added": {"name": "type ability", "object": "Discerning Mind"}}, {"added": {"name": "type ability", "object": "Expert Cypher Use"}}]	8	1
621	2018-07-14 18:13:36.137454-05	166	Grand Deception	1	[{"added": {}}]	10	1
622	2018-07-14 18:14:59.246205-05	167	Oratory	1	[{"added": {}}]	10	1
623	2018-07-14 18:15:23.66428-05	168	Telling	1	[{"added": {}}]	10	1
624	2018-07-14 18:15:33.035071-05	4	Speaker	2	[{"added": {"name": "type ability", "object": "Grand Deception"}}, {"added": {"name": "type ability", "object": "Mind Reading"}}, {"added": {"name": "type ability", "object": "Oratory"}}, {"added": {"name": "type ability", "object": "Telling"}}]	8	1
625	2018-07-14 18:20:25.959246-05	169	Anticipate Attack	1	[{"added": {}}]	10	1
626	2018-07-14 18:20:59.216955-05	170	Confounding Banter	1	[{"added": {}}]	10	1
627	2018-07-14 18:21:53.237386-05	4	Speaker	2	[{"added": {"name": "type ability", "object": "Anticipate Attack"}}, {"added": {"name": "type ability", "object": "Confounding Banter"}}, {"added": {"name": "type ability", "object": "Feint"}}]	8	1
628	2018-07-14 18:23:27.302576-05	171	Heightened Skills	1	[{"added": {}}]	10	1
629	2018-07-14 18:24:06.38721-05	172	Psychosis	1	[{"added": {}}]	10	1
630	2018-07-14 18:24:29.539724-05	173	Quick Wits	1	[{"added": {}}]	10	1
631	2018-07-14 18:25:32.89242-05	174	Suggestion	1	[{"added": {}}]	10	1
632	2018-07-14 18:25:43.764989-05	4	Speaker	2	[{"added": {"name": "type ability", "object": "Heightened Skills"}}, {"added": {"name": "type ability", "object": "Psychosis"}}, {"added": {"name": "type ability", "object": "Quick Wits"}}, {"added": {"name": "type ability", "object": "Read the Signs"}}, {"added": {"name": "type ability", "object": "Suggestion"}}]	8	1
633	2018-07-14 19:23:17.511506-05	175	Flee	1	[{"added": {}}]	10	1
634	2018-07-14 19:23:48.048425-05	176	Font of Inspiration	1	[{"added": {}}]	10	1
635	2018-07-14 19:24:48.259443-05	177	Foul Aura	1	[{"added": {}}]	10	1
636	2018-07-14 19:25:28.038933-05	178	Stimulate	1	[{"added": {}}]	10	1
637	2018-07-14 19:26:23.099932-05	179	Battle Management	1	[{"added": {}}]	10	1
638	2018-07-14 19:26:57.47593-05	180	Inspiring Success	1	[{"added": {}}]	10	1
639	2018-07-14 19:27:18.700151-05	4	Speaker	2	[{"added": {"name": "type ability", "object": "Adroit Cypher Use"}}, {"added": {"name": "type ability", "object": "Experienced With Armor"}}, {"added": {"name": "type ability", "object": "Flee"}}, {"added": {"name": "type ability", "object": "Font of Inspiration"}}, {"added": {"name": "type ability", "object": "Foul Aura"}}, {"added": {"name": "type ability", "object": "Skill With Attacks"}}, {"added": {"name": "type ability", "object": "Stimulate"}}, {"added": {"name": "type ability", "object": "Battle Management"}}, {"added": {"name": "type ability", "object": "Inspiring Success"}}]	8	1
640	2018-07-14 19:28:55.346514-05	181	Shatter Mind	1	[{"added": {}}]	10	1
641	2018-07-14 19:31:26.547225-05	182	Word of Command	1	[{"added": {}}]	10	1
642	2018-07-14 19:31:44.017826-05	4	Speaker	2	[{"added": {"name": "type ability", "object": "Shatter Mind"}}, {"added": {"name": "type ability", "object": "True Senses"}}, {"added": {"name": "type ability", "object": "Word of Command"}}]	8	1
643	2018-07-15 00:54:04.523175-05	183	Awakens Dreams	1	[{"added": {}}]	10	1
644	2018-07-15 00:54:36.133589-05	184	Oneirochemy	1	[{"added": {}}]	10	1
645	2018-07-15 00:55:13.32376-05	185	Dream Thief	1	[{"added": {}}]	10	1
646	2018-07-15 00:55:37.290079-05	186	Dream Becomes Reality	1	[{"added": {}}]	10	1
647	2018-07-15 00:56:05.298636-05	187	Consummate Dreamer	1	[{"added": {}}]	10	1
648	2018-07-15 00:56:53.345851-05	188	Daydream	1	[{"added": {}}]	10	1
649	2018-07-15 00:58:15.992616-05	189	Nightmare	1	[{"added": {}}]	10	1
650	2018-07-15 00:59:18.06975-05	190	Chamber of Dreams	1	[{"added": {}}]	10	1
651	2018-07-15 00:59:23.284517-05	3	Awakens Dreams	2	[{"added": {"name": "focus ability", "object": "Awakens Dreams"}}, {"added": {"name": "focus ability", "object": "Oneirochemy"}}, {"added": {"name": "focus ability", "object": "Dream Thief"}}, {"added": {"name": "focus ability", "object": "Dream Becomes Reality"}}, {"added": {"name": "focus ability", "object": "Consummate Dreamer"}}, {"added": {"name": "focus ability", "object": "Daydream"}}, {"added": {"name": "focus ability", "object": "Nightmare"}}, {"added": {"name": "focus ability", "object": "Chamber of Dreams"}}]	9	1
652	2018-07-15 01:07:30.104669-05	191	Machine Vulnerabilities	1	[{"added": {}}]	10	1
653	2018-07-15 01:08:01.43444-05	192	Machine Knowledge	1	[{"added": {}}]	10	1
654	2018-07-15 01:08:05.464677-05	4	Battles Robots	2	[{"added": {"name": "focus ability", "object": "Machine Vulnerabilities"}}, {"added": {"name": "focus ability", "object": "Machine Knowledge"}}]	9	1
655	2018-07-15 01:10:33.4501-05	193	Defense Against Robots	1	[{"added": {}}]	10	1
656	2018-07-15 01:10:58.34824-05	194	Machine Hunting	1	[{"added": {}}]	10	1
657	2018-07-15 01:11:50.118653-05	195	Disable Mechanisms	1	[{"added": {}}]	10	1
658	2018-07-15 01:12:11.522234-05	196	Machine Fighter	1	[{"added": {}}]	10	1
659	2018-07-15 01:12:34.394066-05	197	Pierce Metal Hides	1	[{"added": {}}]	10	1
660	2018-07-15 01:13:00.2127-05	198	Drain Power	1	[{"added": {}}]	10	1
661	2018-07-15 01:13:29.950851-05	199	Blind Machine	1	[{"added": {}}]	10	1
662	2018-07-15 01:13:38.102302-05	4	Battles Robots	2	[{"added": {"name": "focus ability", "object": "Defense Against Robots"}}, {"added": {"name": "focus ability", "object": "Machine Hunting"}}, {"added": {"name": "focus ability", "object": "Disable Mechanisms"}}, {"added": {"name": "focus ability", "object": "Machine Fighter"}}, {"added": {"name": "focus ability", "object": "Pierce Metal Hides"}}, {"added": {"name": "focus ability", "object": "Drain Power"}}, {"added": {"name": "focus ability", "object": "Blind Machine"}}]	9	1
663	2018-07-15 01:15:38.488626-05	4	Battles Robots	2	[]	9	1
664	2018-07-15 01:17:48.459818-05	200	Shroud of Flame	1	[{"added": {}}]	10	1
665	2018-07-15 01:17:54.809105-05	5	Bears a Halo of Fire	2	[{"changed": {"fields": ["name"]}}, {"added": {"name": "focus ability", "object": "Shroud of Flame"}}]	9	1
666	2018-07-15 01:18:22.504665-05	200	Shroud of Flame	2	[{"changed": {"fields": ["description"]}}]	10	1
667	2018-07-15 01:21:48.076299-05	201	Hurl Flame	1	[{"added": {}}]	10	1
668	2018-07-15 01:22:17.464866-05	202	Fiery Hand of Doom	1	[{"added": {}}]	10	1
669	2018-07-15 01:22:54.149187-05	203	Flameblade	1	[{"added": {}}]	10	1
670	2018-07-15 01:23:22.794616-05	204	Fire Tendrils	1	[{"added": {}}]	10	1
671	2018-07-15 01:23:51.843119-05	205	Fire Servant	1	[{"added": {}}]	10	1
672	2018-07-15 01:23:58.761908-05	5	Bears a Halo of Fire	2	[{"added": {"name": "focus ability", "object": "Hurl Flame"}}, {"added": {"name": "focus ability", "object": "Fiery Hand of Doom"}}, {"added": {"name": "focus ability", "object": "Flameblade"}}, {"added": {"name": "focus ability", "object": "Fire Tendrils"}}, {"added": {"name": "focus ability", "object": "Fire Servant"}}]	9	1
673	2018-07-15 01:25:13.23237-05	78	Dwarf	3		9	1
674	2018-07-15 01:25:13.303744-05	79	Elf	3		9	1
675	2018-07-15 01:25:13.383353-05	81	Quintar	3		9	1
676	2018-07-15 01:27:31.819519-05	206	Enlightened	1	[{"added": {}}]	10	1
677	2018-07-15 01:27:56.551047-05	207	Illuminating Touch	1	[{"added": {}}]	10	1
678	2018-07-15 01:28:19.313937-05	208	Dazzling Radiance	1	[{"added": {}}]	10	1
679	2018-07-15 01:28:51.90637-05	209	Burning Light	1	[{"added": {}}]	10	1
680	2018-07-15 01:29:17.291366-05	210	Sunlight	1	[{"added": {}}]	10	1
681	2018-07-15 01:30:08.778164-05	211	Disappear	1	[{"added": {}}]	10	1
682	2018-07-15 01:30:40.867325-05	212	Living Light	1	[{"added": {}}]	10	1
683	2018-07-15 01:30:47.360496-05	6	Blazes With Radiance	2	[{"added": {"name": "focus ability", "object": "Enlightened"}}, {"added": {"name": "focus ability", "object": "Illuminating Touch"}}, {"added": {"name": "focus ability", "object": "Dazzling Radiance"}}, {"added": {"name": "focus ability", "object": "Burning Light"}}, {"added": {"name": "focus ability", "object": "Sunlight"}}, {"added": {"name": "focus ability", "object": "Disappear"}}, {"added": {"name": "focus ability", "object": "Living Light"}}]	9	1
684	2018-07-15 01:36:14.54793-05	213	Robot Assistant	1	[{"added": {}}]	10	1
685	2018-07-15 01:36:34.437718-05	214	Robot Builder	1	[{"added": {}}]	10	1
686	2018-07-15 01:37:00.183595-05	215	Robot Control	1	[{"added": {}}]	10	1
687	2018-07-15 01:37:39.522887-05	216	Robot Improvement	1	[{"added": {}}]	10	1
688	2018-07-15 01:38:36.659692-05	217	Robot Upgrade	1	[{"added": {}}]	10	1
689	2018-07-15 01:39:27.379119-05	218	Robot Fleet	1	[{"added": {}}]	10	1
690	2018-07-15 01:40:07.318892-05	219	Robot Evolution	1	[{"added": {}}]	10	1
849	2018-07-16 13:45:20.958885-05	350	Athletic Conditioning	1	[{"added": {}}]	10	1
852	2018-07-16 13:48:04.896113-05	353	Communication (Underwater)	1	[{"added": {}}]	10	1
691	2018-07-15 01:40:14.490807-05	7	Builds Robots	2	[{"added": {"name": "focus ability", "object": "Robot Assistant"}}, {"added": {"name": "focus ability", "object": "Robot Builder"}}, {"added": {"name": "focus ability", "object": "Robot Control"}}, {"added": {"name": "focus ability", "object": "Robot Improvement"}}, {"added": {"name": "focus ability", "object": "Robot Upgrade"}}, {"added": {"name": "focus ability", "object": "Robot Fleet"}}, {"added": {"name": "focus ability", "object": "Robot Evolution"}}]	9	1
692	2018-07-15 01:40:40.821789-05	8	Calculates the Incalculable	2	[{"changed": {"fields": ["name"]}}]	9	1
693	2018-07-15 02:19:28.803753-05	220	Predictive Equation	1	[{"added": {}}]	10	1
694	2018-07-15 02:19:57.531818-05	221	Higher Mathematics	1	[{"added": {}}]	10	1
695	2018-07-15 02:20:25.936289-05	8	Calculates the Incalculable	2	[{"added": {"name": "focus ability", "object": "Higher Mathematics"}}]	9	1
696	2018-07-15 02:20:38.13024-05	8	Calculates the Incalculable	2	[{"added": {"name": "focus ability", "object": "Predictive Equation"}}]	9	1
697	2018-07-15 02:21:07.679164-05	222	Predictive Model	1	[{"added": {}}]	10	1
698	2018-07-15 02:21:41.252994-05	223	Subconscious Defense	1	[{"added": {}}]	10	1
699	2018-07-15 02:22:16.831124-05	224	Cognizant Offense	1	[{"added": {}}]	10	1
700	2018-07-15 02:22:50.230225-05	225	Genius	1	[{"added": {}}]	10	1
701	2018-07-15 02:23:16.07682-05	226	One Step Ahead of Everyone	1	[{"added": {}}]	10	1
702	2018-07-15 02:23:21.085781-05	8	Calculates the Incalculable	2	[{"added": {"name": "focus ability", "object": "Predictive Model"}}, {"added": {"name": "focus ability", "object": "Subconscious Defense"}}, {"added": {"name": "focus ability", "object": "Cognizant Offense"}}, {"added": {"name": "focus ability", "object": "Genius"}}, {"added": {"name": "focus ability", "object": "One Step Ahead of Everyone"}}]	9	1
703	2018-07-15 02:24:38.461331-05	227	Archer	1	[{"added": {}}]	10	1
704	2018-07-15 02:24:57.597563-05	228	Fletcher	1	[{"added": {}}]	10	1
705	2018-07-15 02:25:44.382379-05	229	Covering Fire	1	[{"added": {}}]	10	1
706	2018-07-15 02:26:06.574366-05	230	Bowyer	1	[{"added": {}}]	10	1
707	2018-07-15 02:26:29.909921-05	231	Trained Archer	1	[{"added": {}}]	10	1
708	2018-07-15 02:26:56.355468-05	232	Master Fletcher	1	[{"added": {}}]	10	1
709	2018-07-15 02:27:31.560773-05	233	Quick Shot	1	[{"added": {}}]	10	1
710	2018-07-15 02:27:55.99901-05	234	Master Bowyer	1	[{"added": {}}]	10	1
711	2018-07-15 02:28:35.612631-05	235	Phenomenal Archer	1	[{"added": {}}]	10	1
712	2018-07-15 02:29:17.771912-05	236	Powerful Shot	1	[{"added": {}}]	10	1
713	2018-07-15 02:29:27.069927-05	9	Carries A Quiver	2	[{"added": {"name": "focus ability", "object": "Archer"}}, {"added": {"name": "focus ability", "object": "Fletcher"}}, {"added": {"name": "focus ability", "object": "Covering Fire"}}, {"added": {"name": "focus ability", "object": "Bowyer"}}, {"added": {"name": "focus ability", "object": "Trained Archer"}}, {"added": {"name": "focus ability", "object": "Master Fletcher"}}, {"added": {"name": "focus ability", "object": "Quick Shot"}}, {"added": {"name": "focus ability", "object": "Master Bowyer"}}, {"added": {"name": "focus ability", "object": "Phenomenal Archer"}}, {"added": {"name": "focus ability", "object": "Powerful Shot"}}]	9	1
714	2018-07-15 02:30:06.509485-05	9	Carries a Quiver	2	[{"changed": {"fields": ["name"]}}]	9	1
715	2018-07-15 02:57:14.867512-05	237	Spellbook 1	1	[{"added": {}}]	10	1
716	2018-07-15 02:58:05.935518-05	238	Spellbook 2	1	[{"added": {}}]	10	1
717	2018-07-15 02:59:36.772969-05	239	Spellbook 3	1	[{"added": {}}]	10	1
718	2018-07-15 03:00:20.624419-05	240	Spellbook 4	1	[{"added": {}}]	10	1
719	2018-07-15 03:00:56.287921-05	241	Spellbook 5	1	[{"added": {}}]	10	1
720	2018-07-15 03:01:31.459851-05	242	Spellbook 6	1	[{"added": {}}]	10	1
721	2018-07-15 03:01:36.88361-05	10	Casts Spells	2	[{"added": {"name": "focus ability", "object": "Spellbook 1"}}, {"added": {"name": "focus ability", "object": "Spellbook 2"}}, {"added": {"name": "focus ability", "object": "Spellbook 3"}}, {"added": {"name": "focus ability", "object": "Spellbook 4"}}, {"added": {"name": "focus ability", "object": "Spellbook 5"}}, {"added": {"name": "focus ability", "object": "Spellbook 6"}}]	9	1
722	2018-07-15 03:02:51.174625-05	243	Divine Knowledge	1	[{"added": {}}]	10	1
723	2018-07-15 03:04:32.283465-05	244	Blessing of the Gods	1	[{"added": {}}]	10	1
724	2018-07-15 03:04:55.970847-05	245	Divine Fortitude	1	[{"added": {}}]	10	1
725	2018-07-15 03:05:22.664855-05	246	Divine Radiance	1	[{"added": {}}]	10	1
726	2018-07-15 03:05:51.489874-05	247	Overawe	1	[{"added": {}}]	10	1
727	2018-07-15 03:06:57.528764-05	248	Divine Intervention	1	[{"added": {}}]	10	1
728	2018-07-15 03:07:46.673075-05	249	Divine Symbol	1	[{"added": {}}]	10	1
729	2018-07-15 03:07:52.901214-05	11	Channels Divine Blessings	2	[{"added": {"name": "focus ability", "object": "Divine Knowledge"}}, {"added": {"name": "focus ability", "object": "Blessing of the Gods"}}, {"added": {"name": "focus ability", "object": "Divine Fortitude"}}, {"added": {"name": "focus ability", "object": "Divine Radiance"}}, {"added": {"name": "focus ability", "object": "Overawe"}}, {"added": {"name": "focus ability", "object": "Divine Intervention"}}, {"added": {"name": "focus ability", "object": "Divine Symbol"}}]	9	1
730	2018-07-15 03:09:10.912141-05	11	Channels Divine Blessings	2	[{"changed": {"fields": ["other_details"]}}]	9	1
731	2018-07-15 03:25:27.113831-05	250	Telepathic	1	[{"added": {}}]	10	1
732	2018-07-15 03:26:53.34512-05	251	Psychic Burst	1	[{"added": {}}]	10	1
733	2018-07-15 03:27:22.921935-05	252	Use Senses of Others	1	[{"added": {}}]	10	1
734	2018-07-15 03:28:26.864141-05	253	Telepathic Network	1	[{"added": {}}]	10	1
735	2018-07-15 03:28:33.248697-05	12	Commands Mental Powers	2	[{"added": {"name": "focus ability", "object": "Telepathic"}}, {"added": {"name": "focus ability", "object": "Mind Reading"}}, {"added": {"name": "focus ability", "object": "Psychic Burst"}}, {"added": {"name": "focus ability", "object": "Use Senses of Others"}}, {"added": {"name": "focus ability", "object": "Mind Control"}}, {"added": {"name": "focus ability", "object": "Telepathic Network"}}]	9	1
736	2018-07-15 03:33:38.486931-05	254	Lab Analysis	1	[{"added": {}}]	10	1
737	2018-07-15 03:34:00.591895-05	255	Scientist	1	[{"added": {}}]	10	1
738	2018-07-15 03:34:27.286861-05	256	Modify Device	1	[{"added": {}}]	10	1
739	2018-07-15 03:34:56.068755-05	257	Better Living Through Chemistry	1	[{"added": {}}]	10	1
740	2018-07-15 03:35:17.386043-05	258	Extensive Training	1	[{"added": {}}]	10	1
741	2018-07-15 03:35:44.233381-05	259	Just a Bit Mad	1	[{"added": {}}]	10	1
742	2018-07-15 03:36:28.933334-05	260	Weird Science Breakthrough	1	[{"added": {}}]	10	1
743	2018-07-15 03:37:25.710411-05	261	Incredible Feat of Science	1	[{"added": {}}]	10	1
744	2018-07-15 03:38:03.579799-05	262	Improved Weird Science Breakthrough	1	[{"added": {}}]	10	1
850	2018-07-16 13:45:47.662494-05	351	Nimble Swimmer	1	[{"added": {}}]	10	1
853	2018-07-16 13:48:33.890355-05	354	Elusive	1	[{"added": {}}]	10	1
745	2018-07-15 03:38:15.290349-05	13	Conducts Weird Science	2	[{"added": {"name": "focus ability", "object": "Lab Analysis"}}, {"added": {"name": "focus ability", "object": "Scientist"}}, {"added": {"name": "focus ability", "object": "Modify Device"}}, {"added": {"name": "focus ability", "object": "Better Living Through Chemistry"}}, {"added": {"name": "focus ability", "object": "Extensive Training"}}, {"added": {"name": "focus ability", "object": "Just a Bit Mad"}}, {"added": {"name": "focus ability", "object": "Weird Science Breakthrough"}}, {"added": {"name": "focus ability", "object": "Incredible Feat of Science"}}, {"added": {"name": "focus ability", "object": "Improved Weird Science Breakthrough"}}]	9	1
746	2018-07-15 14:38:46.458782-05	263	Speaker for the Dead	1	[{"added": {}}]	10	1
747	2018-07-15 14:39:23.420196-05	264	Necromancy	1	[{"added": {}}]	10	1
748	2018-07-15 14:39:52.5131-05	265	Reading the Room	1	[{"added": {}}]	10	1
749	2018-07-15 14:40:26.366772-05	266	Greater Necromancy	1	[{"added": {}}]	10	1
750	2018-07-15 14:40:55.071368-05	267	Death Gaze	1	[{"added": {}}]	10	1
751	2018-07-15 14:41:38.389283-05	268	True Necromancy	1	[{"added": {}}]	10	1
752	2018-07-15 14:41:44.118921-05	14	Consorts With the Dead	2	[{"changed": {"fields": ["name"]}}, {"added": {"name": "focus ability", "object": "Speaker for the Dead"}}, {"added": {"name": "focus ability", "object": "Necromancy"}}, {"added": {"name": "focus ability", "object": "Reading the Room"}}, {"added": {"name": "focus ability", "object": "Greater Necromancy"}}, {"added": {"name": "focus ability", "object": "Death Gaze"}}, {"added": {"name": "focus ability", "object": "True Necromancy"}}]	9	1
753	2018-07-15 14:44:27.071524-05	269	Beast Companion	1	[{"added": {}}]	10	1
754	2018-07-15 14:45:01.616238-05	270	Soothe the Savage	1	[{"added": {}}]	10	1
755	2018-07-15 14:45:31.172722-05	271	Communication	1	[{"added": {}}]	10	1
756	2018-07-15 14:46:00.60694-05	272	Mount	1	[{"added": {}}]	10	1
757	2018-07-15 14:46:32.061576-05	273	Beast Eyes	1	[{"added": {}}]	10	1
758	2018-07-15 14:46:58.278381-05	274	Improved Companion	1	[{"added": {}}]	10	1
759	2018-07-15 14:47:26.27566-05	275	Beast Call	1	[{"added": {}}]	10	1
760	2018-07-15 14:47:58.310379-05	276	Control the Savage	1	[{"added": {}}]	10	1
761	2018-07-15 14:48:30.278095-05	277	Improved Companion 2	1	[{"added": {}}]	10	1
762	2018-07-15 14:48:37.551625-05	15	Controls Beasts	2	[{"added": {"name": "focus ability", "object": "Beast Companion"}}, {"added": {"name": "focus ability", "object": "Soothe the Savage"}}, {"added": {"name": "focus ability", "object": "Communication"}}, {"added": {"name": "focus ability", "object": "Mount"}}, {"added": {"name": "focus ability", "object": "Beast Eyes"}}, {"added": {"name": "focus ability", "object": "Improved Companion"}}, {"added": {"name": "focus ability", "object": "Beast Call"}}, {"added": {"name": "focus ability", "object": "Control the Savage"}}, {"added": {"name": "focus ability", "object": "Improved Companion 2"}}]	9	1
763	2018-07-15 14:49:00.572428-05	274	Improved Companion 1	2	[{"changed": {"fields": ["name", "slug"]}}]	10	1
764	2018-07-15 14:50:39.970364-05	278	Lessening Gravity’s Pull	1	[{"added": {}}]	10	1
765	2018-07-15 14:51:03.085292-05	279	Gravity Cleave	1	[{"added": {}}]	10	1
766	2018-07-15 14:51:27.192668-05	280	Field of Gravity	1	[{"added": {}}]	10	1
767	2018-07-15 14:51:50.414366-05	281	Flight	1	[{"added": {}}]	10	1
768	2018-07-15 14:52:29.462283-05	282	Weight of the World	1	[{"added": {}}]	10	1
769	2018-07-15 14:52:37.345805-05	16	Controls Gravity	2	[{"added": {"name": "focus ability", "object": "Hover"}}, {"added": {"name": "focus ability", "object": "Lessening Gravity\\u2019s Pull"}}, {"added": {"name": "focus ability", "object": "Gravity Cleave"}}, {"added": {"name": "focus ability", "object": "Field of Gravity"}}, {"added": {"name": "focus ability", "object": "Flight"}}, {"added": {"name": "focus ability", "object": "Weight of the World"}}]	9	1
770	2018-07-15 17:10:10.848541-05	283	Minor Illusion	1	[{"added": {}}]	10	1
771	2018-07-15 17:10:47.90667-05	284	Disguise	1	[{"added": {}}]	10	1
772	2018-07-15 17:11:17.938517-05	285	Major Illusion	1	[{"added": {}}]	10	1
773	2018-07-15 17:12:18.015788-05	286	Illusory Selves	1	[{"added": {}}]	10	1
774	2018-07-15 17:12:45.37421-05	287	Terrifying Image	1	[{"added": {}}]	10	1
775	2018-07-15 17:13:35.222484-05	288	Grandiose Illusion	1	[{"added": {}}]	10	1
776	2018-07-15 17:13:41.441216-05	17	Crafts Illusions	2	[{"added": {"name": "focus ability", "object": "Minor Illusion"}}, {"added": {"name": "focus ability", "object": "Disguise"}}, {"added": {"name": "focus ability", "object": "Major Illusion"}}, {"added": {"name": "focus ability", "object": "Illusory Selves"}}, {"added": {"name": "focus ability", "object": "Terrifying Image"}}, {"added": {"name": "focus ability", "object": "Grandiose Illusion"}}]	9	1
777	2018-07-15 17:18:29.917288-05	289	Crafter	1	[{"added": {}}]	10	1
778	2018-07-15 17:18:48.437266-05	290	Master Identifier	1	[{"added": {}}]	10	1
779	2018-07-15 17:19:17.488277-05	291	Tinkerer	1	[{"added": {}}]	10	1
780	2018-07-15 17:19:47.999315-05	292	Quick Work	1	[{"added": {}}]	10	1
781	2018-07-15 17:20:09.967921-05	293	Master Crafter	1	[{"added": {}}]	10	1
782	2018-07-15 17:20:30.861825-05	294	Cyphersmith	1	[{"added": {}}]	10	1
783	2018-07-15 17:20:49.292179-05	295	Innovator	1	[{"added": {}}]	10	1
784	2018-07-15 17:21:25.79208-05	296	Inventor	1	[{"added": {}}]	10	1
785	2018-07-15 17:21:39.427685-05	18	Crafts Unique Objects	2	[{"added": {"name": "focus ability", "object": "Crafter"}}, {"added": {"name": "focus ability", "object": "Master Identifier"}}, {"added": {"name": "focus ability", "object": "Tinkerer"}}, {"added": {"name": "focus ability", "object": "Quick Work"}}, {"added": {"name": "focus ability", "object": "Master Crafter"}}, {"added": {"name": "focus ability", "object": "Cyphersmith"}}, {"added": {"name": "focus ability", "object": "Innovator"}}, {"added": {"name": "focus ability", "object": "Inventor"}}]	9	1
786	2018-07-15 17:28:32.407471-05	297	Courageous	1	[{"added": {}}]	10	1
787	2018-07-15 17:28:57.975184-05	298	Warding Shield	1	[{"added": {}}]	10	1
788	2018-07-15 17:29:42.830612-05	299	Devoted Defender	1	[{"added": {}}]	10	1
789	2018-07-15 17:30:01.530493-05	300	Astute	1	[{"added": {}}]	10	1
790	2018-07-15 17:30:34.051059-05	301	True Guardian	1	[{"added": {}}]	10	1
791	2018-07-15 17:31:11.218563-05	302	Combat Challenge	1	[{"added": {}}]	10	1
792	2018-07-15 17:31:44.357398-05	303	Willing Sacrifice	1	[{"added": {}}]	10	1
793	2018-07-15 17:32:15.044829-05	304	Drive Back	1	[{"added": {}}]	10	1
794	2018-07-15 17:32:53.578646-05	305	True Defender	1	[{"added": {}}]	10	1
846	2018-07-16 13:39:04.25879-05	26	Explores Deep Waters	2	[{"added": {"name": "focus ability", "object": "Diver"}}, {"added": {"name": "focus ability", "object": "Hold Breath"}}, {"added": {"name": "focus ability", "object": "Trained Swimmer"}}]	9	1
851	2018-07-16 13:46:16.895031-05	352	Swim	1	[{"added": {}}]	10	1
854	2018-07-16 13:48:58.392948-05	355	Deep Water Guide	1	[{"added": {}}]	10	1
855	2018-07-16 13:49:30.150862-05	356	Master of the Deep Waters	1	[{"added": {}}]	10	1
795	2018-07-15 17:33:03.404149-05	19	Defends the Weak	2	[{"changed": {"fields": ["name"]}}, {"added": {"name": "focus ability", "object": "Courageous"}}, {"added": {"name": "focus ability", "object": "Warding Shield"}}, {"added": {"name": "focus ability", "object": "Devoted Defender"}}, {"added": {"name": "focus ability", "object": "Astute"}}, {"added": {"name": "focus ability", "object": "True Guardian"}}, {"added": {"name": "focus ability", "object": "Combat Challenge"}}, {"added": {"name": "focus ability", "object": "Willing Sacrifice"}}, {"added": {"name": "focus ability", "object": "Drive Back"}}, {"added": {"name": "focus ability", "object": "True Defender"}}]	9	1
796	2018-07-15 17:47:56.86097-05	306	Life Lessons	1	[{"added": {}}]	10	1
797	2018-07-15 17:48:56.823234-05	307	Totally Chill	1	[{"added": {}}]	10	1
798	2018-07-15 17:49:27.455272-05	308	Taking Care of Yourself	1	[{"added": {}}]	10	1
799	2018-07-15 17:50:26.523646-05	306	Life Lessons 1	2	[{"changed": {"fields": ["name"]}}]	10	1
800	2018-07-15 17:50:33.990972-05	306	Life Lessons 1	2	[{"changed": {"fields": ["slug"]}}]	10	1
801	2018-07-15 17:50:54.525931-05	309	Life Lessons 2	1	[{"added": {}}]	10	1
802	2018-07-15 17:52:34.787416-05	310	The Best Offense	1	[{"added": {}}]	10	1
803	2018-07-15 17:53:01.120513-05	311	Abiding	1	[{"added": {}}]	10	1
804	2018-07-15 17:53:35.199246-05	312	Drawing on Life’s Experiences	1	[{"added": {}}]	10	1
805	2018-07-15 17:53:43.403051-05	20	Doesn't Do Much	2	[{"added": {"name": "focus ability", "object": "Life Lessons 1"}}, {"added": {"name": "focus ability", "object": "Totally Chill"}}, {"added": {"name": "focus ability", "object": "Taking Care of Yourself"}}, {"added": {"name": "focus ability", "object": "Life Lessons 2"}}, {"added": {"name": "focus ability", "object": "The Best Offense"}}, {"added": {"name": "focus ability", "object": "Abiding"}}, {"added": {"name": "focus ability", "object": "Drawing on Life\\u2019s Experiences"}}]	9	1
806	2018-07-15 22:00:21.788689-05	313	Move Metal	1	[{"added": {}}]	10	1
807	2018-07-15 22:00:41.751925-05	314	Repel Metal	1	[{"added": {}}]	10	1
808	2018-07-15 22:02:31.29901-05	315	Destroy Metal	1	[{"added": {}}]	10	1
809	2018-07-15 22:03:00.438467-05	316	Magnetic Field	1	[{"added": {}}]	10	1
810	2018-07-15 22:03:28.850612-05	317	Command Metal	1	[{"added": {}}]	10	1
811	2018-07-15 22:04:05.338265-05	318	Diamagnetism	1	[{"added": {}}]	10	1
812	2018-07-15 22:04:14.487127-05	21	Employs Magnetism	2	[{"added": {"name": "focus ability", "object": "Move Metal"}}, {"added": {"name": "focus ability", "object": "Repel Metal"}}, {"added": {"name": "focus ability", "object": "Destroy Metal"}}, {"added": {"name": "focus ability", "object": "Magnetic Field"}}, {"added": {"name": "focus ability", "object": "Command Metal"}}, {"added": {"name": "focus ability", "object": "Diamagnetism"}}]	9	1
813	2018-07-16 00:24:42.808552-05	319	Levity	1	[{"added": {}}]	10	1
814	2018-07-16 00:26:21.222495-05	320	Inspiration	1	[{"added": {}}]	10	1
815	2018-07-16 00:26:48.77069-05	321	Knowledge	1	[{"added": {}}]	10	1
816	2018-07-16 00:27:17.857898-05	322	Calm	1	[{"added": {}}]	10	1
817	2018-07-16 00:27:45.134655-05	323	Able Assistance	1	[{"added": {}}]	10	1
818	2018-07-16 00:28:10.597009-05	324	Master Entertainer	1	[{"added": {}}]	10	1
819	2018-07-16 00:28:17.112178-05	22	Entertains	2	[{"added": {"name": "focus ability", "object": "Levity"}}, {"added": {"name": "focus ability", "object": "Inspiration"}}, {"added": {"name": "focus ability", "object": "Knowledge"}}, {"added": {"name": "focus ability", "object": "Calm"}}, {"added": {"name": "focus ability", "object": "Able Assistance"}}, {"added": {"name": "focus ability", "object": "Master Entertainer"}}]	9	1
820	2018-07-16 00:32:54.075959-05	325	Duplicate	1	[{"added": {}}]	10	1
821	2018-07-16 00:33:21.663344-05	326	Share Senses	1	[{"added": {}}]	10	1
822	2018-07-16 00:33:50.233093-05	327	Superior Duplicate	1	[{"added": {}}]	10	1
823	2018-07-16 00:34:26.86001-05	328	Damage Transference	1	[{"added": {}}]	10	1
824	2018-07-16 00:34:54.422689-05	329	Coordinated Effort	1	[{"added": {}}]	10	1
825	2018-07-16 00:35:27.426608-05	330	Resilient Duplicate	1	[{"added": {}}]	10	1
826	2018-07-16 00:35:57.023785-05	331	Multiplicity	1	[{"added": {}}]	10	1
827	2018-07-16 00:36:02.955369-05	23	Exists In Two Places At Once	2	[{"added": {"name": "focus ability", "object": "Duplicate"}}, {"added": {"name": "focus ability", "object": "Share Senses"}}, {"added": {"name": "focus ability", "object": "Superior Duplicate"}}, {"added": {"name": "focus ability", "object": "Damage Transference"}}, {"added": {"name": "focus ability", "object": "Coordinated Effort"}}, {"added": {"name": "focus ability", "object": "Resilient Duplicate"}}, {"added": {"name": "focus ability", "object": "Multiplicity"}}]	9	1
828	2018-07-16 01:39:47.743483-05	332	Walk Through Walls	1	[{"added": {}}]	10	1
829	2018-07-16 01:40:14.455504-05	333	Defensive Phasing	1	[{"added": {}}]	10	1
830	2018-07-16 01:40:39.404365-05	334	Phased Attack	1	[{"added": {}}]	10	1
831	2018-07-16 01:41:05.047232-05	335	Ghost	1	[{"added": {}}]	10	1
832	2018-07-16 01:41:38.655206-05	336	Untouchable	1	[{"added": {}}]	10	1
833	2018-07-16 01:42:09.259911-05	337	Enhanced Phased Attack	1	[{"added": {}}]	10	1
834	2018-07-16 01:42:15.238033-05	24	Exists Partially Out Of Phase	2	[{"added": {"name": "focus ability", "object": "Walk Through Walls"}}, {"added": {"name": "focus ability", "object": "Defensive Phasing"}}, {"added": {"name": "focus ability", "object": "Phased Attack"}}, {"added": {"name": "focus ability", "object": "Ghost"}}, {"added": {"name": "focus ability", "object": "Untouchable"}}, {"added": {"name": "focus ability", "object": "Enhanced Phased Attack"}}]	9	1
835	2018-07-16 01:55:01.496967-05	338	Trained Explorer	1	[{"added": {}}]	10	1
836	2018-07-16 01:56:10.517006-05	339	Trained Infiltrator	1	[{"added": {}}]	10	1
837	2018-07-16 01:56:33.38297-05	340	Eyes Adjusted	1	[{"added": {}}]	10	1
838	2018-07-16 01:57:25.07052-05	341	Slippery Customer	1	[{"added": {}}]	10	1
839	2018-07-16 01:57:53.800217-05	342	Resilient	1	[{"added": {}}]	10	1
840	2018-07-16 01:58:32.079613-05	343	Dark Explorer	1	[{"added": {}}]	10	1
841	2018-07-16 01:59:01.633147-05	344	Blinding Attack	1	[{"added": {}}]	10	1
842	2018-07-16 01:59:07.44566-05	25	Explores Dark Places	2	[{"added": {"name": "focus ability", "object": "Trained Explorer"}}, {"added": {"name": "focus ability", "object": "Trained Infiltrator"}}, {"added": {"name": "focus ability", "object": "Eyes Adjusted"}}, {"added": {"name": "focus ability", "object": "Slippery Customer"}}, {"added": {"name": "focus ability", "object": "Resilient"}}, {"added": {"name": "focus ability", "object": "Dark Explorer"}}, {"added": {"name": "focus ability", "object": "Blinding Attack"}}]	9	1
843	2018-07-16 02:19:03.710666-05	345	Diver	1	[{"added": {}}]	10	1
844	2018-07-16 02:19:25.447308-05	346	Hold Breath	1	[{"added": {}}]	10	1
845	2018-07-16 02:20:47.543529-05	347	Trained Swimmer	1	[{"added": {}}]	10	1
847	2018-07-16 13:44:26.89029-05	348	Resist Underwater Hazards	1	[{"added": {}}]	10	1
848	2018-07-16 13:44:57.299654-05	349	Aquatic Combat	1	[{"added": {}}]	10	1
856	2018-07-16 13:49:49.457406-05	357	Water Adaptation	1	[{"added": {}}]	10	1
857	2018-07-16 13:49:56.349346-05	26	Explores Deep Waters	2	[{"added": {"name": "focus ability", "object": "Eyes Adjusted"}}, {"added": {"name": "focus ability", "object": "Resist Underwater Hazards"}}, {"added": {"name": "focus ability", "object": "Aquatic Combat"}}, {"added": {"name": "focus ability", "object": "Athletic Conditioning"}}, {"added": {"name": "focus ability", "object": "Nimble Swimmer"}}, {"added": {"name": "focus ability", "object": "Swim"}}, {"added": {"name": "focus ability", "object": "Communication (Underwater)"}}, {"added": {"name": "focus ability", "object": "Elusive"}}, {"added": {"name": "focus ability", "object": "Deep Water Guide"}}, {"added": {"name": "focus ability", "object": "Master of the Deep Waters"}}, {"added": {"name": "focus ability", "object": "Water Adaptation"}}]	9	1
858	2018-07-16 17:16:03.358541-05	358	Taking Advantage	1	[{"added": {}}]	10	1
859	2018-07-16 17:16:18.649198-05	359	Liar	1	[{"added": {}}]	10	1
860	2018-07-16 17:16:39.13145-05	360	Eye Gouge	1	[{"added": {}}]	10	1
861	2018-07-16 17:17:05.979526-05	361	Spot Weakness	1	[{"added": {}}]	10	1
862	2018-07-16 17:18:03.988953-05	362	Betrayal	1	[{"added": {}}]	10	1
863	2018-07-16 17:19:05.38658-05	363	Mind Games	1	[{"added": {}}]	10	1
864	2018-07-16 17:19:43.190615-05	364	Tooth and Nail	1	[{"added": {}}]	10	1
865	2018-07-16 17:20:22.289064-05	365	Using the Environment	1	[{"added": {}}]	10	1
866	2018-07-16 17:20:50.869679-05	366	Twisting the Knife	1	[{"added": {}}]	10	1
867	2018-07-16 17:20:57.338862-05	27	Fights Dirty	2	[{"added": {"name": "focus ability", "object": "Taking Advantage"}}, {"added": {"name": "focus ability", "object": "Liar"}}, {"added": {"name": "focus ability", "object": "Eye Gouge"}}, {"added": {"name": "focus ability", "object": "Spot Weakness"}}, {"added": {"name": "focus ability", "object": "Betrayal"}}, {"added": {"name": "focus ability", "object": "Mind Games"}}, {"added": {"name": "focus ability", "object": "Tooth and Nail"}}, {"added": {"name": "focus ability", "object": "Using the Environment"}}, {"added": {"name": "focus ability", "object": "Twisting the Knife"}}]	9	1
868	2018-07-16 22:52:03.359861-05	1	michael	2	[{"changed": {"fields": ["username", "first_name", "last_name"]}}]	4	1
869	2018-07-16 22:52:44.082504-05	1	michael	2	[{"changed": {"fields": ["password"]}}]	4	1
870	2018-07-21 01:27:38.987021-05	3	Other	1	[{"added": {}}]	15	1
871	2018-07-21 01:27:53.695431-05	13	Any	1	[{"added": {}}]	17	1
872	2018-07-21 01:41:38.751602-05	1	Angelic Ward	1	[{"added": {}}]	18	1
873	2018-07-21 03:48:19.676605-05	1	Aldor Donatus	1	[{"added": {}}]	19	1
874	2018-07-21 03:48:33.764726-05	1	Aldor Donatus	2	[]	19	1
875	2018-07-21 03:51:39.659954-05	1	Aldor Donatus	2	[{"changed": {"fields": ["descriptor", "might_pool", "might_current"]}}]	19	1
876	2018-07-21 17:45:04.513827-05	1	Aldor Donatus	2	[{"added": {"name": "character skill", "object": "Deceiving"}}]	19	1
877	2018-07-21 17:45:18.33242-05	1	Aldor Donatus	2	[{"deleted": {"name": "character skill", "object": "Deceiving"}}]	19	1
878	2018-07-21 18:21:30.794039-05	1	Aldor Donatus	2	[{"added": {"name": "character skill", "object": "Identifying"}}, {"added": {"name": "character skill", "object": "Deceiving"}}, {"added": {"name": "character skill", "object": "Leatherworking"}}]	19	1
879	2018-07-21 18:21:46.448921-05	1	Aldor Donatus	2	[{"added": {"name": "character skill", "object": "History"}}]	19	1
880	2018-07-21 18:26:21.044361-05	1	Aldor Donatus	2	[{"deleted": {"name": "character skill", "object": "Deceiving"}}, {"deleted": {"name": "character skill", "object": "History"}}, {"deleted": {"name": "character skill", "object": "Leatherworking"}}, {"deleted": {"name": "character skill", "object": "Identifying"}}]	19	1
881	2018-07-21 19:53:15.14821-05	1	Aldor Donatus	2	[{"added": {"name": "character equipment", "object": "Dwarven breastplate"}}]	19	1
882	2018-07-21 19:54:03.534521-05	1	Aldor Donatus	2	[{"added": {"name": "character skill", "object": "Carrying"}}, {"added": {"name": "character skill", "object": "Climbing"}}, {"added": {"name": "character equipment", "object": "Sword"}}, {"added": {"name": "character equipment", "object": "Rope (Hemp, 50ft.)"}}, {"changed": {"name": "character equipment", "object": "Leather jerkin", "fields": ["equipment"]}}]	19	1
883	2018-07-21 20:29:34.472258-05	1	Aldor Donatus	2	[{"added": {"name": "character cypher", "object": "Adhesion"}}]	19	1
884	2018-07-21 20:30:01.859441-05	1	Aldor Donatus	2	[{"changed": {"name": "character cypher", "object": "Adhesion", "fields": ["level"]}}]	19	1
885	2018-07-21 20:34:38.380381-05	1	Aldor Donatus	2	[{"added": {"name": "character artifact", "object": "Angelic Ward"}}]	19	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	cyphercore	descriptor
8	cyphercore	type
9	cyphercore	focus
10	cyphercore	ability
11	cyphercore	focusability
12	cyphercore	typeability
13	cyphercore	equipment
14	cyphercore	cypher
15	cyphercore	sourcebook
16	cyphercore	skill
17	cyphercore	genre
18	cyphercore	artifact
19	cyphercore	character
20	cyphercore	characterskill
21	cyphercore	characterequipment
22	cyphercore	charactercypher
23	cyphercore	characterartifact
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-07-03 23:32:29.665539-05
2	auth	0001_initial	2018-07-03 23:32:30.105341-05
3	admin	0001_initial	2018-07-03 23:32:30.244012-05
4	admin	0002_logentry_remove_auto_add	2018-07-03 23:32:30.294271-05
5	contenttypes	0002_remove_content_type_name	2018-07-03 23:32:30.443385-05
6	auth	0002_alter_permission_name_max_length	2018-07-03 23:32:30.474761-05
7	auth	0003_alter_user_email_max_length	2018-07-03 23:32:30.521443-05
8	auth	0004_alter_user_username_opts	2018-07-03 23:32:30.564934-05
9	auth	0005_alter_user_last_login_null	2018-07-03 23:32:30.616846-05
10	auth	0006_require_contenttypes_0002	2018-07-03 23:32:30.626065-05
11	auth	0007_alter_validators_add_error_messages	2018-07-03 23:32:30.668675-05
12	auth	0008_alter_user_username_max_length	2018-07-03 23:32:30.75177-05
13	auth	0009_alter_user_last_name_max_length	2018-07-03 23:32:30.800088-05
14	sessions	0001_initial	2018-07-03 23:32:30.873903-05
15	cyphercore	0001_initial	2018-07-03 23:39:31.725683-05
16	cyphercore	0002_auto_20180704_0441	2018-07-03 23:41:38.010185-05
17	cyphercore	0003_auto_20180704_0456	2018-07-03 23:56:37.647464-05
18	cyphercore	0004_descriptor_starting_link	2018-07-04 00:29:16.660022-05
19	cyphercore	0005_type	2018-07-04 02:28:19.784681-05
20	cyphercore	0006_auto_20180704_0730	2018-07-04 02:30:15.827586-05
21	cyphercore	0007_auto_20180704_0735	2018-07-04 02:35:18.558213-05
22	cyphercore	0008_focus	2018-07-04 16:01:54.013072-05
23	cyphercore	0009_focus_connections	2018-07-04 16:53:22.639364-05
24	cyphercore	0010_auto_20180704_2155	2018-07-04 16:56:02.388203-05
25	cyphercore	0011_auto_20180704_2205	2018-07-04 17:05:07.326631-05
26	cyphercore	0012_auto_20180705_0013	2018-07-04 19:13:15.454961-05
27	cyphercore	0013_auto_20180705_0043	2018-07-04 19:43:54.945564-05
28	cyphercore	0014_ability	2018-07-04 21:50:41.620948-05
29	cyphercore	0015_auto_20180705_0256	2018-07-04 21:56:40.045486-05
30	cyphercore	0016_focusability	2018-07-04 22:19:47.915392-05
31	cyphercore	0017_auto_20180705_0339	2018-07-04 22:39:35.408924-05
32	cyphercore	0018_auto_20180706_2317	2018-07-06 18:17:13.435988-05
33	cyphercore	0019_focus_slug	2018-07-06 18:52:27.103658-05
34	cyphercore	0020_auto_20180707_0012	2018-07-06 19:12:46.103253-05
35	cyphercore	0021_auto_20180707_0019	2018-07-06 19:19:32.868833-05
36	cyphercore	0022_auto_20180707_0023	2018-07-06 19:23:38.915805-05
37	cyphercore	0023_equipment	2018-07-06 23:06:53.847689-05
38	cyphercore	0024_equipment_genre	2018-07-06 23:20:00.17686-05
39	cyphercore	0025_auto_20180707_0446	2018-07-06 23:46:12.491686-05
40	cyphercore	0026_auto_20180707_0623	2018-07-07 01:23:16.170698-05
41	cyphercore	0027_auto_20180707_0624	2018-07-07 01:24:46.849832-05
42	cyphercore	0028_auto_20180708_2010	2018-07-08 15:11:08.340197-05
43	cyphercore	0029_equipment_slug	2018-07-08 20:12:33.311762-05
44	cyphercore	0030_auto_20180709_0519	2018-07-09 00:19:41.402489-05
45	cyphercore	0031_cypher_slug	2018-07-09 00:22:05.479223-05
46	cyphercore	0032_remove_cypher_subtle	2018-07-09 00:28:04.62264-05
47	cyphercore	0033_auto_20180710_0034	2018-07-09 19:35:02.868603-05
48	cyphercore	0034_auto_20180710_0208	2018-07-09 21:08:55.308522-05
49	cyphercore	0035_descriptor_sourcebook	2018-07-09 21:17:56.80441-05
50	cyphercore	0036_auto_20180710_0222	2018-07-09 21:23:08.314617-05
51	cyphercore	0037_auto_20180710_0224	2018-07-09 21:25:02.511339-05
52	cyphercore	0038_auto_20180710_0226	2018-07-09 21:27:04.47558-05
53	cyphercore	0039_auto_20180710_0238	2018-07-09 21:38:11.227825-05
54	cyphercore	0040_skill	2018-07-09 22:24:21.111353-05
55	cyphercore	0041_auto_20180710_0325	2018-07-09 22:25:48.311966-05
56	cyphercore	0042_auto_20180710_0327	2018-07-09 22:27:47.039765-05
57	cyphercore	0043_auto_20180710_0336	2018-07-09 22:36:52.710762-05
58	cyphercore	0044_auto_20180710_0341	2018-07-09 22:42:02.819194-05
59	cyphercore	0045_genre_sourcebook	2018-07-09 22:50:33.133792-05
60	cyphercore	0046_remove_skill_skill_type	2018-07-09 22:58:55.41556-05
61	cyphercore	0047_auto_20180710_0400	2018-07-09 23:00:08.578019-05
62	cyphercore	0048_focus_abilities	2018-07-12 00:30:32.475518-05
63	cyphercore	0048_auto_20180713_0553	2018-07-13 01:05:33.324208-05
64	cyphercore	0049_auto_20180713_0605	2018-07-13 01:05:33.478442-05
65	cyphercore	0050_auto_20180715_0358	2018-07-14 22:59:01.835826-05
66	cyphercore	0051_remove_skill_slug	2018-07-14 23:22:10.651921-05
67	cyphercore	0052_artifact	2018-07-21 01:32:13.355101-05
68	cyphercore	0053_artifact_form	2018-07-21 01:38:13.552769-05
69	cyphercore	0054_auto_20180721_0734	2018-07-21 02:35:07.956824-05
70	cyphercore	0055_character_genre	2018-07-21 02:42:42.285792-05
71	cyphercore	0056_character_abilities	2018-07-21 03:13:33.05194-05
72	cyphercore	0057_auto_20180721_2244	2018-07-21 17:44:26.374114-05
73	cyphercore	0058_auto_20180721_2246	2018-07-21 17:46:29.64168-05
74	cyphercore	0059_character_portrait_link	2018-07-21 18:33:37.328639-05
75	cyphercore	0060_auto_20180722_0052	2018-07-21 19:52:53.766873-05
76	cyphercore	0061_auto_20180722_0123	2018-07-21 20:23:53.19908-05
77	cyphercore	0062_auto_20180722_0126	2018-07-21 20:26:12.868476-05
78	cyphercore	0063_auto_20180722_0134	2018-07-21 20:34:21.313492-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
frzuaelk6s9qp0lb73fjhbycy2nk5ku7	YmFhYmJlNGZjY2Y3NTg2N2U5NDY1MDRhNjZjOGE4ZDU2YjM0MTViYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGE5ZTMzM2Y3ZGQ1Nzk0ODRmY2E3MzZjMzUyMmVkNDhiY2Q5YTNlIn0=	2018-07-17 23:45:19.35233-05
8zzzt8ixbt3wgfq7ea0wh7wj6uu8x2jg	YmFhYmJlNGZjY2Y3NTg2N2U5NDY1MDRhNjZjOGE4ZDU2YjM0MTViYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGE5ZTMzM2Y3ZGQ1Nzk0ODRmY2E3MzZjMzUyMmVkNDhiY2Q5YTNlIn0=	2018-07-18 13:53:01.546725-05
o3jn6823g5gx2c03l25g9cb9x49f0he9	YmFhYmJlNGZjY2Y3NTg2N2U5NDY1MDRhNjZjOGE4ZDU2YjM0MTViYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGE5ZTMzM2Y3ZGQ1Nzk0ODRmY2E3MzZjMzUyMmVkNDhiY2Q5YTNlIn0=	2018-07-18 13:54:31.591656-05
kn3812jkoe4tmc05v1sxiicc1iqoc0r5	YmFhYmJlNGZjY2Y3NTg2N2U5NDY1MDRhNjZjOGE4ZDU2YjM0MTViYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGE5ZTMzM2Y3ZGQ1Nzk0ODRmY2E3MzZjMzUyMmVkNDhiY2Q5YTNlIn0=	2018-07-19 01:14:41.259452-05
oh0lvxgaf6f4dc2rbbcjw83df7wx2xj9	YmFhYmJlNGZjY2Y3NTg2N2U5NDY1MDRhNjZjOGE4ZDU2YjM0MTViYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGE5ZTMzM2Y3ZGQ1Nzk0ODRmY2E3MzZjMzUyMmVkNDhiY2Q5YTNlIn0=	2018-07-19 13:52:53.012576-05
0gsstv2ogxaw49dmrtfrwtdcjy742al6	YmFhYmJlNGZjY2Y3NTg2N2U5NDY1MDRhNjZjOGE4ZDU2YjM0MTViYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGE5ZTMzM2Y3ZGQ1Nzk0ODRmY2E3MzZjMzUyMmVkNDhiY2Q5YTNlIn0=	2018-07-19 14:59:00.518877-05
g25iorn6tr68ngdyi0v2cydohjdkma4x	YmFhYmJlNGZjY2Y3NTg2N2U5NDY1MDRhNjZjOGE4ZDU2YjM0MTViYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGE5ZTMzM2Y3ZGQ1Nzk0ODRmY2E3MzZjMzUyMmVkNDhiY2Q5YTNlIn0=	2018-07-22 17:54:32.596478-05
kblkw17tv4spol74742d5ruul19kt6qg	YWQxMjk1MDc3MjRjMDE5YTQ2ZTNkNmNjNjIxMjQ1OTRhNzc3ZjIxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMzMxZDg2NjEwMzZlMjY2MmI4YjNiMTE5MGNjYTM4NDczYTFmMTJkIn0=	2018-07-30 22:52:58.797453-05
5bgmsgc7is0lyarys95y3g6ysm30sepp	YWQxMjk1MDc3MjRjMDE5YTQ2ZTNkNmNjNjIxMjQ1OTRhNzc3ZjIxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMzMxZDg2NjEwMzZlMjY2MmI4YjNiMTE5MGNjYTM4NDczYTFmMTJkIn0=	2018-08-01 16:23:07.07971-05
bqascjgmft0lbhe50lemvjl10tdxnv1m	YWQxMjk1MDc3MjRjMDE5YTQ2ZTNkNmNjNjIxMjQ1OTRhNzc3ZjIxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMzMxZDg2NjEwMzZlMjY2MmI4YjNiMTE5MGNjYTM4NDczYTFmMTJkIn0=	2018-08-02 00:36:54.723888-05
5zwg0uq8y4bnp6kl8azb0lsfm9lusyne	YWQxMjk1MDc3MjRjMDE5YTQ2ZTNkNmNjNjIxMjQ1OTRhNzc3ZjIxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMzMxZDg2NjEwMzZlMjY2MmI4YjNiMTE5MGNjYTM4NDczYTFmMTJkIn0=	2018-08-02 20:41:20.365818-05
kt7qamdr9p6j0yjh3tho904n0lnep4k1	YWQxMjk1MDc3MjRjMDE5YTQ2ZTNkNmNjNjIxMjQ1OTRhNzc3ZjIxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMzMxZDg2NjEwMzZlMjY2MmI4YjNiMTE5MGNjYTM4NDczYTFmMTJkIn0=	2018-08-04 01:45:19.660568-05
luotc209aumvy02e00s6tb17ua7qc4f8	YWQxMjk1MDc3MjRjMDE5YTQ2ZTNkNmNjNjIxMjQ1OTRhNzc3ZjIxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMzMxZDg2NjEwMzZlMjY2MmI4YjNiMTE5MGNjYTM4NDczYTFmMTJkIn0=	2018-08-04 17:44:41.319653-05
0deshxvrg3rd5hx3q2t40tglso2vbviu	YWQxMjk1MDc3MjRjMDE5YTQ2ZTNkNmNjNjIxMjQ1OTRhNzc3ZjIxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMzMxZDg2NjEwMzZlMjY2MmI4YjNiMTE5MGNjYTM4NDczYTFmMTJkIn0=	2018-08-04 19:43:00.841289-05
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);


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

SELECT pg_catalog.setval('public.cyphercore_ability_id_seq', 366, true);


--
-- Name: cyphercore_artifact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_artifact_id_seq', 1, true);


--
-- Name: cyphercore_character_abilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_character_abilities_id_seq', 6, true);


--
-- Name: cyphercore_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_character_id_seq', 1, true);


--
-- Name: cyphercore_characterartifact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_characterartifact_id_seq', 1, true);


--
-- Name: cyphercore_charactercypher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_charactercypher_id_seq', 1, true);


--
-- Name: cyphercore_characterequipment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_characterequipment_id_seq', 3, true);


--
-- Name: cyphercore_characterskill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_characterskill_id_seq', 7, true);


--
-- Name: cyphercore_cypher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_cypher_id_seq', 1, true);


--
-- Name: cyphercore_descriptor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_descriptor_id_seq', 51, true);


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

SELECT pg_catalog.setval('public.cyphercore_focusability_id_seq', 197, true);


--
-- Name: cyphercore_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_genre_id_seq', 13, true);


--
-- Name: cyphercore_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_skill_id_seq', 38, true);


--
-- Name: cyphercore_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_source_id_seq', 3, true);


--
-- Name: cyphercore_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_type_id_seq', 4, true);


--
-- Name: cyphercore_typeability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cyphercore_typeability_id_seq', 203, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 885, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 78, true);


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
-- Name: cyphercore_artifact cyphercore_artifact_name_ce00bafc_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_artifact
    ADD CONSTRAINT cyphercore_artifact_name_ce00bafc_uniq UNIQUE (name);


--
-- Name: cyphercore_artifact cyphercore_artifact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_artifact
    ADD CONSTRAINT cyphercore_artifact_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_character_abilities cyphercore_character_abi_character_id_ability_id_d1e767c3_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character_abilities
    ADD CONSTRAINT cyphercore_character_abi_character_id_ability_id_d1e767c3_uniq UNIQUE (character_id, ability_id);


--
-- Name: cyphercore_character_abilities cyphercore_character_abilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character_abilities
    ADD CONSTRAINT cyphercore_character_abilities_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_character cyphercore_character_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_name_key UNIQUE (name);


--
-- Name: cyphercore_character cyphercore_character_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_characterartifact cyphercore_characterartifact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterartifact
    ADD CONSTRAINT cyphercore_characterartifact_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_charactercypher cyphercore_charactercypher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_charactercypher
    ADD CONSTRAINT cyphercore_charactercypher_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_characterequipment cyphercore_characterequipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterequipment
    ADD CONSTRAINT cyphercore_characterequipment_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_characterskill cyphercore_characterskill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterskill
    ADD CONSTRAINT cyphercore_characterskill_pkey PRIMARY KEY (id);


--
-- Name: cyphercore_cypher cyphercore_cypher_name_104c07ca_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_cypher
    ADD CONSTRAINT cyphercore_cypher_name_104c07ca_uniq UNIQUE (name);


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
-- Name: cyphercore_artifact_genre_id_40bebc5e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_artifact_genre_id_40bebc5e ON public.cyphercore_artifact USING btree (genre_id);


--
-- Name: cyphercore_artifact_name_ce00bafc_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_artifact_name_ce00bafc_like ON public.cyphercore_artifact USING btree (name varchar_pattern_ops);


--
-- Name: cyphercore_artifact_slug_7fe7f1ae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_artifact_slug_7fe7f1ae ON public.cyphercore_artifact USING btree (slug);


--
-- Name: cyphercore_artifact_slug_7fe7f1ae_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_artifact_slug_7fe7f1ae_like ON public.cyphercore_artifact USING btree (slug varchar_pattern_ops);


--
-- Name: cyphercore_artifact_sourcebook_id_73758750; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_artifact_sourcebook_id_73758750 ON public.cyphercore_artifact USING btree (sourcebook_id);


--
-- Name: cyphercore_character_abilities_ability_id_7858c0e9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_character_abilities_ability_id_7858c0e9 ON public.cyphercore_character_abilities USING btree (ability_id);


--
-- Name: cyphercore_character_abilities_character_id_123abe4d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_character_abilities_character_id_123abe4d ON public.cyphercore_character_abilities USING btree (character_id);


--
-- Name: cyphercore_character_descriptor_id_87c1e327; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_character_descriptor_id_87c1e327 ON public.cyphercore_character USING btree (descriptor_id);


--
-- Name: cyphercore_character_focus_id_3743e3e0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_character_focus_id_3743e3e0 ON public.cyphercore_character USING btree (focus_id);


--
-- Name: cyphercore_character_genre_id_53a72f91; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_character_genre_id_53a72f91 ON public.cyphercore_character USING btree (genre_id);


--
-- Name: cyphercore_character_name_0940b62c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_character_name_0940b62c_like ON public.cyphercore_character USING btree (name varchar_pattern_ops);


--
-- Name: cyphercore_character_slug_5366b8b5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_character_slug_5366b8b5 ON public.cyphercore_character USING btree (slug);


--
-- Name: cyphercore_character_slug_5366b8b5_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_character_slug_5366b8b5_like ON public.cyphercore_character USING btree (slug varchar_pattern_ops);


--
-- Name: cyphercore_character_type_id_f12ec437; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_character_type_id_f12ec437 ON public.cyphercore_character USING btree (type_id);


--
-- Name: cyphercore_characterartifact_artifact_id_edab2c9e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_characterartifact_artifact_id_edab2c9e ON public.cyphercore_characterartifact USING btree (artifact_id);


--
-- Name: cyphercore_characterartifact_character_id_ea801290; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_characterartifact_character_id_ea801290 ON public.cyphercore_characterartifact USING btree (character_id);


--
-- Name: cyphercore_charactercypher_character_id_03702696; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_charactercypher_character_id_03702696 ON public.cyphercore_charactercypher USING btree (character_id);


--
-- Name: cyphercore_charactercypher_cypher_id_a0ec9ac4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_charactercypher_cypher_id_a0ec9ac4 ON public.cyphercore_charactercypher USING btree (cypher_id);


--
-- Name: cyphercore_characterequipment_character_id_a614ca36; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_characterequipment_character_id_a614ca36 ON public.cyphercore_characterequipment USING btree (character_id);


--
-- Name: cyphercore_characterequipment_equipment_id_e47a4775; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_characterequipment_equipment_id_e47a4775 ON public.cyphercore_characterequipment USING btree (equipment_id);


--
-- Name: cyphercore_characterskill_character_id_145f350e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_characterskill_character_id_145f350e ON public.cyphercore_characterskill USING btree (character_id);


--
-- Name: cyphercore_characterskill_skill_id_6032d749; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_characterskill_skill_id_6032d749 ON public.cyphercore_characterskill USING btree (skill_id);


--
-- Name: cyphercore_cypher_name_104c07ca_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cyphercore_cypher_name_104c07ca_like ON public.cyphercore_cypher USING btree (name varchar_pattern_ops);


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
-- Name: cyphercore_artifact cyphercore_artifact_genre_id_40bebc5e_fk_cyphercore_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_artifact
    ADD CONSTRAINT cyphercore_artifact_genre_id_40bebc5e_fk_cyphercore_genre_id FOREIGN KEY (genre_id) REFERENCES public.cyphercore_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_artifact cyphercore_artifact_sourcebook_id_73758750_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_artifact
    ADD CONSTRAINT cyphercore_artifact_sourcebook_id_73758750_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_character_abilities cyphercore_character_ability_id_7858c0e9_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character_abilities
    ADD CONSTRAINT cyphercore_character_ability_id_7858c0e9_fk_cyphercor FOREIGN KEY (ability_id) REFERENCES public.cyphercore_ability(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_characterartifact cyphercore_character_artifact_id_edab2c9e_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterartifact
    ADD CONSTRAINT cyphercore_character_artifact_id_edab2c9e_fk_cyphercor FOREIGN KEY (artifact_id) REFERENCES public.cyphercore_artifact(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_charactercypher cyphercore_character_character_id_03702696_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_charactercypher
    ADD CONSTRAINT cyphercore_character_character_id_03702696_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_character_abilities cyphercore_character_character_id_123abe4d_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character_abilities
    ADD CONSTRAINT cyphercore_character_character_id_123abe4d_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_characterskill cyphercore_character_character_id_145f350e_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterskill
    ADD CONSTRAINT cyphercore_character_character_id_145f350e_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_characterequipment cyphercore_character_character_id_a614ca36_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterequipment
    ADD CONSTRAINT cyphercore_character_character_id_a614ca36_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_characterartifact cyphercore_character_character_id_ea801290_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterartifact
    ADD CONSTRAINT cyphercore_character_character_id_ea801290_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_charactercypher cyphercore_character_cypher_id_a0ec9ac4_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_charactercypher
    ADD CONSTRAINT cyphercore_character_cypher_id_a0ec9ac4_fk_cyphercor FOREIGN KEY (cypher_id) REFERENCES public.cyphercore_cypher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_character cyphercore_character_descriptor_id_87c1e327_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_descriptor_id_87c1e327_fk_cyphercor FOREIGN KEY (descriptor_id) REFERENCES public.cyphercore_descriptor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_characterequipment cyphercore_character_equipment_id_e47a4775_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterequipment
    ADD CONSTRAINT cyphercore_character_equipment_id_e47a4775_fk_cyphercor FOREIGN KEY (equipment_id) REFERENCES public.cyphercore_equipment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_character cyphercore_character_focus_id_3743e3e0_fk_cyphercore_focus_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_focus_id_3743e3e0_fk_cyphercore_focus_id FOREIGN KEY (focus_id) REFERENCES public.cyphercore_focus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_character cyphercore_character_genre_id_53a72f91_fk_cyphercore_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_genre_id_53a72f91_fk_cyphercore_genre_id FOREIGN KEY (genre_id) REFERENCES public.cyphercore_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_characterskill cyphercore_character_skill_id_6032d749_fk_cyphercor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_characterskill
    ADD CONSTRAINT cyphercore_character_skill_id_6032d749_fk_cyphercor FOREIGN KEY (skill_id) REFERENCES public.cyphercore_skill(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cyphercore_character cyphercore_character_type_id_f12ec437_fk_cyphercore_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_type_id_f12ec437_fk_cyphercore_type_id FOREIGN KEY (type_id) REFERENCES public.cyphercore_type(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

