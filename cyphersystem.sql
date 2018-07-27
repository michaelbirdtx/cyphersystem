PGDMP     7    +                v           cyphersystem !   10.4 (Ubuntu 10.4-0ubuntu0.18.04) !   10.4 (Ubuntu 10.4-0ubuntu0.18.04) 3              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    17138    cyphersystem    DATABASE     ~   CREATE DATABASE cyphersystem WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE cyphersystem;
             postgres    false                        2615    17139    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    17140    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17145 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    17148    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    196                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    197            �            1259    17150    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    17153    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    198                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    199            �            1259    17155    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    17158    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    200    3                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    201            �            1259    17160 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    17166    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    17169    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    203                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    204            �            1259    17171    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    202                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    205            �            1259    17173    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    17176 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    206                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    207            �            1259    17178    cyphercore_ability    TABLE     ,  CREATE TABLE public.cyphercore_ability (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    usage character varying(10) NOT NULL,
    cost character varying(20) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);
 &   DROP TABLE public.cyphercore_ability;
       public         postgres    false    3            �            1259    17184    cyphercore_ability_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_ability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cyphercore_ability_id_seq;
       public       postgres    false    3    208                       0    0    cyphercore_ability_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.cyphercore_ability_id_seq OWNED BY public.cyphercore_ability.id;
            public       postgres    false    209            �            1259    24618    cyphercore_artifact    TABLE     K  CREATE TABLE public.cyphercore_artifact (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    level_range character varying(10) NOT NULL,
    effect text NOT NULL,
    depletion character varying(20) NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL,
    form text NOT NULL
);
 '   DROP TABLE public.cyphercore_artifact;
       public         postgres    false    3            �            1259    24616    cyphercore_artifact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_artifact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cyphercore_artifact_id_seq;
       public       postgres    false    236    3                       0    0    cyphercore_artifact_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cyphercore_artifact_id_seq OWNED BY public.cyphercore_artifact.id;
            public       postgres    false    235            �            1259    24655    cyphercore_character    TABLE     6  CREATE TABLE public.cyphercore_character (
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
    portrait_link character varying(200) NOT NULL
);
 (   DROP TABLE public.cyphercore_character;
       public         postgres    false    3            �            1259    24716    cyphercore_character_abilities    TABLE     �   CREATE TABLE public.cyphercore_character_abilities (
    id integer NOT NULL,
    character_id integer NOT NULL,
    ability_id integer NOT NULL
);
 2   DROP TABLE public.cyphercore_character_abilities;
       public         postgres    false    3            �            1259    24714 %   cyphercore_character_abilities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_character_abilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.cyphercore_character_abilities_id_seq;
       public       postgres    false    240    3                       0    0 %   cyphercore_character_abilities_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.cyphercore_character_abilities_id_seq OWNED BY public.cyphercore_character_abilities.id;
            public       postgres    false    239            �            1259    24653    cyphercore_character_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.cyphercore_character_id_seq;
       public       postgres    false    3    238                       0    0    cyphercore_character_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.cyphercore_character_id_seq OWNED BY public.cyphercore_character.id;
            public       postgres    false    237            �            1259    41045    cyphercore_characterartifact    TABLE     �   CREATE TABLE public.cyphercore_characterartifact (
    id integer NOT NULL,
    level integer NOT NULL,
    artifact_id integer NOT NULL,
    character_id integer NOT NULL
);
 0   DROP TABLE public.cyphercore_characterartifact;
       public         postgres    false    3            �            1259    41043 #   cyphercore_characterartifact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_characterartifact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.cyphercore_characterartifact_id_seq;
       public       postgres    false    3    248                       0    0 #   cyphercore_characterartifact_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.cyphercore_characterartifact_id_seq OWNED BY public.cyphercore_characterartifact.id;
            public       postgres    false    247            �            1259    41022    cyphercore_charactercypher    TABLE     �   CREATE TABLE public.cyphercore_charactercypher (
    id integer NOT NULL,
    level integer NOT NULL,
    appearance text NOT NULL,
    character_id integer NOT NULL,
    cypher_id integer NOT NULL
);
 .   DROP TABLE public.cyphercore_charactercypher;
       public         postgres    false    3            �            1259    41020 !   cyphercore_charactercypher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_charactercypher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.cyphercore_charactercypher_id_seq;
       public       postgres    false    246    3                       0    0 !   cyphercore_charactercypher_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.cyphercore_charactercypher_id_seq OWNED BY public.cyphercore_charactercypher.id;
            public       postgres    false    245            �            1259    41002    cyphercore_characterequipment    TABLE     �   CREATE TABLE public.cyphercore_characterequipment (
    id integer NOT NULL,
    quantity integer NOT NULL,
    character_id integer NOT NULL,
    equipment_id integer NOT NULL,
    cost character varying(20) NOT NULL
);
 1   DROP TABLE public.cyphercore_characterequipment;
       public         postgres    false    3            �            1259    41000 $   cyphercore_characterequipment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_characterequipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.cyphercore_characterequipment_id_seq;
       public       postgres    false    3    244                       0    0 $   cyphercore_characterequipment_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.cyphercore_characterequipment_id_seq OWNED BY public.cyphercore_characterequipment.id;
            public       postgres    false    243            �            1259    32810    cyphercore_characterskill    TABLE     �   CREATE TABLE public.cyphercore_characterskill (
    id integer NOT NULL,
    skill_level character varying(1) NOT NULL,
    character_id integer NOT NULL,
    skill_id integer NOT NULL
);
 -   DROP TABLE public.cyphercore_characterskill;
       public         postgres    false    3            �            1259    32808     cyphercore_characterskill_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_characterskill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.cyphercore_characterskill_id_seq;
       public       postgres    false    3    242                       0    0     cyphercore_characterskill_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.cyphercore_characterskill_id_seq OWNED BY public.cyphercore_characterskill.id;
            public       postgres    false    241            �            1259    17186    cyphercore_cypher    TABLE       CREATE TABLE public.cyphercore_cypher (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    level_range character varying(10) NOT NULL,
    effect text NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);
 %   DROP TABLE public.cyphercore_cypher;
       public         postgres    false    3            �            1259    17192    cyphercore_cypher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_cypher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cyphercore_cypher_id_seq;
       public       postgres    false    3    210                        0    0    cyphercore_cypher_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.cyphercore_cypher_id_seq OWNED BY public.cyphercore_cypher.id;
            public       postgres    false    211            �            1259    17194    cyphercore_descriptor    TABLE     J  CREATE TABLE public.cyphercore_descriptor (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    characteristics text NOT NULL,
    starting_link text NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL,
    prefix character varying(5) NOT NULL
);
 )   DROP TABLE public.cyphercore_descriptor;
       public         postgres    false    3            �            1259    17200    cyphercore_descriptor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_descriptor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cyphercore_descriptor_id_seq;
       public       postgres    false    3    212            !           0    0    cyphercore_descriptor_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cyphercore_descriptor_id_seq OWNED BY public.cyphercore_descriptor.id;
            public       postgres    false    213            �            1259    17202    cyphercore_equipment    TABLE     ,  CREATE TABLE public.cyphercore_equipment (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    base_cost character varying(30) NOT NULL,
    notes text NOT NULL,
    type character varying(30) NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);
 (   DROP TABLE public.cyphercore_equipment;
       public         postgres    false    3            �            1259    17208    cyphercore_equipment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_equipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.cyphercore_equipment_id_seq;
       public       postgres    false    3    214            "           0    0    cyphercore_equipment_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.cyphercore_equipment_id_seq OWNED BY public.cyphercore_equipment.id;
            public       postgres    false    215            �            1259    17210    cyphercore_focus    TABLE       CREATE TABLE public.cyphercore_focus (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    other_details text NOT NULL,
    connections text NOT NULL,
    slug character varying(50) NOT NULL,
    sourcebook_id integer NOT NULL
);
 $   DROP TABLE public.cyphercore_focus;
       public         postgres    false    3            �            1259    17216    cyphercore_focus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_focus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cyphercore_focus_id_seq;
       public       postgres    false    3    216            #           0    0    cyphercore_focus_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cyphercore_focus_id_seq OWNED BY public.cyphercore_focus.id;
            public       postgres    false    217            �            1259    17218    cyphercore_focusability    TABLE     �   CREATE TABLE public.cyphercore_focusability (
    id integer NOT NULL,
    tier integer NOT NULL,
    ability_id integer NOT NULL,
    focus_id integer NOT NULL
);
 +   DROP TABLE public.cyphercore_focusability;
       public         postgres    false    3            �            1259    17221    cyphercore_focusability_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_focusability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.cyphercore_focusability_id_seq;
       public       postgres    false    3    218            $           0    0    cyphercore_focusability_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.cyphercore_focusability_id_seq OWNED BY public.cyphercore_focusability.id;
            public       postgres    false    219            �            1259    17228    cyphercore_skill    TABLE     l   CREATE TABLE public.cyphercore_skill (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
 $   DROP TABLE public.cyphercore_skill;
       public         postgres    false    3            �            1259    17231    cyphercore_skill_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_skill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cyphercore_skill_id_seq;
       public       postgres    false    220    3            %           0    0    cyphercore_skill_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cyphercore_skill_id_seq OWNED BY public.cyphercore_skill.id;
            public       postgres    false    221            �            1259    17233    cyphercore_sourcebook    TABLE     �   CREATE TABLE public.cyphercore_sourcebook (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    enabled boolean NOT NULL
);
 )   DROP TABLE public.cyphercore_sourcebook;
       public         postgres    false    3            �            1259    17236    cyphercore_source_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cyphercore_source_id_seq;
       public       postgres    false    222    3            &           0    0    cyphercore_source_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cyphercore_source_id_seq OWNED BY public.cyphercore_sourcebook.id;
            public       postgres    false    223            �            1259    17238    cyphercore_type    TABLE     (  CREATE TABLE public.cyphercore_type (
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
 #   DROP TABLE public.cyphercore_type;
       public         postgres    false    3            �            1259    17244    cyphercore_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cyphercore_type_id_seq;
       public       postgres    false    224    3            '           0    0    cyphercore_type_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cyphercore_type_id_seq OWNED BY public.cyphercore_type.id;
            public       postgres    false    225            �            1259    17246    cyphercore_typeability    TABLE     �   CREATE TABLE public.cyphercore_typeability (
    id integer NOT NULL,
    tier integer NOT NULL,
    ability_id integer NOT NULL,
    type_id integer NOT NULL
);
 *   DROP TABLE public.cyphercore_typeability;
       public         postgres    false    3            �            1259    17249    cyphercore_typeability_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cyphercore_typeability_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.cyphercore_typeability_id_seq;
       public       postgres    false    3    226            (           0    0    cyphercore_typeability_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.cyphercore_typeability_id_seq OWNED BY public.cyphercore_typeability.id;
            public       postgres    false    227            �            1259    17251    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    17258    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    228            )           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    229            �            1259    17260    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    17263    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    3    230            *           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    231            �            1259    17265    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    17271    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    3    232            +           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    233            �            1259    17273    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �           2604    17279    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            �           2604    17280    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �           2604    17281    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            �           2604    17282    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    202            �           2604    17283    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203            �           2604    17284    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            �           2604    17285    cyphercore_ability id    DEFAULT     ~   ALTER TABLE ONLY public.cyphercore_ability ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_ability_id_seq'::regclass);
 D   ALTER TABLE public.cyphercore_ability ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208            �           2604    24621    cyphercore_artifact id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_artifact ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_artifact_id_seq'::regclass);
 E   ALTER TABLE public.cyphercore_artifact ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    235    236            �           2604    24658    cyphercore_character id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_character ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_character_id_seq'::regclass);
 F   ALTER TABLE public.cyphercore_character ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    238    238            �           2604    24719 !   cyphercore_character_abilities id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_character_abilities ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_character_abilities_id_seq'::regclass);
 P   ALTER TABLE public.cyphercore_character_abilities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    240    240            �           2604    41048    cyphercore_characterartifact id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_characterartifact ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_characterartifact_id_seq'::regclass);
 N   ALTER TABLE public.cyphercore_characterartifact ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    248    248            �           2604    41025    cyphercore_charactercypher id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_charactercypher ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_charactercypher_id_seq'::regclass);
 L   ALTER TABLE public.cyphercore_charactercypher ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    245    246            �           2604    41005     cyphercore_characterequipment id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_characterequipment ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_characterequipment_id_seq'::regclass);
 O   ALTER TABLE public.cyphercore_characterequipment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    244    244            �           2604    32813    cyphercore_characterskill id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_characterskill ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_characterskill_id_seq'::regclass);
 K   ALTER TABLE public.cyphercore_characterskill ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241    242            �           2604    17286    cyphercore_cypher id    DEFAULT     |   ALTER TABLE ONLY public.cyphercore_cypher ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_cypher_id_seq'::regclass);
 C   ALTER TABLE public.cyphercore_cypher ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210            �           2604    17287    cyphercore_descriptor id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_descriptor ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_descriptor_id_seq'::regclass);
 G   ALTER TABLE public.cyphercore_descriptor ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212            �           2604    17288    cyphercore_equipment id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_equipment ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_equipment_id_seq'::regclass);
 F   ALTER TABLE public.cyphercore_equipment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214            �           2604    17289    cyphercore_focus id    DEFAULT     z   ALTER TABLE ONLY public.cyphercore_focus ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_focus_id_seq'::regclass);
 B   ALTER TABLE public.cyphercore_focus ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216            �           2604    17290    cyphercore_focusability id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_focusability ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_focusability_id_seq'::regclass);
 I   ALTER TABLE public.cyphercore_focusability ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218            �           2604    17292    cyphercore_skill id    DEFAULT     z   ALTER TABLE ONLY public.cyphercore_skill ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_skill_id_seq'::regclass);
 B   ALTER TABLE public.cyphercore_skill ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220            �           2604    17293    cyphercore_sourcebook id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_sourcebook ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_source_id_seq'::regclass);
 G   ALTER TABLE public.cyphercore_sourcebook ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222            �           2604    17294    cyphercore_type id    DEFAULT     x   ALTER TABLE ONLY public.cyphercore_type ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_type_id_seq'::regclass);
 A   ALTER TABLE public.cyphercore_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224            �           2604    17295    cyphercore_typeability id    DEFAULT     �   ALTER TABLE ONLY public.cyphercore_typeability ALTER COLUMN id SET DEFAULT nextval('public.cyphercore_typeability_id_seq'::regclass);
 H   ALTER TABLE public.cyphercore_typeability ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            �           2604    17296    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228            �           2604    17297    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230            �           2604    17298    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232            �          0    17145 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    196   Ĩ      �          0    17150    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    198   �      �          0    17155    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    200   ��      �          0    17160 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    202   �      �          0    17166    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    203   ��      �          0    17173    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    206   ��      �          0    17178    cyphercore_ability 
   TABLE DATA               e   COPY public.cyphercore_ability (id, name, usage, cost, description, slug, sourcebook_id) FROM stdin;
    public       postgres    false    208   Ѭ      �          0    24618    cyphercore_artifact 
   TABLE DATA               r   COPY public.cyphercore_artifact (id, name, level_range, effect, depletion, slug, sourcebook_id, form) FROM stdin;
    public       postgres    false    236   �      �          0    24655    cyphercore_character 
   TABLE DATA               �  COPY public.cyphercore_character (id, name, background, notes, tier, effort, cypher_limit, money, xp, might_current, might_pool, might_edge, speed_current, speed_pool, speed_edge, intellect_current, intellect_pool, intellect_edge, armor, recovery_roll, impaired, debilitated, one_action, ten_minutes, one_hour, ten_hours, slug, descriptor_id, focus_id, type_id, portrait_link) FROM stdin;
    public       postgres    false    238   �                0    24716    cyphercore_character_abilities 
   TABLE DATA               V   COPY public.cyphercore_character_abilities (id, character_id, ability_id) FROM stdin;
    public       postgres    false    240   4�      	          0    41045    cyphercore_characterartifact 
   TABLE DATA               \   COPY public.cyphercore_characterartifact (id, level, artifact_id, character_id) FROM stdin;
    public       postgres    false    248   Q�                0    41022    cyphercore_charactercypher 
   TABLE DATA               d   COPY public.cyphercore_charactercypher (id, level, appearance, character_id, cypher_id) FROM stdin;
    public       postgres    false    246   n�                0    41002    cyphercore_characterequipment 
   TABLE DATA               g   COPY public.cyphercore_characterequipment (id, quantity, character_id, equipment_id, cost) FROM stdin;
    public       postgres    false    244   ��                0    32810    cyphercore_characterskill 
   TABLE DATA               \   COPY public.cyphercore_characterskill (id, skill_level, character_id, skill_id) FROM stdin;
    public       postgres    false    242   ��      �          0    17186    cyphercore_cypher 
   TABLE DATA               _   COPY public.cyphercore_cypher (id, name, level_range, effect, slug, sourcebook_id) FROM stdin;
    public       postgres    false    210   ��      �          0    17194    cyphercore_descriptor 
   TABLE DATA               �   COPY public.cyphercore_descriptor (id, name, description, characteristics, starting_link, slug, sourcebook_id, prefix) FROM stdin;
    public       postgres    false    212   �      �          0    17202    cyphercore_equipment 
   TABLE DATA               e   COPY public.cyphercore_equipment (id, name, base_cost, notes, type, slug, sourcebook_id) FROM stdin;
    public       postgres    false    214   �h      �          0    17210    cyphercore_focus 
   TABLE DATA               r   COPY public.cyphercore_focus (id, name, description, other_details, connections, slug, sourcebook_id) FROM stdin;
    public       postgres    false    216    t      �          0    17218    cyphercore_focusability 
   TABLE DATA               Q   COPY public.cyphercore_focusability (id, tier, ability_id, focus_id) FROM stdin;
    public       postgres    false    218   U      �          0    17228    cyphercore_skill 
   TABLE DATA               4   COPY public.cyphercore_skill (id, name) FROM stdin;
    public       postgres    false    220   �$      �          0    17233    cyphercore_sourcebook 
   TABLE DATA               B   COPY public.cyphercore_sourcebook (id, name, enabled) FROM stdin;
    public       postgres    false    222   �%      �          0    17238    cyphercore_type 
   TABLE DATA               �   COPY public.cyphercore_type (id, name, description, base_abilities, cypher_limit, effort, intellect_edge, intellect_pool, might_edge, might_pool, speed_edge, speed_pool, pool_points, slug, sourcebook_id) FROM stdin;
    public       postgres    false    224   A&      �          0    17246    cyphercore_typeability 
   TABLE DATA               O   COPY public.cyphercore_typeability (id, tier, ability_id, type_id) FROM stdin;
    public       postgres    false    226   i0      �          0    17251    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    228   �3      �          0    17260    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    230   ��      �          0    17265    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    232   ��      �          0    17273    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    234   ��      ,           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    197            -           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    199            .           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 75, true);
            public       postgres    false    201            /           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    204            0           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    205            1           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    207            2           0    0    cyphercore_ability_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cyphercore_ability_id_seq', 719, true);
            public       postgres    false    209            3           0    0    cyphercore_artifact_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cyphercore_artifact_id_seq', 16, true);
            public       postgres    false    235            4           0    0 %   cyphercore_character_abilities_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.cyphercore_character_abilities_id_seq', 6, true);
            public       postgres    false    239            5           0    0    cyphercore_character_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cyphercore_character_id_seq', 1, true);
            public       postgres    false    237            6           0    0 #   cyphercore_characterartifact_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.cyphercore_characterartifact_id_seq', 3, true);
            public       postgres    false    247            7           0    0 !   cyphercore_charactercypher_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.cyphercore_charactercypher_id_seq', 3, true);
            public       postgres    false    245            8           0    0 $   cyphercore_characterequipment_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.cyphercore_characterequipment_id_seq', 9, true);
            public       postgres    false    243            9           0    0     cyphercore_characterskill_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.cyphercore_characterskill_id_seq', 18, true);
            public       postgres    false    241            :           0    0    cyphercore_cypher_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.cyphercore_cypher_id_seq', 150, true);
            public       postgres    false    211            ;           0    0    cyphercore_descriptor_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cyphercore_descriptor_id_seq', 51, true);
            public       postgres    false    213            <           0    0    cyphercore_equipment_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cyphercore_equipment_id_seq', 129, true);
            public       postgres    false    215            =           0    0    cyphercore_focus_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.cyphercore_focus_id_seq', 81, true);
            public       postgres    false    217            >           0    0    cyphercore_focusability_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.cyphercore_focusability_id_seq', 563, true);
            public       postgres    false    219            ?           0    0    cyphercore_skill_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.cyphercore_skill_id_seq', 39, true);
            public       postgres    false    221            @           0    0    cyphercore_source_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.cyphercore_source_id_seq', 3, true);
            public       postgres    false    223            A           0    0    cyphercore_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cyphercore_type_id_seq', 4, true);
            public       postgres    false    225            B           0    0    cyphercore_typeability_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.cyphercore_typeability_id_seq', 203, true);
            public       postgres    false    227            C           0    0    django_admin_log_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1645, true);
            public       postgres    false    229            D           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
            public       postgres    false    231            E           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 91, true);
            public       postgres    false    233            �           2606    17324    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    196            �           2606    17326 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    198    198            �           2606    17328 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    198            �           2606    17330    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    196            �           2606    17332 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    200    200            �           2606    17334 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    200            �           2606    17336 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    203            �           2606    17338 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    203    203            �           2606    17340    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    202            �           2606    17342 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    206            �           2606    17344 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    206    206            �           2606    17346     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    202            �           2606    17348 .   cyphercore_ability cyphercore_ability_name_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.cyphercore_ability
    ADD CONSTRAINT cyphercore_ability_name_key UNIQUE (name);
 X   ALTER TABLE ONLY public.cyphercore_ability DROP CONSTRAINT cyphercore_ability_name_key;
       public         postgres    false    208            �           2606    17350 *   cyphercore_ability cyphercore_ability_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.cyphercore_ability
    ADD CONSTRAINT cyphercore_ability_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.cyphercore_ability DROP CONSTRAINT cyphercore_ability_pkey;
       public         postgres    false    208                       2606    24667 :   cyphercore_artifact cyphercore_artifact_name_ce00bafc_uniq 
   CONSTRAINT     u   ALTER TABLE ONLY public.cyphercore_artifact
    ADD CONSTRAINT cyphercore_artifact_name_ce00bafc_uniq UNIQUE (name);
 d   ALTER TABLE ONLY public.cyphercore_artifact DROP CONSTRAINT cyphercore_artifact_name_ce00bafc_uniq;
       public         postgres    false    236                       2606    24626 ,   cyphercore_artifact cyphercore_artifact_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.cyphercore_artifact
    ADD CONSTRAINT cyphercore_artifact_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.cyphercore_artifact DROP CONSTRAINT cyphercore_artifact_pkey;
       public         postgres    false    236            &           2606    24733 ]   cyphercore_character_abilities cyphercore_character_abi_character_id_ability_id_d1e767c3_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_character_abilities
    ADD CONSTRAINT cyphercore_character_abi_character_id_ability_id_d1e767c3_uniq UNIQUE (character_id, ability_id);
 �   ALTER TABLE ONLY public.cyphercore_character_abilities DROP CONSTRAINT cyphercore_character_abi_character_id_ability_id_d1e767c3_uniq;
       public         postgres    false    240    240            *           2606    24721 B   cyphercore_character_abilities cyphercore_character_abilities_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_character_abilities
    ADD CONSTRAINT cyphercore_character_abilities_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.cyphercore_character_abilities DROP CONSTRAINT cyphercore_character_abilities_pkey;
       public         postgres    false    240                       2606    24665 2   cyphercore_character cyphercore_character_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.cyphercore_character DROP CONSTRAINT cyphercore_character_name_key;
       public         postgres    false    238            !           2606    24663 .   cyphercore_character cyphercore_character_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.cyphercore_character DROP CONSTRAINT cyphercore_character_pkey;
       public         postgres    false    238            :           2606    41050 >   cyphercore_characterartifact cyphercore_characterartifact_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.cyphercore_characterartifact
    ADD CONSTRAINT cyphercore_characterartifact_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.cyphercore_characterartifact DROP CONSTRAINT cyphercore_characterartifact_pkey;
       public         postgres    false    248            6           2606    41030 :   cyphercore_charactercypher cyphercore_charactercypher_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.cyphercore_charactercypher
    ADD CONSTRAINT cyphercore_charactercypher_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.cyphercore_charactercypher DROP CONSTRAINT cyphercore_charactercypher_pkey;
       public         postgres    false    246            2           2606    41007 @   cyphercore_characterequipment cyphercore_characterequipment_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.cyphercore_characterequipment
    ADD CONSTRAINT cyphercore_characterequipment_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.cyphercore_characterequipment DROP CONSTRAINT cyphercore_characterequipment_pkey;
       public         postgres    false    244            -           2606    32815 8   cyphercore_characterskill cyphercore_characterskill_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.cyphercore_characterskill
    ADD CONSTRAINT cyphercore_characterskill_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.cyphercore_characterskill DROP CONSTRAINT cyphercore_characterskill_pkey;
       public         postgres    false    242            �           2606    24670 6   cyphercore_cypher cyphercore_cypher_name_104c07ca_uniq 
   CONSTRAINT     q   ALTER TABLE ONLY public.cyphercore_cypher
    ADD CONSTRAINT cyphercore_cypher_name_104c07ca_uniq UNIQUE (name);
 `   ALTER TABLE ONLY public.cyphercore_cypher DROP CONSTRAINT cyphercore_cypher_name_104c07ca_uniq;
       public         postgres    false    210            �           2606    17352 (   cyphercore_cypher cyphercore_cypher_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.cyphercore_cypher
    ADD CONSTRAINT cyphercore_cypher_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.cyphercore_cypher DROP CONSTRAINT cyphercore_cypher_pkey;
       public         postgres    false    210            �           2606    17354 >   cyphercore_descriptor cyphercore_descriptor_name_e9fe6d6e_uniq 
   CONSTRAINT     y   ALTER TABLE ONLY public.cyphercore_descriptor
    ADD CONSTRAINT cyphercore_descriptor_name_e9fe6d6e_uniq UNIQUE (name);
 h   ALTER TABLE ONLY public.cyphercore_descriptor DROP CONSTRAINT cyphercore_descriptor_name_e9fe6d6e_uniq;
       public         postgres    false    212            �           2606    17356 0   cyphercore_descriptor cyphercore_descriptor_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cyphercore_descriptor
    ADD CONSTRAINT cyphercore_descriptor_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cyphercore_descriptor DROP CONSTRAINT cyphercore_descriptor_pkey;
       public         postgres    false    212            �           2606    41156 <   cyphercore_equipment cyphercore_equipment_name_defe972e_uniq 
   CONSTRAINT     w   ALTER TABLE ONLY public.cyphercore_equipment
    ADD CONSTRAINT cyphercore_equipment_name_defe972e_uniq UNIQUE (name);
 f   ALTER TABLE ONLY public.cyphercore_equipment DROP CONSTRAINT cyphercore_equipment_name_defe972e_uniq;
       public         postgres    false    214            �           2606    17358 .   cyphercore_equipment cyphercore_equipment_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.cyphercore_equipment
    ADD CONSTRAINT cyphercore_equipment_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.cyphercore_equipment DROP CONSTRAINT cyphercore_equipment_pkey;
       public         postgres    false    214            �           2606    17360 4   cyphercore_focus cyphercore_focus_name_6b204cd7_uniq 
   CONSTRAINT     o   ALTER TABLE ONLY public.cyphercore_focus
    ADD CONSTRAINT cyphercore_focus_name_6b204cd7_uniq UNIQUE (name);
 ^   ALTER TABLE ONLY public.cyphercore_focus DROP CONSTRAINT cyphercore_focus_name_6b204cd7_uniq;
       public         postgres    false    216            �           2606    17362 &   cyphercore_focus cyphercore_focus_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cyphercore_focus
    ADD CONSTRAINT cyphercore_focus_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cyphercore_focus DROP CONSTRAINT cyphercore_focus_pkey;
       public         postgres    false    216            �           2606    17364 4   cyphercore_focusability cyphercore_focusability_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.cyphercore_focusability
    ADD CONSTRAINT cyphercore_focusability_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.cyphercore_focusability DROP CONSTRAINT cyphercore_focusability_pkey;
       public         postgres    false    218            �           2606    17370 4   cyphercore_skill cyphercore_skill_name_a62c2dfe_uniq 
   CONSTRAINT     o   ALTER TABLE ONLY public.cyphercore_skill
    ADD CONSTRAINT cyphercore_skill_name_a62c2dfe_uniq UNIQUE (name);
 ^   ALTER TABLE ONLY public.cyphercore_skill DROP CONSTRAINT cyphercore_skill_name_a62c2dfe_uniq;
       public         postgres    false    220            �           2606    17372 &   cyphercore_skill cyphercore_skill_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cyphercore_skill
    ADD CONSTRAINT cyphercore_skill_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cyphercore_skill DROP CONSTRAINT cyphercore_skill_pkey;
       public         postgres    false    220            �           2606    17374 0   cyphercore_sourcebook cyphercore_source_name_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.cyphercore_sourcebook
    ADD CONSTRAINT cyphercore_source_name_key UNIQUE (name);
 Z   ALTER TABLE ONLY public.cyphercore_sourcebook DROP CONSTRAINT cyphercore_source_name_key;
       public         postgres    false    222            �           2606    17376 ,   cyphercore_sourcebook cyphercore_source_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.cyphercore_sourcebook
    ADD CONSTRAINT cyphercore_source_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.cyphercore_sourcebook DROP CONSTRAINT cyphercore_source_pkey;
       public         postgres    false    222            �           2606    17378 2   cyphercore_type cyphercore_type_name_0d313a9e_uniq 
   CONSTRAINT     m   ALTER TABLE ONLY public.cyphercore_type
    ADD CONSTRAINT cyphercore_type_name_0d313a9e_uniq UNIQUE (name);
 \   ALTER TABLE ONLY public.cyphercore_type DROP CONSTRAINT cyphercore_type_name_0d313a9e_uniq;
       public         postgres    false    224            �           2606    17380 $   cyphercore_type cyphercore_type_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.cyphercore_type
    ADD CONSTRAINT cyphercore_type_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cyphercore_type DROP CONSTRAINT cyphercore_type_pkey;
       public         postgres    false    224                       2606    17382 2   cyphercore_typeability cyphercore_typeability_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.cyphercore_typeability
    ADD CONSTRAINT cyphercore_typeability_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.cyphercore_typeability DROP CONSTRAINT cyphercore_typeability_pkey;
       public         postgres    false    226                       2606    17384 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    228            
           2606    17386 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    230    230                       2606    17388 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    230                       2606    17390 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    232                       2606    17392 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    234            �           1259    17393    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    196            �           1259    17394 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    198            �           1259    17395 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    198            �           1259    17396 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    200            �           1259    17397 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    203            �           1259    17398 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    203            �           1259    17399 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    206            �           1259    17400 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    206            �           1259    17401     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    202            �           1259    17402 %   cyphercore_ability_name_ad313a31_like    INDEX     x   CREATE INDEX cyphercore_ability_name_ad313a31_like ON public.cyphercore_ability USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.cyphercore_ability_name_ad313a31_like;
       public         postgres    false    208            �           1259    17403     cyphercore_ability_slug_5fd98add    INDEX     _   CREATE INDEX cyphercore_ability_slug_5fd98add ON public.cyphercore_ability USING btree (slug);
 4   DROP INDEX public.cyphercore_ability_slug_5fd98add;
       public         postgres    false    208            �           1259    17404 %   cyphercore_ability_slug_5fd98add_like    INDEX     x   CREATE INDEX cyphercore_ability_slug_5fd98add_like ON public.cyphercore_ability USING btree (slug varchar_pattern_ops);
 9   DROP INDEX public.cyphercore_ability_slug_5fd98add_like;
       public         postgres    false    208            �           1259    17405 )   cyphercore_ability_sourcebook_id_cfa3b9d9    INDEX     q   CREATE INDEX cyphercore_ability_sourcebook_id_cfa3b9d9 ON public.cyphercore_ability USING btree (sourcebook_id);
 =   DROP INDEX public.cyphercore_ability_sourcebook_id_cfa3b9d9;
       public         postgres    false    208                       1259    24668 &   cyphercore_artifact_name_ce00bafc_like    INDEX     z   CREATE INDEX cyphercore_artifact_name_ce00bafc_like ON public.cyphercore_artifact USING btree (name varchar_pattern_ops);
 :   DROP INDEX public.cyphercore_artifact_name_ce00bafc_like;
       public         postgres    false    236                       1259    24637 !   cyphercore_artifact_slug_7fe7f1ae    INDEX     a   CREATE INDEX cyphercore_artifact_slug_7fe7f1ae ON public.cyphercore_artifact USING btree (slug);
 5   DROP INDEX public.cyphercore_artifact_slug_7fe7f1ae;
       public         postgres    false    236                       1259    24638 &   cyphercore_artifact_slug_7fe7f1ae_like    INDEX     z   CREATE INDEX cyphercore_artifact_slug_7fe7f1ae_like ON public.cyphercore_artifact USING btree (slug varchar_pattern_ops);
 :   DROP INDEX public.cyphercore_artifact_slug_7fe7f1ae_like;
       public         postgres    false    236                       1259    24640 *   cyphercore_artifact_sourcebook_id_73758750    INDEX     s   CREATE INDEX cyphercore_artifact_sourcebook_id_73758750 ON public.cyphercore_artifact USING btree (sourcebook_id);
 >   DROP INDEX public.cyphercore_artifact_sourcebook_id_73758750;
       public         postgres    false    236            '           1259    24735 2   cyphercore_character_abilities_ability_id_7858c0e9    INDEX     �   CREATE INDEX cyphercore_character_abilities_ability_id_7858c0e9 ON public.cyphercore_character_abilities USING btree (ability_id);
 F   DROP INDEX public.cyphercore_character_abilities_ability_id_7858c0e9;
       public         postgres    false    240            (           1259    24734 4   cyphercore_character_abilities_character_id_123abe4d    INDEX     �   CREATE INDEX cyphercore_character_abilities_character_id_123abe4d ON public.cyphercore_character_abilities USING btree (character_id);
 H   DROP INDEX public.cyphercore_character_abilities_character_id_123abe4d;
       public         postgres    false    240                       1259    24690 +   cyphercore_character_descriptor_id_87c1e327    INDEX     u   CREATE INDEX cyphercore_character_descriptor_id_87c1e327 ON public.cyphercore_character USING btree (descriptor_id);
 ?   DROP INDEX public.cyphercore_character_descriptor_id_87c1e327;
       public         postgres    false    238                       1259    24691 &   cyphercore_character_focus_id_3743e3e0    INDEX     k   CREATE INDEX cyphercore_character_focus_id_3743e3e0 ON public.cyphercore_character USING btree (focus_id);
 :   DROP INDEX public.cyphercore_character_focus_id_3743e3e0;
       public         postgres    false    238                       1259    24687 '   cyphercore_character_name_0940b62c_like    INDEX     |   CREATE INDEX cyphercore_character_name_0940b62c_like ON public.cyphercore_character USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.cyphercore_character_name_0940b62c_like;
       public         postgres    false    238            "           1259    24688 "   cyphercore_character_slug_5366b8b5    INDEX     c   CREATE INDEX cyphercore_character_slug_5366b8b5 ON public.cyphercore_character USING btree (slug);
 6   DROP INDEX public.cyphercore_character_slug_5366b8b5;
       public         postgres    false    238            #           1259    24689 '   cyphercore_character_slug_5366b8b5_like    INDEX     |   CREATE INDEX cyphercore_character_slug_5366b8b5_like ON public.cyphercore_character USING btree (slug varchar_pattern_ops);
 ;   DROP INDEX public.cyphercore_character_slug_5366b8b5_like;
       public         postgres    false    238            $           1259    24692 %   cyphercore_character_type_id_f12ec437    INDEX     i   CREATE INDEX cyphercore_character_type_id_f12ec437 ON public.cyphercore_character USING btree (type_id);
 9   DROP INDEX public.cyphercore_character_type_id_f12ec437;
       public         postgres    false    238            7           1259    41061 1   cyphercore_characterartifact_artifact_id_edab2c9e    INDEX     �   CREATE INDEX cyphercore_characterartifact_artifact_id_edab2c9e ON public.cyphercore_characterartifact USING btree (artifact_id);
 E   DROP INDEX public.cyphercore_characterartifact_artifact_id_edab2c9e;
       public         postgres    false    248            8           1259    41062 2   cyphercore_characterartifact_character_id_ea801290    INDEX     �   CREATE INDEX cyphercore_characterartifact_character_id_ea801290 ON public.cyphercore_characterartifact USING btree (character_id);
 F   DROP INDEX public.cyphercore_characterartifact_character_id_ea801290;
       public         postgres    false    248            3           1259    41041 0   cyphercore_charactercypher_character_id_03702696    INDEX        CREATE INDEX cyphercore_charactercypher_character_id_03702696 ON public.cyphercore_charactercypher USING btree (character_id);
 D   DROP INDEX public.cyphercore_charactercypher_character_id_03702696;
       public         postgres    false    246            4           1259    41042 -   cyphercore_charactercypher_cypher_id_a0ec9ac4    INDEX     y   CREATE INDEX cyphercore_charactercypher_cypher_id_a0ec9ac4 ON public.cyphercore_charactercypher USING btree (cypher_id);
 A   DROP INDEX public.cyphercore_charactercypher_cypher_id_a0ec9ac4;
       public         postgres    false    246            /           1259    41018 3   cyphercore_characterequipment_character_id_a614ca36    INDEX     �   CREATE INDEX cyphercore_characterequipment_character_id_a614ca36 ON public.cyphercore_characterequipment USING btree (character_id);
 G   DROP INDEX public.cyphercore_characterequipment_character_id_a614ca36;
       public         postgres    false    244            0           1259    41019 3   cyphercore_characterequipment_equipment_id_e47a4775    INDEX     �   CREATE INDEX cyphercore_characterequipment_equipment_id_e47a4775 ON public.cyphercore_characterequipment USING btree (equipment_id);
 G   DROP INDEX public.cyphercore_characterequipment_equipment_id_e47a4775;
       public         postgres    false    244            +           1259    32826 /   cyphercore_characterskill_character_id_145f350e    INDEX     }   CREATE INDEX cyphercore_characterskill_character_id_145f350e ON public.cyphercore_characterskill USING btree (character_id);
 C   DROP INDEX public.cyphercore_characterskill_character_id_145f350e;
       public         postgres    false    242            .           1259    32827 +   cyphercore_characterskill_skill_id_6032d749    INDEX     u   CREATE INDEX cyphercore_characterskill_skill_id_6032d749 ON public.cyphercore_characterskill USING btree (skill_id);
 ?   DROP INDEX public.cyphercore_characterskill_skill_id_6032d749;
       public         postgres    false    242            �           1259    24671 $   cyphercore_cypher_name_104c07ca_like    INDEX     v   CREATE INDEX cyphercore_cypher_name_104c07ca_like ON public.cyphercore_cypher USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.cyphercore_cypher_name_104c07ca_like;
       public         postgres    false    210            �           1259    17406    cyphercore_cypher_slug_0e3d54ec    INDEX     ]   CREATE INDEX cyphercore_cypher_slug_0e3d54ec ON public.cyphercore_cypher USING btree (slug);
 3   DROP INDEX public.cyphercore_cypher_slug_0e3d54ec;
       public         postgres    false    210            �           1259    17407 $   cyphercore_cypher_slug_0e3d54ec_like    INDEX     v   CREATE INDEX cyphercore_cypher_slug_0e3d54ec_like ON public.cyphercore_cypher USING btree (slug varchar_pattern_ops);
 8   DROP INDEX public.cyphercore_cypher_slug_0e3d54ec_like;
       public         postgres    false    210            �           1259    17408 (   cyphercore_cypher_sourcebook_id_5b097526    INDEX     o   CREATE INDEX cyphercore_cypher_sourcebook_id_5b097526 ON public.cyphercore_cypher USING btree (sourcebook_id);
 <   DROP INDEX public.cyphercore_cypher_sourcebook_id_5b097526;
       public         postgres    false    210            �           1259    17409 (   cyphercore_descriptor_name_e9fe6d6e_like    INDEX     ~   CREATE INDEX cyphercore_descriptor_name_e9fe6d6e_like ON public.cyphercore_descriptor USING btree (name varchar_pattern_ops);
 <   DROP INDEX public.cyphercore_descriptor_name_e9fe6d6e_like;
       public         postgres    false    212            �           1259    17410 #   cyphercore_descriptor_slug_a6544323    INDEX     e   CREATE INDEX cyphercore_descriptor_slug_a6544323 ON public.cyphercore_descriptor USING btree (slug);
 7   DROP INDEX public.cyphercore_descriptor_slug_a6544323;
       public         postgres    false    212            �           1259    17411 (   cyphercore_descriptor_slug_a6544323_like    INDEX     ~   CREATE INDEX cyphercore_descriptor_slug_a6544323_like ON public.cyphercore_descriptor USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.cyphercore_descriptor_slug_a6544323_like;
       public         postgres    false    212            �           1259    17412 ,   cyphercore_descriptor_sourcebook_id_9f8023cd    INDEX     w   CREATE INDEX cyphercore_descriptor_sourcebook_id_9f8023cd ON public.cyphercore_descriptor USING btree (sourcebook_id);
 @   DROP INDEX public.cyphercore_descriptor_sourcebook_id_9f8023cd;
       public         postgres    false    212            �           1259    41157 '   cyphercore_equipment_name_defe972e_like    INDEX     |   CREATE INDEX cyphercore_equipment_name_defe972e_like ON public.cyphercore_equipment USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.cyphercore_equipment_name_defe972e_like;
       public         postgres    false    214            �           1259    17414 "   cyphercore_equipment_slug_4eddb5fb    INDEX     c   CREATE INDEX cyphercore_equipment_slug_4eddb5fb ON public.cyphercore_equipment USING btree (slug);
 6   DROP INDEX public.cyphercore_equipment_slug_4eddb5fb;
       public         postgres    false    214            �           1259    17415 '   cyphercore_equipment_slug_4eddb5fb_like    INDEX     |   CREATE INDEX cyphercore_equipment_slug_4eddb5fb_like ON public.cyphercore_equipment USING btree (slug varchar_pattern_ops);
 ;   DROP INDEX public.cyphercore_equipment_slug_4eddb5fb_like;
       public         postgres    false    214            �           1259    17416 +   cyphercore_equipment_sourcebook_id_35248e09    INDEX     u   CREATE INDEX cyphercore_equipment_sourcebook_id_35248e09 ON public.cyphercore_equipment USING btree (sourcebook_id);
 ?   DROP INDEX public.cyphercore_equipment_sourcebook_id_35248e09;
       public         postgres    false    214            �           1259    17417 #   cyphercore_focus_name_6b204cd7_like    INDEX     t   CREATE INDEX cyphercore_focus_name_6b204cd7_like ON public.cyphercore_focus USING btree (name varchar_pattern_ops);
 7   DROP INDEX public.cyphercore_focus_name_6b204cd7_like;
       public         postgres    false    216            �           1259    17418    cyphercore_focus_slug_e97950c1    INDEX     [   CREATE INDEX cyphercore_focus_slug_e97950c1 ON public.cyphercore_focus USING btree (slug);
 2   DROP INDEX public.cyphercore_focus_slug_e97950c1;
       public         postgres    false    216            �           1259    17419 #   cyphercore_focus_slug_e97950c1_like    INDEX     t   CREATE INDEX cyphercore_focus_slug_e97950c1_like ON public.cyphercore_focus USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.cyphercore_focus_slug_e97950c1_like;
       public         postgres    false    216            �           1259    17420 '   cyphercore_focus_sourcebook_id_73f475ce    INDEX     m   CREATE INDEX cyphercore_focus_sourcebook_id_73f475ce ON public.cyphercore_focus USING btree (sourcebook_id);
 ;   DROP INDEX public.cyphercore_focus_sourcebook_id_73f475ce;
       public         postgres    false    216            �           1259    17421 +   cyphercore_focusability_ability_id_85c3749a    INDEX     u   CREATE INDEX cyphercore_focusability_ability_id_85c3749a ON public.cyphercore_focusability USING btree (ability_id);
 ?   DROP INDEX public.cyphercore_focusability_ability_id_85c3749a;
       public         postgres    false    218            �           1259    17422 )   cyphercore_focusability_focus_id_4e08d994    INDEX     q   CREATE INDEX cyphercore_focusability_focus_id_4e08d994 ON public.cyphercore_focusability USING btree (focus_id);
 =   DROP INDEX public.cyphercore_focusability_focus_id_4e08d994;
       public         postgres    false    218            �           1259    17425 #   cyphercore_skill_name_a62c2dfe_like    INDEX     t   CREATE INDEX cyphercore_skill_name_a62c2dfe_like ON public.cyphercore_skill USING btree (name varchar_pattern_ops);
 7   DROP INDEX public.cyphercore_skill_name_a62c2dfe_like;
       public         postgres    false    220            �           1259    17426 $   cyphercore_source_name_9dd772e6_like    INDEX     z   CREATE INDEX cyphercore_source_name_9dd772e6_like ON public.cyphercore_sourcebook USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.cyphercore_source_name_9dd772e6_like;
       public         postgres    false    222            �           1259    17427 "   cyphercore_type_name_0d313a9e_like    INDEX     r   CREATE INDEX cyphercore_type_name_0d313a9e_like ON public.cyphercore_type USING btree (name varchar_pattern_ops);
 6   DROP INDEX public.cyphercore_type_name_0d313a9e_like;
       public         postgres    false    224            �           1259    17428    cyphercore_type_slug_464a0a26    INDEX     Y   CREATE INDEX cyphercore_type_slug_464a0a26 ON public.cyphercore_type USING btree (slug);
 1   DROP INDEX public.cyphercore_type_slug_464a0a26;
       public         postgres    false    224            �           1259    17429 "   cyphercore_type_slug_464a0a26_like    INDEX     r   CREATE INDEX cyphercore_type_slug_464a0a26_like ON public.cyphercore_type USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.cyphercore_type_slug_464a0a26_like;
       public         postgres    false    224                        1259    17430 &   cyphercore_type_sourcebook_id_b0693c82    INDEX     k   CREATE INDEX cyphercore_type_sourcebook_id_b0693c82 ON public.cyphercore_type USING btree (sourcebook_id);
 :   DROP INDEX public.cyphercore_type_sourcebook_id_b0693c82;
       public         postgres    false    224                       1259    17431 *   cyphercore_typeability_ability_id_68b8a346    INDEX     s   CREATE INDEX cyphercore_typeability_ability_id_68b8a346 ON public.cyphercore_typeability USING btree (ability_id);
 >   DROP INDEX public.cyphercore_typeability_ability_id_68b8a346;
       public         postgres    false    226                       1259    17432 '   cyphercore_typeability_type_id_a47d67fe    INDEX     m   CREATE INDEX cyphercore_typeability_type_id_a47d67fe ON public.cyphercore_typeability USING btree (type_id);
 ;   DROP INDEX public.cyphercore_typeability_type_id_a47d67fe;
       public         postgres    false    226                       1259    17433 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    228                       1259    17434 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    228                       1259    17435 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    234                       1259    17436 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    234            ;           2606    17437 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    2993    200    198            <           2606    17442 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    2982    198    196            =           2606    17447 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    200    230    3084            >           2606    17452 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    2982    196    203            ?           2606    17457 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    203    202    2995            @           2606    17462 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    206    200    2993            A           2606    17467 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2995    202    206            B           2606    17472 I   cyphercore_ability cyphercore_ability_sourcebook_id_cfa3b9d9_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_ability
    ADD CONSTRAINT cyphercore_ability_sourcebook_id_cfa3b9d9_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.cyphercore_ability DROP CONSTRAINT cyphercore_ability_sourcebook_id_cfa3b9d9_fk_cyphercor;
       public       postgres    false    208    222    3064            N           2606    24632 K   cyphercore_artifact cyphercore_artifact_sourcebook_id_73758750_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_artifact
    ADD CONSTRAINT cyphercore_artifact_sourcebook_id_73758750_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cyphercore_artifact DROP CONSTRAINT cyphercore_artifact_sourcebook_id_73758750_fk_cyphercor;
       public       postgres    false    3064    236    222            S           2606    24727 T   cyphercore_character_abilities cyphercore_character_ability_id_7858c0e9_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_character_abilities
    ADD CONSTRAINT cyphercore_character_ability_id_7858c0e9_fk_cyphercor FOREIGN KEY (ability_id) REFERENCES public.cyphercore_ability(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cyphercore_character_abilities DROP CONSTRAINT cyphercore_character_ability_id_7858c0e9_fk_cyphercor;
       public       postgres    false    208    240    3015            Z           2606    41051 S   cyphercore_characterartifact cyphercore_character_artifact_id_edab2c9e_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_characterartifact
    ADD CONSTRAINT cyphercore_character_artifact_id_edab2c9e_fk_cyphercor FOREIGN KEY (artifact_id) REFERENCES public.cyphercore_artifact(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cyphercore_characterartifact DROP CONSTRAINT cyphercore_character_artifact_id_edab2c9e_fk_cyphercor;
       public       postgres    false    236    3095    248            X           2606    41031 R   cyphercore_charactercypher cyphercore_character_character_id_03702696_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_charactercypher
    ADD CONSTRAINT cyphercore_character_character_id_03702696_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.cyphercore_charactercypher DROP CONSTRAINT cyphercore_character_character_id_03702696_fk_cyphercor;
       public       postgres    false    3105    238    246            R           2606    24722 V   cyphercore_character_abilities cyphercore_character_character_id_123abe4d_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_character_abilities
    ADD CONSTRAINT cyphercore_character_character_id_123abe4d_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cyphercore_character_abilities DROP CONSTRAINT cyphercore_character_character_id_123abe4d_fk_cyphercor;
       public       postgres    false    3105    238    240            T           2606    32816 Q   cyphercore_characterskill cyphercore_character_character_id_145f350e_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_characterskill
    ADD CONSTRAINT cyphercore_character_character_id_145f350e_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.cyphercore_characterskill DROP CONSTRAINT cyphercore_character_character_id_145f350e_fk_cyphercor;
       public       postgres    false    3105    238    242            V           2606    41008 U   cyphercore_characterequipment cyphercore_character_character_id_a614ca36_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_characterequipment
    ADD CONSTRAINT cyphercore_character_character_id_a614ca36_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.cyphercore_characterequipment DROP CONSTRAINT cyphercore_character_character_id_a614ca36_fk_cyphercor;
       public       postgres    false    238    3105    244            [           2606    41056 T   cyphercore_characterartifact cyphercore_character_character_id_ea801290_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_characterartifact
    ADD CONSTRAINT cyphercore_character_character_id_ea801290_fk_cyphercor FOREIGN KEY (character_id) REFERENCES public.cyphercore_character(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cyphercore_characterartifact DROP CONSTRAINT cyphercore_character_character_id_ea801290_fk_cyphercor;
       public       postgres    false    248    3105    238            Y           2606    41036 O   cyphercore_charactercypher cyphercore_character_cypher_id_a0ec9ac4_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_charactercypher
    ADD CONSTRAINT cyphercore_character_cypher_id_a0ec9ac4_fk_cyphercor FOREIGN KEY (cypher_id) REFERENCES public.cyphercore_cypher(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.cyphercore_charactercypher DROP CONSTRAINT cyphercore_character_cypher_id_a0ec9ac4_fk_cyphercor;
       public       postgres    false    246    3023    210            O           2606    24672 M   cyphercore_character cyphercore_character_descriptor_id_87c1e327_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_descriptor_id_87c1e327_fk_cyphercor FOREIGN KEY (descriptor_id) REFERENCES public.cyphercore_descriptor(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cyphercore_character DROP CONSTRAINT cyphercore_character_descriptor_id_87c1e327_fk_cyphercor;
       public       postgres    false    212    238    3031            W           2606    41013 U   cyphercore_characterequipment cyphercore_character_equipment_id_e47a4775_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_characterequipment
    ADD CONSTRAINT cyphercore_character_equipment_id_e47a4775_fk_cyphercor FOREIGN KEY (equipment_id) REFERENCES public.cyphercore_equipment(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.cyphercore_characterequipment DROP CONSTRAINT cyphercore_character_equipment_id_e47a4775_fk_cyphercor;
       public       postgres    false    244    3039    214            P           2606    24677 R   cyphercore_character cyphercore_character_focus_id_3743e3e0_fk_cyphercore_focus_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_focus_id_3743e3e0_fk_cyphercore_focus_id FOREIGN KEY (focus_id) REFERENCES public.cyphercore_focus(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.cyphercore_character DROP CONSTRAINT cyphercore_character_focus_id_3743e3e0_fk_cyphercore_focus_id;
       public       postgres    false    238    3047    216            U           2606    32821 M   cyphercore_characterskill cyphercore_character_skill_id_6032d749_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_characterskill
    ADD CONSTRAINT cyphercore_character_skill_id_6032d749_fk_cyphercor FOREIGN KEY (skill_id) REFERENCES public.cyphercore_skill(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cyphercore_characterskill DROP CONSTRAINT cyphercore_character_skill_id_6032d749_fk_cyphercor;
       public       postgres    false    3059    220    242            Q           2606    24682 P   cyphercore_character cyphercore_character_type_id_f12ec437_fk_cyphercore_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_character
    ADD CONSTRAINT cyphercore_character_type_id_f12ec437_fk_cyphercore_type_id FOREIGN KEY (type_id) REFERENCES public.cyphercore_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cyphercore_character DROP CONSTRAINT cyphercore_character_type_id_f12ec437_fk_cyphercore_type_id;
       public       postgres    false    224    3069    238            C           2606    17477 G   cyphercore_cypher cyphercore_cypher_sourcebook_id_5b097526_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_cypher
    ADD CONSTRAINT cyphercore_cypher_sourcebook_id_5b097526_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.cyphercore_cypher DROP CONSTRAINT cyphercore_cypher_sourcebook_id_5b097526_fk_cyphercor;
       public       postgres    false    222    210    3064            D           2606    17482 N   cyphercore_descriptor cyphercore_descripto_sourcebook_id_9f8023cd_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_descriptor
    ADD CONSTRAINT cyphercore_descripto_sourcebook_id_9f8023cd_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.cyphercore_descriptor DROP CONSTRAINT cyphercore_descripto_sourcebook_id_9f8023cd_fk_cyphercor;
       public       postgres    false    222    212    3064            E           2606    17492 M   cyphercore_equipment cyphercore_equipment_sourcebook_id_35248e09_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_equipment
    ADD CONSTRAINT cyphercore_equipment_sourcebook_id_35248e09_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cyphercore_equipment DROP CONSTRAINT cyphercore_equipment_sourcebook_id_35248e09_fk_cyphercor;
       public       postgres    false    3064    214    222            F           2606    17497 E   cyphercore_focus cyphercore_focus_sourcebook_id_73f475ce_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_focus
    ADD CONSTRAINT cyphercore_focus_sourcebook_id_73f475ce_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cyphercore_focus DROP CONSTRAINT cyphercore_focus_sourcebook_id_73f475ce_fk_cyphercor;
       public       postgres    false    222    3064    216            G           2606    17502 M   cyphercore_focusability cyphercore_focusabil_ability_id_85c3749a_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_focusability
    ADD CONSTRAINT cyphercore_focusabil_ability_id_85c3749a_fk_cyphercor FOREIGN KEY (ability_id) REFERENCES public.cyphercore_ability(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cyphercore_focusability DROP CONSTRAINT cyphercore_focusabil_ability_id_85c3749a_fk_cyphercor;
       public       postgres    false    218    3015    208            H           2606    17507 K   cyphercore_focusability cyphercore_focusabil_focus_id_4e08d994_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_focusability
    ADD CONSTRAINT cyphercore_focusabil_focus_id_4e08d994_fk_cyphercor FOREIGN KEY (focus_id) REFERENCES public.cyphercore_focus(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cyphercore_focusability DROP CONSTRAINT cyphercore_focusabil_focus_id_4e08d994_fk_cyphercor;
       public       postgres    false    216    218    3047            I           2606    17517 C   cyphercore_type cyphercore_type_sourcebook_id_b0693c82_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_type
    ADD CONSTRAINT cyphercore_type_sourcebook_id_b0693c82_fk_cyphercor FOREIGN KEY (sourcebook_id) REFERENCES public.cyphercore_sourcebook(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.cyphercore_type DROP CONSTRAINT cyphercore_type_sourcebook_id_b0693c82_fk_cyphercor;
       public       postgres    false    224    222    3064            J           2606    17522 L   cyphercore_typeability cyphercore_typeabili_ability_id_68b8a346_fk_cyphercor    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_typeability
    ADD CONSTRAINT cyphercore_typeabili_ability_id_68b8a346_fk_cyphercor FOREIGN KEY (ability_id) REFERENCES public.cyphercore_ability(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.cyphercore_typeability DROP CONSTRAINT cyphercore_typeabili_ability_id_68b8a346_fk_cyphercor;
       public       postgres    false    208    3015    226            K           2606    17527 T   cyphercore_typeability cyphercore_typeability_type_id_a47d67fe_fk_cyphercore_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cyphercore_typeability
    ADD CONSTRAINT cyphercore_typeability_type_id_a47d67fe_fk_cyphercore_type_id FOREIGN KEY (type_id) REFERENCES public.cyphercore_type(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cyphercore_typeability DROP CONSTRAINT cyphercore_typeability_type_id_a47d67fe_fk_cyphercore_type_id;
       public       postgres    false    226    224    3069            L           2606    17532 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    228    230    3084            M           2606    17537 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    202    2995    228            �      x������ � �      �      x������ � �      �   �  x�m�K��0D��)|�	$�^�5&b��h�0���`U�>�vH�T�$��>=���p����-/��>��������ߧ�uPL1X�<܆M�0�`E����u�����'l-}�Ƃm��b�[�-�_��9�2�k�I�x�8J�H�	� ��:,�
�/�sr}�������� ��x?=��y��<�:���{ƺJz%0z*���	��P�u��݄8����Ao�:��Zv$����8o�b�����T��+a'���� <�.X�G�Ki�w��J!� Դ�e꟫9��õ��\>���i�AD���,N_�m��/�.8��(}�V�+i&8�#��M1�xw��MJ^�$�Ǧ�D�$�:D�=�&�uz���K�&=d)�Mn���s����e�M�Ru�1�`U;)���������7������TW1�)UXL��@�[k��K?�#[��b$VR����M�T�x}Mӏ�{�ت���������j�o7��[��" �����h7��c]�gu�V�D@���z���;���l������_�Z5��bu��J��<���Y�����H�V�����ۨ�Rl|]�u��x���0�4��l&���PVe����_}S�c*mUț|\%O#y�����Ό��t���J�F�1��iN�E&$����1�}m]>�T�QY��a�8���2�2-w�+�=i�*4*Ґ ���(D~Yk��
2e      �   �   x�3�,H�NI3�/�H425S14 ������`�<�*�t� /��\73�r'�t�p�rS}g���Ғ�0'g��R�Ls��2?_[N#C]s]#s+#K+=cCC��)g	gbJnf'� !L�����������m����� '
      �      x������ � �      �      x������ � �      �      x��ےW�%���
<fZ4f��K�a��P��RI-�Z#�6��@"D ��T���e̺_���K��r�}	�T�N���c�*�{����˯��L>�6��W˾j�ɓ��}Y�&?6�iq�]�W�b�=N�l�o�i]��Ow�,�E���]���U��ӣ�z_���N���C_>��[�}3�ꪯ
�ۄ�\�����e����z5��Y}P76�W�l�e��vZ�������E}[��:���n���~z�s`r��P/7��C%�/:y�X�*��؆{����h�i���t�N>U?C����i��գ�;���o��n��g.��j�e/�*z��z]�e�ˈ������<lڕ����V�+W�Ӳ�Q�M�$m��I�n�]�G.�S��p�_��6]����e��Z֠>bqn�VҮ�AUe�{Z��zU�ےO���b����t��ޖ]7��i%�V2�n_.�Q*-r=����h���~�ս�����ɗX�v����r�U],�e;��ǜbҪ�a��|�	OuW�\��ruX��c���?���MV|ɼ�K�~���j�jQ�d�+'_�h�@0w�r?]˷]�Vw�*��f�o���\���"򋲿/�Z�Mu���5͖̿�+�o�澼���W������wo[���ۉ�ug_+"f�Mݗۭ��������4ղL>����l�L��5��g�ֺ�ϙ���be��Dݵ���B��{n_���p��ȟ�#��L�He1��4 6xΪ��M/��*ۮ�)���Q�������d��L/���ղ�MEWbT�e��o˟+	�%���s�y��ŏ�U��N�V�WE+��Fד�Zy���r״����3�[�TV���W���L�R~�m�ʰ���ޣ��B2>���b6��r)��i+9�`��m!ߴ��U���J�d�����w�W��~:���������U~�I"��Uf�S�4;Y�m����Tט��撛e�}�:dy���s��Q��?�N���y*9�e�v�y|����~9yA��P��M��(0?l�-6�\�����Ů�z�~(�.�����0��Mr�ʞ��ߗm�P��jW^�h�uQm1o��iq��%��(���Q�)��6���_Z���]��+Df�V#/�H�vY�u��,�,�}�'���b+S�?��M��?qf�r����f'/hd��7͔3�n���]��sn0�O'_7�r7����qiH)�v=�~-����`˝��0^�.����tߦ꣖�m�e�/ZQ%��^S����/�5TԐ^ym��"q��|f�]e�������U�/Dg|�'ô�U9�J�^��Kw2>>���`����&�\ƭߺ;�*QM��:WeK�,�D��Oح,�𕐿���4�HȔJ�ι���z���]���#ݵ��r����j���"�ݵ�#e�:yR��\������?�ꙉ�[yE������Ĺ�'�&ԣ�DM̹�~3Su��d���|�s���7���MO��b�X���X�'����-2R�ٲ?t����Y�@����澞^$��eTf:=�j��/d�D����r��6�N�;�����WSZ�t2f��Z��vWl�`h�ۢ]�Z��2�`��MCA-�� 
V'\�G��F�ZeW�=o�.��ޯ�Q�7���mS�N��6b�:]U�+���Է=TX&�<A��|�'�FO�MY�eU��[4�qs�\�5�����_��˩yR��H�^��|^t��E�:�<2!8&�5�����*~�s�u�|A��fӕ1��J�g?%��!�z����q#�؝�ܧ��v��u?���=��/���I<nmu�
��q�ˠ�e�0�dzK>�^��@��f�H�}z�_��̅�G
��Tt�fdӋ('���g���i9g�X|e[���*ݚ]n�+d~/3k������U�(����(|X�������V<����8-�m'ƽ�]�~�Q�.�ن��D�ӷ�A�l�`��~��h�m��A�Y�cq�=�-[����wUW-İ�Ś}}h{�x�I�i�E����b�?떣��Ws�m�˻���\���t��Ix>���y���V�u����B�J6�xV"�zL�l���_���O�֩�-�N�zS�{�4�}�������= ��e[$.@fq�'[�Ɩ���AWa%������T�W{ƈ\R����JB$������Ѿ�+��O��W�f���&������=m�q
��ˇ�b�=���{y�akS!���M�ʕ���u����7�N4��7��ؕ�;��M�=-g����3әZ�f<N]��שwJmG%�v�ǃG;���P��]M��[,��HkQ�u��h:�$H�ι�U���n<�����έ16n��ٞ:1:�|Ǆ�>�|�-��Y��o���:1a���2�j;�ܵ�[U����_ԼW{X�����-h%��&Wj9����������-��6py����e�6�c�_�D7��D�]O�k��J��`���^��zT�c3����l�,�`Qjl!>H��Us�d%p4��-toU<�%�w� Wmz�0\�O�/jsN�ڭ�@Bއ��3s����x�Ng	] 	^�������J������Pd\>�������	ٕjn`"q�t��e÷�i���5�9K�}TwQx8��M��+�l�v[��������_U]{��$�C��=F��B����7�m� �C׵�������'H�H�V�n+�������.��$�>c�'��}�k�u���
�����gRP��nlڧ�����_��zo��7h��q@�J#l� "�b�n�K�C08�f���]?N��N���f�9�8د���E-t\�b7���<M����"�P�ݽ�p}{�7r�l���bD�+5�T�u'���Y�����ca��G/�z�����������t�p��Y�ʞm;=y��
����̐���J�ֲu'��@)���S�]��h��OTe*+" 2f�X��ʇ���S��9T#W!��|��+x����m7ꟲ�N�������vG����R@{�%�%O:��+�R�F )�!|
Y��*�%vE7�e9a�5ް��٬��~[���g�	���
�=��f ,��ϺdRm[�\��}e ��1�x�B!�x-&�6��^v~s�1�s�2�>3��v&�S19���aE��hr�@��Y�8�`���Id����L�Q��~s�M���vs[\������c�&m4t�c�!��[L����/:�����ɼ�i����1n{��2͘7�fY'�*��r?n@/�vy��qiI�<�'��%���Q�2�K�	�h09g��!�x������䔉hW��.,��t�� �TCfwZ����:9��3��Yz_t�;����]_O��4�aV%��͢E.&ز��b[�B� ��f!j�HGU��*� 4�R\���f�5/�z����U�&��^�������sZlM�6YJg�	��<9q��di�TȤ<�|!˲9?+a:b�*��H�1�[M��hz!³�P��C]��ғY�[p�l��D���JFRn�|t�;ۜc��/B�����R�NN���a�^/v�-�*��-7�+�V�B���ɢ�$�M�r��c�s'S&Vk�<��\�T�X�n3b�d9y�Xv%��g
Ge&�V^Q#�*�X=
�_z�|�<���HȊ�L����V��&iUU�b%a�r�~O��0��]_Mgi.VSu�O865�E�3�t���M�oY�����~qu4�aT��-��1u�h�>�:��=�78#�4Ԕ['�I�K4�a�9N�Q*�"��n+1�dcU[x��{#��͡mE�ץ�n-��l�l��1�j����,�ع{��=~�X7�œ�7��eȼ�ǒl|5�5<shkMF�p�/5di���$	.���&Փ��w䳇�O���4�͗������� ��추ٽ�y�����K�k!�ob�.��9S	ORXr���_���M+mT>�Tٙ]ϓtͼD�2f�V����ě�ѝ��qXj��NXٶ��:x���*z��a��i$M G��bG�N\�N,�]���4bn��-�b�B�v��$8�Ww0    �>!��˸N���9���f�^"_#��I~��v�j���D;�z� ��#�\���a����������9��K�A7�D��T�<�T�`�[���`�4�j&���Qt!����4ݕqRE�`�W���{��td��C1ˊs�q|áI�=eq�ݸ1�����7���� ������V)F�G\�1��m	6$X̮���>M_� �j�M�Zt��i�w�:+y���t����e��Vቲ3C���@��D<���&=�L*�N6��Ndb���Ĉ��b�V�Bآ�hK$AU�āFc�t\����,z� �}j���l�����Zu�<��آ�y@�t�(�UbV�U�U8	�K���\�DJ�D}J�돘���/EU�'��vC�kvVE���1������hC�F�Q\����D6�q�n9;�|~���zȓɟ򭣖��C�yS�C'%�j����łA�]љ0���m�.�������6�#�o�����K.���an����fAs<����۲����A�5���o'�яd�{��5}q���TU�e΀�ψ}�%�z6�[��G�i��+�Mt���7�#�"V�0	��!{�3�S��k����Tf*݁���$ڊ�(S��n�<IGrwC�OcO+%9uh$d	 N�U�!���T�����Չx%�J�l������nŬ̓瓷�6Ƹ}������#��G�k�i�}s����^l���#A��L���Vw��̧J>,v��+���C}���c��tV��c��M�����a�DfhS�=�Y�V9@\��M/S�j:Ѥݮ�gĴ)����e�N/�3õ��S��2��\�.�夁" ��b��[�˓d�ٓr��P1�~�����<����ta��*M���z}���&�ar]$�c�H�C�d^�^M^�U}2%'8u�g	oWujdUZ����IK�R��R�U=��������Z�p&����5.�%N�?�~\�~ۓn͉�9~:����_�EՏ !��㺍L���6�	vIxU-'g)�p�m�臘2�xX'����K
���V�)r�0L���u3�b��j�:O�_��(�	����0P>����,*���P��H�H���.�,��'uu��?�1��$����Wn	�x�M�'��o+�]����/&���4;G�ĉ��9/yG�m���\?_@r4]����u����u���q�.��)us5�?��{�#i2��;M�$������Ģ��j�:��P�|�Y۳\�\����Wd4�������� ��1���t,����
鶵�^Dj�ܷEȈ�C�ύ��,�|��0;�]�y:��h�5sg�&A�@�D'�lH��ŴI�V4�'X*U��tש�}!��e�7���Sj���Eq�*'�0����u���K�#h�ir�W`8R�b_,��gA�>4�cB_<(MRWߔS>c�c�����7M���(��=�I�JFJ)5�8���ԭ�Pj���T1�������G�%��eTE ��UQu6�r���Ŀ_HF;T6��Ap�#S�������F-��j��%��]�|�e�8[+pke)�ԡhU5Y��ĺy�!�H�m��\�U���2��o�xC��W� ��m����*�GuZM[*HN��b}&^'H&���u�Nߊ<7][9�3%�8�V�_;(_��EDH��x��x`hV�u#P��NefCĤM=ц:�Y�Hk��C�,43���<�ʒi:�b]n�:�uѾ����?���0�o��jy���t�hk���]�&���h+�W1�l����~�"�ӽ�g4L�h�����	Z���}�9��3��+U���3���{88��4֜��/�SI�Ҿ��?Ʋ��0%,u+�=�a���)N,�{��0��&��ݶ8�<3�����t�ib���=���ƫ�xIs#�i�D�2�`~��ʤJp;z�)��L�=#�0���)�?Ъ���`^�N���w���,�C��#�Ȁe�ߦp���j��ɇ3@8P��P��k��qźm��խ��Ҝ��Gӷ��1}���Y4�*��'��.Z ^�v���某x�AZDx^L��p6�3�Zň0N��O�KP�1�r�ژ$�>����ά
¯RPBŚ�Q?�_����EVhba��n8ĩ�d�Uu��^%�M@�"~V�{T|��c+���p �fp�V�^�pv��SC-��r���F�77ϯ&(k�����
�ZQ�QIF)�� a}_N�/;1m�:��̸ԯg�S��"��krdp�D��1^�apWA��i�]��D�t��ČX��\���q���k�*b���צ�~���@D3��:eS�R1���k,�)ڬY��x\�Wq?3�"��4��H,�9WĆa��p{\�ӯyܘԌY.�KL(x}�d�l�RD�蠗�Ld�'*��Ѱ�'���O�n�XB��l�Q���і"F	���'����ʡ�QjʌKyQ��둼*������?��+<��a��8���{�S_~9��߽|	d�S]bi??1��zT�NGa]�-w�Әt�o���Ä��¤�!���%��Y[�\��CE8mT�r�AManN]j��K�d���|%�+�HG~%�i~d�$�*�@姢`y��6}^��$���S��T'�J�?�5����0�ܣ�"��)�pRodGXW�ٴģŨ%�.���*3�J5��|(������Ӈ�R������*�X;��3�q��L݌�9�2��eKX�c1��>ˏݽ�c���>A���۫��2�@Qa<W�@�z5,U�o��B{Z�0�Dq���l_�����[��sF^�P���=<�hxф�z,�� ����J���q�ԝjځ�Z�ӬV�6�C�Fj�Qcf'
�\�c��N�jԚL7�N"��\^�A1Sa��������ֱ�p],� �[��c�	��ñ���k�`����OlF���pF�ŋ�gr�@�y��9��/��B�q�{7�Ǟt�E���(:x�U���"���D�v[tn�"���2���ǜ[{��q���|��v���'�J�٪��φ�{v�a�pQ�\�+v,�0n):��D�����
Kñ�n�����(���CR^
�Ζ��,�
���֊t}o�p�P����BD�do�@a��D7G�QiB�ޒ�/��nW�`u`���魴����@u+���	��29�8>����%�4	��F E5v��SB���lZG2u���x"���+QM�����ޖ��P7p�QD:�Z�I�S�=l8��mq�Y]*��R�W�-f�E1tg<��8}0a���U��Q��f8����;�~|��5�Z��z�vCrn
�V-�*%bi�Pϫ�-�i
�Mb����V��o���ƭ�ڏ��va��uO�E���81���2�A-��@�� �̾,�Q���������ۦ�i��>����,[�]s�bUc��F��w<����,��*������̟�Und,�d�!SJ����4Pc�y峛Gn��!А,8gfp� c�&eZ:��xX>�U3�:���O�Vy�ݎ��g��eޙ��x:y�*�}�PF��z�l���w��R����I���#?Zt &��͚2wsRjώ����b�P�rg� ���=C]��	�m���tJ���"��q��m��8TZ���|(W�yaT��K'�Ҹb��rĝU7������9+�LKQ����*��*�7.<_�=M����[&�1�"�Xoe �����d���2Ur�q��A8�0�6R��'P��T�Q29wMeF�݀���� 3���)ۊ��
���
��;5�����n4�bS�O)����pT�Z9�xE���RR���ڜ��A�Z�� M����1�jA׬��Ж�w�#F��ڋ���Ư`%G��t@՞	fQ�����|q �t��*ɗ��x�-�b<Zq�V����L��դ�G�\�x�#���0�©�ʳ�}9�j� �|�k�E���*����+�YL�)S��O    �Z���o��ʳ�]�c	���=R�'�X�̾��`��M^o��a�0��K��lIR���a懆���S�PT�І��0z�����$�Lav��j�����a�Ǘ>33�G����ii�;Z�R�=>�#��v���;��c7��X#:�,E����mG=6":vަ�u�����S�-,����X?��GΧV��z�g��bq����t�%G����TYqD�n82�/&���ߗD@���d�+Vzl��L�v���I@hD#��F�龰 v�|J�<��2	ڢ�h[���eb"�A'^^w��w[��Fq�bl�&5�0���IA�����f��w/�O~F���R�juvȈo ���l��+-e��H1u�.��R,x�TaO<�I ��ץX��f�7���D�9�m���
�#�Q�]D���b�V-}Ծ���39[�~�ԉ�|)ֶ,�fiݣU�fn�Ƈ���ϓҫ���F�8�A�OV�б�w�s-���ſ����dn�V���I�c�)lM7h�����5x�[~@��7�#Vz*nEbtN�`hd/��q�*K��ѕ�I�^��}�D,��Y�zY�q�U��*�!ܳ 4Փ�,,P�B�L�r�5�g�-5��m8����ZX����|�
���^�	��e%i����Gr�&*,䜫�ZV��^���1D(/�l�;��K����He�G�0w�gj�k�^W��-��<rq� �8\G5)�4�Ф#�{�x�u�E��9�7#�h�2��Mf�̋�Ǉ�30dz��#Әn��lI�3�Ã����F�q\w��A�4�oQڪ�VcM���r�j��c���m���Dδ| ��4���$����Vu�6XU;sc0ֈ����|u]�En�Xڦ�/�i���p�����*�f�=�h���
=��*�Ǹ���9�l��q�=[$<�3v��!��a};8of����_D�E8�է�H��?��S�/��=K-�+����!��d+�2L$�8�����@_���|^��C�sS]�f_���ꯢ���{Ʌ��p���.��#��2�1��P�?�������*N,�b�Oo��Qe�:<Wq����7�;��������;��G
�03_.bv��"J�e�6R�����6�1s{�XX}25V����yA�<ڹ�|V��#S^v]n��< �C�E���}۠�$���Fo��7�dl����3�����!q�������3��2J�q0��f1��!Bk��6=9"g4�G�:0&ԍ[��Qd�� ö�����b����6�$�"E0{��XTnm�v��eS�d2C�YV��0��y�ǉD��`>Ē.�hW����,�^�F�e��bY�R�ZF�̗�ۣ�(��@�L�:���$s�r򦎌����E� ��K���u�hĖ8�Ţ�R���o +y�ɽs��H�*A�J��h�`�@�Z��R���o��4l1Z�:�Z��(̣s {N�F1$�V���DE�B�%΢A�	q8>p���)����Y�!�S7}\�Ǔo4��Ŷ9�����r�,�-pX����S.Z�4HJ^W+]9d"_���5�&y�)�3��9	@Ό���Lg�?²׍��}A̴�!ˀN)�5��dY�ܮ,�;�A��wPG���H!3Kn4�l����U��]&
r�>���v-ĲFB7�	��<�ۥ����vDf�ј��=�	�v��.cI<wI:���EA�ŝ�<�d���1Z�p`K���\g��z% >�C�X�Ig��E`�L3җ=Y�P��ޒ������!��q��j��͹����'+�y��5�7ٲ�v|n3،\h���3���+pA��2�|�qe7���-�6�6*QO�>o�QMۄ%^��U���Q}{t�B��Ϝsp�I��"U̔⢤�ӧm�E��+��|e۞�U�#lPD*Ñ�=����{���2I�x��,���JD�2PɎ�q�M���%�n�O�Q�"h�@�\��5��g�ȑ��#���l%t�C�}hEp���;'Co\�2,�&�hL�,A���$ր�~���-��t�}����e=\ �%=EӀx�ôɺ�Z,��8@m��K�(h�W�jU8@�����n����`u�큏��N:��jagi�ڲxfN�p�G�vM�Ӯ�W0��R]<����3��A��ӡL�0��-�ހ�GU�9�H+*"ܴ�
�%캈�2K#H��Ɋ�-Y�IZw��Vv��H%`��'��7��rp�R������4�7��Q߄��-�֪���������2��x2"�B���!r�r��m�V�
8�w���3�J:�ޮl�-9ꔊ<���Xs��iv�6y�gR�ZW4��b�Xw.��S�+cv�P�Pu��0���tp���}<�� ���"��A�t�M���B�^�h���҅v���2>	q�ȶ�4_c���������}��9��kV���g���Vn����~P�G��WF����_���ŀ#��%��C)a�7UmA�`b9��G��}2^6GCR�����;jZ6�Ak�A�T��xje$]�(ܳ���߲���szn��
P�z����ua=%�i�-��BC�T�E�`��	^}�i����Y~l[�^�����}yd��W��iS-�9��nKVe&�F����jE@LP:���Ј�KEѳ�s�����8ɳH��]�d�չܑ������B�X��J��D��xot|�����������ҘN3,�*��ל���(��C��&OU9l�x5�(�Bh\`;�1�f��m�������l^zy��M��7"���Y���x�V,9���������t{����\�cU�n����i ހء�1#���%k*;�#����'Ψ-��`�gM�*'��^�f$�jB���l�F�c��RI'�ߧ&돊O��	JS���V��������z�c���o�O/�-�7�=�wf��A\�U?��3�'��>��W}��<���]#��PƋ�ΛK�+�C��4A]�f���������L�A���n��>D0H�%Bٵ�����NO�4YtL�A&�<rQ��e�dUL=5^v���7i�����߶�����0��(�ϼ�D��@"}�G�O�W�3\k��\6KQ��%�I�'�0���$eZ��\�|i�CE��y��e���(�]謔<¼x�~���+q��Y�^�b�?���3���̯�[Y%���WorGdC�����Px�������zt�;�����-E�H�&[!������{Wc�Q6꓿+�\�(J:Y,���͢<6	��'4h���S���hW���)�N?&����4zk�A�E�<x|�ϙ�c���5�._�KQ��ߒ'��:�J��.MO�]�駤q���C�~�iE��!sl|�]��	������,�qr�����J:f~��~е$������d�J��ˤ�j��Pӆ2e(Ϫ�Vcu� ��x3���>S�톃��Z���p��S_Y�,�-z��̻s���eÅ�՞��]p�5��l;��ᘢ�g\"VX-���]N���}�~emc��L�?�h�N��	Q�:�͋!�6 �r2ۜr蓈��1=�G�6h�H�ɂ��3t���r�����������mx��'��4|z̙]GC�?6���~H?o�9E(�z�Cy�B��30�Wu���1�ne$S�`n��#�� ���B}I��x��J��5jAL����11���	� p��	�eO��jN�̯��#B&��ǟC�T]wvZ7Y�~���4�TB�'hY�صꖽ$G����W{S:��9zP�M�M�#�H3����1��K�:�H�F������X:drn��?����ڊ1u�^ڮJ�PQ]�����e��O��&B~�/û_ȉ!�oU_<�b��>�I�{�vC7�ع,��.2�ڂͥ.G�����b�C/�JqOId`ݚ���D}c�����@M��R�~F��ξ?Q|lچ6�b[��3��?�l��Ў�g���'y����3|�c���p�j�⫕Tg�r��ȡ���Ig�3��f<�g��2s����ɫ�۶̨�x��7��т    m���{}����+l�&�8�i�C�-�v�>�Ļ��im���#�f�R��kO{��3�* �$Ȭ�<�M*e+��iI��ѓ���:X�F'��!�+u44�t�[���L�q�����S˷!��`��r�5#�W��j]���Ëf����Ȁ�ݖ�so�c�s�y�D���2HS�ʦ�|%�,�$Sp~�EV��M�n�]O #����M��b���eҨ��5L����uʜ��+��+/U= �v��hIb���2�w��ad�	�AS�T��J�^Lr����b��'�a~����l������R�۽i�D�f� �:/V]�����j1�>C+�$v���T1�2��^�\�ʲ}E�( 6ލ����������t�X ޶ ���%+�F.xx ���Y��Il�~9�D�(����0�����J���,��݅���{o#V��w����!<�F�1ƚ��k���"(�27����4���'*Q9x��U�Ż��.�dN�ܯ��~�}�l7�;P�ӎ���?��mZj@/%������F�C��[��������K�����DtR[�5�6�e=�u��?&�#�Ȱ<�����x{ 2Ф�.q���2�f/c'�b���}�Zy�y�i &Q0}(o���?�޼ǽ���hN�R!r� �n��$v����I�:�P��@
mick�6*� &L# *�oŹ�l�;b+�����Bвm�H�Hg�֏o/�L��b�D�'1I��(��O5,�7��n����L*(�]��XN����-���z�=�Db�5OqD���H��"�K�e��FM�cz�>x7Rz�`]�掠�>��%,h�JVa5��l�J�� %�~�@[
D�7�P՟�D�Qvꑞ6]9dC�g���ٱ?��URK�� ^���k�2\��685��D�D����2�Z��^��`�����x�`/�o�V����MW͞]��	U�s�X�p�uq]5��}�Y|�,�`(�%7�"˜�JN
�t��,d"V3;CvGQ����:2�*y�_%�ݮڲv{e�ɓ�z�2���?�^�`����B��:%�8#T�Og�:���=��Z�̄L%��Z�x��4
r�t���$�$Ƕ|�z�`�ӄ��*(��퉚/�i�xL��tA�Q,���]����|?d���D����%V�x&��oYk{�D�D8�]���O����j�r|�A�KlEμ�خ�q��C�J�$�2�԰|w���2-s-��Lβ��[c����U��&:�����~$@P��=F���� �y�,d��zZDy9�@!�e�ô`�}���
m�5,��V��'b��
!�%m��q���O'�o!ho�PaW.x8Ǣ��D+����r�x7,��*��Y}��Z� |��Q�%j���;��iN�ҧUN���t�j����+�p��d}J-�}N��ճg��Q�7�R��}�8)����F>)��%�au,�i>�&j�"S��Q��b��U-����[�����AXE�������Ч��>)w�a�θh�����46�����l���� ��ty�u���F�ͩ$�2��R�U�5 �&�*��X�2t�2Λ�
�3���T��*�gJ�t	�2����Z_\;5���/'�d�j�]�wc;�R����HF����o�-�G�ߝ���g�l_�"|�<��z��5���������'kk�xuS��b����s��:���v�R/3"��H�8�y�=R3����"�I��g�����2��|��	��|�Q�R�K%��z]�xuX0{��U@̹�ضa��T��ǔ��cM�R���l�U�-��|���1�(�pn���S0��0��i��6i�ݜڧ���_;+�zE~>��X^K$/�
����r_
G�w$����U����Y|,��X�,q@� [��-�nկ
�0J�IŁ^إ�(x���L6vb�|�����L���@|��f�z[�r��B�ۦ��%�r'P�� DB��YB#�{t�̪�y�h��O�3���r��'��ȝ�:�řR+� �)>��xˈ��;`DJ��s5���ȇ�?`��氈 ��~qj����݅�Z��**��CDX���<Ip�ܒ0D�Y�!�2KJv^��~��V��,����yrz!�ɽߢ����1��3TBֲ�nN�Xl)U���w/,G��k9nb��<S+��v��S�^Lފp��ؙb���l�Xm�x
�\On=/� u�asn�`0],�r���Af=�߯�и=��B��6J��c�U�����2�2����Ϸ"�t4���.~�|�Ǔ7!��V͙��y6�Tg@>���JI6���/�بVI��ؙcHѝ|8V�ȹS#Y� �5F���;�/N��t>�KA_^��O_h�^}h봃�����D����H�� ΄����$����F���y�Mt�)�P���-�-vԗ5(��n�p��;��m���x�])����5��K���Q����&�0WCl�L֤��dk��s��zqT� sL����V�G���y(�H�;�.&,����\��@�Y�2�TVN�Ԡ�g�"r
m-'�X�B-1	|��φtz#��i�+-�ȜP�Q6�RC��$��!ߴ�ɼ �� I�W�i1�s�d��ִ(�P2���\4)�[o�R��v�����������Q%�" @Ds4O������ʐ���qdj��WC.U�o����]u�"*���8aR �'�W�h�_¯��@4XIm�	"4L+h\�"�н���;�$�	g��蓆|�����y�UU��w�-��|�1��eW�Z���ιK�8;X[���պ�8�1űcQv�$h���@� ��2�<|�+c�������vVgk����a������2�F5�d�sπMǑ{�M�o�B'^"Z]}IR�X"�������o��o��e�O˦j����T��nX��K���p�j[�	���2���v����W+>��SXFR��Lo��Fz��E>وl�.=�5�x�SC�����<�(�j7_��6~:��.��Y��9>Xd�|�
:��~fP� ����\is�M��'�<�q�11]�d�̈́*��r}��(��N��1�� I���pK`�x��A$(ڋZ�F�h���Nb�B�YJLdE?�Q߲�X���1K���|��,aޞټ}^*������Hx��IuƬA9O�@�򮜚�� ͰʹV#�;�`�����H
�6d|���ebG��Zڈ%�,���X��7��j�&j��ʶ�jU�ٜEmlo�N����Uk�� 0�I�m�Ty�2����O�z�:�uu�z�'fՔ{�бSƪ�g� \�e���r���f�����ǡPhIo77z�ǋɗő?���ՎB�bɕ�3�e���v��H3��(s�0�sB�� ��Gͤ��t;o��]��W����徸z6����wQ�6�G���)�C�DEKd��by&��=ֆ%=y"��(�UlM?������Y ����6�O'҆^�c3�>�C��z��X�킄�+g#$N�tpNd���D�ӴA^i�L60��x�*��*�J^N�:f_E+�>�u�·h�Ю,�K����X{��N�bus�����k	������x��+�5`�|�eZ��z%�OI��0)��K7-h��.��(C����ې�9���G�k�8^�h�o1�1�M��r�gu���RC^���9�gl�4 �>`�w�P���w�8kc��F�D�C�ɩq��0���E�G�s4|�3�Y�\]�H�hE��)���Ȼ=���X_r|��S�%O�㔒���^��@>�*S���6ZҞl>}}��R�K9I�W�5s�=���t�1O���^�S�v}��L����c�k��hDʓX�Sr��+����YD�������y\�1�4yh�5��͠ű��s���� �����c��8n�Z��P@�e�/Q���w8��ʓC��0���!�Xǈ��މ=E�;t��B�l-    &YZ"z�=*;}qhAV�P����=��I��z�x�Ŧpڙ<��b�v/�j�6��� ��$u�0�%���j0�3�z�f�,�o���Q�'�����]R�>gT�VH�{My��#�X�����o��q,�� a�lI*n����t�צ��Y��a����.^:�6l�Þ�P Ѹ}��E�
j�xF�9?���C��Dp�BX�a��M����RŪ#��LxU�K:J(!��C| �JyT'���=|l�kM��8,�9��1�(0�P��ǅ�x��������3�L
9�����nN��6���=3�h-S�D���U��s�wz���[�(9ٮ?k�3�cC�ͤ��Q�y� b�E ���*ᎨW�:���RQ��(@F��a��;��m�� zf�9b g>���$�S�(�vZۯ��|Q/�2�|r�#�����]������}����<@����<��J����a�&Ɔvo�Ʉo���:�m�\/=j���ֹ_sǋd��P�pn|��׏O�B��8~�-v�G2�S�
`�o[%�1�,���(��.��i@l��V'1�H/@l'0M%�XA"���NfSn�Y�`h� fĩ�P�I�I=�8�i�#�'��ބ]I�������O�i�]��h�Z��+̠f6n���0�ڔ����sb�|W�?ڭ��H 0����:�i�		$q��h�FCRxI���0�퍫��1��(cLs�lKnTa>M�MW~�k���O�z�H��c �V�g�]��0�أ���d��izRr�_?����P@�Gk��e����ʿьzT_'U����U���C4�����DC�Ȑn;Fn��#�_F��h����y/	���Շ=��Ԅ2%Yk!#<b$*���f����w+9���Z�|���x����bf�ж�ͅ���&��JAڙU��!����c~�N�&�7N-�ՠY+��$4y]���֖#`sO9%7�s�����I$~"��!�fH��	Eu!�W�PC��J`܇��B������;M�k7m����`�GI�Ͽ�% r!�eu��G��V�ə%�|2�V��8���J�N��V�.����ټt��}g����;:�t���Mva^0D{���a'�+i{�8����n���tdr��CG���&���E��u�}�A|c�x`Č�[�_S�Q�ą�u���\#�|[�wE������M\�(�i���
5ţ��_Jj�S����j�ӑf�5�ƴó�	��4DɊQS_gu��ι>;-�aG/M�L`h��
Pp�]���1Ѷ�\��'�?�T���Z.�_j�@�4�)P&v�t�Ũ⛥P7	V��R���LEml���7��Aƥ��;4� �p�6GGsmh��Y�L����eڬh,=��8���~�ѧp��oh�|̜�+�ko�S�v�}S�����.k��D�5M;��H9'W�|��|Z��A�P�,�vt��$^_��s��g��e���c�2ajd�:��B����e���C����#ӿ-Zk<���/Z�Y�O�I\4��-2�bU�l-V�f��Q��r��0+�[2�iMe(��>�w�#oW�	:����b��|bz�|<�8:٘�:Kyx>��>}��-M�x�<�K�X����-������EI���I�&�9)n` !6>�H�֜����C�؈��b����hk�AUٲ�&@�I����];���6x}�-��I�[�y�P�6� �p쥅c�������5 ]�$���o\2V�%�X�>�8��I������D{�L�g�mЯ�I��_�[��,�<����y�|�Gk`�����0����2)��2Zl;�;v �`�́�'Vo���~{�(���5�rFj�݀���&>f9�.6���E��X�?�sB0��44�[kIXN�o�|_j$��4���d�|l�I�8f���_
?�j	P<@_����O^M�Q�c����O&o��"x8\C�O�u<<�VeN�l1H-i�1O�M#�!����`UD��зz��s�#�3큭{�x�][�*���z�X��,�BMLܝ��$e�SM/¾��*懴��heNNeR�V���W���m�CWP93�P�$��5������D�K�HL�u:��4�r\A���T�����m��<�]�xBy(Zb(���Q��� ����9ӻ̞X��;Ҏx�j�vM	"�OP�����=}+W�-{G:50�vMm��.��1`9���F��F���/�Z}����H�p���Ձ2��M/�r]N\߼"�{�R#�t��l��=3 kV��;O�2i�Q� jπIf�{�jc��+8�M=Z������d�����wP4�:t��l�����!e>��'��64) ̞���])��g���i^@�� ����Df1:�͒��5�}�t���5���L`��t��|�vm�FTt�g���AN�j@�c�L�m����c ��'�&�y��[��7^'��� ﻧ�sU��m�.��Z��V#����D���n�A'��fl���pW�?j��oС������E�N���{M�o��o��Ǔϛ��I6-���eb�d��Q����I�j}/'o�2l��}K�iI'�7�vS��C��X5B�,����9��=g؃����Q��5�f9�Ag
a��1W�2L���7�ϱ6h���RdR�;B0o��$�:�We��Yt���Mh6�1J�|�}�����S z� �i�^�4K� ���[\{?
r}e1�[=X�����\+���o�B�ȧ6���%�W}6�PZ��^ej&U�y�4�2��.��ֲF���9Y%3�v
9�]8�@�&���	��V�~(�x2"�U�U�gE�\�3Z�N
$N���?�"��P~^�2�ԈQ�~�[��/Ků���m��O���r��"q��'�"ϴ�kpH~�CʻI�9Js�H����'���v�O����e�jR�����|	K443;�4J���دczY���BO��=ZGA����X�f�T(7L5A(|n�dI�E�d�9���p~��K���I�ޢ 8�=���.)��*���DI���I���H	Y�������(�dB�d+�)b�uϦٗI�O�^��!iD�;::��e��D9��Q�_���=�1vs����Z!s29���׭����3�Kl�[��m��{/G�kGt0x�\����RCV#Q�W)W�t:]�x~x,��N�Cq������?���K��b�1����:��,�Zb�O�[�}*4dMR�'k��U�y���^��!�wB^�ζ.�~��fe�O��Y�4b�D'D<�9�m��[�8҇��(����7�z�Y�3D_|U���d�>�v�r�$*�؂"7�P�	C.�i�γ���
 ��
~m�ɗs��RX���C�t����[mM#�zb��g2�^��qN0kfJ�]'i�U� SWJ�V-����C�R뾸�V���Z�*���s�Pr��Ӕ��i�/^8J�Ÿ��"x2Z�;Ng�xf���}I�d�);�g	����z�7Mt���N���/�#�5�'��l϶A�nW�BP�'2�$K]s ��ݿK�� AH"#��O�L*f��4T��yC��ϔ_F�{{��d�B�TWԥ���s���a�����Z�5�&��s�c�����$Q��?�=���>N��8pMA6����I�Й�x��iV#"*��ëm� �*E�c����H��Z�l����a8ö�:�8�@��[��yU���1���Su���k( �����	��@YS̍�j5x���9���w�	�T��/J��-u�y����,,�I_��ǎ}�/lD�=��Sc�H�3xs�f�>\lǲɛ�w�
���N�À��j���=��*R�}����6!n��ב��n������lˑ��j�lB�s�8{F|��+4z�ŠP����{���O�b�J�1!7R@5{��2U%�v^^�����-��*�+�̽+����X�?���0�^t���u�+#����$�m�m�������=    N�q����IYl�S�fd����6����Q�f-|�ge� X6*YV�A��?�����η�i���f��+�yU�o���[��&����g�:~�[�Ʋi�]�!H���1T
(���*�753b�h_�����2R���[bΝ�-���b*57wG@�o���%:�)�w ױ7������2�]��4LB�h)�XO<�:����u�:DX|�\����8`	X����/���.k�k��z��*�0�6˃fI�U�O4�i��G�g���hѰ�����3��7zh�Gni�]ŃD0(�+��[��^q�}�D[�%?�r-v���C���2H�nIb���,�lz��~��̎Y��>�Ȉ��\j�g�o��đ�3�~:��y[A�(�jj� 0t7W��E��Y�*�M���V�" d�P���!`Fd�Gu,�n�;�E9������YΉN�� ?�i?�8�Gk5�>�V�&�d wcկ�n�ٟ���P;.�]R�i\��M����-�R���/21���Bvg	���=���Fm�U1=�M���¦��^�� ��&=6Z��J��Ĵ�i�ƚX�@�N� ����T��e#Ne�=�r�;U°��B�?���䏒�o��@-rU�$��b"�mY=��󱗙N|��iZ�&-�~F+I����p�����u9dӍoǀͶ�~�\_½�|�9�75��;s��ؔ���'�WP���n���m��m�h�*8A�효\`�/*�f�m�D'���c�ߢ�c2ꭩm��ɪ�jhk4|�E�X��R�rk�.��)���ș������+A��<�H2x"�7c�gY��&-tco�!&�X�?�8,k ���5��Z�/�5z�d���޺��m�jΚ_o$c����a��J`ڔ���ͩ��U�$={<�������)�ϱ��ҳxҰ��|_�Y�Hn�1cmG��-:޷Ėv�/�{��!�q�9��UD�)�r\�/ǡ�?i렛�(u��D�;�p�@3d���ȓA*�=���T��8=�NN�]/�F�U���P��Q����'�n$��W�Т�����xT��w�����S��^M�`�+��_���X��2�K_�z-,>�J@;�qy2 ��$P&�(<�BڭQ��*����BM.�j��)����Zt}��򍁏50;|_za��~���<gz�o��$��C�'$;Ujs*��`)�j��m�@�(���1�I��9	"��D�.�>E�{���9��_��ɜ4F^ZF�ģ�6lJ�ӡ[=cz���|��ȵylk(�-.<}�1���ևb��Ӟ�JM9�A���>Ǫ�&��?A�<�HNu��,��ޫ���igt�U>JeOj:�`C�C��%W�(��Y�Y�]W�^��|r'M����)�vg�����)�ad&9{$�uDf�uF��묋�=���4FiOa"��Y�:���ߗtH)�iA�������q��ߍ�p :oA��u�t�WJ�W�k'	���'C�xL�4B	�1���y��#kNٛC|(�O'.�b��V=�M��Լ�IQ#��:���Z���e<����(��'R�/3r�^�s.'�b��]�w�[ŀ�>��N5mn�b%b�Xb�؆{4��"SXu�@�s8M���g�-�X��h��b���\�}�[�2"r+p4��s`P]�o��M��q?jį,nU���p�$R�������Ծ��uPH��D�̀d��E�"���!q7 Y{:~�:-�ҷ !�^�D�Ui@��$Q�(�o�fk�dެ�ĘG�p�m@׮D� 6��y�R;�C�M�(���2dɢh���
�]l�nq ��V	�	21M�t���Ǽ�u���;��i͎����j�P��g;�� ��m>�.`����C~�?��G/%Գ�ˍ��x�2š�r�ohz��{�3�~(�녢�>���-"�&�o�:�g���=j|�T�f𘬕�%-^$��h."{N�����
ԝ;F�1��,�<��1Nd��.~9�$���MO�x�y������!��h�{�X��G�o���y�S�A�x����(\�b��e��R�fжN�<���^�i�m��!!��Ƿ�H̿�[���S�Y���@���A�}q���6�Tr)^L޵≟JЋ_)A�� �<,@h:���W��s����w�(˦���iR(#��^���EqmB{�w��#;�s:A��w���1�苲�>�d�9���:�g3x�K��܆�,:�Me�-Р�ڄ����J=��&'������g�@���z^b�����/dfϑ�����ZDa
�l;�2���������3��zy�6M���T+�@;WH������r��"@�X+�vi�6�L�5�nB�Pm[�%Y*���1g/����K�S�~$�<�o��V�h��[�ɳ�Us8o�;1��`Ͻ��]!aD+�����'AxI&����Z����]@I4+��8�):�_8������;Z�dF=��SF�j%A$�tpm�@�
x�Iڕ�(�1�QK��.0|+�y_Ġ��֠� �
�����u�"I�Z�V�V��q|�˳��X�y�k�����w�[�<�Y6��3;�@KL]��W��3^�CZ_@�C��F��I7�[�42�f�;�`OVa���{�|��$��1��
��_?�|�#�$K���Ak"��k	��-�8��J5zH3[�U�"�v�������cZOr�: fL�G�K���l���X����	S�)(Av�^<xy.(���}4'�j�:�qy:Q"�bq��,�u��Q�3]g�m6(�L#c1�Q6�x���z�;�hqr�iY7��>g:�h�oGL8�׬�׌ޛ7��h��h	\)�e�_�;�5tؖa��p{h����w�J<��n�̭������@�lۄ�(/+Y�	tf+}���@�N���9'��Uԧ��"@�2��JuD�x띤V�#ϡ�f��<NLz�~^�0�'����S<�o%�IS2~�Md&�<��|���cy����Z��6*D[���ڂ
F��&
{"��7e�&�	\޶B�� ��v��p�	*:EHIO� I���.�3�s�ɟ��ݤ�a+t�gCԽ�^�^E��1"^��p�Q�8.���F�,/ݪt7�S�
�#Sl���-��$���<�M��\� �c(X�FF!�.�W�lij́ Fm(l��k��@�ǢP��,��#yǨlf�{Ǽxl ���\+�z��_�|��{��.E��;�*�yDo�U��V��W�gdH�����>>#-oU#5�(���7;��e�a���Y��鰒̥�JoҞ������55ޓ�7U���v��s�r1g�.�6l���A���*�Ꝕ�u��}s��cO@'�<,����X��nv�3��Ktp�+��R��$֕--�訬�5�U�%��[�K�A�����Z���Wޱ~P_޴�-M����A����o�1�qFVX�`Y���*WrG�;֒E���2X5�f0�F?PW���͢<���`�C^^fq�/���7�U�ϣ��:��)�7�oX9����W�?G�/ū{PbԪ��	n���#����V��L�95*(cCFы�I[���h����uĒ����$�d��ޫi�g�Q[E#W��� �˒!6;�B�1:���c�Aӂ( ��E\y�sj��Qh���[ն8ٸ��il�o.����%�A�-���c����j �����xl�]��l�j[���M����𦩖���T6�s�s�x>yW�~RovDGH�8]T�����G�#��R}����]C�����`�)|��,~����A����0@�Fe��S��<(���/\��Mն�ƧQ�4=�-�t��<!s{�҃nwf����bQ��9}����Aø�i�7r8�nW!ᙵ%��?��\��ԫ
�;ԥ/��ҵ̄l�O�iV����<��Byĥg�FD����o�O^8��Z~��49��C'��h�9Gl|G�Muj��nX��R���>:f#ئr���Q-@5�,�p�q/��PC�>�,��d՟w�mw�gi�%:    �#�ƙ��*�����3�jm:s�݀�VxF�J��ԯ��g��k
�&���Z;���v�źT<�s���俲����[|	��PE���� �|�h�zG�_���m�ayل(��m��+��>dN��~�΄G��^���Ks/�z�r�ey� *�%9Eb#�4���_X���$�k-�q�9��2��S1ܗ��I�%&������b�V�H�Oڐ3'U��|�J�Y�]([��b̭^�4�W>W�{��J��_����<�����n|��O:�3ԕ�i*��=i2����Cg��O���1m�V�������H�K�`����?�|���碥�����I��QY儓4p�����o��o� �a�M�f1cɜ�$k�" \�؇z���a�H�j��h@�'U�D���+����Fec�m���'}�L@�;/��B�8�G RZ7*AŘ���p���q�X�����7��s��;;��]E�J������/Zj��;�k)�Zۅ���>8󀁀#;�=���,_y��L`��ʌ��ҫB��PZe�C̋��$y�o�W�-x���@���e�>�*t���$E���H^=�"F�p�J�O�O��phߓQp�N��w���h[�E�7559���P���`�W���vo��?UkM| �q!��C#@0i[:�Af�oҶ 6S6��U��2H��bX1V��|�9�d�������I�j.��7����؞����I��a�p}h�>�B=i��,�ћ�i��n����Y�
~��\Q,Z�߬OH�Y ٦9�6T>��˴ނ�`�D�H����(VXP&�/�4�`���̾YI�9�-���,wߡ	��J�����̥O��R�Ii2������F`eqw�/�J�S�hf���ҲmW��A�2�8[���^G�p�1���ݩH(���ъ����ҀP����3W8P~�/i�c��6�Y%0F2��Q�o�$f��\̇Ĥ �nm�'lZ�k�|5��8M��F6��Bݠ��ou2����X��k��_������F,N͕Y�[�c�M����������V�^���!��gr$��e_-��"�# ���>
;��o�]# ��I���۹�y�wM��e����؅�:�8����9�s8�ω�à2��Ħ��Qq.X�^�1�?�߇�am�S�Ί'��ؖA\� !M2�	t��O�IKRH��T����Ʒhk��ׂz�rI;�>�on�R�W���*�/��z�#�fz��%w�+}ڞYK���ӳ.�Ų=�J�c,��X"X�p��ev�)C2�d��!�]�9��]?��@�D��V��s���UM"P�Z���}`��h�`��'��N��⎜�뚬Z7�f�$��܀ȒGNU_�+gLO�$B�VB�e�X��F��y����7v���I���[y�ˉ�Ū,'I���.TӤ��� [V�����b;Zs�E�?5��DG�i(sEkD>�s�QX86��.:i O�0D!�[i��� 1�K�EOl�Q$��j�"f?�����-��e+��6�33V���<Fj��.]��uû��m��?���c�g�7ë�Ey�BlB�B�<i椬��Ӯh�eU�m�<��� I��ؐ�!��B�0l)Hz��&��o�����w�iAI$�I���R[O_�ߋ�q�0#7��g"oA� f�'o�9d�Q����9\{Z��
��D(��3�w���d����UA��n�$Ŧ�v�<�D��7�m�V擌7����w@������8�h>>��QӥN�Z!�`Y,_s;g�O�{�����r�4ъ����l��zQ�����#c��]�`��2�ۼ�y��j���0�cPa9�B"n�A�)�s��w������ p�k�`�<T��m���_�7V@�pib�n��e���m J��������^�N�&Bb�A+w.�i�M�n|��"pW{M��l0 ^� �I���qv�N�S|�+
TP�A䍀�|�{�%��)7�� �=U�y�ϺQD=��L�%t�V����g���y�_0�Gд:��܋BQ�>�??F�5�<8B��ȑ��	m�1�Jik� b�>��L�I�<���&x��-�Pؒ�j��Z�|��
�C�T�Z��MJ����� �-'a"���v�����z-1�y�7%�Ή�r�#¡��� �7VfV7�x]l
g��Ǵ�!�O��sY�M�:�q��9�WT��;[+B�4Z�v����d���a�[�6;�e�O?��ui_4?���O'�o5����?��R[���5o�TEr4�	��F�x#P5�~<m2m����^N�L�������	6(�'%zs=y{_k~����]Q�;C�#��!��Z�Ol����?\@`���4��%�Q�}��z��꣝�®�ޢҁ#��1��2�ӓ��qz��~���(ld�Շ�Jñ�G�GG�qk�q��1⽲H���P�v�I��T:���9O'_�p�Z���/d�c�z1��i�9%�$�38c>�y$�UsH��I����c9�Z�4qu�?��\g�f0�t7�Z�n>מ)���b��b/�1{q/���)�X�^Oǒ����j|>�X��"i]�r\7���$�o9��["�WӯŠ?[�z`�t�Z~ �i�g��N���.sw#J�� ��w��D�eE(��5�Hrƃ��3��ϩ�Y��䒔C! �	0����Ӂ����%�?~U�UmS�8e6�E�F��a�2���ڬ���:f���8G��tu��ø�P$�>w����l�N̍@q�_��sp�iM�Tq��	�^�!���<M<:��Hŉ�=�<(��2&��W��r?^�Ϯ�J����@�Mg��|O������_�o��4���'ɉ�fl� ?����P��8q)�F�ʣb�`��
(W��i�^��,A�pܰ�'�r��1�Ʉ�A���x�Ջ1gߩ4X�a�i�	��m���`�ѩ0�|���=�T���§61��?%�� ��A�|���	��T�G���
�g>�S���B�\5	�v�Q����5z�Y:�)���k%{��ݾ�[������'�"J�����,��)�5Ff��.Z��	b��Ќ5��T��OB[��x@6%�GlЩ9����_q��9�=Ɖ{6y��绩p�`�'�'�c�6��p!��C8�7�u2i?����Z��X)K�O$1׈�f�tA7nS;bO�l���HF�T�Й���`�Z�j�t�!�Mad�nO�+|�ط*Y��[��d2]�ӡ���뽷|�)��x���<n�"Ym��s�i�T��gR⹗c~��1�PlC�qǲ'V#s#�e@�����2eS��9͗?�<es�%ᅰ���p�L-�Y���͉�����%l��T�ͮa���m�p���-k���	{�2v~r�Ɲ�t��g�'���2��"�z��\�� P
���$��XH���a�j���)�Mi=I~%l&By� 4�t���ų��!��+�5�*>�J�l**�ø��O�������i�]��uhڱW;�]*��i�&�9,V�(��>/F�WE_0�a��<��I ȣ�Z��OX�vچ��d�������m�ɭU��_��6K�v�@tNx;��0���}�C�2��^oe�U����B�Q��G{��?�	�/�g�}�[/p�miO���!�n���=�G/у�:���a�P6�_C.���"5n�c�	��F4F�Si��c����>#��V��9@''�j����]�3^�X��!�$�O�g�9�2��?#2�3�&_.�l��V�9Ӿ2�c�<t��׎��a�bt/��-��5{��᥹�ϝ��8r�8s�LQ����f�ec��:S�;������Ǆ���1����h�{A�Q�������ԁ�����
�*�#pl>�<2�V�6wI@#��7Y����[K�BƋ�i}��v�=�l@�ꮩ���-�v�nq`u����%�{_6�v����5�a?8���q6�}Ì����W��Z-��%�Z�4˛��'r|Q��
 ��!�$-    �D}��W��~92�d��x��K���qr�����}p)��;T�%���f=��/7Uiް3 �L�\����X]X�d%���`�
ƨȟ>���Lqp��Ǳ�@��'ej�#�0�3�4���/U:��u�)�\�S��&S�U�(L�gk�\cT�-�a�?����D��vLn��[����k.*3�X9Uc�O�x<����(��n���uQ?��S�ʵF۲�h����h��Kk��v�V'8�|�"�^��|��G�8���LZ�X�ڌlz�3��>�6[~��'�uH�Q��t��g$5��]1�����.��|_.�&D���;Ŝ�l^:�SVED�!��ai�W��=*��yɖ��9���}t��m�r���(F}�V�����>�����Z"�rO���@�g�3�����}�!�_�/����@\��}�v~���kz?�F$�O\���(j�S�߮Z�A�?=�R-W�?��v�JF�2hfꏥh0E]f���`���g̣�L>�$0'f&�����ZΫk;Y��dAI[�8��pW���A������z<���R:B��䏇t���>���d�5�*�M<�cLN��*\ڶٌ��6kװp�H�@7�@}�����Nwʾ�I�Lv
�A݋c񟕘�F.V��'9��6���	3� ��D��qýz6���/�w-�c��h�':�	\v�E�������0=�4kM�o�;+̯ʕzBi]Ųf9 ��K�Hr�0�-�l�ə�cmm��'�ڕ}Z
cÛ�6=��aҾT�ҙ00�|b�i���lF ��CgV[w��f�A)�t�*BFw�t�v�����-c 	��8�,��l6��L��t�Y��WI��o�����(�o���Yo���1ip�5�Z�C�o�Rba<�����$	gu��9j�jNύ8���?@5�~<�*���Uu��"r �1����y&����Mx��&�݅���B|�2'����rB�⌼ps9ͧ&u�j\��O�L^�����>�2�����Le��҅Uʩ�Cn:7�c�Zl8�<U��FU'P`�GpG1C��P,��R�R��x�IK�qv�&E�\��Q׿�y���s
/,���nLo��-���/�ER�N�eZ��{�-G�#K��x�\ȼg��T�kM�bVix�� "�P�I�I�0z����\�����<"�Y�D���L�� "<<����m�{��A�������J�����=��RF��	����V�J�s�������Ͳ��M5�������삩���o^�����h����z�0�q�[$x�e*�#��5[e�+9�z�7�<m[�+Zp5�V�d7�p�=��}����2������wL�c��m��C�]وvr-I��~%��Q��l����a��G
k����08%H��$�0C�2K��0��n���x1Ҿ�f%��5"1�qatq��jE�&��'�4����q���_��>�i8����z�f�j���Xa�����~����֪��r�:�J��'*
��@�˼1���K4��c��t.)�먀5�1�]b �ޣ�p�w:龩s~Dp��L���dL~� ���)S��A1nM�/���=?����+L�M�tL�i���Q0�s��7�v7Td��b�)(���	� n`CYD��lu�1͎���3;jA�e�����9�N�]|UX%�X�	��ǃ�%�rŤ^��jqx�XK��A�T�.����AC%6H�<�=g��'L�hg;meRq�܎�����M�h"��a�Y��}ЦGs�P��p{�w.�G7���K��)Usn�F��iM� w_U3�I ��l�߱3U%D��Edbj��5����%!�~���;�1 �-�t0L��>��M"��?O�u;��ɈplwS,���;�&鄚dɆI�@O��eLT��ޑjA�̩�[��M�V�UQ� �u��?��܂^�-���3#�=h���̙�0n��h�j�����g�aF�4����_�>S��W��U7At/"���DPr��~��9}���jAm�#�5Z*�nFCY)�mC��B	m`%7��2���8��c�<���ݖ"�e�z���H�����E<�tjc�M��j�_�\]�S����薤XR~��~օv���L�&����$Q�C9�]��}�$�?��jv��ڼO����W.+����y%���b[�4pS��T�w9F�i�G�l`���5�l��#��e���Z�b.%�/9�'�r��*�N���%"��Æ�Ku��[��|����0�N��1p	��Vx�#1Ls� Î��
�_׬���^K�ϲq�Z�	z�;r��z��*-*Kt�o"h\`tGW�+�qe�EV�����a��J6�����j���s܋���AC{7)B�?�xmjahVk!�}SjCZ՚^2-�[K};aP��K�z9�lm!�f����l�������tn���ȩ<���Բ,E��5�f��R�2,����������?GH��uG[��+~U�	�E��Eo�'�[�C�q��h�ڇ�M����ۃ�N�o����.��a�VKQ����a\�8��U3��~%&�.��I$]@��Z�z#ȓ`�z�w{�"3Y�A�-�HLw���1l��xKR_��H�3��1!"�i���<�2����1�C��8���	�1%��n(��퍅�'�A�:�Jmz�b���/|�&�< M����z���|�7�N��m��$�v�i��T]O$��[�Q�4!�P���G����J��pj�4��
�C����]��`�	e1�<]�+N,���q��/+om�,�SU,W��,f��2��Ϗ��|���/
ޟ9���ڣ�����Dʅ�OL�#mꃽSشÔt�{9�i�������x ���";�7$G�t�l��[)ｓ�ڻ�9�n�)��/��k�f�kc�Q1�.ܶ���Mx�{��k�>�7�@�l�=��X���)����F6m92��6j3f���Y�]�F�cb��~]���Y�/�'����i��'���X�4�
�'�����m���.q";FA��%��ћ����s㌽}#8�C�ɛ��f"�x_[i��T���v?ɤ�J[�T�'O�|�O���x\�2%�(������z�����!��cU��vA��3,�̔m�`����z�զ�д���9��|6Ϯ��oO�u��*s�-i����v[C����Y�0��#ɟ[��d�Hc;��X�`S�\h�}Hz	�U�Z1+s����㸝���!�A��}��W���Bn���^�A{��	)�ˊ��y�H�$�fGd�0a;��uR(�U�#�᫝*��"w�nP���_b�.���}��cM��YS�'��Q3$GG':)��q�obCC��SK����苟vMW�zqY���С٥Ө�����$pG���u�J�t���hQ��|�����0'� +h�/��Z�L���+��k�uuu�2�0,4�7��:�f����8�֑�_��d�G}Wk'Oȹ�鑘�o#��]�c/C~eC�X����T��Pd�'����{�<k�y*=���N�	V+m��}��u�N�xrx��v7]�eaޞ��)���i=��p����m;�O����5]�^k-r�pX�a�3~ƭ��3�c��2|��Z>Һ���Q8<ѥ��aR|�T��b�,�^��)�&��:,m_�x9z�b���+41��<Y�\ ��s��w��ل���{��x���"�-�&�[�/���WM?�
�� r͖��3�oL!��V�����S���.X�1��6����X3�6aą�W6�`)k*�)C����w;�|~ʇv�(�8�)��� �4O�^�/�^��~�Eq1z��<�}��9��l�'���!p�<�:�y��I���Cl9ܩ\��pm��J�u�ݼ�s�|������w�Q���n$3��;K�0K��=Qmr���%�O�Z-B���?9�s��&AwҭPc�s����Q��+r��4�I>�&�$CGuN�[]y��vZyp�ӛ��Ԗ�w<���9��e4�    md����Q'��K��xp���H
?���߅ca��P&W�$.wR����+���$�&#]�x��=�[�q~*[l�,]��:q~oF���[�6u�\�:<E\��f� �NɎ�N]_��Ą�~���ػ�ȍ���.���8zd�t H��Y؉���S�/���C<����� e�{q^� QQ����,��T�n�����7wy3z[6̤��?���r�i��^�v�>��&.E�(�����VG/vi���i�*6֬��]WO[�?Z?�[%��x#���W��=��%v�}���ײǟt���14-w�]�ʋѻUq@t�����	]1��W/�������@�D��e4��
R� b�oUt����n\T���L}�͑���~��J���e��`��8�1��_�FC����8�S�s����ѫ����[w�� k0�"r5X���~�Qh5�'޾��G�zR ��'�$�h�1�ʩ���c��$�{���j�Xo��RZhq�n5|0�'�3�C�*�I�yü�����,�
�)��P��6��z�؃S_xJIn��2 9�W Nx�����nߺ;g���K2.|�i����Dl�B�+S��a��PY�)yh�i<��}0�.F���)��C� �ӏ���f��i�w������i����C0(���ն�����'㯃E{�M[|D���E��qOH���d���Z���#��'"����4	I:�FW����.z�a@��}�!h��h^k��DIm��?3�@;��E��ѣ�u��kD6-͍��'ـQ�TD�m�$��d�\Ǒ�9P�)<o��H�G:ү��N&H'�Ǘ刊ɍ
�nɼh�0��JI3*�.,������V(���8���%c���%��(y���:������j�uF��@eM�2i܂�^�w(cOB.&! qg�H��ֿ)�,:�:��4� U;�F�����M<�2w�M��1�F�*rѠKY��W�޲���!ϋ3��ym�g�n��L�t"���"cb�K�#�,NŶ���xi>��CM�^���W$3D��%)~�4p�"���FB.���\_�\�����x��m��|�����U�#����V3E� ��D�+�5�LX>]��ڍ2W����#b��:g�)��@��s����g��C|~�N��>�������3<������IT�01 n�mENS��ڞ��� V��5U�J)jG��V�ҹ��N�ע2, ĳU❒��Ml�r���k=�lJq�IE�0Z��T��`Ac�1�*J�j����{YҐ!IL缌W��S�f_�������lzL�:D�j-��q�[@U[,���YP�����A��3AHŎS�@i!�+~�j'�GD�NF+���Y*=�m��ר�����v���:9��8j;-�Ĳ��j[��cg��՗"1j�Én��T�6iO���SaC��B����J^�;'�?�x)�����î
��/����hÞ�g׼��B#�L#��	_1iܬ����U�|W��,�h��[���Ge����f�}U�<���w�%�n�G�� �&8�!��lL
�m�<+�빵+#���/"�n�\꺑 �2:��b�7g"�g.|�Ӏ9#�{���,��� ĵ}*�|,{��*�\n&�{j�rB^���j?��Tubl��m��b]��BWh���'�s���'�>CdQ����fEm���Q��F�#�@6�X[�/9�,�"��B�Y�����"����(,n�Ŭ�)�HTK�Ip��*�@���(��9���K�p��P�=Ȩ�C˜㦜�WyJY)�!/"E$���[�����I�no�>h�X\f�5t��nd��9��t��_H\'�3��	�Q��;#��D�.�N��M�����́Io���i�.�ek��ƿ٘�����u��N�w���6VH�4�e�U�� ��g}g��H�їs]���]��q��_�H�p�߸�˲E��h�ʊ%J|��I�c�D�'�'_#5��w��m�*l)�8�SO(��]���a�7���E%.��q��y�_�a$�gZpJ0Kף���_����o�&�[:STх�Y�-�e��C7�I�b�duP�Qa�ߔ냛|��/� ��q��[f�S�R����l��"��H��0��DC���Y�\R�y�L]�����Pף�%|R�d��z�i��a��"��d���n�����ңQ����
���l'��C,a�[}ELy�&�)2mg�o�fA�!�'�O9�e_��w��_�e�?Hf� �z&t�b_�D�A�����҅Ϲ��4�R0Oe��w�}U�[f��c�m9�Vb)G�γ#\`��w|���2rkΧQ`���˳�[:�w��7��W&,����6�A׎g�cs�e��+T�����ӄN�;($G�	Y��|���	j .Chr�55X���@�1e�3%@̚�_^��R)�u8*��s���t��Vb���_�J��#ׂ��=h�Rg��Or���~jTU�$Ri�_���4Z��ףwK��dU��%�� V�ħFS�_R���!�V�����!��j��B����C��1�"��thmol�o���y/�r������*u5�)~^3�O�7�6j��ښ�:�2��]8~�!$�Pr#�UB4�Ә#�v�u�jd+��k�8�%��=�����G4���]*}������z�_���!Rw�f�ֈLaܓ̪�|�D�����޷x�sJ�J<���.�*nX|&�@M�uU�eR�O�.Eע�n̰�Jz�}UW�o�T�\{svƧ��}��;�1�]��o�W�}��GU���(Ar�k�����J7q��v)̱��'��o�I��+#�"�ǝ��4gU����'N������I5�H+����$�W��i|�WZ���l�<��:�G_�9#��/�_��#�Ӿ)�dfE�ɤ�B#�Ѭ����hx��o#d�gّM{:�8���J+�7gTq��~ck����@u�	.&�gg�$n��ċK����w�Hd��A1B�$3M"�Ie�����HP0�G�D^j>��5oڗE�[�ӸA9�W�7Ήo��8����4[�WH�q��M�/��4����B��\���&�Y���i6��
s�d ��YI�����B�v�ط����|���ї���_W�E�-����1���'�����5��A&
%t����6h��S�7�vѓ]��S�y�#�4+�,U�=ϫ�X�*�賊�D����i�AT6�@/��x�����A\h��tSϫf�_�7<d�f�&1�x�� yƓ��2�+�.�J�"�����
U��+O̼�PK�>��F��$��&S6t*��1bo�C���;
�#Rp��S�؅Xa=5*̧�L ��ӥ,a,�K����|<bI?�I���Eω6��ZAeH��X+:���sp{�"F�s�|�����P��m�H�
_�K/�
q���]�!G��B��m�2eG����vJ��Q ���@��1���-(��*>�9R3y#~Ŋ��>
���P�z��w����/�_T����m8��]�I��C�X����><�m�[O��(�ȶ��g����q��}Q!,)����sT������1���B�����4�d�x�[u�=��|&�i��d�� �}JF	c�s�d����!��k�3��Re��a��~���Dz�$?+��N
�z�9A�nl�F�n`�g������n�- 4&"�K���=�آ��M����4��L��
W��L��_Sd�Yn��K��'��K{[:�,窕��Q��5o.���ݍ1�`W�~J��$�L�ޮ��i]|7����A��崴#SE�����0jm'�9?}�5��#?�٤��Y��F��ב��K��' �IJB1Cx�x��DJC�^F�jD?¿VҠ�ڸ��}��M�<H/���>aj�����b�}]ߛV�S�/:�������4[nNC\�]�`��5
�|�M!?�.���d�4 9z+��%{�pF�K���e6�~Ž��Z��\��On�:�+�    c�L����0���9����~2�!��I�MC�		hQ�.��IJ�2�	�F�0�wJZ̙�Δ8�$���e�Ϡ G�$�.S�AX���2�aG�̖��Fh��;}���c����U��a�����jY�?X��;�r�f������-E���N��������ҏ���LӸnϕ�������Al4��Q�&��ܽ:gqr�Wn�\0\��S�
�w�(Хd��DfS�3� 6cZ��wU#ik�Y
��cu��[�h?N����j˾B'=���-o��p%�!�z˽q<����t�T�f&"OpN<���r�z)4�5Y���[�#R�RB)B���ڴ�fW]�
�J�Ps?f*h&&�s�4o�+]<�紾���H�.H
E�v:r���X7�V�RP�D0�eRa*��]Yɵ�,L.>��ᅨ�{�v�t��_(���]mY��9�v��M(7z�כ�C�-uH�(aǂ��f���k&-ޅ�N�`���T�!2���N۱���\��t�9����۰���z��&����7ݢ�p��*�H�ʡ�)�Tw%������q�[[]�n��pc4*i�t6����+¬��E�Jp����5@����Ǧ���9ф�>�Ɩ�m(���u�Se!b��m���C+M6�����[99�v?� ji�4~��^�=��- �Wh�6�nG���R��!�T���}|�sY��WN��-Dp�
2�p�TA+�h��øR��@E���˚��pSiϝ��a���\�a6�h|-�e1�j�R�Hw�&t�(L2�
���d�=��UvƩ���A���U�=�u��R����=�G�[�,l�'��~��䉃�!��Ô<U��Vv��8�_����݄p�X���sƕB�r�儹����^g�ZD��0��C_�[�t�ao�)q�A��j��Ӿ98g|�'vj��J2���{#u�Y��L�(Z5�ŢHjơX����^vTM�E��V�L����r�T�Б��I�w$uk2�ʮ��� *��q��5��i2�<BnF���;��=S5�Ja۔�EY��M��2����Bb;�@�'{� �uV����K�`'b��]��&�� �8��vO�N	�il���Ћb�~�c_Hw%���I4%�wA>O�?�ΐS-�R��˘,�[��~QzC>�C�sx���]���VZ:!x�՚�M����sG7��l}7Y��0�$�wN�v	�������UٹI���ڡ 
��y�ω&Q��9i(sJAJ��8_��L�B��nm1x�5��M��½���σ��<9�Ҳ㞈�n�:v�T�w#��R�,,^��:}C������ʖ)O�0o몥T�I��
��4c�n^T�U�.�L4$|i|�k8'����x%ϳ��{V��0�!�T�M�I3EǠk�B�L�G3���<�r����cq�ޔ�J�2��xS4[��q¿�6�a P�Y|R�Z��g&'�ϝ�Ɏ��p�H�m^�1Y<yqS�M4U/L�B��S�HzMA3֚5UFY/���F���2�4Ol���LOR�o|9OǆtY�Rs�)ˌ���Se�7O/JSQ媣m1L����a�.΄������q�+�|k0I'#Y<�����E�L-1C���������)�>"d#�#���т��W�^Z}m؟�e�Y�~M >V$ߗIJM�e��+4i	��;a6 E�I\����N���U�q�U��G�I!�f_���|�/G�n76��(�Sr'
8� L8�Z	�4Z��l�D����H2ߘ�j��-���"0�[�ϳ���fg���z�(Mp;]�&v�eW�Ɣ���0R�e�7/V�_�粨�#�� �=���7�}���h����W��9�R��4��N�̂���q�>:�
n�o\�E��� -[#�ɒ��%��iw��{��v�����&�1��d6����7��Վ��i䥜or
d��s����GgO!�\�)�du�P�EI� b`�!j�d�J&G�EK�O\kY������ۭ1��,K����ن�W�{�N�ZEc��8+]v7Iaʂc7+f0�����H�8��iD�.�}����rѧB��(���aPML��Vd�� �I�i�MS��"�����Km�F��-�����F����o�ij��¬-�6��Ţ�-d%~e���w�nd�v=�(Gb�T��\h���*�HȚ�f�DO�������X+w<n���7ӽ��&غ9=B��AL�K\׺6>����GW��Y}����ƄJ�,�������T��l���W0&�&
<?
}d�&��-ņ�W��쳈̶��tL;����U�쓷��o�8ŷ#��1��'�O,+{F��#�GO�G��Q����&���?�hdL�}Lʃ���]g�w�%��'����U�ʓE��;����jűz}��$��ی���_��h�t���/o >�L�z'��-�Y:�|�x�/�%�^����_�U��������#��\�a�%P�����ށ7
��b��<��|"�g��/$}���"�A`]�E��w(\�S��N���D�-�3QT�U%$�f>��Q��V�q��;���F}$���-�5��P���z'���gȭ���>��G�#^�\)�̩��yx�d�gm�<��j� ��^�rb޴����{�½To��d,����'�&�#�'2��"��3�Cm�F\��m��d��`�u�D���*�w[M�́�`ҵ��ep7IB�r|D�oڔ�e8$����� vs�0���9(�"q4I#рG3��M��Y
}��J��n�&��l��D��~$�Ux���S�w�z'��Ygqb�Ƈ9]JUx^�Q��1O�*��� �n�/����T�
��\�w n,R^�0(w�{����#��csz�4�Y��/#7x�\8��jo��a1�H�M����k�a�R��l"/T%9ߏ��V�#�a�]Z��Hy�E� ,w�b]f�S�vz��������WMz��2�*G�{�Q��5�2�0�x�	�p���1��;�H�'�n�{��"��*yס��w�)A���>�𯌉W��٧���H8*K#��I!&V5WQA�#�1Q���
k���J���(�l�q��V��+ik55/h���v�z���$�q�ǿHn�p=�Ow���]=��{�%[�0���Ӻ�*$�;x7~�}�]�-��{L͢ڷ����z���ɫP�-���LV=Yǚg[Ɩ�T�(=o�[S�܃(�2;t<�^��ԛ�~͜"p��/����ؒdR�5�
�k��젬nK�u�F�a�1�(�+���Wn?�"!�b�ΰ�7�ݴ�����.Yg�biA����-�`��;���Ћc��A�c]��is���d���a���- ���<2+P�&٧��y6 J��r��gp ���
+l�nL����<��ù��2-`��g4����\����a�7����8�u5meM#}*�0�w�h>��*�fm,c����:�q�EzF$d��@��	��!X���\�wׄɢ8ܶ�\�%�oL'�����H���"s!-�^����P˰���#h�_\,�/��?N��^������R��0���w���agD�u����#����0�l�osW�Mn`{O�
pOY�pF����p����.�䘺�y�<NU
��>�R�_i���z�p�H�b��$s����������q����䘀=J"<��	25JZ�X6���h��rғͻ�[��)�cc��]����H��ET�P�C�P��2-��B5����|���/��6í�ϝL�4yY��]���ȴ6���f� �G�A+O��<����5X�hr��!�hl�.!M,yFD�@~y	͋��CWF��dS�Fm}B^뮍H�y�偬F���B8-������O�&���4��-����[r!��0�iUcQMK[�X�R�����X�?��$���2�Q�+��<��e��[7�e��yyN���Rݭjko��Y-?����˙_u�4;�w���A��.W׷�E�Ⱥ4�!-����������l�+ԁGt�o�D�V�0�.a�]�    �i��	DR�x��!ir¹tɲ�N}a%��>���$��*]m�������aE��D=F���NX�T����.]H��L���+�j�M�:��a�`w����,x�|#��\3Fc�`��n���0�z�� i�HNk�t�}F{c����o�%�כ;���+;�H�ñ�@������I1+��U�n�.�:n<[ϟ,�X�G�B�~�����{�i��}�3���@��=b<�[�o����㲨�D��g>8�	�JBf91�U�����s�����I��XvK�Ƞ$���/J�vؐCfLSq�����q���vXWˬ\��9g�ŗ4��M����u��k�����;�7����R,�9�:�,���ɩK���O�4�x#�h����G2r�nx>�km���		�#�2���Idd�d�a��/9��lOq�1&��K2���Euԛ�I{^�� 0��� � ��<�ٙS}��(�g�w�Q��!�i>��
���YmR��^���r$���}���}��Y�5i��ʨ��u��Dze$nrC��l�g@��n�?mW��92��GM�\�޸�$��g���β'�QC/f���r�����X���qǋ\8��#Ȩ�o��tz�,a�ϱ�&i�&5d�^�4�X�Ta�7����"��N�d\Zc'H��=��LA��䨙投��_�W�w[��R׹F�
}��"�s�C2xA��*Td�j�{�`
� @�˟�{��g�S	`f��Hf�3����Fᢽ�=��6ڗo!��u''&��r�v��K��n�YĀ�S��+�=g�<ET�1�`��D�|s{3z�y��>���ۡ�P)c��}���ԅ%+z���WN�ͬ�K&�t�c$�m���(����7�u��p�bA�hc?Ö́]pt,�JO��}�W��N����j�&��4�\���y�|�^@`�]z]���H1�;P'��fB-'����EC㴅��-����GJi)s��.+�D��9X��+R���88M�1��|���<&C�"C
f��=(m�"(��	��p�,�z�H�Co�dm��Y I|wp��s��ri��U�U��<�%M�Av��VĶ���[V��v���r��͎0�A��}����b��~4"ѥS��c0����L�b�5���_�1[���ܹ,�����6�앖�|'�o��Zw�����Vk�y��=j[8u~Z��v	�#m��O.-�a�D�V��u��eZ$!ذ��g�� U�dn}�m|�H�D_�RaA2Er�j�� Eb��{������$A��ዃ#�B�����(�0�V��P�z� [�Q����ŀ� ���*�r��ZW+t�Ǵ	���3��g��½��"_�	��7u�=���IN�
�Q�4�ϑ�x�ZM^����wx��`��L���Y�	ku�1��:�S����ힺ��	t9�3Jv�w�U	�������b`.ڰ*�� ��-��aí����>��2˱V���'�e�M��@t�1�f\w��8d'{��3�S��&�thj�\��>־br�mݢ�Xb�^J��a�Pp�wg���-_��ᆜ��l����
�d��>��9�}�,fW�z
���s�Q�l?bի�d9UֲZ���e���S&�t��m9�-baE�9��f��@��CEx�j� S��P��&����(�m��	ja��^���]�?�\�i$5i:,f�:�9�D,�GL�Y��| �Ď!���w��Ry���G�}e�B��ҳ[2>�$)���d\t�7�μ����jC��l"�q�q�.�IE1n^��!���O��)�N�DE���y	�:9�T ���pժt��=����k�7A�+�9�&����yτ�ŏ�*(7/>0/����]��l6����T�vV���AZc�?Y�#n��q��E�H�s�KT���{�l����G�s�a�����
�V�_HU�?G�O���Y�*����f��F��[�5,���_ح	��7�㰠�D�����s^������4܌>��.P�A��r��
\��usf�?:�I9�4ȫT����%��Pvb��-U�i�r��jni��� !��:$3~��0�v����Ä6�v!�A4[�@�ҢQ����*Rj� ��H2��Wa���X?n'�AKS�-�T��髒'L�4%2`�k?]�y�ш	sY�a	�/nƿ��>h-�D�a�*�[��R����B4�6�>s�����Co?�(b |9f�E"FK�w�����G�~n������z����.��(�����JiO��}���a<�XO�{�b�L>�_���=��&F'Kkp���xs�*#�6��EV�'%Կ�3J7����l�X���$���ۋ�ˮ�A-��5'��~jH�����oS�v_���ؾa��q}�۬�5d}�	b8�gNn眪��O�tb�L��H�S���b��^r&k��:��Ë#l�m�G�U9�<�S��%C�W[�k�a���b�����h�
��I���kv4�s7I 4L��7��j�u8zg}�`J�a��#���r�⤀�:o�l�q�Eߔ0�E�i��G�Oi͹��׶nJ_��t�,e�����z�����Q���<s�D8g
�E�kod��!Np��Eg�6������
����-!�<��L�@�ƀ��?��~��%��aĵ��W+D��"���7)�@Qd'������/F�,�c�k�h��&��6����J���;<�Z��ۓ���DL���V�-M�-��"�����#%�T��q1>��(59��Tu��$�&�@G;̝ȸ.~������X����B��RZ�pZ�|N"��,^�/�����B�"cw�ݞ]�>���kU���8k>��/�'����6�:���qiG�U���n.�D>A� ��ԩ��Ǧ��y:���F�ëˣ�>aR@}u60CW4J����nh�D�wX#s�"ɓve>n��e;D�n M���l �9�C�WlE��!~Q)) Y7�S%+�2h;��i�0�J�p���y�w�3�G�}-������p�OqD.�V�8nz��z�ߩ.�¸!��"�.���̩�:o[�:`��1n��0b�2X|m�@J`�V@3��5�f(�O@,��V+�N@��w�3���a�Wn4Za$�OP��_q��(�6�Ҕa2ف���jJ���Q�w
�?
�u�&)���P ���]��?��5��f�H�Kh?���p�R!AtT@�h��ҹ
V�F�qb�]�i���;*۴�So�"��l��0eܛˊ�˹b�G�v뻼0��^i#�;�%s����@�<?����{|���"ģ�c�ۚ8��X��
K�d�Ɨ�~$�p'.&�8p����q�Q�'Ca���:��cD�38�f��3�Ks��S��0�/��aa�W��=K�z��{WΗ�j^9XV3��{K��%��i����*�a<G�*�J~�a���a4n��u�< �YFqHN/��O��:�!e���]����ü��jkw� ֯�1��N�3;�W�%��9���U��c��#ge�R��%⹈b+��s(�wCD=�s%�H��]������5�	��
k���l�j�N�����㹸8�\䊠��*�"��$i��}&�>���{��AN:�Φ�ZѦpN���������J�6�צ�,��9�j+h�֯eO'��	�I��JaP@S�u��ֱ�9�栰N�4�N
��'�,?v//)�PT�nDkq3z��S1xXֈ�h_v��5e��Py��.E%�t�0�D\��?Ȁ���)Q�27,�F�~�g�6e�,�tW�����Dp��a\1��d���5�D���y�ҍ[>; �c�#h�'��M�{S�$��Dj�sy16�t/+["���&/$쯋���"_Ix�PVn�W�����k����$�U����1}��1�NG&<��!Y��M1��~�V<�'���J@�*��j�ABJ��`��e�3�B-!�)�E噹�i�IgF�?޺Y��ǜ�[%�:��%�����*ހU iw�    
��ݶ�
��\�cx�M����C��@�i�PգW�\��K"q���h�M�HȐ��B�� ��b��Y���+:�Y]�w�-�.��R^@����$��6f(�&�ծ_�>z�5xw����'����-���@j��K]b�x��P��f �dMw/i*G��'?<e����Ǯ�X��xh1g�$�������1���^:x���|���o�8O�o�U��Zvܿ�.������kD�Bl+��؝wsN�w���O�\���/W��6��k��b�;�}��@R7rd�Cp��騣�D�s5��ѝ�;�kz�A��^��������e��e�=ApDo�Gg��b`�2�V�~c�i��=�SunU��\P�<��: 	R��5�8�s!�"z E��)u	��;�jv'�9�b!�C��y�d��dn�Q�]���ѷP�jƟ�x�?�������co�O[O��~�����z�n)�=�	䇥�$�a����A���W��6��ѿ�C�>�Q��KJn�eR=	�S��`���\��z��W�=���,������~���C���-�9s��&\���XxG�^�6�Z��84;vr[��/�6�&,Z;��������ۢEiU��\HVʼ�@)�qT����}����pȕ��)����Z�nk�����/�F�����M�y�/x�c�ǰZ�;�Wa�p+ ���_����<�����P��`EgF���}ܴ`�Lķ�ڐ��JX$׳ԣ���ճ�O`����Yb��d�a�{��2Яؑ$iBe�܋4���p��03?663a�^��k�h�i����}��@�z�RL!X,x!����=�]�3����]�~_����<I�߭���e8m�u�p����v��^���>Ǭ�k��AG����GpH�����4(m�ޚ���o�Y�|:��|Ua�#�Xo�
3�X���e�Ѣ�]쥮��z��]�����י1��p���g*�S/�L&�d?Xna!��:
�巙�Y�ɭ��?��#� �0WK8�'�H'�,-��|Sɮ�Jm"P%ݯ��'9r�����Y�=�8\�6��k�9G��𦉣�8��C%��C�UO;"�n��\}'o`��{��t�NtFX�D	�$C�+�h��{v�}r*e��٦Tߓ|H�S�v]Mek�F٪"�����}�S9��bJ�S��g=�w� ����W���řs͈��g��~H�š���:�"[�����gЀ���I���(0>��#�⏏z�p�܎^-�:X���#�.�y=]�P]�^������ '���l�Nڞ�_I_��(h�i�hV��Ŷtm��)��.t¨}�a��>X�~�r���QDX�C;�������Sk1����Q�L���C�U��Z�Ê1چ<(�>}
<e�I�H����5%J�:w�0���~Ѐb &���.G�
���Eo�i�<�p���7[]�����R�4�&eE�t�̺�t�{k��<�"��E �V�}�oW�q��M���H����K�n�)�o�'�>@a��/J)�+U�@챨����`���ƫ��ٯM,��)|a��>���51H��:.ٍ����h���A���P�*�Z+'��w��íL^t�� ^w]���}a�ؔ��iF�4oF�(��}H7Qϐ̆S����o�˅�����\��wa�b�o1�S$~���_�ڷ�K-~Y��߭��|[�3=�TGa_��N�_ċ���)�o
��[�G'	n���\Ó�ʌ������N,Ϋ�j�E�Ӊ|z�|'�?c�8��Q�AK���?7ǴW�c\�I �8�sK��Ʊg%(�F~FF�[��2P3~y5���එ/rL��)us��$ x��O�Clq;�,1�PD�3I�7c��"�:�(Y,f+�i�9l��<���k7�n968a�o�M�������O��tG�Y�t�g0��S��g|)�e(�(d����eԞ8�N�e11Q2u�L��4r��>�8�Ih<ꏻ�G�
�9�� ���Wɺ��mN��xA*�+B���(U>���?�6�:�2�J/�]ߥ��:����d�ߗ;��j.�s��L���m:#ը76�0���{���H�
�(� &���u��k��MlQ��\iS������(p�r��Ǻ������F��qϷ�Q����\Wz��qCg7��h�Xks�%7	�%q��\]B*V>HԸ80>?�����&v��r�F"R��c�J�g����h��}�5����w�F����|�7���db��c�a�����'���8�"]����� ���W����D$A`�邷8O���C�N|)d�;�}�I�7���P��M�u�8�~3\��e���h:w
'�V�5(|Jz��J�0����'w��##�`}	?��^ͅb��Ǖ�֬�VHf����W�u�!�r'p�a����qA�����)mJ��>�=�ƜG���tW��3{�ٟ��镫��x}�O�?>��������ÆlS�p}�Pz=p�z�W$�[R��aN��Kϝ\ș�P%]�o��=ڞkp\��(.���$�|̴T�2�A�2�p"�V	�����X�Z-�zdPdN<��*�����ߊK���������;;zw�i�oxn>�X������}4V|Ȓܓ�@�ٹ����f�ӷw=�l;�U��p����C~[7��)�s1�G��x{6�Lu�^U�'��yb��/���T!����9�<-*�y�<����y����(mH��7n��t>mX���P���V;.�]�[צ#����?Ao�`@U���L!C���֯�;CC�uI�\c�w8��G~~OYS�ݩ�1�ޱmʇ
*3��yF�֦偳sv;zQ�wdg�oвUxY�;�5͇`b�Z0 ��5I��fGG�/��yl�_�)_W��E���e��8}����2�\W�j��lI���8�Ǔ;՝��Sɮ(g�,�����Q��䅱�����mO�򎋝��щw�;K���x�c����=�x۲  R�]���9����9w��J�a��d�)��s��e����/̍:���.���eqB�w��~~y9���JӪ9���QB�"bh�F��xEڢf��t�k�a#�W`W'�Ut�Ɖ�Mz0��b�/��|8�?�.5�v���s�y��V�|ϙ�k�o<P���Sƹ��c�hfqB)��D�@����}M�?t;z��k4f��*�6cg�����
u1E���9"ǀ"Y��m:ӱa�/`�7�0��0�n�<\�\�9^{{�z��u �ı�b7�H�"5�'ۃQNq��cq�o��	D��/1�ϖ9
8�;W�`��Ԕ���3���D���)2�����T���G3j�JR"�̮{J��t��K��n�X�z�CQ��wH��T�ʗ>b��B+��0/YR�ٯ��,�63h2���cX�𫧀#	�TM��r�=(��۔�8TWM'#��=*�[��y�f�j|U���hIEcz���]b��҆EK'8[��f���+{�-kmt�	CS�4g�؉U*i�6¹�'��a��� �\Rw@ya~}�݂���V|���,�Y8���&�.��Q�q�T��yZ��2X�IpX�����[��>"v�m��GφqG����� H�N���ί_�^�ҹ�B����_p�7�{�q�Q���AioQ�����,�໮SP!Y�H�Ϟ,��rr�s�r�,ۘݝhk4�i�>g�3�H5O�&��~��ɓJ��tYk��1�M������l����Bګ�b�L���NK�j��:r�&�Hy�p?�=Q��p?e�yd�Bf��3��/�m.����6�Xɽ�����G/�Z�C���/6�z0�_�L��X}�J8M֮�w&4����HwS<��8)�\���R ��1��~XCcp�Ey��|�O,m�(���!�Vn�JJݡ&X�tf/���T��ٷ��r�/�.?�g�    Q�{�H�Xŏ�ϻ�4璲�{�/;�Gf��҈�"K��j�
���&)7=꠻վ��x����8q������|�u)WGy����a�U���S~I��s�{O.��8l�n�KUR�!�D�cC�Y�CGϧ#��~a���鋑q�	����f�e-54�̖�2ݾ[D��I��Ge��!��xܜvI����,�#Y`R��c1�͐GR���QyjU���ؑ����!�u(>��=QI����>��ر�뮦�Tz7᭽<������W`<0ۚ�ʏ��G[#���Tk��(��� �|�Y9��O:��/�cc�6��G�#��Yl;�m.G��������1`���~l�A�*��!SL�H+���I��ID\"(�UyQ8[���?�z�0g�7�y%-ۏ��r���x*��sq��k�2_\��Y;�c��.v���<4]I2mpm��eQ:n�K�ݲWD����'�s���2B�'�%�a;�2]���1���CH|u�/oGo+0d�	�ѯQ��l6In�>�#�џ��W�R�l��ՀV1�����ف���~{� G&id��26��`ҩ�|���Z�T�'���B����B�8H)�'D��%�}2>yor��u�)�4�ݓB�ʕS%|;�ڒ�DD*��-�h�'�|rڥ�cx<DΧ1&/�BY�#��b&$�KJ��H!���JY��it�l�=��
�S5�h�*?9��n��~U��<0n>%���K]_<ԫ}~$��k!^th=�3�+bS��˴�e�\O����~�*j�~uٛ�2>7�I���2��齿98&�s�$Vͳ�]IWƽ^�>/��R�|_��Nk�x�*er)y������]g^�jkA��ܡθ^���$9��;y^w��G��'o`���̐Ò�Szܥ�!�g��*��c,�>P��J�gZj�	�?��a�u�ؼ�S8m�U`s\��xe+ѥx:6���D�Ό�v� �G8�Ў:1m,��F�Qm��I�ß���##��"�+=#>��hZӗ%�]�La�n�j�6��,�Q�0�"��3��%�lve|���J{Z�����j}��[_���˂�t���*�1����A�D�z��z[k"6�PL�8��q�h����ߎ��_�*�������\�W�_����$��mP��3�d��x�ȉd��}��[�t���"#���\�,��bi I�{��>��F�Jќ�ֽ�ς��}*wMt� �������3BJ��6��;y�,&�>҄n�XV�0�g�}1���
��b��5P���(3��t�+'>�M�KXǟ���"]�6�/�V_���g��{��zG�����Z�zg�z��b��y��ɘ̭I��L�B GO�5�볧}��"��s�,�I��/�FF�A�O�����P=����b3�]�:���=�]��E����ക�m��P�,��@�jddQ�W�����$ܽN)Կ!~�ޛD��*N�I�D��(c��W����8���O�F�T|�*7��6�\��Q�F(�������-86�v�&��f.��^�Ϻό��ǥ(�Љ8�� �x1��`��\�%�G�������&����<��vX�(�Z ����z��Hj��]�T�CV�3q�����V=B��� �W���H�	.�h��5cI��ͺ���Ծ\��iG���Cs/�w.1�D�TM_a�nՂk�ctq9z���+tN�[[(�p�B�s!�bS� ƫT'�X��79�Jqi�<��,(׏�a/.��Y��ww�GQ�I95LѮ���cPC�`gp����x(������; s����b!����Ǫ�i3�C	�1y�X؎u�-塴PYk�KI�0�-bЏN�s^�;/un��]����W�ڷy�i��Bc�ҩ��HC�d�ԕ�Y���rK��v�
lh���ʕ�tu,����7Cd���X\�^\�v%�^R]A)�ܺ��}=
�E�9h�L�H�y��B_+�����b���˲��ž�S�a�^��q�O؀���:p8�B���-��Z��W��
�(U�Y~9�|�xi�*����v��U��ِ�P�n9�aمy����b#���Y,�� �WUV����1��8�2e_19W3��;朦�<��´��#��𳓊*G�W�꿽"��]^\^ټ��?��9��5p�����5��B�G�� �X���x�\n�d�Z��z|�]8�G0K�����EBe���4��p�J�*��(8*RxGa��Ti�Ǳv�p�T|L�a�}2Nղ��ŰlG�u�y���P��a%z�0W��!n6^Fީn�����`T��I(�i��I�W3�������+q���j��e>X�X��L%���u"���D��')E5搈�҄�3�'
��Le�l�D�z>��\�q�D�PGo�3����!���{j-}ԫP�J<1BJ� ?JD�%�d��EGh�g��z>9e�����X4�y��$��sN��/���y����fʏ����F�̐\_��B�%r���Ȩ�+s��m$hM���ka<(��D s6��B���Kϒ�w�'��xs� L=��<�����XKF;n�������L��@�j��Ӓ�p��c"��5a��۷���~n�\�1�&e|�/������oJ4Hk�t�|�۩��EX�m�h�F����މo��3U��bl�.����|�P�LT.:��I��o�f�UIБ��p��$(,�pD��]*�Ü���l<_�m��$�Ps�o�{�
!	��ŭℜ�ā�Q�<�]�n�q���� ��w����ft��k�i~��2/�OrTם����?߸Jѯ>!���2�k=��.��^��w�	��ߎ���/�/%�0��U\������o������s�YL�3�w��#\[rG@[��-��@�QkA�`2*��I�?�+�$��R�J�j�a�r��*��X>�'������oz��$����#��i�'�z�^��9�~�Fp^��Y�l[�ۯ�a,_UH��V�?�j^��rt�0;eq(��hWtT{q���Ǒ��!.�Wޱ���*V�K��j$�5���B�-a�6*��}y_4��ֲ*���I����r�J��$���c�J<�/�w1z/�gz��Q���-�ޔ^�)�{�����:sF�����d�ag�e���U����NN�67₆gdW+���Dm~e���m2U+J=Ծ)��C��(_�b77�D:����"�#=�i�1�>�򺺸��%�̑.���l��#���Gw��y:߸Pov�V"P�ff�U���o����<bǬ�--�	׌�Bp�`�?i�ǿ� R� ��}�����o�pY��ؾvY,��c��n6�?ÿ��(�w�7�x9m��[5Į�	O3�l�&.���\<g�h�nG���<�ϖ�ot��G���Tc�)�N�;�������*��yφ����v��94T�f�n��hn1]�-��ܼ�5��N�1�ܓTehf��Y����Nx����i ���>o�{&���!0=�9���pP�L�vk���?�x�ap@�l��aTE*&8�GG���B������H�Y�-?v)�9�P'åá�d�NK�U*�]�[���͑W�cV����dMA,���.�9!9BH��"x)�D��&ZǕ�8�hM��]���r�-)R�/�藥K�O]�#Y-������vW/������b����W��bZ~��rr{�PGAdy7�br>M��1�,~X��2�QV>�Cp��2Ҳ:��`�3��7L ]�U`�.���
#B�� �
�+	��5()1�6�|b$^�8�-��cj��t�ƥk��ճ��5�ȅ�"7����a��%����*<>����/W�=~~P� <ڲ���`*�&�>�h������}%'��I�Gk����Ő��mŹдg�����q"��p�o��6��)?6�SՕD�+����&�V�魯�	��@�Q�&?Q�..���1���Ɋ�Qс�$H8�`jeaS���ZW�S��8�o��Kzi�p^�>��}l�HL�yd]��y_�L�����w�:I.��F�W�t�3�U�p��W$B-��b�M��;��z��L�c	��	�`    m2��ix�8>Zk���m©a��F��-E���z�S�e�+�V'��^I}`_��>��x��m�b����D/���&\�)�4Nz�9�b�~W䒰`��G]]X���P��T�~O0v�k}�n[�˨~���F�	�L���7z<����Q��@�{��2��Wْ�fa4?�������|Px\H���	J�Q�N2v����o��|�����Tq�ޣ��"~	��r|��qp	�#ŸM/]�q"ų��ϗ�?F���tk����������(�t�=���$@8����fh0�KJS���7�&���z��Py�\1��O���փ�K͕'��A�5�Q���y#�R'�*�ea;��Y�
���F�쩄����#8(�����Ѣ��5j�G2#R�����y�O_�m�~�vUlvÑ�,D�iX/�
C������ϧ�*�'�}� ������gL�����S����?�	]�_�]��pR��s�YG���Ӵ\Q�t�chH�{��G���.��i[m/P�;���[�k��x��#>��O_������dh�0�0����ҚY����	Aef�ظ=���N�b�)y]>e��x=W�m�>u�b�q���{ I��r�`A�{$1~Bt��-~O����=���IRݎ��ك��`�>�*�ŧ��a6�aS�L��M��
�V����|���`��#�̚Ei��M�1jBI��לgt����]�?ⴖ�ƪ���=�>��F�N���W�6G=��]��/��߻|���]ץ�Q�뇠�ʝ�C�O���⍐�|�g9/~�,'�ŗ��m���e�I��y�E 0�%�>Cʴ�k�s[@�Y����wC����k?1�~& ZN���������f���ĳg"���{8�����nuf�J�������Y� rZ�Ex�<�;8��Q/�ۼ�*�����������yi��� _\��7�Szf����մ���肜i:�v�u��ԛ�Ĭ�C	�nN�\Y"u4*u��'~�BXs��>���u3@5?}�u��\W�!mT�N��i�ߤ�(�y���"���sm�?1�ж��5��]�t��Ճ�;�p׍(�m;�1y"���y�~Q���&�ʷt�ͱNP��s�H��������s��Y�����M/Cȴ �_M��.�	�����*��Ϥs6���s�J�
���gz�z��t���|Iަ���!eL����Z��C������+�!��NGɩ�&�xح�z�v���48?c��k4Z�ZF�~&�2��uN���g�L�Hb&=��x�C��yJ7�z�����V0��ax�,?=#DK�=���A��K�M�'?�9�Xw��j~��ه��u���H���up@��A��Z�V�1�D`#j�@�t�����Y�l�7ڻ^S>_�k`�8@':Ζ�ԃO�D.�6��vFk���x�q��E|!���E�G�*(�	b���uS�Ë�7z!�%lR��MM����oR����ц�Q�9�q䑵3jY�֥�]�����v=z���Ů�&&����"-"���i�q��7�a�r�B�. �1Y��;_Agҿ�I|��[�1L0�]��#+[���s݄�B"u�����M��&� W��(2nlM�D svH�a����o���X0���ga����?M�v�iQ� �?���'3OW��^PY���T?ø�Ӿ�ET0�vئ^i��T>`|p6z����M�H�
�2y�I`]���|A��wE��[��J[���GZW8�.eX��m����O8��S�z��h�g̋i!4ܔ����D��R�5�@R{<�w�}�Gh�L����P{���4�ַ�H�亘ī:�-5-�}���}u�r3�t326uX��D�(ʉ|`�b$1�T�qӆ�1c��w+J����I��(]D��&����+���hM$�L��l�0�y"�O��\�ĭZ�=®��!eC���J(��a�ZΗ�%z��=84��0#g�A�?�$��9� ��Z��0򭴃�ds�L@��4�'	o���h�v����)�BCk�A֦�����k�HF�����i -���2�ײA��h���y+:��r���`U�wD4]���܈�[c���b�;�������VҊ+v=l�9��������h{>���Qvnx�ˋ��p���E��E�@���c6��r8�4����@�ܡn<�r{y�����#ew�#MU�"�5�0�G��������d/����>��ҍs3z���tuab�6�~��K�C�B�V.�-�P��k���b�a�U@v=�)%ٰd��F��[�7r�G��Pn`�N��1�i�u�� �S���
�/�Q����0J~��G�Y�5�1�p������V��&��nX��p6[�j4:��?Sx���?҂gQHd̹^�����Rj�Z�L�9�2LXE�Id7�_��^���/~ڮ��}:FkK��*�˄���|�bUl��OLџ�뭠Wrg�ڵK�'��2���Z������h�8�8W��$+m�y9t��� b�g�/h[ _�e�s�I<�|i���/�V�L�8'��~M|m�^�U���>E�4-lL���ݪ�n����_��������ພ� L�1f���"��S^�	V)�zC>7y{����R�i��W�6��%��4�l�HᶄO+��m�>�tnO���H��o�8�U-�Y�!͇�hkM4e���	�>?m���~X#�"�Fa3XS��J�`����+�z8����7��+�r�đ�T�������8D���A��t`-ӓD�e�%�����G�����TbbT#�ޠR��p�ҵݘ|�[1�����"Yu�q�̚HQ�;W܌�����O�zv��r�)Q}~y���8�|��)�%pN3�!�Ս^�@���;��c:��� �|�:Z�h�T:~Á��zc��xi�b*_�n��}��z{�u����#3'G�9�oK��r|w�7<�Q�͢�(+Y�y6����-�5�jƻձ�^���8����_Bԗӧ�$�e�Z-w���p%/�hZ��R�w�N�R�E�J�������j�K�)����c����П�Α�O�{�.�i1/G�t6�
�c(��B��P55c3���N�̀�\��^햫RƲ�rm���XD̎'9��ē�o�ן���q����+t/�W�����I������������W�jQ>��<^�W�#(΂$a�%�N���qx�۩,�{����(F��i��(�����t1qe�I�?���c�a͞�c�4>���ۑLիE��u�f�r,Az�p �?.�&K��vE�,��A_-��-����J��@�;�.���AM��,O-��!�B@�����F�ڝ��0d�4+63c�hQG�m9�B秗�I��}^������#N0��;%�i" &�8�7h��)�˃>�Gr|1��e�%u˭I2i�YW�AN>�BǛ�0�7�b����$yc#YV�.I_VaG��jS5�oQ�\!V%"�K?��~j��_���=��Z0R�wh;a	&$�����Ä��Ěצ��;D�*��<�iNJTГڍY�.*�\�\���59Z���ʿ���;L�ё�i��Ip͐�L�]X����j���{�y'S���%Y@��x�F�QR;�5Շ�]6����]�΀�q�%����ن��p��SU��˛�0���1�N�,���6�cT�z��Hd���}P�l��^ҋ��oq��2kk��>��a'a��"�0EW�ڮc�W4>=aA�kJ�4$�t(a���פҀ��Jr�=�4��GG�۬�1#I&�$�:�*۠� TA�@�e�c]M$��	帬����h֜��H�U/�B'��^�8����M5�������o����n���0܃\ƈ�a�(�(�:Rv���;-t�A�^�fOHu8�]ǻ��s�5��0�?v܏�K�#aA���J'�!òؖ�o1{��܁]>�,�`�>@ͣ"�-�:;������Iq]�!9��1��h�~d��Z_�¸8���j��kJ��Ox@`�{t\�k6>�x�y�    ߶������_)�@�����]�N�,�������GXWC� ��P�	uc���@���o)�W�f���E�!��~`4?ޮ��b��e�*�Ա��H1]�
��%+���EX����X�i������9�� ��^�y_�
��p�`3�89�Aw�2�W�7�HҾ�>�5r�G��g�c�7��c%�o�1pZu,�IK,�-�:W"�WYIu!!�p���M��K��Ъ�<����Ѽ��؆8mx��G�۶�"��5	Im�X���q�l���7�Ӯ��<�v�����دg��^O��C���XYS]<\o�"[���{��R���<.A1��NS�2,��$��:�ì���u���+�a�#�v���	��J�9�3��ܣ�����D2\�␒m=���j�T�δ�~$S;�wR�����es$�����jV�|��q9�r�'� 1}<�4&�`�x��Ł�"��������u�;]����ݷ6��ѷ%��93���N=��C��0�>����ܲ�
�M��h9����آڭǬ㠢�.��ѿ��;�޾x1z��-���<uf�G��!Gs'c)��N���`^ތbb���5e�_Wy�M�-���܁!�f��H^����r��^���+��cS�U�}V�m�:I$��~д%Bs[�4�V����pcQ:87�\W�������cI�T�\Uw����H�żH;e��4Lg��諦�Ew�R��s23Iu:�BT<��:汵���EGl&���R��r�.6N{�ON4b#�ˀ
�Bݽ��dS����auۘ�5�0�#�*���|�&`�T.)���{��:�	�Х��������w�z4DW2�$N�;g]Ø���B�9�`[p�xp���u.��lv�9�d�I�}�;��{����=�����W���}��$iP㊷1%���~��ϥU�^*��T����j�ħ�;�Pw,S�<I~���]���>�C�f2�?ؐ7kK,�uc�q���x�E=|��y�4�r�2K&��x-��?�^�O˯�w������A?�z�3]�����F�ĸ���HA=,c}r}��vL9⥸�����Uo��u���e7�U�Ew>z���
�����'�B����F*�|M$��e(}t�+�� ������t1���2�I� [���w|�\s�8�Ք�\t�C�
=�:�վ�@�q_1�$9�n�f��ae՛K�R;�Ή�V���*�A��/T��hGD�'&���e.e�֎saT^�'5�y �1�h74�I�s�}�?�#�@!�*�(�E�Hׯ5��d���\�7��(2S��o�#�w�f	�s֛�t!��2��2�,ug�ћ�;R�����F�5��τ#]T�b��4�.؊�!$�Y�) �_����W�RG����獌�Zl�8��z��u��n�U6�<���T9�|�a�0�?q~.��V�����P��Ah'wE�;,T"���m��Z��z�����9�=�J�S�y�!(�/����",�ehpq4\{�����y����Ps�e�t�����ۺ��O������T^epݗt3z[6L��K:�j6� �L����'7fӛ��u�A�1hP�ο��|ؘ���Yu5.��c���dkv��9ܨ�8��U]PZ'GX�%A�>�TT�#������h�z ���8Yh[�8����� �q�X�L��2HK;�GQ?"dzu~>��n*����坃`������+;'�<�xw�IA}��?��c�B����S��5�:�E�~���N$��v}���7��˧H���se7@3���\lp�������(��6;���ci�lҜЅ��#�W`+#9�����!����YN��d�R�1J�����=�����8g������꛽�2�s6�uHg�z��~G"��z��~�럲E�rD>"�⿢�����&��d�!�m������Ϫ:����ú��(^�A[�S����p�_8|(�3fGգA���3I_��'�vG��q�Ҫ�"eՈ`��~;�ڲ�J���;þ;�Dʂ�
�I$��vc�ka>��?�鋳�]���r�_��������ߥ��ڀİk�ٺ=�"���i� ��4�ͩ�멭
����e�*�;B�|n���=i�;��h-�q�6���:1����ݮX=w��!֪��irv~
@�XN]|���s��Md ����O�����&pB�yћѻ}�m�p�B��WQ��i�1��X3�ځ���Hƃ^A�v�A(Ҿ��7�8��䚚�j�ڞ����fe�S�%g�v$�53�7a�����
s^!��g��`�T�̜�gH{?"P�V���>�0?=����j�ߟ� S�ęQU����1�Ҹ�3HuxI֧�j]�����)�'���N�AL�˰��"��vUo*��@K���I����۔��<1�4��q<�/����w��Ɇ�8���l�i#c�Zp���)@>�,��=���l�NL�N�О����Zr��� �|TJɃ�P�I�!�֟�>�*�8�U�h�R��cT��y�#��v?#+��F���#��U�V���U�O��Vׂ�wՂH0.T��ٲ��Qb�#��1��C��G���������ĩ�8����^��x(Q
L&�@]�
Ee�Ժ�)������gߠf�&�o�zs��2�Y����z�"�������*I�T!R�l*O(���SL|ɐ�Qy�U�WX���?���Pu���@�S��!�t��e�4�ؐ�/�|���$���T�ћt`B8�(1G!����%н�(YY���X�tv�^	�"��R�C[+b���_����2^��M��3]������4��%�f�S�LvC�&b���f�|�Wh��Ԫ$�!D�P��}�ڲ����@<z�4���j_��o��0�J�nz6S"�Eb7�b1Ǵ��㻺}S�*�ձ/�����������X��,�V�*�j�w����T��=."8z���;u���"#-	�V2N*g;��d�K�����	c��:��� |J�
R�)� ��~u_���6�ru[
�b8hft{��������"ny`d����E=�r7:7{�������(mr�_���i����m,�A@80vq�0x��I��鐀�����@	[�uj�p�.��h"�f	˄���|��Y�����:g����
׏ۢs�X �a���^��DL�	�>T�RGr���fgpv�Ƿ�Ur=z_���n�f���a;~l*�%�)\5x�U������)��8�G[�!���(��L����r�M�ز)Bc��i]F{@��+���y��n��_ݵ,�qd�u�+�$�� �^ɲe���h,u8<3E�@��WW��+D/g6�i���s���*@�l����M�2��q瞳�Qc
��x�S�B�l�jOF�bYX�e^��H�
k)ߜ�n)I����y%H޻u��N��Bz��̶;��*�Ip��-e��z�r�G��!�a�otn�hTxD)���斔?���}M�/T	Ӎ�g*G�Q~���_�ǹ�#�"�rz��W��tf� U��pƙ�:35�b�q�i��"�B\L�)v��q�v�� � W)^�%m�E�Wa�l.镩��7i�]�[�����t�kwl�.�j�M�;y�n�nU��_[��iR����3�D��ՌY��+���Ӌ�i���?nN�s����V�1

E���� мZ!D�q6\�8!S��|I4�&N]��ok������]^���2�8��{7oxW����t��
ct2���g#�5`�7����b'�9.��6�%v�=ϷJW�H26D�C8����L�����a�ɺ��߽~^�V�n �X�z1�.g�,*&`��EC�L�yx݈o9`N���d2H7�a�o���k�U�kq���4O�x�}�
�I��Ŝ\�w�$�u'�����5@8���܋:�[�ۓ4Z;�B28�-��}&O�|ž�~�.8ֽQ�7�ͮ#NѪ�+Jc�H��l�7��U    �^Jf��B��b�3w�v�c����ĆI:��.�d��R6c&��B�=�	��;꒺�h'Q �������Ғ��.�y:O�4��A���?@�r+×�����}�_Pw�%���C��ZP�y�5�ZU��%:�(X�U�f�W��r�E��=��*y��_!k��lް��ܯw��y\�����c^n�9�W�ʣ���ta�u�����Ȗ	]�?�\��	�:V�Ӹ�`���o�6���R�A_)%�s�rT�N������a�n��FiA����4����Y�b�L����rNO_9T�R�C�9:��<������7H�j����k�Y5M׻բ�z%���m��=Q��8ID�d���5ۅ&���΅fB�s9���������W��)�
��1������s�5duŋ�Ɨ��W����.Ԝ�X��
6M�D�c&@�u+��t��?����&:���nvʾ�{�����
~$!T�ܖ�ʣ��؟�m���?�ro��.-ƒ����f쮸'ݿ�
�;�@�9��2+�ʝ�>h�ِ(_��>�Zo����L�o�X����d����a����,(�PS�*! p+�xEb!��v#�ߺӉ��*�q��DK��"�(O�D����Й��;�a���}�ǫaX���iUԛ���.�$�K���v�&�U�� �q��$�v(ƪ���n��[�\�ȏ�En��b'�bfx���%WQ/�>�dѧ��C�����öIZ5fi��Y�%���4��SKqSh�TXXp�6�@��y��<�|��WK
EJ|�U���F����<uP.'��{��~�������\�6��������G���8��gM�*���җb]�6�P�'�=v�Ь�k��>Cz�O+=��M��Տ�xc�m�������b׮�f?��YQ���jG��/������}���=��)!rw��7���EbETK%�e&bGm"w�b��{�]�qb��1HIB2��MibmH\��̕�	y��ٝ���:��֤{��y53aN��e���T^�٤ĖQ���{
_e�t%�7�rѪ�6�>?��1�b��'�3g�a	%<qh~���e"Y�,�=�oi���$��C�����N� g�j4$}��ϡ��*g�/���Y�-��N�w̇.�^�iE�K,�:�i�QWU�s���H1��j��JI�� ���֯�΄�L�Zsmߌ:�u�dA�5��H(ނ2��;��+9���=Y�$E׵�#��˫�S%��AT/���OY�`����5��g�C袼���4���5�z�}Q���O��ZQD��#�l���	�so�%���4f��m��э��3�K�����\d����c���g�0Έ[�9'�U�DCPa+�N�Iܸ�� QRdu[H)3�VJ%=��P��e}�������%Vu��I[ ���cV�L��nJ�jtm"���l�Bp�����s���ZL���� qr�??a�������e�gD'��w-g�HMC����-ȿ���%�<��!c��W�rڮV��j<~����p\:q}��lVO��D&���2�e画H���W���j�t{C"��˖�q�����K���E%�\�)�~5�wj(�����A��3�S�z�4���U���3r��`���VI&� �ve�q a"�|�����F����у��ʱ;�p������z��GM�e���q1��c���� �,ű�&�/:�+;��긫�#WS���-R��f�kN���o���<�BX:�r$�Fc$���DA���*��j�Qry]ǳ�|��a�?}tS^��}�=�d������ ѩ#��y�{��B=��)gE3�Q;���|3���j4�h��XK� �Q���ۂ}.��~�TK���6w}��Z��A��諜jd�	 �E������#R���|/��|���8[�K��C`k[��/O  X8�ޭ{M�/���Rwd��UҜ�^�U��֝��O�?����8��Т{��$��=���]��I�#�G��6��,cY�u�4��ӊD��T�K�1�A��s fË_���+����zo�6=�$�S�G4���`.#�d\��ח Z�ZG���+�y�5�:��k�Ɛ޼+�)�+:Z�ږ�Ɉ0ʛ�	�?�gw-���? ����j�f3Q�N�!ð��Ǘ	+���"��QU��b��i2�����x��]Y�a��Qz���1r����er�����x����:�����XZ��#l�}�F��id�I0"�y2Z��|W �Ύ��ȫ�E�^ynO���	R�<:�^��"I�O��49�iYM�++Ңn?��F��H��uQTm��f�GW�O���b��'�o�w�}YG�-sE�D�X�Y�4E�`���!���R<մ�r3�]��id��/kC���n$P�vK�M���r����r����/}ً�R�З}���K��IP���a�@"�jE&*��C|��/z RD��U-E ���8�C���T=9?�/��m���X��gY���"�Z�مL��tP,qV�1ߊX�}��2�6j���({Q�%�q��-�}~�<�?�T��i�/�E��P��/��u��Z���C�M��׀ذ��x�I:t�IţN�3�x�n���tGyѹ��%�C*��Q��s=�a�%�E�v(�64�$a2�s��������-r*c
� �C-��qn��R��*���/�͈>�����˔hai[h���EQG�M9K-�[A�x�4{�ϋދ��K��/Ze��6ۡ`Ԗ��l�¯�#r"SX<�a��&�oQsxt.���HDX�Ȇ/��n��]��s���Ӿb����{�ˣ}��8���@�[����m�d�W���=��
�q�����p�u4.���q�,�C#�DŪ���^�qAiL��y��IUXg^��Ķ�~�˭nϊ��f�^�pr&Yv���&��՟1@cЃ0M&Z�[} ѝ��GO��Y��'��UBƣQ�NJ���`�uN�xW Z"~�{��(�!Z�[w��5��o���ڂr�I�a��}��c|�FL��ј��5�X�9QP���:ꎌד�ٷ�7������ߥ�Ʌ�\ԑ��>>��ޭ��
g�GC!���o�0��4V�د�7E�r�@�|`�w�$A(�$�
K���{�����(��:�L��~{KqѡU�e���L�w����v�#��J����[[�?��C���y8E������x�+έ�OϠu�E2�������A��(�DG�]!⹵�^t�4{M�F�y��{ܚQ�Qs�c� Y��؏8uɿ��*�<�,Ml��tg�O�@��V�H-�u�	e�q����T��Q�4g|9̾n���N�uafI���E^�8VQ&����Kd)$��>�~�3u9�^�3RfK�S4�n�*d�v x�鼳Z��ži'��*��P���[����b;]���:YHկS�Fz��uߑ�
j*�9��+�ƗW��F�W=,�cǎ@�������@Ӎ�P��W�2��?Ie�N�o��IlP��({�%�%� �����19C�I�p�K�M�K�Vŝ�ZX=ca�Zv��ԥ��D
&"/�������E��tq����5̕�^�*8�%a�o�<��q�쥐�a��yw'b���]��e��t���P���l�wa�n)�S�c	������DN���2e��Iw�</���\o֚��G g�l����������s�������j�yGkÃ�P�k�9Rҿ;b���\o|&1*�J��}0KƎ��� �r�ǋM;��C�qx����"�=�2��q�)��^f��w���ا�P�&ݶ���)��R���q'O��Gg�����9NiJrH2�g!#%�5��Ӓ��Zנ"8���{2Kt5!;�rg�$rL��A�֤����py>�Ff�����*#2SR��e%,���]$�$�7|��LFKJ�<�¢K~�)���P5ӈ|P(�5��-��{�ᓚY�}�O�����:rn��;7Σ�i��<��;��5cQR`|40��H��w)CP�    �f_�|�Z���f5�tW1������4���z�a��Y�l��w�[�$��!�/�ou�٫��{����׳nP:3���d��*��pV�	���������1����d"���]{�����PN�����x�R�ž�ֆJ��O���l�/�LEѰV�e�ܸ@�{S
���;���SM@/mτ���H$���iLE[���ht�u�l�@�q�̐\�0I��V���ߧ��-`D��QR]��fO®��V�Fg���َj�F�t����@{��O \W�ܭ�3���D�Y��?��t:CC���'ߕ�J��W��u�l2!t�ζ�g�3��AMA��I�k�ue�?�R�#? ��}ޤ̖>�F��$^I�Qi�C������p����o���,�5R�y�
VAO�4�P�~��n�ʻrG
�[�&�{�L�7��hB���c��PZɪ��������c;#���ݝ��5�*��Fpa곔0Lz<Y������է��[�RR�csI�اp��*yu#̍�r��;�!B�J��U%a����g�0@���M��_�r��R. ��$� ��N��{!Vx ��6��z�W[�Q��r]#����\�@�"A��ӆ�)���s�D��w�eF�=��&%E����ѕ�Y�;�4�^3��1���}�Q�!":�7!�r��4�ӣ�O�}bQ��Ӡ8�����V�80�xvd$���˺yG��ytR�cSdo)0����v�D�\�x��L��ډ�0�^88=%lt=/���8f��g�S�qA����ߪ�"��2��������T~NC���]�m�Ww��;��!9.����!q/'�j���������b�����N*�ͺ�����*�o���)�k�՚�Ɋ�����"�[C�O�L�suT�Wr��swt�y��+�:r:���'"�����4"�M���(�m?��`ӄ�9�u�­����	�
����MY$�rr Ȁ��;j�I���ӏ�@]`��)̆��c ��x��E��5㭮�V���D�|���6*,�N���f�!�����V"�|��u���K�]a$�܅�0{e����B��h��E����V��h���?�\��/Ǆ_fo�������;V��U��=�yY��e�`�G7ٗ��Ї�:d g�G!]��I� ��t"&���� x>DAhlN2l�P9K�}�W:�0�1]Ш��a��k�H���띲2�խ��QVZ.����Y��,e�=�����ό�R'�ĨwD�/hh{�e�1'O\���Z�َ���\�Е�.j�?Z6)+�/z�$�����}���Q��[�/ng���P����M�[rPU"t`Fe��oT9�E��<	9�G��v.�;�k�-�4ܴJQT�@*��������a��c�(���`/�ǜ\�mW�3�T�6�sb1��Y���z��7�����{.�����B�#9{��u�!"M��i�{�+Rˎ�D�0S�l|7܁�:&��"{�V�V�OtÃ"G�WR��ZԂu�d8
Rgϥ ƝLeUvŁ��A�d��RKi��	Zv�
����Y�D�9�Կ|��HM�H#���(�s�m�L��wK,�#v����Ŀ��x�j` k�w�Щ�_����De,v"���hw(�"�Uԣ�q��s��%����kS�^ G��Qx)<C��Z���[�h��|�&J'�M�ŠD7��^`��ퟑJ�MNV����@�|�B-	�ĥQ�K�-�D9 ����O!(�G7B��Y�/�b*f�0+���<��n
G�,����d��r���#�b�V�uc�>�b�KzS| 8!\�uB�=��#X�V�Ե܃z���ʝr,�nS��t�-���2���ьY�⑁��!��+2ͮ�y�^:OYQIeW�2�O��[�<�;gVoٞ4�L���q�D�i���+ut���OkA��j�)lԴ�꾖f��B9!��&���*�%V�m*�h��N Y~�%�=���qyzA��t�F�n������������D19x&���K�.j"��	�C�ܓX���n*��
�j>�9}�5
�[�O��r�ԡ��H�\!����d�5�w�ta
�D뻜����A&��;G1��&MQ��?��)촥�����������~p����ϗ�X����כ�r-����}���EOO�=��ed��ex�ֽ�n�a�d�HbW��kE��DT�3�J�E�\X����K�{��/-V~���{���=�*�xc+RY9�)o��4Ȇ٫��h�Cf�BڂU�	��+�/������I���k�HA�x�J��
���n2�q'�5;�!i�D�7��8]w�d���%g/Tٰ�)�E�o{���f(ww��*<��x�0�8*��H�Ť���p"{rx��57�-ܕy`�򕧿�����ܗ�n�+�>�� $*\3k���WK�B���,@�&�kz
M Ic3@��}�$c�1;�غ���� XS�
��X�hE�^?G�ܖ����Ϫt���� xj�,c�F_���Ҧ뱤��K&T[�i)Dp��;ԉ�~@R�U۠��YU{���^�&/�oA1���E��D��^U[>���oé|���M���yJ����u)w!7�é.FL��9����IΤN���C�k�[��C���a!հ�˪6<�e��
��ʟ����U0 �Y+*���r�`c(����C����ĐJ U�wT�x���kIw{�j;��"1]O�	v�zUT��$�Q���d��ѥ$iˁ9�[�wޔ�����n.]Ù{���h\��E�O��W�Z����r�8��Q	�:�K���\׍d�]+�n���;omߪ���P�޿4�o�{Ve	n��t{�M�@�Y�֦����*���c��4o�&yQi~ώ����aDS��8��0 ��#T��t�!W��'2]9�C븉��^��S�z��^����W�=l������c �,�q���H�P��p�No3{��&3����㴭O���C_h�O(��`�����	J�r��Y�Xv��惱���M�Wn�͆a�!L��0���q�Ny#^?��x�n�ȣx�w�p�ʓ������	!�	�Ex����y���Z �lj�e��R���[�9��ٹ�~7��S�sF�./������2��zK8�۽03.u��N'\������&��gJ ��q�v�	���K�8M�m�ZG�wƹJILt�2���罦���b��h������g�}�:�QF?��/q�X���G�ݦ��G�wR��#p�IE�V��!lYX�T�U����bu+�	w�
�.�t��g��*�ϱ�D�.7���
�<�S��X�4�_G�2%��BӋ��9A�u|�@����:YV%��+1��v, ���R�F�B�)1\��.ᚋ ����"4��3kЭ���s���$O@#�"�*8#Pj�,M�Ҿ���uc(p�j�0D���uT$�W�ه��2�x��]o��P2�L�5(���8�)�k0�������e;��X�NCz���<E�[�?[E)E�i����ʡ�6��κ���d?����ۢh��?�
�o�pZx�1ζ�����m Z���z2y�ih��̍}]6?�	i�t�Cղ�I���mio�����.��&��$�Y.K�׵m�Gw$t��P��@������씤 zk��@gmB����c�1{�d✌ͭ鸷N+1�.1H��_'�������:B�L���-��7�9�ct���jyB�S	!$#ϊw��o�B&�]jHr�1{fz<�R��ӏ��@_����{Xo0��c���*��f�FB�g������.jܝewW�J�����f���uT���y��J	Fe>|bq�#	*W�E�v7O��}+Ŀ��x�>�g�>���C{$���=������O�6FW����Z0��5�i�'fI�M���j)��,�>W�NHR����5��CO�/��\�V��+�e�u�{���w¼zL�e����n�б���i�B�>�� I  ���Vg�To��r���\���wQ?P6O�,��^M�D0�u�f�z��&ً�L�K!��֔��$�{$ ӈ�D�C�H"��M#K2��m�o1x��H��UV�!�a+����[�J0��P5j�xW
S�e�4��!k��4\|v��i��R�O!�-��f����B����o��� Q�'��s�\��;�=��S�e~�,�B�9-�a��;�x��pv��{>`x_m�\�u��k�͐�5`���
����1՝0�Տ��xHu���@�tɡb"G��0!S��[k�:��D����_-T�y�,.�d!6r��Tt�W�����P�n�7���oC@L�� |�	ٚQ��Ļ*���	q�3A�l��R�K������`n���������'|_�m��y�j.TCI�ꐜ�tb�;�{�P/���f�8:���6}�M�}�M���e�UK�UGΨC�����dْ�����2���9j""�l��a/ܩXh��;����cP�,�t���C6��7z�����vF�v����d_c��
�y�����",4�!�=ъB�p�7���N�S�9�lxH������[�}�+�<B�|�[��,*Z�e���q�
t��S�8Q3L��C�2T7#7`ם�7e+Y�U�n�x�64@ؘ�_f�`x`<�:�٢t�D���T�ó>�Z��z�xYY�]�I"�"P��E�f|Đ=g�o�W��c;-����(�B�;8I�W{���E�=�$7�kZ��Kf�
yWîQ\�4�T��v���!��{v%��9z�,�乴XEs*E����Bwo�&r��g9��(���g�}��/* b      �   �  x��Y���=�~nYUH��+���$[v����*��8���;�����'�Cr���K�^ �+�R�r�9t��~����^���m�>��T����7�?\m��'��'Ӭ������3������h���L؛��k���~�ߣl��m��j���u����A�u���F��O��z;���x.⋩�Nݪ֘I]o��L���~�΄�z�|v_��=�x$ד�Ӥ��(��+���!�������ԡ�u�]��q���~��mob�~�x��a��J5��j��q��eֽ����d[�'X��^>�׶�ÿ���?�F7�V��m�}^���AS�V������+H^�T?�$|�&�w�����)��Sg�x0: �bNB)H�yS�jv�z�?����J�M�=���'��z��:�~r�H$�٨��|��ۜ�T�]����t�;���8{���9n���s����� ���-��N��u��h�`��IH�1�@ ���E�|�3<�A��rƇ��m���}��#O�d��@��>��|������a@N�/�kk���9�'�����DFމ�ˑl��K�7��|�m��Az�%м<�>�N�IR�:@TO���x��~�(?�4����Y��`�[7��7�Tr�Wu0z��d������f��<�AO�eE{��1U�S0��|^-|^2���L�Z��#l&�(�7�pT�,jL�?�m�^TF��������a�X��[�R0�C� ��A��:k!�umLCz�R����z�#�tD��\)`"3��0F�#�+0~�Ь��a��z_�ɚ�T���C�H� �剓�2P�j��J�ځ<5(�=�$���=��3������{GZ&G����l/w�1��킿�����Z̑o:����"�:�{�'gs���甹AƔ���� ���!�^Jgq�tek�&�Ш��p���hs�U��1����`��M�t���=�%\:��WSv���(�P�·)�zUJ���-x��=J����~zߨW��^�<W5:,3m��J$
 ؚ����Ф�- �U�U���!C!,ؘ�gt��F�mU�H�@�)K���)��[�L8=�PU�,�����~�Kw�'k�-��H��[�VC@��vH�XKK ,{��M���
��rMp#��j�U������XC-�o���
/*:Q�OH���D!��]@����YE���ͨ�D�Y\��"�C�X���Q�=��)���k���ց�Ax�����5�_�Ez��Mj�Ed_G'/�J}�|vz1����AR�ѓ��|�'�=���d�jL��!��`}��(
�B0&�[���?/ԇ�3�|!�͡�[������0��"�  Akl ����ө(���ؑo$�Z���i,�%�uf�|�u
5�n��x��8)�A㈃\����" �XE�J
(�h�@��x �-ٚ��>���$=j �P��;u��'��k�H�@�����?����I8,�J��o(~��L���hM�/����Q�t
��N��ۿ�Mil I�]F��Ա̋-���d�c����a��r�3�|��,�|�^>��,{
c�wgDV��ee��4���;�fi7<�2;����ک��8���3rC�5).�(`�vs]��R������,�Y'�YH�����J��[������g[�:�ΊL[��}}���w&�U]�L�	.u]����anVt�׉�`f�.�)λT ������ƤM8�Ӌ��qn[/��������E��J�>�M(aV4n�2�i��ܥ�/�noN�ޞ����e��Lx��qP��2p�#3lK��;�ZaT�(gvS��0���@�#r왘`�φ�7�x.,��8%�s�N��@VbH�˸��W /@5����X���恃�W�L7������n���V�Q�5�D������Krt�h�9QwV�O\�+ A�	8��h���6���{��SF5	Q�V��2R�<�h%��<�ux#� �WI��S~�t�=t�8R��&)G�����N�A-II�X�c�K��=�ܿG4�̍$�9�D�Y����D�����4sr�vH���A��8i���!�]o���������d���b�0���Tj2y �_Gc���9p�E�P�i{� �@^��a9r��K���K��e��6��B��u����5�V�H��ɜ��]F�(R��z�ޱ�����Q��4�Z��(�Q}���+��C�ܦ��p�&b�;?/�&[�T�!ڴƁ�صXƢq�����M��w�hm���9$�Q�{r@N/g���{�Έ����y4F�,��t��?��fM�󏤨4�yq4l�9c��Z��t��i��S���U~&�ܒl�~��?��,ω�r��J¼3�/�	�a�	p*u�&�^-�O¤Al.Ĩ���D�EM 3�U��� �'���U�N�L��4YʮI��s�; p�i��o4�AE7ՇN7�������y����E��>�����<I�Es����&7HӐ �}�y��J*3���$gZ�i�*�!�܋!��M)��'���M�H1������-{�)O�yy� zy��m��L�n/K���Zq,���F�R܊-�9�.���8��ȡ�2�MϹ)��>99P���bN��&��v��a�YmR��jR��|(�c����(������zUw=���3�τ:����o��޾⟯�EV%��=�e=�V5
���Jӕ��ͪｏ]$�|2��%-kaJ��47�(���6R`��`d<��83m��F��د��x#'��I6�h�I ���qi�v;���Ԛ�)#z�Z��_qP�	ܾ��ܤ�!��N��Nb����/"��wT��={�W>��eC��?�'�%n.us����q]�����<,� B�I^v�B�r���(�t��YDe�A�e�F�ޞ�ULX3M��/��9̗�f%���O^�#$;.�f����l��9W]m_To|���P���H�(u_}Ay
=(ed�2b�}�x��d�Af�$���x��r����lCD�ʮ����(��y�R�&3;2�Y!�s�Ὄ��vfZ.��f�Л�fv���hcjY��Ҷ��I������WՇ�2�OVOߒ�R��q���/A��r��M؊*1�g���s��F4O���MD���CT`���OR��8�L���BN�>@���Q��&�t�����H�x*h��h
}���ⱀs�T�^�a0�v����~��p�TP�̛�S�c�ԅ���P%#w� �3g$�8(
��TeX������d���5E���������$*B)���y�5��%�� W�L�؉4��N�A�1�W����"�^?�E�R�g6�H�R����6WWW�e��G      �      x������ � �            x������ � �      	      x������ � �            x������ � �            x������ � �            x������ � �      �      x��}�r#G��3��2f�	������*�ԣ�.+VKk;3d H1����$z�?옭������K֏��%��*]L��/�*032��ï�=&��|i]QW�I~1�)���e��L��+��lV�iQ-�z��j������e��Vٲn��5eVW�e���탭�M�*����L���dp���{sg|�����vQT.3ٺ�g�9|��?t��E]e�Ҵ�˪��.�X��G�zE����i���_.[/7�^3��Yأ�o����fu�8����~h3ǋ��ƍ��2��9&Su�)��ސ/�t4j[ӳ��Y[�h2<�f���4dy���fym]E���3�lMd��̐�7���v�
�����ʔvM{ô;����i�ބ�uQ�������9��vmm���뒾�2<�o���^�oV�%��լX���b4���+�i���꧈!����S��픛fK�E�󹝵���(3ecM�Ɋ�?O�q�]b�aZ���M��ϼ�EE�7Sޚާ��3��V�D����Q[��p�����}�E嶵���I���=���ߪɋ�	��A��	�r���~9��r�{f�}qN��������{^4��?��Y]�x��y��Y�7	��$ڶ13b(=��uw��:1GA��6t�2W�h��neʒ6��h��Q%�f֘��T�,o�C�yaZ[n05z���v�YSwU.ǆ?�4.��lUck�U����Z��i�q��8����KS�>�`A�U��3�Gi�9/!Ht�:�^L%smS����\]y6#�k���VO ���6z��Úd��)0/\{H\�Mi�Lo+�,h���N���Ì��g9��K�)���i�g,���ͺ5���ա$/��bF\�a!��q��ۆq�AQ��.Ǒ���V�b/V5T�K������Q�<�Ǜ�OA]�B�����H���������UApC�9�ݏ+PA�bbjg5��3�׳%Ā����uE.�Ge�ﬥ=[B�xS���CA��am�x���g4*��D�:�VO��T������?���H.�o�����z]�h���ܬـ��c�Q �x�s�b��-ʒ�we�e����&���T�k��-O�0��6�Y�Wځ@��5m@Q�}�c6�����W1\w�%�:�^@L�6#�t�^�XM[�)�<F�l�9����~z�Ʈ�Ĵ��P� ����,Yh�����G��i�$�?�������$Qf�$�{��6x�'ǃ����,fb<�Qxٱ&6"XM�=j�h0K^N&��K�bs�+�j��x��S��H
���E6SޑՔ�+DU	����̴�o��H��4+y��^�pJ@r��H��::�S�F�YSy���({-ʚ>�l^@�O~���v{ݭaΘ���"?r�G�^d_���ft����5=8!mzK��ёjw�����w��V���.顓��_;p�o����
�6&}B:68���zJoɖ�v�:�������,�Ms�_�1�=��:{S,�-Z;����.l.`����ۓ�c�����">/qО5���������P���9I:f��\╫�+2��_��+׽W�<���+%9�u9�eޕ�`��m<��m8�#\������>�����!�ՙų7#�ױ-�BB�Q7��@��3�<��Xx�A���-�g��-���"j:+�ൻE��|b���ɵ!~�ŏ}�}��v�<X�[S����ix�K�-�M�ɟ��syE�2�FZae*:N�Yd�4�A��ɫ|�X��T��M��%uJ���dC��Sڣ*/X��cwP�S��6H����.�Q�!7�#�ZvϘ���{H�n];WL���2��"�]�d@�9��]�QH���q�{���B�"=ˊ����Tg��p��R!�"����6N2�E��o�!5�Y��@��;��gM�G��#I_��F�X��C�Yk~��E�UI(���״)-Y���	���H"C\S-���J����ի�0�o��_ [��H5����,�tnF�j֘՚���-V$�U��?݆�'Ger��a>'�gvǿ�l�+�m�@�M�Μ6j�x�N��R 	6��^�7��9���}1c���l�a��*�B�*1�������#�3�IR�T��$+#hc���@c[�f%�B'g�I�(�yz~�[�r:U��M�^�!���~0��H<��X��`5�_��Ҧޓ1�BBy�C�3��#�SZ٘Ѷ���Q� ��w'�j����A��@����ҩb7�� 벅�h�L��B���hf�J��Q�w&��,TB{!	"��,ku�0�1��| f�G�Y7#�va�wal"'�̠0fi.��O��k9 tf�m�|�g� LZ�&)������'��-~�+���@�qj�_@۰����iH_N.�IZ�X$�m�������3S|~0n�˥��:���ò�'��h��wŢ�Δ�>p8	��Ze�m�j�:�A3��qw^n��1�ʕ� ���_x��]��+�����>j��rv<��N���.w�&�R&�kEJU�4��c�[�u��8�pr=xŚ�A� �}8�kg'&��_��C��m��a��
�DD�������"<�5Ơ�VF�X�[c蜃{�e��'���n���H��,,닻�ގ��Rۑ��"���dkf��s^�I����;"-h�l��1���v��z1��G<�uyn�qf�f�d� ��
�䁙bD��ޞ�'��Γ���Mp���e�X��mx2����d6T��m�؟6P���ú$��L�n-r�C�!�b��M~�����͋qu�)e+>*�Ԛ��F�����>?×䔍iJM����-V�Ɖ|s���X�ޯ����|�3��5���MC����8�������A�'�~��K���.��lI�����$��^*��D�U7*�Y�5��M�2�[v7>X�˅"���"�)
��WxBr��`,j�h%��i�d�=����q�+�/G�g^�w�֪�wA�d�z��E�7�y��4��8�I��	��ވ8�E��IR4����H	��G&r���?�@�?��F�����!&~ޛ8��{�T���?Q0�PY�W2_�+���d�C��E���GvHwF����\�E�e�0�
��@ͻ�H�sq/���b�$��B�H,&��"!��p�d'_�Ɨ~���-h\�yci����1��5������!�9�����f%tǆ\moD�+]�絳���hH���LU�>�IG��-\�{`I����vdmʎ����!h��g£�=��E� �����"'�D7�	V�A�P�����d�س�MdEK�o�VM,��c�F; .����!{�i@�GõP����m_ n"������\���ذ�(��L�h�ɰ�`ٖ���o�󄢆d�"�m�5�WفȈ!�Bl��*YI��wR��\�ƥ=<�ޖf:{�(�a
v��@�X\�^���<*l\B)�ݤ�wuU�~�g����sɒ�Ո���r�5��`���b�}��vm�?������bq�8�K2�����������F��>���I#�Iw��r9O�	��Q-��-[�`�Q2���ꓷ(����*����
[�-{���l��5rfD?R�������E#�VG;ux6��GW�q�6�na�8��t+�������#�Q�ј+=QX�{���\`�M[ �y��,C��~�a�����-��r���j����sZ�a�^�Y�n��)3�a�_2�F�C7��V&'�:τx�Ӿ���������\[��6H�J����&}��!zI�:��bU��I҂�������KC~Q#����nt��#��VM���A�%}T�7����)y�S��\��-:���+�v_"�UBX{�=/I�Ц�jZy��&�f�ج4I~^T��!LG��!O[��G�ݲz���
a�i=�@�hC)[�<�hl9�Ipk>�!����}8Qt��m�/o��ﲒc��+���6�j|\W2��BbJ���CN��:�L���D��D]�x�6<    =�
����Jvh8$G�"B��
,�^�u�0��,d'��;Xt�eM4�!G�"�QNS!,xxz1xmH�8��OdZ0
����%��iϿ&��^������錱ǂ;�kj�J"^a��fhI�;�W RTQ	���8�D	�/ʰ�4	���}�Im}{Zv����!V�#"�[�f�V���}�@an�-�H�F�`I���;i� ��=���}_9G��V�\Ƽ�?9BxH�e7"W� f�&��-{YUY�؅䊓�h�ya�&�����f�k�K~��с,�|dX���ꧪ+�S�3hDlE+6��2���� ���T��a�MR��%e�VP�ŭ`�L�glX���z�&��K^��z}Do<�b�F(� ��$<��Nñ,&#�X�|}>s�VT�3�031�T]��`��&B3�u��6��A$�A�0���$wtKZ�`h!#���l?z)���t�g���D�z�g�0|)�zM���%:�!�B9��Xq�N1���|�gd�d���YR79�����~��l�դ�.MŶ
�o�Q�
�J��^��σ�l����u�X�<�F1����sK��%>r��,
�43<2��t�(Ӧ������/lxv��G���փ��,uFơZװLiɮ� �b�@��	�~��X�@C�(�[��~l�}<�y�.t�_y�I�%�F5�O	�d-B[�G��h����a�ARQ��2��ܥN斬 �~�6��#����7f���I��q�ó+� vN_ �Y�{�=VV������$G�zԊo�	��H���2��m_���E &N�9qZêx�U]�j[���em|��6��+B��'�)(�H�4V�^+6=9��p��h"���bM�#��>L�j�)�3���N.z��6΅���ӫ��cib/�P{v	��y����H���,T@�F�J��Ǖ�L���<��e���a8�^������hj`\��⎬�2���������Ϥ$�$u�$y�d(�f��W�;���j�q�e݅Z�����ҪN~�dԊ�D�5��(�� T-=V:A�Gڕ�R������ɤ��Z�8?��9{L T9
!4�/���C�{��;	p~20ز��� _4�����!.C��B��u�H��L,P�9�r�y~4��|�1t(I2�33I��!ϷT>��KG�LY����Vj/������|�jl򹤸)���7�`�1�g�~-j<��W����+k��|I��;ē+8C�ƃ~a�)Y���G���?/��0��fEfLa>m֡t�T	�$�ʒ�@H�r�����"������>8ǰ����Ph\A���L��M�K�Ph�ĸU�YFU5�W\r >{N�$")����q�}f�6���O"������L����Mr<em2<?x��_��"�[G�z?xdsZ B)_ <��E����By�+���՘��������I�m�F�#���m��j�-�l����<_�Bo��c���4$���k�X
�"y�秞jc��oP[;K����%��wQ;�������'����#�ҁ�H�y���YE�;l��X��R�0:����@ñ4le�1F�K��T�n�K�t����n�u�`�R^�	�Ho��Nux~>��C���o��f\ǤS �7mհ*X�\��*�I-5Y�z��P����wG�"��S��T�䎳�'
H.dx`���_���M�݆>��eA�T����3g�R���
Z��1��A�le�
�AP������<�Uù�DV3��v�(X>W�����P�h	^e;1���]ĺ$sWފ��� !K�O�(�k<X�O�z�vYc�!�ϒ���v!WeP�V��S�(b�v +�:ϗ(�r�^�ܢ��I
��
�#��֒�D�y)zd̜��4�(Uv�s�q��EvBBB8���_�a�|혨���ś�H�
pH�^����]����|O|��Ĉ�O��ǽ�����J�&8�ng�����HN�;x�H�O���}D�D	�6.Dջ
��w���Ҭ]"�M���+z������x�^鿒7���:^�_w� �-�1J⧎�+Ud���{#� ���-�A�����������ޫ�p� 1Q��Q$��>�N
������
�=���"e���\��|+ҽ.�f�r���cI�,��9 \�^s	�w�8C�҉�"<`��T�/$�lC�����ڀ�|ļy"� �-��?~�*����R�DM��Ն��Cֶ4]5[*�M�|4�'�\22�x�]A�X����i���c������l�{=�m��7z/$" ���g�� M�������.2`e~���@ ����7���.�YJ�i%��E|u��V�d�D�_��H��Ľ��+�s{:z1b����䑯�!eښ�'���n�-d�>��b��Jl�}�e����$u�-In��܋��߳�,��^BVf��P�5��q�+��@�!����F�r�H�<o��k��d�2zcK�d�>���;������qu߭m���%��WG�k����c��!��Ym&绸!��I�:�!n=�k���^�yY̿�.�#SS�2�P�3q `&����/�Y_��d�Zz�)?i� |Q\S5hkv18���?�Jk]�Ԋa����ku�!U}���x�SR|8g�!"�E�e�B0=)?����q#i�?�aRx��X��鲒:I��̹\<�gY��a�y>]J��4>�[E��;G��||��y�E���1�eI23Ύ�n@n�R|�wFPvi֜��TD{#�0�*'w��<됿���J�z��Xu!'f���^L�1Zڲ���=��{,��W"��T4�_m2�=0�qS��� � ��knX�Pk]Z�+
1�C�O�'u�Z:�Dk$�@�Pzs����'�^�b��˺v�&'��<�g�Bz�L�S�?��~��ũ~�@�y����V�5,(���dA��R�d6���#�YHO�BX��e#�񀄪�h�Ԓ�O��8�N�IkԒS�cD����/���j�1��ν�� M&�M�H��a�;�9>M��:����FS-�jcQ�VZ��-P$��~��}lS���ܑ���U|�ɛ�7,�����r6�c{h�����G���n��˘�/�\�g���g�q��v�r2��E��x"����(�����i�T�{�6� �����F����D����#�q�V�3�����$�W��^d�V��O�;C�H�73���}�F��*W<�rT2�H��L�E1K�ﲽ�k��L ^6[n�9ʋ�9l/3z�:V�o1	�KvI/�%{�3N۴\zP����$������c.�[W�<H��s���>����B��]���n���M�u�.��z�����]�i]��������G����P��RQ�ܮˢUe
��w�'��9 a����Q+��b�K��5C�C{�]��@��ʥK�BD���&�لE�ǻh5�(��N�&P2|�+a�Qd�-m��H��{�,��a]�5Yy):Ͻ��N��OX쑄6M�%6픩qq4Р�x�wbxqI۳�,�MK���OB"_U�����a�1L�~�
��?��o�K�F/����;}1V&g�G�I�\4��u�!:n��>��ģ�����X�7�p�U$��~*_��5-�s}s�mD�k�	�N[5Cڛ�]:e�O3m	I[�'����`'2�[ź+�+��!�~ ��}<�$Hpq�1
Il�a��3󃠓�����aL����y--t�@1�4���'X�H&1ُ��&�u܊��H�$�#�R����%O��="匷�1�mw˖����a_3�U�>�p�"�k�Մr��cZMB�/�Y�b1�����4��1>���5:�{�b� ��|�J�j@�s^�; f��M�$���G��bC��A&�9��FhlAO�7��6�'������]H��������ѥm��q����K�Q&�G�(�����4;��/�&��x�,2���    p��{]{`��F�޾�A�a������n7#g��>�����n�]�ɩ� ��c���rn�J���Of��Iv�ɖ�2��FV)�������QҏM��4c�5_=2��������n��Ӓvn�G}���&��d��6ixy2x���,������x�o=Ks	�����)M�Q1d.���] 1YM�V{X%V���
�30�P>&sa����ԛ5/̤��4T�"`�1���g�Omb
�E�>�ΰ-=�y�3+�Ii�_�N�>�<#rp�-�e�-���{�`�"�����c���drP"ck����d�i�Gꈣ>LZ��񑑜�P�Z��w|؏lDO��G���z���{m'��]OD&WI�WM�q�b'4��i��PT3�a��8��H���Л���C�X�dOF2��IkZ�u���� �ft�{��Q*�9N���Q�hz��1��h��gjl1���2�� U�s��� �6Ѣ���A���M�#P�zh�n�#_ެ�+� �q�2�Z/*�|2!�y'��k����k
I� ��XO�E��볝g�0I��f��jϢ�jYL�;��:����xo%里��6$�]�<���Z]}�Dc���L$����p��ų?�<�!��	cݳt�7��:f�JmVr�g����[�R�1
������z{Dׁ����6n��>4���N��mK+��Nς��r��QL��(����\�v�j��P��e��K���]����d�՚NQ8�z̀�H���]2�x�Щ�������H\l��5�+6�K��	���2�WD/�n\N�>i�����9Z�Z�k&U�I�-f�U[�K����zb����Rؚb�|7�40�+u.��c ����N�b�o��}���k�*�U�A��;>�pXW
�,�;�ڊX��D�8����m�ٿ�kD�,�<���z�m8�~�%/�鬫zZ���
��1Ώ?=?ż�<ڻ�¤�Z	��Y��x� ����	���'�3����b×�O�4�,��h) ?��E�,*�.�
O���H@p�2�:f*ѱ��}�6�6t�Z1nq
Qe��|S�C���)/M��К�_#�F_rm�*���>�2	� ����l�)�H���{��)\/�Zp"Z�LI�>���,=���������+1�EE:��=�5�N�q�W��ջ��m�t�Z��!��6h`�
! ���(��������:�N�A��+��&]H�q�<'��g��!o;{�
4�7	�U-���#���d �t,jL�-�^�Gn�O~h@3�������h�}��Z�1?t{��},'�R@�";���z�"�����1����_�ؤ<�[I�CU,o9I{��-���P�z��E�+B��~�D{�	�=�j��ͫӁb�U�=�H��a
�wo�G"ڵGaP��(`��&@���ѠJ�������-Y���x�齍��A+h��0���=��b ��i�i7�$ө��D�].�O���ě���^�6�wY�V�"W;[�\%(�.:�G�gwd����ui?h�z�N������VA�G.�`-���6ë��1��59�$�Y�|�Dd��t���kW�:�5%�]�n�r�?� pGv��НDŝ�[�;�[n�	����Z��Pp��5M�m��n_N�w'��,=�3�ષ�$��\K�7h��d'�۰4CJB�|9����`�O4��s�]7V�L6!f�L������1Qd���N����9��]B�����o�Ԃ׎�k~p;��J�Y���İ���"��d�s~�;�cc��Ճ��8Ҟ=قlw��oel�&��6���6�%ǈр�?�����t��
@q���^~?��a;:7I�6�������R�G<.��n2�U�Jh ����C���ZN�Oࡒ���>���+E+��h<�V��<��B|7XT�+ub7z��	��W�-<=x-��0	���M�0���*1b ��������l�B$*��+��*�`ح���H���=^ZX����'#�a>�
+�)��U�ha�X��d�l��bX)���Gy����/e#���s���w�C���Q ��}��M^Y���.G������p%WIn]5#����7Y���>���b�7�ֹ��~(L1}F<)l��Mڟ��(ߒQz����h���E?�#�C�$ �P7������������2?.�<������{�Z0�VG�;��EN���s�7�{�6�ޖ�C�2�L������0���|�L��o ���L�dO����ܐ�OX�+k�����.9�� �c�7�Q(�P��բ�wx��q�I���!H��ӏ�&RJ��%RJ�!"��o��Zit"YG ����!$W�ڗ�?�����?�9 �>�DYp�F.lz��x q���(Ҫ�g�X�3�{��c1�n�"�f�|����gb}��ܽں5�VH���g�T}��m�oP�אIvc�\ܠ^o$�/w�R�@��T��(��Cr�4]�����m�'�o��9��Y؝^���pO��ڍv��#��J�1%�o����a_���"%�輁��$UX�W�j68�B���;��o�P'i&]|C�n�¼S��2=-���1�y��f����98��>��w�����}��O�ְs�WD�Wj���צ��t����誂xу�w�^�V� /> ��۸��?�{�4���#���+n��!&�6�6��L��y��Ƴdn���;v�ךT�v;{e�BR.��T��n�+��� �k�:�a�%����A��������4�M����s(L^�hL�B���B�!�?�>-��eb<ra����3�+ԑ�E����[]�-z:�+J�T�%h��z0Ң�
ѭ�Su:7����n�x� ��P��L��i6dr)����p�DH�����G��q1BHf�T�b�k:뱾��_�g��ט:���0k��o��W��g��.�����D%�J��o6Ѥ��oUbR���qk�<����a����?"�ó���|��
�x��WS)�v���>��*M�>�FO�s�}��xa����LL�=�q��z,�&�����!2��g*���[X���ML�I�o��+ܯK�K����d�k?��8<�k&�p��T�������n����?����"T��~WEn���u��H0qaY�>*v�a݊�l:��дejA�N�Oi�s��w�?Y�FR��F��{m7iZ1�[���^���'���bQJg����o��۹�oh2�>���d�xYi��1E����\����,?����(tp��A�U�w?������-}D"-(�:-��%����o���85v�}�*���j!ۉ�Rp�\��������5z�z���*���H��{�n�#���)��/9'�� \���Ǎ�*Ikb7����/�xD�+�Cr�#]��M�O�0�Cv�D *q��'���%���$/����d��:�����]�%p�I�_}�w�}���)�8mǽ�I9�x�7UF�&sD�g��>M�D~��Vڃ���/��Vڰ��گ��O���e'�ђ&�r�H4���^��-L�B]a���Y�ox�}�j	��p���Iu�}&�r��oZ�6G���D�M\�$��N jƕɌы7�(T��J�m��9��������\�ʀ�X'���Np���
լ�p���2k�աB��/ U
 w���6]a��,��ꕊ�c܃A7RM� ��v{[X���Z�z�Ul�����@\�k0
����Fn	�h�?������I�æ�VR�Z+����2!t�D�]�+Ba���cs�3߇�e	0�|��-.�uN�H�-�����V�Y�����9�m��'t�n¹��?�c�ML�G�X]2��?�h�#�4�g����~ ��F^; Iҍ��?#Am/ww��Y>��NT�~|�<ץ�����E>'�"�m#8��5�* ��Єy��:��-�`G	Dx��&�U�;O�;�w@G>V��L|��ٸ�KhB�d��x�ӝ�m�n�$�z��4���y�IH�ri(�4 �  �/����ڎI�z���/&d#Hio����Rwox۪�Ͼ��&Q�&�a������V��O4H�UGU��ɀ�!����$N(B�9p;���G���J�t%�ք.�M��~>�#��`4�ؠp29�娜}"ʶ#*�t����j�τ�u6���}�h�T~�^)���
ĞːA�`]���h���g�%��6l�F��uQ���v�$4o�ܽ5*���K���DU�^�=�=e`���R�j �'%㥰�>�����T�i��k�i0�0�K��\�/�1�7Ay{E��$о|+�d��h����19�wO`�܅q��'��7vz	�����/!���ˀ4��z���[�����./^d/��m.[����a\w�բ�T�%|?�XAC~i�T��_/�\�m������i����p�^����܆B��!:ܖ ��1w�Ʃ�WJ�H���=>���z{ UZ���l% � ������)�+��
��N�wջ��<������$a��,��r�#������{M![�g@��s0�lϦ1��Z�H�J����(�9�&�ď��xe�h�H��o�x��{�l��b>sN23��N ῴ���G~4���mU�T�ﱻ�D����)���$�w����������ߌ�M&W�ۺ��5d��*z�i�nJz��],��kݎ��b{��j/|湶 ���\�wi���U.$����"���}�Π��`��e�
LR)i7#��/��FaZ�ҜH��Nȼ�^� �'���3խ<�H�����
P>=��4/9(�]�������q�B$C�9ڣ�M�V�{����K"�̃��=�^����B��xTpWvp���l@%ņd-w��50?���&1R��J k=꺱f����L�kA���h�M8�~��~���h=f���\B\E��q"��j���"�dt0�z-��o{:�qOΨ�N��\ov�iZ��t�MR���l�=#Lt��"6�1��t�����*K�/O������U�tAY7��-�ѻ��� �m͹Ֆ�
��0>���?�����ع{h��<~L�{��m�x����7��x`���_�{�������!�[�/�w�,�����^��t��U��N{@B;y��;�%�s�Q���-��t�f�M�lP�o����)�G�l�Ƀ�HZn玁�pC��;CV� �����&��:�/��8D0�N����#�� ���F-��EO���Qɺ!��Z���.q�	.}/�]�q�gd��������(�5q�tv��%ijR�i�h��)�N�ЁC`i���=�)��Ftk�Y	�V�c�C�%B�9)�@�4)uB�R7E��~��o�D!�~B��FPr���iZ\P'�p�>J�*�o����9LX����^�W ��2�v�̆vGZE�����f��T��wf8��P|29����i�^���M������_C�P2ߟ����|n89=�嬾��	�f+c�/�;����L�qmtS�J�I`�/�����̛W4���co=.��D�n _:��#%�d�����3��>��'�M<�?�z[]�����6�$~�����/w�j#��B�4w�ٹ�a�,�����XY i<�K}�@Y���LD,���n�5)����?�
J�,���g�$i�5���,���=^{Uh˳�W,�|!ē1���Y��/ɷ���Y��Z��P�)���՚�9��o|�KF�v��甍�^jO<�C���:*������:ι�PD��q�˴�ئ��激+-gH�r)Q�9�
a`mm*�V�+¢�������z���V���wV����Go�<��0�����:����^ۍ�vp.�,h�uNԞ|K.%7�c�����%��
1ϥ%{B��"����U�⢑��"����}8��t������P���	\��(��8�Y. -up֫�~�~X#�-æ��ަ�v]H�΂����Ъ�u��z�Ex@�V��#�m�ݙ#|���%{N#g�ǣa�}���cG��婌R�H���7ɉ@��f�k���9ҠD�5�K�����e�m�MU�LI����G�>!(��Ǔ�'m���آq�6�jMIra�wT,�F��-%[�B�q��c������3O��M%Г 'by��AzmlE�����ߙ �@�����=n咷r���|�v�=�!1�9�#���� �6�y��Zĝ҂��F&��sمjv��5����[��؎#�}�9�gY�b`~:@i�wħ��vU������+3� Ţ�F�!ı�an�I�e��x���A�ߔ1?2v�)�o��wĻ$�CR��S��v������;v���+��iJM�C�zm��$_�rm��ˇ�^�T�
���%���[ D1�R��ϸ�[��'���p.�+$J���I�\A�zZ�3mxp?�?s�?�P(�]J��W��>܇M�=9|WpYLR�?��a'W����&�\�?vL�~\S���HM?��ZUҬg�a���g�T�O�N1E�1:��y��Og��%�ʓi�r�HӬ�4�F�o���|�nwd�4��㢩Uo�W�q�u!����f?�u�����w5�}�)��I=R���S���{�"����^l�I�d	�+�ߚC����m�y����{Ӭ��� ����`pۍ����O�����z����kc�
7z�S�n��=�B����'����BƗ���$�(Z���Mn��vG.�z)-�*����a�j���pQ��`Wn���cUr��L�������&���:��H�����ύ�{9�^R�[�Q�},~M2Q|�@��%s4��X���(q%Dwn�CI�{ﾈWM��5��I|{;��:ơ��t��d33@*�7����w�"}����PF�&�O��f�or���WC���R�x����Rճ�)���'Wr�<.�}�u�a�|"�����/��{{7[|�Wn~�辳"�}u��T0ԻF������0f���+�V�?}R08��)���_���s���a�޵�����i����t.��w��,�pl~8	�u����j�=ܪ48)�]���-mL��H�����A�]���J��Ҟz����$�/�K0#�r�Ԓ��Bl��6����.2���\I���x��mS�9Y���|XÊ��[�'8�Q!�8������� �rÊ6&��-K���͉��ݽ�f1T�t"oS�\��������h�#�j�>~�����p8��A�ر      �      x���˒+ב%:���kv�5N6_z�d%V�[�%��j��3�#��H�;�V�k��s�����}�H�㐪�=(3�x2��O._������w��_���������OC<�����u����p�*���S���n��s?��1��C�����fj⸾��|�����u���a}��m쪸��.�i\���i�'���Z��n�[����:��C�����ܴ5_�O�|����j�x��s��mT���G�Ǹ��W��0ɟ���߆���6�| �tB�Eyh����C55}7ʏw}{��̷C��GӅ�9�I��.V����}7O��=�_����������1v�`3��a}�u3eé�Z����������'{y�8�D�q�d����=���|�s4�랻����|�
�/|`���0�#x�LA�^�n�������=Z>��;Y�*���x&��e�O��~�M��6Hn��@�����;Y�/���ܻC8�b�n.G����G7�o���}jۿX��E[�c����J���U����\���(Gg��a}��$��c7r��2�<�G�Ov<�� ��������\LMv����ٖ1lֻ6~�lۨ�eã,��Y��>c26\ù�0�[S��{'k��Maϵ���{*�k�ն���r��!��0ऌ����hݧ�oZ,�]�'t���tn���|D��骽=a�_zզ0�..��.�U����c��⊫�G���k�3��s��������+�+��Voa8����wd��x��;=P � ��rp>�<�D�Z�m�맦�������q���|��qK����J$��P��vM5��&���Ќr��8��Stt�<�>���7�h:]�/�p�����~���v2t(ހݐ���{ۉ�[��­(W�u8������5���RKm��p٦6�䊟Mr����^o8��Jd�Ǔ�����S"F!l�@��^Ƹ�q��n�3D��dҋC#cY��b�{�v�A�5?���m�8�����5��3�������B�K�����f���I�罹8�Wk�A���XQm�W�������;�;.��F�.5>��p��J���r��^v��\�0��bXԢ�x)".��G�O�]����8�2z�w{+S�ú��D����0�����!r�0̓�cb��_\��pVv����ť��ר*e-�ϓҌ���W�<Am6~Ϯr��$�Q�ޔ;w��-�țQ���ձ7���,���Bδ�]/�C7T��m��|��\5�������i��clw*[Dh�fզ�^�MjbW���شg{M+��yVq�G�n�tyX�)I�/;� S��o���m��ue��|�S�*����`��h+���44��� ˧�~�+��u��B���Xu|��Ʒ��B�v�����P�������B�8E~5l�x�n��\!j�K/�G�������0���	#�������t��	/�yPJ��ANn�kdR]ϵ�{�p!ҹΝ��n��E���S�68>=� �eX�a�۽���V�)�`�]�x�>�;uKa�_�v��=o*g�e�s�yR$u�H1���Ɲ�8S�".0\� GP�:�q�gg�P\&li��m�p���rr�:)Ѥ�в�5���g����s:�x�2āJ�~��+Դ��=�O��Ά���jrNE�6=0�p2&��[ݐb.O��QWJ��1t�i6CX�� �dT*�e7*�ܺ+1+&5�}'�OӠ��QL��'��2p��H��Q�Va<���Ѫ�ם��6��8̓Ⱥ��˲�ć���ļ?&u�M���%��,���
���))l�f&3�䎴����N�I��á��pםW�Ѻ��م;��=wVŷ����(�YMT��82Zv���zx�pf1%yԏ�5+ךP��~;��,4�h�7a�@7�0�`9vM����K�j#{��'%�Z�d��-,�a���WEvp��X�4�W�f��1�0ٛ�[�S�E���'��moA�� 'k��Rh��;�>͓YY$3N5��CN�n�Vm1�ENM��r�`$|9ɳ���\i@����s��mcĹ�5��=w-�Q�}_��\��t�#U��w�p�p�eu��7% �l���4ƚc4�#Ò��;N7��}C^�rdWmy~��W?W�Lc���3d<&����w��^;�~6�.����<�隻����{����X�i�����O�k�5��IG�볅Q��qaK��׳@e��:�X���_�1D�R7r!ՐK�v+�Y~�HG�N��[�P�>�Me�zr!Lcދ�5����h�,�����WI�������lt[�'L7EV��WQݎ�CH�G���G�����!3����h�K{9*����Z����7��A#�*4�3
�*Pd#YI�>M��(���-x����f>�� ���iQ�ʚ`ێ�V.9�thEǍ�&��%����6G��Y,���b�/¦/��<��E�a�D�`�9�2N���z�ܓ���.��K+D���7�/�f9��@�ԣ&���~b̕��W�C�9����LV�.��H<	Ff�3�w2*�������.�v&\���w���\�`)���D�
�O֘U3Z�,���~�<Vt���0������7��X����&[YcR#j�쨑�P}ob`�Qí�ˮ͠ޡH8ꋤ�G��7�ou���ݼA5��x��M�=�=� �(�hPQ/w�F�[�J�W9����,׋mC/VQ
������׸T�5�����<�?� �
=�^�Q�c<���A�b4���)����ͼXC���OC{\%�m<A�Wr��mv��l����N!�2��o�����Q�2���v��P�|F���ł�ba�u��0"$Vݘ-?q ���9�B�M�!хh�R͈2�`6��e
�x	./B�����)d˫Ъ��AB�	5PǱ��d�<�.>�+�{lũlϯu�;��u�^��FQ�,S�ӵ��s����c3^I���;�}�?�i��wx�7��7|�B�4�qr!��˖�CP��?�S�J6�&b�I���9㬴��������&G��\x>��ͧ.2i�%�:㢼[\ܶ�[�s��; ��y�$ ��^��~��"�u4g�W����c��/�k�Z~��{���}�&bX�Ơ�����HO9��$0 3�K(�i
�y��~E"�O��Ub}ne)7n�m<Kn��9ҭ���SbK˅W������ϣ��J�sƄ�C�F47�k1�K�3�=P*������ks�-�p�7��oH�����5��Flr�ڗ���Wt=:3���4�!7bUA�B��b�i;ǳ���dy��B�� "���NQ������J͔E���ġ�U�w�\�z�OI�N"��5�|�M��J�+�u��w4��_�J���oF~e�1���c{O6w'����E �g	=F$bo�`�ϋ��������P�D�n�|E�I�� �/;YT�\ʨ��)�(s���=� n:<s��ɮ���J��<��� �X�",��r�d�g�q���\�~��O_Q:�󇾞q��+�(���N]�-o`o�D�� !�I
��j�0���ע�F���jʬ����x��=�����wb�no��hF�>��?��J�y�͋Еs�Ǒ7�?J�0���)�(��QH����|fԧ�>6����v>#g��
��ve9q�U��v�FDM�-�(�ᯊ�0�T����w�r��2�-o�s���(��M�!74�p�FK�ȁ3��T����_$.n�Sc�<-��D��p��|�����5v{���ƣJC�Ξj̯�vn�7���_�B�%�R!s��^�X$c<7X�7S����=����Y��P�\Q)I��B�5
�S+����E_x%��[�͇5�����-S�,�G8ص�+�p�$R�u�IzƼݛANe�X���،c�s�i�����6gxEO�r"4�W�B"N#�>�Vϖ��a�m<4̃�?`��Y@Z���ә5"uVӁ��AD��C?�%X�7�$6ȱ�l�_3���닷�ݓ}�;�KH    @CElGns7pS,��g��xj*����Wi
Rq¬�������ƛ�u��ō	�b��w�T�71(4M�.�wfk�Cnh��9BK'-��q�T�b�M�a�����?T����"��e��_�2�%�}�=���C(BJDm���{CƐ{��P���*y�2�V��ܠ�� f~���4]�Y�;� r���ߜ�'�Yh&?%�bT-�5���m:/O�_�&�����y)Hq�㐢r	���h����YN�y�)�N�,��x_v�0�_O��w���M?��E�;�4L��wӻ	�%�����.�kH�"�l /ںZ9Zv�lYTw&���*�
tSp��om���'�)��&f��'����� �x���7��<��Щx��U�w�} ;�Qf�b��p�e�0%��I���$7����ˁ^�1o��4X���<��f�8�T��������-Е�Q�Q������o���B{��q`��)51�jV�~Z�Pw$�����vd��i�{B�Y,��Y~G�v�A��-�|~5E+C��V�o�`�|qqX�7��h��9���l�A�Z8#¤�(���"Æ�s�rY`,0!�w�&���ov�э�`|u��MJ^��`҉�X�#�����O��L�s�x���x���!��J.N,pW*���ґg1� ]mcē��c�b����^%s,����^ZEq �-܉]p����a�tT��p�����.�������ס�%���k��7���ؿ��a��%~��,H�v3{pn�
[U���B��q��)o!|��Jq�U#���������A�Z���c)$m-m{���:,�����#&����r,7f�#�g�α|>�8I�!R�$�Ml���f�B�����\m�Mk��(�Caܐ1�f
��ԃ���@�1��������Sx�lZQ u(����\��ri������	�����w�2�Z��J�`��{���I�m��OLrm!���!�kF�K��� ���"6{�TK�j�r���.�+�����"�ŗ�i�p9��Y�2&�� ��ZN_�J�\ӿ��}'~�,S6�6��ʆ\��˗�q&~��50t��aKv5�@�
 �H�͚ڸ�l|�g,[>#� ��8�#�ΓP����]����`h�u���0����D�����k{�7tr��5O����|��8⩿�\��w��%�nS�Rw�n�{u!T! .D&�λ[$��asV7����Kʓl���Y�P��M0��}$K���t���Ǯ-��KT{L��e��ڇ�,&����� 2M�m�Sm{�����;���Y|1�n�&-cH�	8���'+�0����?@����ڑ��yM��!���y�� X��L�;�Pr��iƑ����$��'�m��lY��JpQq��*zo�Y#G���*%��~�߮ñ�  ��"�{��p�gC��(��?�M4,,�Q��|�^��Ů��`t��X>蒶�,[���~4*�����zѴ�� �8�kћ���>p��2�M�"4jV�4r�>~�B�{80)�"�Z����Zٰ�P����Hǉe 7�4,\-����S<�Zր��0��o���]��0e���Y$
w��qH��Bg���ialJd��G3���;8pz�ʨ�Fe�=G�H��ڔu|:�4�3�ޱ�ςO4���Z�z:A���R�
7�&���=��j���24A��<n1�k�����P�����x;+���B3��j]���KżpO\�bN?2x��=�KQ�R�3rV�-��z�	�r�&�ܞU��md��5���7��+b��R�P�����E+_⿢�7e1|V�GOS���<C�C}�8�[�TĐ�b�P5~]�5�Έ��Iʤ?2)�]h{ߙ�� ��tV�<O� �?Q��׋]�t���W��T�&�ׅ��+��zdl��k��W�_u�� I��9U5�R΅h�0���,!�[ݎW-�G��~�L@� �2{�a-�+fd�||�p���yE�,E���-@@�^���1z|Y^Mi�2�;Mu�:3�6���K��:jJ���Ak� ��!�J�Kb�ը0�"u�&G��N�2����A�jY6M����#�"�t�/����v�Fk��{+;��b�\:c]~��r*�����C)�S�O��1ܹ�I�Us=F��,,���êu�I�:*D���@��Y��`�� {�ef�ѭ�_5��t���`����"�K���˅�S`�c��MB��L��Nq�X{EWw����^$k6��1�1��Rk=E��[$[`>	����wj7�	VK3ZDX�bl��zV�;��O����=��Cc1�s�I�KVyP-����I�Z#�Hc:�P��>�Q�
V-�Uj���K{5T�C����Ι/7�Zrl�k�A�m������k4 �ĺ
��Gͳ#�)/�5�%:��Cd܎�'�� ���4�#
�԰0�ME�ẛQ*���3WL)���V�^��f���2����S{��kZ���ʊ���?"�S	T�h�ǘ�)t�t/pp�y3����U��vr�YEGP�Z�� g�(Ν�Px�&8�a�tPSG��u���1N�� � �p��̡O����?P���?���1�%���I�����W8��A�W�O�P{�Q��v�k��vh���t���R���*�g�r^n��d��E�{p���i&�ǿvrC�^Q�z�EkfF��#�b=��c�jǨ�[��`{c����@�3)bV,B�11-Pb��C.V�
���%������h��$,�|ʖ:Ve
U]c���kNꞙ���gg̜ݶ�К���gt&���Dd�����؂{�>j�'q��(�#I��U�J�*��/�B�Ǳ�C?e`�!&�r�?�u|Z�i���<���|j2\?AzS�(�SQi��w�`������
%�����$�|(�ׂ0�2t�Q@�-C�� ��c|��Z���?����H��F�}g�8��r4��*��Z�. ��v���n���L'S/���ܨ�H__����o�C�^���ʏ�|���m7�]Q%do
?�g�d���C���G+w֟v3�h�<���/籝��]*��1�"�ȑj5�������c^�E������O˷�E#`W<e���������Qq����A�9B
Eѽ�w��z1��Š?�H���"%�l�Z�I�u����>X����[u_�J�*L^�࿷�t�6�X�_�82Z�;��Y�@�rK)�S�#k�F����a�96��q����<�Ch�+�(*SPv_���[����c�F&C,�yrg&W�F��]���S Q�5oJX�N�*I/�L*�Lp�v&;)J���JٵQ)]�S�6�`q3o�@:x�icf����������]TQ��y�ʗ�i�4b���b��4_�f��a��4?i���j���m(���b��"�`��jTω�u�,��ɓ.[D9��U�D���@s��	���q�c��2r�o���~>Y,�N;Zu���Mz&la��'L���B�� �sxڡft	wy�n����m�W{hW~h�#��Ex�|p��0{�4��x���U��}7�#�pA�*�J��,r�F�<��1����M��d}�{��"�Ixy%E��
���Gxx��Y��q��&�"�1�%��0�f�V�V�
��q^������l5��2�;��M�kZ�E��U\#n6BpƠ@!'�V����>�ދ��fT�c//ο�����a�h�Y��Nn0���cr1Iyb�҄�-"��x9;#�1-IHW@�J���=D�]๖��[�_�\�����!�僟@SM2_?�wah�^{��/���
�G
q�0l���ki�Ѥ�<��:jy�/��2��%��a�SDЫξ�_�*k�+@��K8��Æ�o�ûb��¬��ڒ����d+�yLi��(K3�;��eQB�*.���|2�-�R�(� b�|��yX���?�Ft�B    B�Q�zĔb%H�9��h:q���C��ϼo�2n��XX�(�k�K�4��<�5B�$��%㇧'þ����}�I���"�O��d�pQ�uY� ���DU��L�i2_ڴ=
�*&��t{E3���ƶ��Mr�U�b��b�J��l��b^�C7`�`2^��L�����$c�3�_�y:����@�2���+��}=��۔5�����(/�_ �y��Le6��4������^����=��3d�����������i=�O��b7<(��@P���YwT��k��K�E���㲾~��{�	(�F��O�w���ރI1
�V_�uT'=���NH�Y�����05u0���B1��	��pG3�VB�h�.jx�&��v�����pL�T��^b��Z��5�#
��';2�v,�ƌ?M�mt�+@|�=?��t3FוR02`&�$ļU8>4$��`�H����[�яa�z�-+m
�:��Be��Ѫ��� &�E�-E��|�aF$7�б��#�Γ���Ķ�'\c���L��d��O ��PWd�q�X����hl$Z#�)\�ND*5��[��d���;VЙ)ی5�9o6F��P�:��H*�ukg��|���f���\A35S���ȕN_���O2��a�E����2�x�'�� �a�&F!k[�p�;�ќd��<mLgy��<��Լ$����Zg����@&:�Ya=�m����ǩ�7�؞�;�����wA��M�[_��"8E��.�f�'�y��)�Ir��K��0���V3�wYc�Z9�y�ȇO�
/t��>6�`��ϛU)����>�h�e"���LST2(��\�T$tΑ�=�a<i5�����H�`��[犤NS#r)>�J�����,�3	��B��:�se���&����J5Gu���0����*! �&S7�1t2:U�Lq�����o�Bx�q%O�������ś����,�?T�>�����}ЬvAy����A� �G���� �8�A:���"�*Ht��P�"$=j�rB��/�)&"W�8�2�^LXޢV$%؊Q;�,�a,�A�����qAN)�f`J��h{PӸ�F&8��è�Tf�V�,�\�71%�>Q@y�ϊ�W d��p�=V����S���($�J�����G�W���m����)��ybQ��$P��`/������p�����P�
į�N���l�B��6eb���XEz�ӻ�jj�u��3gqn��������έ�Y�r�5jn:��7���������xD8鎋�U����c0F��GN�� ����>�iޥR��@�k������\�:�;P;��ϱd�n{̌Z[�Ep�M��]�kX9��#z�N�[��L�e�y���K?7�]f${X���U8f}Œ�Yy�6�ɡ�KZ�ʏ�E�b2�ASM��`�0o2I,q2�Uʧ��6p��M@iu�g΀�e����h��F�Q��e�Zq����zD1KA�,4��ܙId�aL�Z�����9k�����FY��b�V���dj��)����������G�ȸ��Q�ݬ����b�/b̭;�j��a��v.�ue6����ٹk���-p *2Q��0��X����x�����.A�52��~���H?���Y���z1�S{v���D�[]��u�����;�Asm���͟���#�<�&��*�U�XQ,�[����4-�۲b�s+�x�成H!�R4����$F���o����������;	Xƀ4���]���g^�b�]��*��81F�ѐT��0���|�e��.�+�8LF0��@�
��⮙
 B�r��<3�@��s��F�7��!�2���ա�n�El����r�'Hh�,�8�G�-�l��/A������x���|��C3L4��¿a�I��E �o�q��'v@֓����(<̢�s&��_5���#�H�ݘ�c��2�bQ��kGi���Jܼ@xyӅ_��ڍ�~�`;Ν�b^����$@���S�-� ��$�7��P��7'L[����x�r]F"~��:H�B�l��������r�����S���$��f<�#������Yq�
2��5����/�8��дdk���T����P�)�#sP�*v�x�e��{�P5ì{�ن�uNJ��b�x�J+m��xO��dG���
��R7�RKA�%�� آ9fS��E���ƙ3�4OQ#)Wi��uX�h�xo�0��<�oV8E����*�9X-�PQ:8%��z��Y;]&^4�
b4�!���r^s@<��x�M(��AB~�<YZU*3��<Ժ����xb��T���0�w��,�׷f4�!�C@U,g�K��qV�~��L�lN�R�_�?ǹ�E�����8��a 9/Ac��s�bjӶ�����-IdS���z��#�<�zV�Ŵ@{mpA/�Q+P_L�U3�8bI��%:x�/���C$yW̟�����45or
M�h3��E�$��J���g���v�]����$p�YtU�rI�ˣlP4F�D���^AI`9�t���'7ʻFyh�n��L��x��T�fJ`EE�JԊ��z�78�"�!w�29 �Z\�q
nũ<�9U�%����Z}��(�V[�'z���ީ���z�sW��%�Y��O!��եj��~)�-��4�l!Hu�
�B��h�E� ��؆���0U���z����-&``rlCSU�jQ9r���d/�-�R�벭�:����^_-H`�l`�|�h���<��ψ��)�qP�M0�}����T��tU5ܹ\З6��VT�Z<'2����!G�&Koy�F]�Q�;���:REI��4������6
��ׯ��r���G�xSX�Wz����u����Ē}�V"��@e��m���`�f}'�~�6�&��4�cǖyΛ�ͧ$���'����� H�����S���װ�;v�U��8hU�O��C�}���_Puq�0|�H��Үy$
�t�\JQ�bwL����I�4{ߗ�]]6��^_������i�KΒ'�*�l7{q�������E5(����`�h4&8�T�Pj���M[�bh�L�k�xe,��Ly�I[QSN�/W�g�����D8Nu��T�b�r�ֳ�ix��%�����h\ �Q��Ҧh[���
�X�j/����ExpZ1�C�T9���2�/�}4Y%��C�O�O	�p���ػ�h��}�������4]<�Yb�YOt���/��e��=�غ�VI�u��B�p0]..�y?ɢES�T�0�'���U��Xѿq@�O)Fo�â�p%�n�H�:�	�u����TYK�b�Ȅ�n<�-'ECXn��g`^���
���9(qH�T��I.����W�O�y������Uܲ������U��"oV]p¡?Z�@�e��fSYQ������O,jN�.ų��)5�G���S3Yz�����ɲ|���Ѕ�Q0*���[ߤ���)�c���%�ӑ�q2g����J$(|�?���ȍ�s_K���2f�ݛ>�����"c�[Jc�E}�(쎅1���A�h���0[�ƽu�
_CS�����$n�yO�q3ê�^�
"�5��j#��(W.,1%��n�+�sd���8 &��O�i����M|��l�S�����B��s�"���I���Q���+,�s��Y��`�����@�=���=_�����@]��ˏ���-R�
x����cٮ?��#:�C����*��M-�w8�h��q\�2�ZK;mXq��[l�7�Q`U�m��x��̦f2�,J���36�6��B����W�4�ꗗ�>��oa�ˣ����`��x4�]�X��<*��]�Kd�\�S��Y��M?�޻�v���`~�9�E V�_����}�,�)��&[
�rЉ䏷D���ђ��������1�ƒ���!A�=*�����c�R�H<��l��s�MI�2:�{ј@���hSر��d`l#���bMM'x�����\�^V�Q�1��T�S�4�����l��-�Ok    6k�¨f'�Y� ׎�=ZZ�<���ޚ���b�A.��	v�[s֪B�rNm�}���׺����s8�h��E�Z�ݨ@�A�T��w�YL�%�7]��Ǽ��� h;�S�m�ށ��wG	B��/��լgj��Vv��y�W/�,�@�g�4<Z?��Ks�'��NI�/�7�C��v�Ԑ}��� �Z����V�U����\:�ڋ[=��?���[�o�06��^2ž��Ȑ���V���o�
����PzɐEeG:�zEo#����#1�MQ����K���%`���7��+�A�fX!J�.�^IY��bO��&9�r-�;_��"�"&�|�8����7�S�%�.��:�S*��J�q�O��j���#u���ɹ��J3B�]E���`���,�1��E�Z��RK�eA�a<��f�C��!ƶ~�l@K4��F�"$Gֹ�}Sy��i<W"h�'���[]���~g�����(^)�y��"�S�tG�r�o־�e�Tmr��~�s��L�Èa^����i�Ov���Lf�^�H?��h�q������v�ܷ�����_73o��{L;i�U�a�F��Dn�Sw�c�̒�y�ܝ�8���m�W� se{6J��5i���}��a��vȇX�C�-�r�"� yr�I���-u$>�ոILв0��H�=�wK�m`?��~� 6t����Ͻ~8��l�1~�(R?("�Bmj4�=�m �xQ��(>C�}�X�T��i�Zg��.l=��r���`<�T�ۡ��]z�	���W�p�������$>�9R�a,.
�8=� N�����7��̀�kq�����m�S����΀]A����R�
r���25��s��F>�����~Rҋ^ܱ�B#�%�\{Qi�4г���ŸVa��}�Y��Rm��9dC�Z&��i�i��!R�]t\�����5]^9�G���#��Y��ɰ�f�鼗C�K̥�~���(�+�.(J�4X�mhJԞ����t���n��%�FT�ڡ�N���#�����i��'�L+��G^}�����:���D#�0]�w�����/B�zG�1>���῕6�6�P�)���{����Oᛢ�k�$�o��TnJ �;�
�h��� ɒ`�%�͞�v�#ռ��>�,�Қ���(W3���o�7�4`���I����-�ʀTT�I����M�H��:�T|��I��7�B��7HJ>�Ѷ�?f��&�=�C�=A٤��>r)�j��X
U�-��E�@Rşq�Ԭ��Du��8�Q�Y;w;ѣޜ�ֻ�Vq��>����%�w~^wcVC����^����q� e�<�����ȍ��jCs�ۮ9��t9��~�������K�� ��u?o)6�9��0�%���ήB�����`����}
4��@ٹx]��;���Q3�(X9i�41�#���ZזF���6&��)�2��nn�=^X�?�\�%��M�E'>��Tv�*�8���w��`�pgM��N\`����F�!���H��"�d��j>i�<zP\h��n�%h�dɖW�)w鞣x�la zk,�  ���ދ�	q+YOEvˎ��v�`��+a��8�mm�vЖ´%�"�ƽ2����/�s[8T �\;Ն���Au�x�=��}泏q��,E�t��E�9z�q;�����)[���'��jM��.~/F��)8tGC�11?l���!O�	ǢC��oJ���Q��qnVi�)�>z�VUι���8��Fܜ��D�Q��9���d�&��lf�ܸD=<�t�^-��ia`�����4�{�L�A*z�/�.#��\��Gs�f�\/_����$�$ʒ��9֬P�G����j�(\�G�\x��k�n|��Ҏ_)��VC�/�M��iӢ� M�˵�i�i)B��o �d�1-QZZ(fL&�0@��QQ�S�9Z��_�w���t�?|��l�=�⤤��s��!B㣧c��Rfť�i��b�l�ϊL�~�)~��s3L3�w>�]�X�tg 1>�]zFN1kʗ�N��y3$�ub�'�ѡZ�p!nԆ��9E`ؽ��z���j�h�Bw(I�,��r<).�:�Y咪u�5j�XX�e�f�X���"{Z�D+��5.@{����;CEt�������
���T����4�ݹ�>s7=�)�/��,����ˢå9�贂�F���vP��2+�"%���(+�VC�a���$d�0�]r�m�4lS�>8�3�]��P�|s�h�T�;;◜�m��tH.O���T����.���F-�=oB2`okq�'��$�B��S�U���"p�P�ِ�!���J��������k7K��TY)7�a��D��.�r«��}��ܔ(a��5��Yg�Cs���V��#��	��chQ���!&x�nV>w^�\�Ρ�+,�g��.ڦ��j#JX��B�P/,d[=t�C��,�2����<�SN�i��Y�4����۞R���N��)xO{�IKz(���);���#���:����z�D�쪙{P&�q��$�,��X���r%#oRU�'N���v��r�h��]�ߡ(��&I���΀s�yg�UԻ*����E��
x��ץ��|%�}I��O_y��]�reV�|�AI3(�ނP@>i��`>xh��Av��R��4D1؄���74�Ʃw؄~J��,�Ή+��uC�������+c��En����!��|�Y��-=���LT�ܬ?��,�FHBC�����v���l���]�Pe��u��6*N�2���nıl}��B=t:F�g���!�o�-;m��R�h�-Y36J������,�|��bVXj<�C����Vt�%X����E[C��FkP�MP�zqG��5Xޑ�<#b.G��.�Zg��)ゔ)E�0>�gz?�о���qж�"�NZ�n�)k��O:aK���m�pL��!�]��47��K���Ѵw���ܳ�g�{�� ���|��y���>Kwi�C�����h�k]Cl~9>������cA!��>H����+=��"�ᔍ����U⓯��
��]�	�B�Pi'?�t�Yb�k@�~a�F�y w�8;4GE�uR���!7�G�/nX*��3&��U=T���[}�@G��=e��j�~	�-0�N���
%i"SڞcB4��KO�!�I�v��'����EV���9�hq?�O|jݗ1(�y`f��oJ֥��^�հ�����6�č�-x\������n*e uTIZ�b+��0�LQ�agq�i3�(��?��*#bZ��#�̱�Ǎw�x�����j�t�<_�Uf�?��$�g_�g�M4�2o�"��<x/*�Z�L	�Y�����$]�����D����j�8�����5�ٝ��l��~0>cY�uϹ�?+��L��!�{���)�r�s�x�����k������XZ�P��=����f�]$ʬ�A���wb�7b��P��8EI�茓�wg���.g�4w^p���_���U�	�S��PS��XU�-����US�\G��G�����ՂQR&:mƏ�6i(�]t0�6"I�X���A.�fA/p�v#,{��T�����	�L�9��Q�e����tt���xA�C֎����	���|TC���ak��	�(�3��y�p^�yg��}(�T7����oL����?���Oz�M����l�:� ��U��R�M�(���f4֔h���3��:�[/v�>��E)pA��&��.% +>�rH����$��\��>l터�`r������t�5C���l�qneK�c}t)6�%������ �)�z�RC�"���XT����!�ۿȑe��|�^�·;�v�r��Lʸ�+�ݬ�z�s�b�F��Q���] �\g(�)j���D8:��(:Lm�lUP��ڱ���|�]�]M!?��J��[�'�Ѻ�N������}���m@�t�O�8K��s���n��~��4�-L�Q�hm��T�~������nLA`�(2|7�-2��Z~����^a3�rGm
\��TA����HÀ�~���/�y�o�����{6��EGu�Qul�(�_dK���    �E�ܬ��#���؆@���OL(B�ܣ{8����@6���e��$�"���E,��� |�I��������d�:q� c��H�����R7�,RjRϰx�@H@O����PP�l J��~+X��S;��胘K*�[wn۠��(Mc���:_����sC��L׺e���ޖ}�heb�)��-	��Oi�e�*M�h˴���7IX��Z��Ly�  ����h`Y���Y}�����ߋ���R�]�ѥ��>7�'�V[j���nh1k߾��}��w�	����J�M"~����*Q�f�,g-6��z�������fâ�0��Hu��6��)�~�^�''E拫ى@h]ΰ%���3z��4ڋ�����/m(���C��*'�����1��.kǂ���[|dpVJr���rA���e�(��>U���v���}R��^��oDnof��O���z�4鶢V��W*&�T�+d"�DV�e�)��m2ݽ�'C�{R�nʍIVI�Q��r�)BX��S��.���#�e��2�/P�hh��Y[G�\�Ѭ�����j���
����'C��7�I7k�&��MNnok�ż	�P�O�h��gƉr踠�n �Lm#�O�ݡ�rkV��J��EՋY�S�K����K��;f6���9��8����ö�<,@S�]$)��_�[������Tۦ��F�@�����h-\(4���v��H���9@���T?�Q͖�tz���!G��=zB}l��Q���0��_tY"Zl]cJ��q(����Ux�d9��N6�f��<<Ё/�1.�Zt=d�����~�ԝ��O���O�6�|C���&͸d2�G+z��e����2��A6}��p���W�G��+#����D6�_Cy\�<�<|ea��h��SO�fޟ��=L���S
�F�9����� �3�{��6�k��g��I��-<��?Fj���ʕ�T�"�r�([����(�ǚ�n�X_�9��F�/pdb��W}��;�\G犗���!�@o[!���4�4v�c𐢽�j;��@�~S�dAПp�3��=�s���TSBm�Z����W��(���E"����1�I�Y�,+2��T�@�����f��n�;Y������Ch��;rM����F��ld4YI�-(G�K�g�b�����Aܭu���86�\�^FU��?�I�
PE��A�H)�LQv�g�������C���8d+J_����\�[͙Lk��9]�e��U��{Y_�S�b���o�r���k �x@�p��f#��t�Li���"�d�EX�_aWx�_�Cx��D�d{x��v6؍��7U��+�М԰b�T�������t��8{�Em+$Xch&uF3S��>S�Vt�Z�-F�lOí?��=E����yOQ4�#��YI�际�)��A�Y-��W�I�O��3W^]?j�OU�?�>�Ǣ��f=�N��ů m'�D�L�q��b;��y0� ����7N4�,0Q;�VWx������wj��9k��Uk���ИD�l��/a�Ԫ��=���C�x+d�\�2h ���,�=�`
%�cӅ v���ކ���D}[�iY���^܃��fp��f�a��l�mz�-�d�&k�4-�|z�?���y��hv$�#!�}Χ�:�u	C�2��>�$�0�I��2��0����l�;�H�8�Yᔋ��"��}���Lo`{���a07�!@�b��;fg���s~.1f���|�7���=��A[�8*ךe�ec������Ec�v�FR!BP�O�z�켬#y�ă�v7[�/���3�=�Yv�U1��ް�x��P�@�M���_�~�j��_�OEͦ,b�5m������*1N��P#�����v4Ը�T���~Hhj���u3�sG�a��ü7�S�6�V7I�!��\k�<
8k[|��x�\h3t��Q%�`�V��C���K��gh�6\%Q��t����1lq�U�k+UC�=
���V�(�k�9�J�Y����
.�����Z�A�r�8/�yh���-��8��I�:��5�2��� l�Yj�Ï���h�0��5=�"��G����0x�a��oVLq�
�?�!@�!�����Z�
�&���W�l�W`'=�Ǣ6]c�E�ǖ	�u21�/��Դ�@�tZ�sWy�˙�אѥ����:RU%���/�ki�YC�~�G�����Z9�5���6�i�9�fv�b.ؽ���,��7 &�&��_��e/u���w����.����S���H��K+ыxǓ��k���y,�A�-�|/Q����9+���q���`��%�T��UY�$�R�.�7.0�ٛ�f>.��E��E5h��̠_]<�ap���8����M��-��xH�2���;y�s� �g��
hƲORJ;�(�	�z�}�Z)1Պ����*c��<hޱi5�oK 7!������*�������������Mv"F�����&R~Ry��_��WyeDo�'��9݈[CC��0�Z�NѶ�pdO=ݧ�yn���EF�J�;�z��k��i6F+a�i�@ܽ���6i�ĶD%�B��|�z�F?�}Z�4���ya��jNǲ��;��l���@��B-ߥ.JU���|�)�*�L����M�V��j]���/���/��w ��[�ŭ�k��7��Oɇ���ĉ>�{ҏ�&1(����H0����Te�n�<Zu�syB�3�[�V��Ȃ�B*��W#��/@�N�����dDG�����SgR q�۲h���^�e�� v���0�ߦ�,Y7�iXPɘ�~�M��ʃU���W߈���o�R�?e'�\ �ӏ�U��3,Pz�.I�bO��E�+b%���-E=����=��)�D���Ll��Z�q$�=j�#�bzq�]
���X����5�ϢJ3f��g?V��ń3��F�i���	�2���6���"*�o��c�b����;sEݗ����E�r�f����mv��R�1ي?�Y�K�Rf�G3[���?����yeM�Pӑ��/�R���^�����x��S%]�A�U�d2�ɪ)�Q���Zef��H��ZD����,EY�h��t�	�	�Z>�J/ՄeJ���pX4��r�E#c�]�.9)qĘ,�IzfWs-Kc3������ij�a�G�^}�95R]C�f�J.�]����W�U�`r^�Jl��J�4���ڱ0$�nߤi֐"�x�HSД8����`�dԄ��,l�%ٻOi�,�m(��TE.q��*]�'��W:PD�sB/!nMK��0�@���m��t���7��з	�17��,����������k�]�\��yw�<t�����4w����ZU!Txd�z��?���G�F�-@�eq�7�,�C�(�����bnM=k"b��pc]:=�K�
�
��#ڙGn;���B^�1�-�AĂ[R�i���t����X���7����hs�~g�V�8�ڎ}m���:U�������-�#�U�`iQ{G��^�H�F�����]���/B�َ)-td~�Jl�E����DC�M�ЧۘNF��f	������#ܴ?��3�n���y.��f�A�0p0A������.�L��g����-IU4�,/�5p�;��X����hJ(�����:�?��/C�vo��{�Z�����ȿ����𒼚��/��L�9˻_�.}�-B����y�Ѱ�9������Fts�[�'h���a�3j&�In=U7�~N�L&���GpQd�[�zsY����Gg\F�c�0Q���e>����su�z�2B���N�O�m�8�ҍ5��VY%D�f�9`#e@Ȇ2c��u2u�ӊ��Vm��*:oE
YA���vkmO3�)z�t����>D�7A���!B��ZaϜ� �f�I�遛���"��)�tg�"�l�!p�0%4J�h�z��8��53����d�������u.�Pt�v���1��T�C��qKiuʆ��,��WT�H�ǹI�b��CK�Z!�d��� )  �{����z��l�F/���5F���&��q��7t�N�ĸ�:)MJ!\������_].�<@R��'�z9��O�%{/-S3e ��˄]t��E��`��2|9����q�?xύЂ>6��9E+n8�3ț�9P�۬� ��;���Q࣌�<��)�o<�آWj�AvI�ŭ��!�Q�8����/��TN�Q�	@�\茇���hm�f(���M�U@(��"�bNFD���rY6�%?���,���ߺ�f� �*�D�e�JK89)�b&�CE�}^�Hà�jJ�fb H��\B�iSB$oֿ;0x�O���Ǽ�g) �;��^q�5��՟f8��n-8���=x7N�Q�6�pX����`�
1d(v0�:m`H�}��4
+�ly&\��fw��q� 6Cj�vE�e
�P��W}�V����S�L"#c̊Q�!�@)x7��h�7�%8���5J$M}��2$P��q˰�wr�C���}s<��|�{�W��$�e�wxm�ؼ�����=��('��%�rO��?���������O�_��P�ډ����i��u&��>sBƞ'o`����p���Dvd	��Z5T�c�o I�<�=+ő*�?)Չ��� ����:jI9}Np�"���#!��V�O� �Qv��A���4�M�P�!���
��d�"���>O�~����SUT��)�ՠR�@��'h�x!�&��Pw��:w �,)D�I�����4��Ո�]�󼋬x���o�ù/��%�f���&�gU��������b ���e�L���Iipi�:?�ec��n��2'٤b(K��g�f�i��;4��?^�7Zg �.���Ǳ�T��<q������5FU��tL=әQ#�*m��ě+u�I8ћg���dZ�W����I�� ��WY�����t��])%n*�>ͻ?F�e���ƾ�A}����QUOM�sv�%w�z*yY/	)!Z��+kn���+�t�3�X�,��V.�ڼ�'=����뙸�3kfKf���:�aN;w�����)6�+��)���`+��Z�Z�w���ү�@��'�5���q����)DL�ik��H��:�d���|y����W���/3�V,�<�'���ۥ�H%QA�wɵ˺Z�-�ޮ8��E�;'v:!�^Ƶ�:	�Z���~�@s8;��2����wO�ײ�˱Rv,�W�%�۳�J�[��C�O�=\��#v̍!��Na���{.ڛv�-�⃬RB< Γe(+Վ͸@�&s�^r��-z��g�n#;n���F��T�mQ�4�$H �W����8na����^e�G�.�1-ٛh�g�[��>�2�Eq�ZY��<>�[;*��"à ��� 3Y�.ہ֔�v5Q�.V"�wߜ��!��Xf�URx2j��.�����v?/�f�(�a�Y�W�+9�޻u5�����ߊjl�6�oyW,�⠅ O�]��>���#l�jt�ul�iyi�k]��9ڋ/�Z�0�
�P�ž��N�g���\h������������ڟ���*�p�����b)��*�`�V�#�;���J�V�$j��m��v���,�Uk餄`�_��}�}v�=� �{��4ǔXė���1�)�9�J��C�R���%��/8��y���X��d�����|�`�;�%���/�g�>��i5�;���"��5
��Ӄ3��h8�VɗB첸�eS3��tD�o�%)wִ�W�ד�� ��K|P�n��bke�TR!�0J��9	�^7�Ӑa����W�w�c������h��]�E��й(�J�6���W�23��Hڲ_�r���O4kJi�Q�xoX��e��S4��u����p|
g&XCQМ�pA�_�Mfp�����\������Po��w��<�����oѫ�6y�I�3��p"e�S[�]��K�4���Ӡ������%���K'�yqRω�&@$i�G�*$>���J�y�e���U�U�f�
�ObK=ހ�ם��)��9@r�v�V�f���_ ��Et0��6?8�*����?J�u�)��|Wn���S4͉l� ��y�Q#�#�"��\*��k������0�m�W���V�W�bg�o-r���|a���;6;k���P��=���Vw.e��ȣ��I+���]mj�F�.VϪ ����[$ Aj��.��R�˛�vW�i��;�:C���6�&{��vՀ��2ۻ=Y�= �[[��n!眫!�R�rH�kK�sn�<��U��eQ�eEq��k�
~U�R�~���wh! c̙xu����	���֭�2"'�J��~��a�MZ��L��<6ѽ^���p��`Y�퀼'��8i�"�߇�9��"��m�!�9ّ����B�2�37�E��E�A�}c��}F,�,�}�D���z������\M�%.�(�#@8��֓M�,F ��2�����4⢮|V͐�ID��{F��y#��Us>���n2C�������c5�G��uOi�F��G�@$J��Q���8 ϛ�0�XJ��M��lMW�Ni�N1���?i��&M�Gu�O#��	��;��/��=�ڈ�<��(C8��ppZ�L_��қ�_��r��R�/񅔀�Z��	�R֠��&Yj(��d�u����
q���T�7��2&�>\}��un�}��1�+��_"C�7zN�E�w�ϸ`'��%XF��r0`M��dd�Q���Wf����Me$0��1tx�n-OKr]���?ָ1�(u�`���B��@�c�ļ9÷�)V���F�d�E�51C�)��$iNZZ�ç�jj#�Ƈ�]�<��L
N�`��7l@�Ŭ�N"�47oa�@�(��N�Ye�7T��O���[f5��DЉ�UI#�R�����"�U)���I���5.�#���G݃��!EU��h~�{t�(H�y"����l�W�[�9X��a��j<]#;V�M��׌��}#۵V�p2U�]L��5�M�Ag����m)�
�b�`K�_A���G��/��q�cث^�0�3^�-��u������.�M�2�%QF�IH�w؅4�)�-����E�O���gT�!��!�gu'@�����{���l�]%G,��\n���"\H����00�9^��Á��{�ː�K����[WX�qr���H!_@Fνh���xg��:e6������~�����I-�G��V��qn9e�L~X��~�:�I����@�*Re݅9����⪻��6�5K���H�E(�An�x�xC3�c��3z,���g���Q�J�p�IDN���j
#��ÿ���g?�_�4[=      �     x��Y�v�^CO�]�ÇC��]�ر�u���d��$��̐VV}��^���0?$����Ӎ���p���ʪʕ��؛/[U:�S�Z��{%��|�~���E&����\:��Xqbw�8��=OM^9��T�p� ��5���+�/m��G.�%�[^H��M5�˽)��Wz�)�W�5�%<� � *(��_�Y��gy��enY�,<8�X�����u�>ⳕա�+��G����r���b�E2b���Z�a�Vb@H�;�O���&� 2f���_�:u}�˫N����<DG4��B����5{]��?�s��6�VGQEI$�6e��6��ߔ}�'G+ma�k���� 
�	{���yoY��=)�!��M.�춶��r'��C/�)b�_~9�@,@8WC�,�$7�ű�mJ�/���WC"8q"�A|�~66���M����T���~*E����ki+eqQ�չPEh��kmq^cN�⺫��/�`�[��ۜ���\�����e!u��`�� ��Tr�ț�����#��j�]�Gε!�h�A9c���!��&��{�U��E������ԇ��P�y2b��ǵ�G��9�*�2�o��Ԗ��W�=@C�:]CB�0΅��m��\�<��y�jDc�x�0A0�Q�7����8����?��ݪ�5�n㫉���{gjvp۴+0n�>`ʖ'�<~��1�7���3ߗH��Ɉ;�ΐ��<
�)K�Ď�U�ˋ�/��p>�_%��]>-����M����V広C|�$���^�
I}ؗ��Q�xn��:Ϲ��`�1;YADxD@� ���]���My�on*~$	�O؛�"5���ן������E�3K2�~d�J{�Y���uV��-�7y�@�^!!��O�M��t���3��_�hUq��g��M�������膌����[��-6���S��LG����R.{uW����r���h·F��,-e!׊
U��Ź�&E4�Ј�.�gZ�N:`��a:fe�Q�:�ܴ�E�A�}"nWi��������SA;���u*
q�rM������O�d*�"����Y#��y���[9�l]���e�+��j�v⠛�[��M>u	�`Q4��/؝��1�:�:E��/��#�UVY���LYP ��0�fo5�.��'��-��I	H��3�x����j�l�+ N�O��|�)�#��^_��X��ǈ�H�H�͈��W���k�
[/��D�Ul�QKh�Jg3v�+������(h�y�c�3+o��Q_˶w�F\�f�dmHz@Oh���F%t'7	�ߘ�P�a�xn0sQ$c������N�Ꙣ����#!z�� ����H��TKD)O�L��U��@�.]�+o�-5c��H�Jt,P5a5�������%;�r��h�����K��曓1P�"B���iR�N;�:k�^�ʝr�H4 H߰��N�Ŏ�ZMsv_`�	9�ۭ���!t�d}�?\ǐ6���x�U:�O�XhEܓc_2n�e@Ò�򝬑�C�x�+��{Ȁ�)�d MJ�e��̶������H[���Y8H�������h��t=B�5�○�W���ld~���z��|�ގ2��q=j��S�ۜOB��+�8S�|n��;NA�m>�"+��A~^�@K_D�#:��ڭk���m��A�f�5�����C���E�N��kF�Ȃ� F�yb����y�Bp��Ң���MAh�V,5B���J2�Z�
yP4q����3�a�Y7�(
M&컢0�25_(�Q̭��!f�����_��8R���Tv�ȷ<~	*cg(��
��GɄ��(��>54"��U�1x�v�w�Eㅋؓ	c1����~yoJ�]�h��h�x�y�v��{
��Z��0�q�*���h�k{0^�51d�Mg m�S�����B��F	��'7���9��Ϛ�E��ٵm��Fh�MQ�؊�L��3�f��a��������W�B�8��'�D|>IF	����(�'B۸*�*I�cO��8���z̓שF�خ�DzJ�|��>߄}Rj�?a� OE� �R�e���ҺNi�Ik��u!K��șp\���vU��*��.8��(��*�j$f!Ã�R���s-�p����!�X>[��o��I礲*���ҕ��&Qs�Up��&roU���a������]߿Z3���!��և��#��Ci�h[)�K*:�iO$�%!�E������>��;���k[�3Ld�Z�1W��A˟�e��%N�9c/�$��ӡ���=�+.sg�'���Ȓ�#�i�D;>R@��r�+�'��s�����*��*`�K]����>z���u䀻%��ب���HC:a���#�R��ԸG$�d\x�(��.�ey�$��6���@�M�;�S6�ru�G����$g��+�c�8�.��yq���6�|�Q%�>-<M�w��ۚ�{���UUԂ<c�oE2� +̠�f��:] F��I�pK�tx��7k�O�u��X��L��v�@5��I^Y�5K�㪽�[e��~�?�SZ��_II'(��fG쭱p���}�M�d�&��jEc�7I�<�Gx�A����'�B�#��>�m�-�D�#���c;�����N�'�Mv�$��隃w��un�$?�K~�zk�\����".'a���կ���Ϊ��|B���qۅ��'��R�j8��I_۱���N^��c������$�����k�u��5���^K�J�I�>�ON�Sx�y�����f���C��c�,Px�E�:���w�޹������H[*h��������ގ      �      x�̽ێ#W�%���
��D��I���~HD蒊���:CՂ��4#ir��.NQO�o�|)���+�Kf���>��NwU	ՍB���I�s�׵��h�fU��P�k�c�V�ﻩ}U�b�5��S�Ǫ��m�m��(�0w�-6M5�n
�Ro]u�諡گ�o�Ԉ��b75wx�nڇ���eڲ8����}w_-��P�;�æ����֞�w�;}��
�=��1��kB�t��(�>l+<vY�&yu������t즶8�V���S=�t��
�	�諵�/6}������l����+�nʊ�i�}��q�|n1��:4ͩ(;>�X��X˸v2m�T3�i��A�b�"E=�0����W%|]�Uo�����/2^<kX�7Ňi��/�[�u75�lXQ5a��b��]���[Uò���SSc�.���b�d���p���Y��[���M��[��Xw����ju�%�ůd��m5�]�z��������8��}Վ6	K�-�9��o��Gٰ�o������u�˩�-���VNɮ���s9��Z7��ƥ�*�Y��)����`�;�o>�哏��4Tz9B�"����S�6����O��`�mY�F�*<q#/�+LS��^�Sv� ��^�kGl�K|~߭�Fɉtqp������]w���oá��Ck/�rZWz �i%�NO>~��r���b�w���A��'�?�ܪj�
��V���L?U\a�D#7c�#�Ցָ�Ǐ.�]���P�ee��<%]_o�V�x�Um��6�s��W}�%�ʝ����-&~=LrLz߱���1�O.��+�L&)���v���З�qk[��.���U���u{˻�x��Oo峐j�V�8,�\o*��Ǝ^S�����U�5�"�x3��ȋ�x��(B�a-;��ɝ��I�¡�I/�P��B�y���t�z^��r0e+��Q�u-��>���D��I�`���u�S6}&� D�����U��'KR����5��85y�^ֆ��ˁ��r���� ©?���z�� I��8��"�����"�席�z�����#���$�m���Ɩ�X89P�$,˾�S)�4�Ӄ%Ϟ�_�a�7o;��T.�<�� �V"�Wʔ2}w1��*��9����zW7�����?9� �+�<���עo�q��w�}��%y�z((�][��t{C3���*�H-���d"��$�54\Ã\���m�X�)��ղUXܱ�S]�jQI�3T`V�I��VԮ,���M�g��h�u<}�3���pʊR����T�	;`S�\� ��X������g��"��]O���2�����d�`<�=��B�_/��MYָ��/dLQ@��J>�:FB5a6��J*�r7*x�����=��4N���X�z�G�xC�.�S�8G()H�u-����6����,��^�U��v�K�mڍ��h�v�:�_�.B����[
X3~�(d��&5h��{^�>å/&��4qf
u���˒����Ͱ�s�B����Q����EȔ7}׼��k��������c)��b
S-���T�L�-Z��x��b.��s�z���S3����n�1� �E�w�Z��4�=�:�P)���A{�pyt�"��-/����5��E��-4�&�Q�^tÐ�F�ݻ�`�"�)1r�5	����^�:���$��Q���ƫ�5��u���� wr�U�W�����f�M�!�8d3��]�W;�9���	TX� ��V�З8��dL+Xw��W,�o�S(E$r}�J��;�E�O�U����S�����G,s�K	+��ݬ��\%�3�)Y�~���fs�s6�L%�P�MX��Lf�]+r�����S7e_�QT]?��5S�w��2q�D�c�ᾈ�I,v���XT�M��ɔ�9=,�5`���^޿���#�?�3��f�">�LCa%Z����V?Ȏ�wk�Zr��^dO��0'��sE��x�BMg.7�]_�)$z:
�%�R�9���}�w�Cod-*��}����6���ˇN,{��rRi��P枊�U��^C�P���Q}Dѡr�A?��Ꮎ0�	Q���rS_�R�ym!���\����C��>+/&V[TTwT?���J�����뵌���+�k�䫩o�/9b\I�?0�N���ԴUO[��<N�x�K���[�o��q�|��Y��2<�r����x�8y+�⊊mI!���$�'�k��C_� O�8e�{+�}���n��'���@�y�X�8��+�6Yz����s$?�4ӶXv����)ag�r�-*����έ]8��~���,p�.X!�q0O�!nҩ#hZ۔�D��_�N�K!��=/D,�	�E���B�˰�{2�Po?����>J��`w���R��O���.D|���0 �+�ӡ�lT���B&I�����70��������<̦�Q�5d�;5��hM��ͥ	�����.�	�F���wz1���h��.�����V�`�E�P5l'�Rx�L+�~ix�-X�V�P�o�u5��M�����m���0b$z
��GoxK�~ԓ,�dW��(�wP�$ZᏙE�F?B���8[��&S1�,5�ș�ݔ��yh���z`h�#1�F##��-�\ ��0:Z`*�P,����%VM폯�xҨ���`��؀��F�8�Yq�l0��5�؞ru+z�!v�ig������u諝�Y��v�Qx�n�
���BS�����6��͑'c�t�11���:+v�$���̸)���EvI��[s�m�/=� OP�7@#�,]��$�l{�����9���p�+���b.b����$�S�X�����QAJX�xӭ�4�`���ۢznMAՔ�rU��!_S6ZČ�:iߤ|E����s��.�c�{�j���������.^�#�0L��L�{�Yhʷu� �C>íp�f���4wIUkLNF�������j�52/ҕ����P�5���j��iߺy�mvl���jK����X�J�s~��#{+����Ѫ�M!�!b�>��I5�Gc�"�gS�=G ���ь?�U�ٚǊ�>�V��9�b3���A���qo-�2P�8�4��0�A��yű�'������R�Ic�q��F�&�N�b����������`3R{����㣵)6�� � ���蟊�kIѧg$�����<�[��w�>.N=7'gn����w�ѭ�L^��A�Z���s�"(/����x�q��ŋ �۽8ԯ��2��������%n:�r�XX��Șp����k����}���g�"?0��\Oh��i^h��40[����Q��%�\\�݂�Ðٴ�w-C��8<{K�ޖ�5G�=-����z`(StS?�����B���y�Ob���*jz�E)������x�D� �%w��I6J�8h=����#���vbKN�8��k�����s��V]w�}�Hu�W��@]�;"�a�x�C�"	�N�k�)%���"$(��6�X8�|�=�mU�z��jTY�وDm�li���)�f��us�e�v�8V�N!MH,���� ��wM�g�[�IQ�]��-h��%<>��Ę�v��bF�1z��i����1�V^��f*UC�G�˞R�-.�#���[��:���C�ڴY5t�9�i��L^�.F�DN�FV�Y�+��agf̶9v�Xp�xM�ȫ!���K�a0ɩ����x�yL�}��ēa�R3iϜ2]/�����S��}��/3�����=�,�S�b�R��^��Cv�0%1a�X���k<�;	8ic<"0�����:�rl,�s�Dwa+C!2f�8X	�6���7���IC`�)^�c�<	`�ͮ��|�n^��p�/u��K@��47�z���lÙ7O�&d�g.�!*��qs{����0b*ZQ��3���"��Ț��R�XKW��	Ĕh�Rg*��A���T'�ȶA6P��:�����J�ÊJ�	�HF������z_#]��̉���G��j�UbG3��,�_'�F�i3J�'آ�؉m��ɓ�    �N�ܖjc�d��M�gy$U�M�FU�Bl�@��v�xA��q�����J�C�QJ�qY��?�,t^��H5-�c����'�@B-r�M�Τ+J9CH��C�m��a����iG�7��}F
�OBҕJ#Fs�-��2����|Ĺ�'�Y0HH�*R�<W�W��/�;F*RnV�����_�3�[�.�`��ag�?Ts#'��J���RT��2FԘO�<Ćq0�wig3;ZN9��j���`a!*��!n�j�?<��V֚������;��Ǧb�n5�"v����c�U!,��?�1�3 ��>�?�/��}���`�dJ�Dĭ�*�^`����Ne�,�e��o���~�DM������,=.�f4����gRN�H�6�Q [+ūq����<ŻW�G���S[����pXC7�Eˎg��*���#�v�4�I�7r�D{��1$*'B��𨷭`5�M4�#|E��<B��G�'��*��uE�U=r�.�"��Oú��ICu�?ʂ��e�=V�<S��l�*���+"du۪��<���&qY������2C�z{�zb	(����s��ũ�5�I����b@`	˵�k^�2�|xT�!5z
&�-�+�x�)k,rxi���׃�LH{&������"���0�Zw��Y5|�i֣��0�̫�Ce�Z�����T��5-I��+,�ZAx!�֎[�-�Q�@n!��4�����˿wb�ԣ#Ž��">�[��Нp�1TD?��b�}-å��U�\�Lݩ죔�U՝�y���0*A�J���g��@��f,�	<�Hi����A���z+®�-� $�Q��Iվb�Ag�^O�g��:1�L���Q=F��3��/�Y����x*&ӷ��j�GX��s����e�__[�D�P1r0$}Hy���e��(6���I��ƪ'\`:�$Ó�L�`�����U�r���\�w��.�죮S�9��#jBG��1h�G���b�HvOJ��kU����U�����׋���2��s@���-��l3/�{��;ļm��n~^��|_��S����+�'"������#��hj.���m���!�zK�2N~�/�3Xd�3c�6<�YH�Ӫ�Z�}��`��j�A3�N|�IQږy���.�A����:����0�
���/���M���)"�S2��CJD-m"�&#E�t}�n�:&X�Ǵ�M|�&P3+�6�ק��q���"6E��js�TD�l�Ն�5�S��lV]�Z?�w�#������'}#��4E��$�tsk:4��Ln���҇ըз���c�$4���̟�����NÆ�����O�)C���{(w{5���	�}8�
Rd�$>*ÉW�t�?h�w�Q_%-�ʎ���)�8G��7uc��ǴWz��*8����L$Z��E��2Iu�7�v%��X|�˶Ż����[�Y�r; &�p؉SÜ3��b5q �G��,=F?(�d����"�)M@��h����٬�5EE!�-À\��P�k�
�K��n�vr��CĆ�l�J �7!��뮏�7��ؖ5b�}s�Ϭ���̂C��� ��U��,��*j@���	�T�R���V`'��Ӷ�y���Ov���St�`R �)�m�9Q}r!0	f�1=1e:"�o�'Q��Z_-vt����B�x՝0-U�$B�_���`�=�L�1�bx�u},��ކ�a8��D�[����Fz��!�M�@�a���c0jG9DDN���{���Ȃ\�R�=��}tq����j*	$�O%��-�"�`�.a��/�1)�g��j��
Ί(*ݰ�����Z1=V4U`RzV4(T"�i���𴪋�Pؔ�a����(tL?ĭB��(}qD���jC\0��j�a�*mp]4y���T�L�s�w�V��9�)(�)a�'�Q]Q�_Ug���J����Δ�4̄��(��c��)��C=J���g��@���p��P��������y�蠇ҵMv�6*�jU� Uzu�����L__�Bu춺�%�k��j��0�,��l�������[�&[��B�cy��<��a�$i�Ҏ%���*UVt����'Um +.��
�6>j��������+�V0'#y}8�d�`>��͘쇪�7V����s�USl��u����UP�w��b1[~/�6�"f��c����*8��`�F�ķ��F̓-��^M�&��n��� 4����	r�F�����Vz�(��aq�Q���UM�n���j�d��/������Z��y�{T��U'��,�p%a�,�t}���.�A܇�*fd� u��*ͼ��Y�}e�=.��"�ݰൢT\�-��Պ�:��y[�:�u�o��G.��h���	�,�E���kq-
�����"Ja��U�&C��kqL.�FhcP�6\�䫱�Q�-� D�e��O58�l�G/�O�]�a�"���=Y�!-<�g=G��:<[c6Qb�QxO�R��>���G�ku���B%lJ���_l��@����0�d��HCB�x�O��2zx����u��AEf)P�^1��d;@�U�hO��I襚,)@n�*�y�k����Y�ɗ�G�p���D����8�zr|�!f�Oy$�BeZ��'}�@������}����婕���B�꓉��,Qx��v�Дf��� ����+������D+}���m�78y��_˜����Bj�M��m��T=�~�'!��j^���qh��(�����,�Zȡ[�k
z��Lk�2g�B���G�WG�S��@mż�L�_;�-#m�:|Z,%^��r4~e�!����g���#d����2�&kG���Bx�j�}���b���mF���*?��K:�@�QI�K�B}�!�[�1��V��+cNF�v�����*�2V���`Ĺ�[A����F�)P� t��vW�jx~b�2��ˢX��ڐ����}��<�4�@:�J�_�0gw7K˨�B6�j&n8|�A��<?W��fz�u���ƺo �g�̭\~[��*B�M�	\�|ˀ4l�]�ޒz[�Aޡ�h���+�tj��?���qtDf�u�Yd��
bP����v��͉���>}86����4&����X1�M4������/ a�͂�o�����<�}������Q�?���x?�w�>���7��Uc�n��~�Q���aXM����j��Jㄲ��t�:gni�i�e}K갪��#��-4n� ��8�{�+�a.X
�b�Y��v]�B���A$Ls��st�h�m��[e&����!I�M�p�5�̑����(�?�Z����9���5�W���t`��|X?yUSm�̑�C���V,�h�?$&�Yܛ�Y�Kl\V��NR��R[c��H���Zq2%�RF�u���o�&9B
��r�|׽����s�	���]!��"�����<��u2��qo c�x������Z`^_:W�#~~<;w����(k�W�^��Ƣ�����z��lR����~Ld��������MOZ�sEt?�j�Ld:���袎p`a>�C��-�,��V����`v@l��|++pl�
	#-ԛ1n�p��"+١�������uw��5��'��b1N�AX��w��W�8��K(_�۲��CN��|��B��Nv�}ض�����v{����7S[��ee�ؾ�(p�ePl4͒�y�d��	����⽷�H��Z~C�ΡE
rf��Vb��+a��U��.�Qn0�\����t����ݑ��j՗�n��ۯ��'E���Fd��p#˩ϿgVMv��O�j!�w��4hz�;���$T�2˜?��Z�&YB��� Fuk�p"|�bX�r���V��1�a��t�ITz!�5��@�=�u�KG���:��ø��&ڠ*	I59�U��
{deȬ]dJ̄2�A�%�)�Y�����d5���o˦�J��c:Lj{z��Ha��}�᪩4\f�rd|0�����c�A9_-\5�BJ�R1����`�X2U���{`�c0H}E��    _p�G.UdC.�
��8&ȹ��7�[9�hn��x����W����MU6��|/�|�%#�S)HD,0PNN�N��>�R֥�uJ[�G����L��-��Ҕ+Ўz�4��:���n�j�/�ڏ�#q�ُ�V�0E��s������ɏ���k���@��B���'��j��7( �C��VK�9k�Vt^X^%�PN@����X�}�YK:��(�5I�4ˀ�y�o�mi�(]���B�P7���/	��V��eё���Y8��z۾d�z�"��7��Y5�{��'�v$�ȖE���ſ�� �YT�V���b�����`a�fo+���1SB� j���4fq{��,琉V�~�<����P�m�g�#|�w�����t^��nL�\��o��*
G�͍?T��K��^Û�0�x�sdF�6�6C�-��ÿb���[Zj�(	>My�H��fƼDT6j�0J�Lx��r���GU�LԝU���qP�������P�fj^^���^��^De�HV���,�q>�B/�̞�U��y^���.G$f�jt{Şla��i���"$�̄7P�~A�)¬V+��_�K�_Z>ƈ�r��g,Ug���x�#���3�P�Y��V5���B��L��cȌ�+]���*i�7��������I���b\�]}ȲAqA�pZU���^�����bc>/i��`�6TΎZ�f��<�2Ɗ��V׭
��0�Bp�	�w��Z�Y|�!��7F'��@{��k�͌lQ�ԓ��Z�|L��7-�š�4QR��i$�&+��$��O�̐D綩<�2�X����lMq���a�o�(�4ձ��dXĈ;�0S��:~5/Kl�Qfy�[VjrL�}��X�hX~�O[+�~m��O�!����M���O�B�c�D�<H'�.��焃���������,���)��t�k$�b^3����(��"��C
ܷ*�JV���Yg;�<��\��F��m2�e�(+Lы���sbޛhz~C.X���`�W�gϋ���u�c�K}�s�N�a��GBl�Ñg��OY���36�����s�͢�6�GT��}�FpѬ�Yhhe���C��>�<B��r���o��5���� fTp�ty��M�]��}�m��:�c9)<H��)j�=s����m'cC;��R����J�ފ�- @(�����frM�*9��^�}h���[ ٰ,�R'���d����rm)�4"qs耔FMpd�U��<����0�rb*0�s��ףI6�ؙ\�=7�_Q\��Uh�7K���Rw�R��f�˟��z���k��uov	�XF��+�B��G�(��տ`�=�'����覡(u<��Hm�DL�=�&��g�e�A��L����2�g�C��t%Y.�:����9�Fc����N_E{_�ݠ~��7o��VƄ#��(�䁷<��a�%.����oB+��� M�D���C.'��nh�i��e�ʣ#b����#K#�0-��B�a��\��p\��jZ�5�`�GU �l"��!&_�ۨ�QČl�k�7�e�xi�-#a�[㍪�e�Φ;*ba��(rn�h��b2�F%p�����ě��L�g��;�vC����s�3=&��4؂�^��š��j�]�gj�S)ǉak�|���-�l��̶fo�K4lD����
d-�O?�(h=m�>	�~2p�/����i���L�9]����OW�)O�O� C)|,w���L��a����2�P^�*�(�w��T����<gsbI)8z#���6�B�:������tw���1�O�vy,]J44�'�p�hU3[*D�w3$�xW�!.�G/��2R���o��$z;��p�*�	�Q�)qid��,�W��ȸ7R�F�lfp�Y��k�2U�KZ6�H'f�b��ٚ3�z�W2�4!���-�,�9����X�ۃ)�׿����KԼ�a�F��(�*I2Nn,��Ec��V��Q�պClh�3,[�"v���7�kDZ�.��\Ya�W�K1�SƂ�oosW,_�s�j7l����g�p �$�S�P�9Ab�3����y+ҁ˳�ۄ�k��q�.�J� l�"kb�>��s��+b��y�]mEn���/�������B���UO���O#�d
�+�8E�7�����V�G��!���ܣ�c�O��?߱�8�X^��Pb���X�%GR��`�`�^���iXs��t���	�NSK��L�['���ґ�e�*_�92:y�����ITV=��8J������ڑ)gP��ꢏv9?��|Vmi��B���Z�j�5꧃���;Vqh�j�P�w[�GH�k��q��ɨ��h;{\�)�Hi����'~�X������=����[����_���螔���0G*��9�����y����&����C�-"�V�	�����Ǹ�����>4.#�W�E�MBu<6�D�����lP����71�l�Ն���}T�v�c���Y..{V�	�Y��� �;����SG�G�kq��J�D��U}�d�p�Y��k�ߩW���j�Vkk4d�3
y�zt28R�JE��!���%<��
ћ��
1�dQ�1+����H+��%h�@���鼕#tk��'Y��){���]�ft�	�^�Q	��y�f����ɽ���ָ,S�i���jG#��*�3�:v�8pRJZ �]�(�}L?%Ѻ:�:���z��P<�;�qƞ#�!L庚�O�Gb�a����DaɆJ����#�/��uv��l;�4�O�	QgHl��}�?e���gV�� (�"�V�h\��_�ߋNі���t\���{rKS�{�-L�0��o�Q(�YvR�\N��eN��'�����z=�o�W��ڂ�z5�*�X`��9�j�vq�_���Q��\�1su�v���k��3>D���U�0�X��NIЮ��K�^Q^�6Q�C��~�D�{9�;�6di����0a���s�nW�D.�R�*m�G<����uxH��c��)��̲ukw�\�湟7=D�G#Zq����:R(��"��P�'�%���v9�7���)�cfl��!3���<�����_���<6Z����K�0�$$9��]�N�?t΅�5s=R�މ�3U�+�H�@���TN�5���s�@e4<��`��,�Q��}r�X�f[�eS���z��M�X;�W4��"[]��'f�7f]�����l���O�P�.Y�U2Ti6�Y�G�Lyи��o;(q���C��n���WS��?a��X�L�#�B���(:
l������0u��mgT=���-80�'kPj�#���H3mA��D�/o��}��̵t���F���L�?O�1����UU����Z�Y$�g9j�	6�V!��9�ZM� ���d��E.GF�U����H�����:= n�sq�F�EϨ[TQJ,�B�
�3x��z��l�Z�(@����K���
r((�I�ٛ��싖4��Ǡ�3�*��^�Y��O��Mr-,+u�/�:����@]����sL����e��X�ؾ��H��Z>�/-��g�NlemXU�̝bE�:G��K$(��⏅'|9�)������{��s�
�z<��]��u�e��-�;6��	D�P��Ns�+1�P��RO0��٥��H�n��r�wO���>¼s,�[�pF6K	+ӻȀ1����M����z(9�"F!/5HJ*�[��!K�q��݁<����<�VQ�e��L�c�;l�����VCR�lK�R�xj��f���XK2��ZO�$�r �*%��V������z���� f�\G:Ө}����1P6��2O�����ER����	/0����Jyk����X[�?�w��:<C�<!g���]���4�ٻĨ!�M�OU4��`2��O���o �1�ۆ���?龵�S(���JZ_�0�5�`�u�kA��('ˏ���!$���'`�ӦIX�x�Ǒ��:S�PyE�DS�z�7�tK36Nb c r����Rtht�Sj�yct55��v�^�]�Y�k2    OFzf�L�` Y;A�����!�E���aΨ�
7%�D4(�������m�".�������G�p��݋�	���������/��p���&c�5M�b�\�;oK���g���9ܕ�^� "0�؊6W#Lg#JY��a��Y�Qo�&ԍ&�O�):~�C�l�!���epE.ڂ2���94 �)׻,fC)f3袪OZ�<��l4-V7���DѴ1v���,�&h��(��h�g����?�nb^���K2�ӐP����ü����X6���T����fE��J�:X����ר_;�7ſj�������*yK�Z����3�yd��L��MԎ���^�A$�US�v9�O�iD�>�Q�;��ܳ�1|��j2Vfh7�lEfƴ�Ҕ�2�s`��4���ef�C�poB?X��ǁ�,������3�RQu}�8����*(2&�Y��v�p2�������in����el�A�H�
z̉i�y:�r���r��U�v�:���ʳ��yY�dDBX�0(�N$��к�5�D�2w>ǿ���I��Y��{/�^^�K�k�~�&��JD~��,	���3�3}Y��`�B�#�2s�>�S�S�-�/>z�r��9�^�����Z;�y�0�ECy&��ş���F}۳�60w !��=�+}ƥ༝�rr#�/��b�0�����8��Y�fTW�H_��_q�#��,ѻ	����[����э�1gRN.k��3.��]0�T��i^苶�֮[rX�C�wH�͎�=�م��A��җ��Wj�@� oM}`=0�H1d�5Z� ?'rP�����
ӏ83�x�Ȼ[몍�oX�M|��,��R�aT	��m��i�*���QtOl䵔���(7���Q��g�ųZ�k3n��2�
�Y��ޛ,|����3��Gj@O��j�Ӧ� 
�wfzJ-L�䡔�/oI5{�D[�v�#��*5a4�ڨn��G�$���	�E\�f��S�|��M"U�>L��Z�z2j����?�"0�������~�xX��z?dQ�Cex���{�<��/L�|VpC���*���Hu�U���&�_�;�*���ϫ+[��<,S��s%��U�⤊��^���w;�^x���}�����"}^g�-�����%��kd�Auc�z�-�fop ��+O�U_�n�M=�I�Ь�N2]�QFdʠ���j��=��r�̵��ˮ����z>*'n�U!:JS����*D�Ձ�;�A>K|���c� �?�'�O
n]^�Mʺ�"�5��~����(!�)g�'�wD��b�
ë���)xn�Tz�Y���|�C�DC��9���f��@hx GK�5�hn�k�! au5X�+�{y�M�;�8M�Uk�	��s3���Q8��^y�r&�"�r�zX�2�X��3�[}���E8�ߋa�=��-5�-�dm02�Po!8�@�t����IG����-��D�(��k3�RlbW�kx^YD���CF�!�e�]qg_4����g�x5N�#�Gi*5(s����R���F���f���� ��V���\����gX�o����c���Of��5'�L���ir�Z�����|6��o�X�]�dph�[�X���k������g=
��]�8ȁ��s�5���?�R�#a�k�æ��h�ʆ-391�K3��y��VMb�-�o�uE��V�r�e��y$�c�"Pm����ĩo��GE�_��5�r;��Uv�4���)�N�;�X�>m�*4�"��~���O��}h�zP�n�����=��9FQ�".�����׹WO���Z1��NIx�V�@�(�\�_ԲR��҅7�)�Y_��U�����U�c���[758��N��i����p��o�������� ygΰG�7�f7�toq�n��Z�g�����wrqf(t�*H�HX|�Ӡ[�Z y8�hi1 �2�G%�2�biLY0b,C cl/�U�fR�3��sC�8�H�MlI���f�bA��g]#����u�>ffǦ�"c�.S��h���]��~b�sqR%�8�`s�/��wJ7���M�4N������ZpMc����n�%2,���;���/��4�uy=��k^nd!���r�����c2�)MO���uͬ9�#:y|43�Ԓh��*,+�k��B����tƝ����������� ^�KK����OӰ�p~{_WG�W�g� ���Z����p:w�9����j���Q� ľ8���8�{aM���"��Z'�QvI�W�f��%�>�YBgd���C�OcV���0F��mԇah ݳ�a��N�϶��`V��}ʹCbŎ��r]�^�-�N�-����h`��y�^���X��X)���
�8����m�l7���5&�|� dg�S��B/N�ݜ�Z҈����q$�p@ØP[H�L��� w�c�����'���Ӥ��e�MI��RF�x����9]s]es���`���B��Nʝ)
wK]�m��7�}
ߘ�>Y�`� t�qv�y5�ea��ȧ�ŷ
�-A��̸�A�v�x��|��� ��V�F�+�?*/�ѹ��10xS�矟߷����01�9#���5*�k�q���R��ŨQ�r���r��9�����|M�w�fK�;rՅ����*�qa%N���)���Ǭx}��J��6�*��K�--��?i] U�&�gmx80(�>�1��C�#ȧ�G,Ըq�S�"�W��>�]���s�7�a0�*��K��-��JLo�i��͡x�Te?��	J�W&mlod���O�����L[L�mey�36]u�^19�.�e֡A?bڳ�4��*�w��t� ��mZSEl�놝�4u�DpAb�n%~��_�Ş�B�0�~�����ò+� �Q����$�|�Y�Ŵ��o�S_�ҏ�àm;�}�Ļؔ��^�k&}y���>g���E�Oȗ�ЃO$����X��=F�O�b��ֻW��;1���;���ヰ^���u���Y�k�H:MHx4��^�&�@ɯ����Eg�}�fg�]lt����`�nY��'Q�S��i<̳1��W�V(�h��`W�o������b.��� |YCDZ������wg+�ã5a1see;-��=u��qg���޻�r~8�T����q�H�-�v7�[[E"B��Z�T���П9U��9X�AaZ�����a.'�Y�׻��L4h՜�����M�d<�=n��+�2�s܅�!*�XK��#-Y����ӛ
�UĀ�yODE�=���媍��ڹU��t�v�n���w�F��_���]��XeJw�{82�������+�~��P���
�ln29���!\�G��ě��g�]�g��%e����8#0�/��úF��J��?E.k.����� ��ԷZŀ^��TX���������љ2�0��$�����o�KH�iX�V�r�x��XN�8�p���^����y8	*h�V
V���e�� .^��Ĝ����c�W�5OΨ���,���9�Y��� ��:Ow�����)oIoG\EÁ�:�o��*��� ,��K��'z≦;�)�����*G�Ɩ��d4Dۯ�&y#� ��A!R���9Cȹ +�6l�̄�.��|4�L�j^�v�g��P�s�Z��ⁿ�Hi��g;�#�#;����6o��~��Z.�!T�?�b�J���e��PSD�sd����XX��5��'ۋR���M�2xk��R�;k^��F�q_Q���2V�x�A����5��%���X��3ϐ�V�s������ͅQ�Z��,.�|�Zd����x��s�Iq��qF3g�΂B�p!DH�x���3h8�ߑ��Ú(�.����_��Ph�Ų�4K����+0��c���_�QSW@�� #�G���j�EU�5H��n�❁��0CDD��}�b��C����%��&Fle$���������E`B���mmы�֦��`��4�����\ SN�hi=��aw`.,rj䴷!c�Q��uO��\j:3L|`ӱ���ݡ�_a�f,6LX�Ң(�㽡����Z7�^�"�I���P(/�:f    ��Lv��9HwCل~����]аev@��Q�cj��]����u�!B��jhęTdm�������5�PW��~l@����$�*�A-If`�����Ƽ���pGKE�k��9��u5��v�oC4wb���t�f���N?��}����^4�bW�j��y"��$d�NZ>j���W=�'NC�D��/�*��Q�'83�j�I���[��3C�#řhy�mZ��u��E�;��F�5@a��
xV�[�o�7Q��rf3�f*�������T�8�B����Z!��Ư�~G�r�ܫ�6�JY��[�<p�o�M�b�h���(�ŗf�&$QK�b{U�4b�&�~, ��D@��W@X*�Z�V<A��b��T����|�iV��,��&$��������~�;+	�ic�t�቗ ����Q@o�E0kM��V��s��%���p�`�QS[�k�E��AN��ug j'�>��U�{M]1�����N����L;��i�
5��n~*�sʏ��I���շ���׿��G��a�0�7@$Xh��=|o��Qv@�t�Fi4h����z��[<ښ��?fn��+��9��+,.Ц��PQ�V�K��S�e	aR(?�֍E�,�J�m#Lak�+� ��>���g��B+0�UC����TK���5�3���"s�J�K������1Fk������3c�j��:�����m�0����U���]� ��y���	^5�qǙ�!{���^��3h�5�-��z�ʚ��*<��?�)���  ��X9�[Up0��>����o~O*�4@�뭇#��ɽ���J �2��g7Բf�V���I����ؓ�X���(B�Z�<�(���oW��\f��"�^Y�H���{{�U���a2��|�Y�7Vo૨�1&�����#x1�8��nA�~��� t�^Wr��%��)YMa:�1�b��Y�?Qc!�U��R�QQT���`�f�%9;���?!�$�ȥW�ӠD�$���Q'w>��їטּi:D�w84��-���'l}\��,F�꾹!�-p�O���� F�H��������O7�?�L�P9���+���;��T>y!���7���l��}1KN�B̭�M���)F�=���`����_enP_'�fo-I7�>_��q�9Y�k�D�9(��0��z���
���ge�v�y6Ǘ惲!�ڦ�z�x����2�O�J�5��X���l�XQ�Z�9�׼>1����Q�?��^#���C���xt3㹫ű����.�gF���a��/�d�6ީO�|�H&��۽�!M�_|�J�p�o�\VG
�E�#k�ߠ�B#q��Ist�-�j�ݨq�K,4����W��t^�d��OIjv]�d;�T�ȁ����p�����>gD
��h���ރ��_��(���+����e��J�v;�ہ��sk�~*/O��oD(�C�a${�"�ʻ>EuGT?:xyB�\{z��,��!�/�6��7�M�J��>;�ǈ�Bȥ �k�zE��k�Xԁ��S<�
��՜���m�ĬB7*Y�7x����4/-z� �J�Zɝ���pQ8�<3�;��P���3r+�������Љ����|z����$�ֻH9�!���n����c[V(�@V�Pkp��
�\Z��H�]Fy�:]��|&,��Z
8>�c�@J= �or���G;��D�rj=ي���$���T��g�B{Z7��2�(B�ߊ�7�v��?,#F
Rx`�d~z��c=�;��]T�6�V�� �Ð�Yã��~o�X0�F��a�+8mmt�|��L����6��������g�9��E�zqY+m���(+t�s�v��`?m�1�1AC�����:���	q7<g� ހaN��}�N�) ��:U��J��"$�����E`��.�w�������C��84Q�n�):�i<t��X��p���p%/�
�ԧ��aπ�f}�ӎt}"7~fG�g=̓�#▧Wfa�?�#j֜31n?�z�}�2�H�� ;1������Y�~�#/�}�_�}@��o��tKB/Ѐ�r��M2�Z �̇��&&��"�+�R�t�^L-˗���Х&pJg�\q�hi��<(�G�]�~׬�\$WsuU�^O�tWMu%�����&�PJ�'�Ps_���� �=��!�ݺ�?��V2�����BT�� ���S�wy�3Ek�������p�W�W��W�h$NH��T�F�I��M�8#���P�p;v��N#��j��s�s}C^��i�!�mS��^ '�.L�I��E�7����UV���%z�I�I���l��"W)�>vj�ȏ�c��g�<�����N�F�5�u-�u��q�1)�F`��ȣ�p�2Og��;���k.�D.�wZM1n�,#�G-!�i�+���4G�R���sv���hV*��m�K�ǖ�M��N![�n}WA#d�^����C7�It5E���X �T���v"Wr[>��1	��,�z��|�G:R�N�;�̬zPJD�}U97��¤$�o&��Sn���}�����rJL'����3�#R�cA\��T�V���L�4�8��I�{%v�5O㬙�<z��Uq ���-P����V{7��Q~J�Z5\�r���%����]i"�Gё�V�t�I��~M̄�Rg����BZ�Z���Z=�Q;���/��z�yW��=L2"%���!wq�9=�+�ח��-o6zQ���h�޷�%���\|���h:���VT�bf�{��̮���$tNcȠ�6��뗬��6ў�ͨMTGZ=���3�f�!�JvF�6Ûem�2V)i�V���hפ����¿�\�OZ�oY|�5B��Ĳ�zl�k��{�;��j�81#ce������Użk���?颃�M>�!���W��񌛫 �2�b���k�mէ�d�I[� �P��V���J@��3���þ���zC<Z�d�Wu^���h��w�iǙ�}�u�+3 o K�\��l�0pF��q-\V�:�>j��u�W���Z���\�1�Zl'��x�� ׫�~4�3ygv���Y��)����+����ǋ���(>���=q~7�W�?zV��a/�E� zf����1=��l���i06����a����\�?�J�UI�{�>ŮF��k�ȍ�&��T	�飓۾�"��2R��}U�C=_oX7T����[��\�P"�4aDЗ"�����U?"�Ku�eҴB&E�s�U�=&�:ŋ�,��rȊ0ib�X|,�d���!����1�B�7��R���Y�f#�u�	W�Rk��y)��k���
a�����ߠ'B��.�fgp�~V��Xu4
���Y�bh]+8�Tt�p�W����D��\�U�dS��D�Ż,���c_'���2ĤK!���ʐT��T%��xx��z�a[���H��`��)��t�<��"ܨ �ѧ�L�,<��SZ��,�c�(L���S��Y-Y6��F��mJ��X��S��{3⼞8`\������"&��6|ϱd�kЎv��ù��A�Rw:�Ҙ�vhpz�L�9(����F+k��iX*`eڪ��썣�@���'-ǟ�g��t���t�� ��,��'���H�0��@zة�P�r�F��.S�[v��ѽ����m��<���_�⍣�pp#��" op^Di6�5�LY֚f�ǧv�Y���b�̝��4�B�RV:��A�#��&�Sti$�'�xl:"��h�ĺ�Mx��9r�
;eC��F�@6S,#śEj�Or.�pzz�ĒWC��fz�W�	��]|G���/�hѪ�������"`���2�y�V�@~Ϋ ذ\V�6nV(���W[s�Qp=���)o��}�V�^�L�;'�-�Z��M�QP�:�ʑue� 9ké�*���GFq���ND�Y�k�4V�a�V��8�v�j�
@q�pJhJv�p_{p�Q~'�[�-��8�i���
"�}�v$3��<�z�������:��'{��໲Z���792�����Ҳ��B��=�8"?��U�����p�o ���Y��    !+j mx���eR�)zԣ�=y�q3���̀)��=�6<��Ѓ���˃��?�F����7�Ӟ��voR_�z��D���q�*=pγg��
�g�s"CY�帆hO��� ?ߦ�1&�ʘZ�
c#���\1�a��������=�������Y!D�N�M]��O^B�Ǵ�"g�%杕k�T���*�L��4Z�s���_��nXN���7/�[ �DS�2Sg��v2�LX�<�R���|f2:c��Jȟ� R��2��*(�6'+q�Ǵ�ǀ�l�ň����j=��b�A=�M��t���q	��b��S�h����-�����u�:�e��-^��/hu&vt8N����?��[Ĺ���.�Q�@�p��
n�-O�m���������{0���pX�Ԫב�r���#�aD	)4Cߐ�;3o��e�v�עW�Gul�uT�+SZhO�d���T���ƵiB�`ɲ�Г���A��9���#�IM�H*kEd���`�h�F= �@B�<�6�͠��'}�),j�����0D/��f˩%QE���ŢhSv�B顱&'�C晚���Az� �B��oZ�'P�r��lsM����E>h�ǀ&|�3��t%8����\�4MՇ*맶ͺp�᧟-tG�AlY��:�yǪ����s|=�#4oO�e���3�ELb<�T��|S�.U��QՔ{'�h�P=U�uu��'�������Iy�� ��{���z���F�)��0��me�zC2�[�׭�M�u"8r.|w�Y=�mcّ��ѷ�7}N���G�O��g�~���w}нY�踍�7���wx} ��;�,�iXP����g�����j��"=�)~�H8r�7�`]��֤;��cS�SYϬ��o���M�Flz��w�5	K��A?0�ﱨ
�����\�%�x���`(�(M�,4k���fӑY��Gzd�-�T~G�D��
T�ݑ�j {="��	� �t��OE�},S�^_��KVڸ�z�%��^mj��%!<#���Bn�̣Щ����QbH�F+��FRyP%G�g����9���Y+y�O�7#%�#��Ɩ�X�T\A�S^}�b�ЀG<⬼��Ft�� �+�j�ZP)�Vql�|abS�'�^W�O�dY��[;��uH+�L�n`�����^�#Ì-�Ż�FF2ɧ��Px��.\����g@4\��|eK{�:T1J�3�(,�����͵��Ke�qH����j��_�D� ���Q���gU��~���	5���C�Z�X�K�b�B�Y��RD�~�xӳ,Y�{�sm�&��f�-Sr�b�F.�Q�!�U������ʉENt5�k�������J�BI�j���vP �&g�I�i9##]G��]c�5*�{(�U���jD�ZP���]�z��f&���E��h�i����S+j�~���`,'M���
�Ik�xD�[���!��p#��2�q��tx�CӅ�Gq�S�*D�J�g�Is��g�_�l��b���9�}�j��a�[K#�l9��^�z�ߥ��&��_���J��M֊c��ɶr��p|Z��O���'���	E:Q�[Y ������ \DF�|�FE���?��]>�׊�@�W� ��]1�eł��@��`<[rNV�%4k14�"_|/*ndͧ�g"�������>$�D���vM���56�#V Ş[��?	郡zMy���v�����{]��ґ���X�>Ǝ���[��5�̀��o!Y6T�w�?0D|E;�t��³��0ʧ�th��~bU�����	�S�ͩc�(�6֫ZA��.K�3:h֍�����W܁z����i�y`˨mL�&�k`�G�|��(Q�dQ2Uf�ĳ�@��~2�i��ӎ����M������y�H��ύ�B�,�!����#���NM�C��"��#�֭~���Z�Q�K����F:�TB#���*Ҽ�ʚ5�{�ɫ�k=  bV=�3@G�Q��%ԅ3H"}6w��"��"�=͊;}����~i2�y�	E�m���tE���ծ�ru���ZPE�ʞ-�T92���,2���r�)��!����r��m�]'B�sa�5h�ӬW*b�շaH�H�����R���M�"p�(q�ؗ��2�GzQ�qk%%j6E�Φ	Î^\�A}�G!�]̏��Ri�"?DƋ�!n�O@���	�_���t!S�L��������sz��݄��:���R��3��9N��>]�.9�WB��M����q�^��G����n+O�cDR�T���BU��U�=#k�r=8�b�cι���A�ީ�R����`�L{;Z�����eh°��{�;:�>��>k�i�[>n�,i�־C''Jt�f���o^��y(��?��^�����R�L��J'����k�h�RϿ�Ȧ�,h�SG�I3�Č�Z͠�˥�_�᷊�z�]�� �X�//C�p� �ިy�S�H�W�
�nMw<������`�]MY��G)K��4�H�6���RB�FW#<��e{���ҖFG2*�*�g�e�2�r�u��@c��!R�*G�r=��HO���"h����1��u��"X3;��>��/�؞]��������*dub����V����Y�@EfZ��j�'C���(���!�V�j���/41��9PT�4��j4�}��50c_b�(Є�K}e��2釵�sM����0���8g�@��&v�Gǉ�y����j��xd�A��q�)x ����Lf*R\�<+fh������P
H��>��՜�\�y�Ue�0�J�{�7%Bi	�C�n�9�/8�5i̚���f��Lm��;V�fx�H�5�8D�b8�t���� )������k�Ҁ�i���U���6���=��qj�I��|�����g}���6�|�Ւ��\2�ZN�o��X�G����� h��،��"l����#_/Mϼ��������R����<���h8r���P)hOBb���_Ue#滪 [1p\�����@�:*�[��ڏ~��B�B�M�N��ݡ�-x�(ĻW���j"�q�|�Xu�Q��#�g�$�a���A#[��6�Zf�-�E�PM|�m5�h&�Y����nPȁ4u<��FL-#;�+K���o��B�R�Vӱޙ�!j
�a��޶���UA��R�SK���[�@���-)G[�;�t��P� ţ��Y���݀)8��G��l7K�Ps9ˁ'����u݃���QL)��*�S4S�y�h���r|^4�;0��4�j�V�c�>�6N�{�@�l�'UKRA!�,�K�����p�R������h��S|��a�fˎV �^� �9h�䢾�j�2.����;B2��к������:%�}u_�r�L&�n�;4�2���Μ�Dcy؈��&6��b�s��7ŗp���F��{%�ӈEv"?��-�.~�֕�I�-9�^_`��O����[���Az,֚�b�X��	ș۽#끳��u�H3�j�@���$�ޛ���W�V��,\��|�U�C��k}�i�\ˏ�K�S:$���]f=���MW��x�j�4���}��1�X�i����D"a�g@�/3���~�Kϰ$��8�1��r7�Yl�
����e;D��UM�)}�
�F<�G�	h�ye����GQW��?61���k%B]Uϰ�:m�\�yQ���SD[�[5���'�/��!!i��D#��K��������C������-���b�|��ŻvS7�0e��� ؞V����;�S��m�����6���"�J���A�U�p����pU��$\�]F�����D��HY�"�e���Ty���*��5)���Iٷ�7�F��V�D}�U��,�K��o>���X+�0��I>T��'X�RU� C"H5"��Ƣ�F���+�_0���q�l��ᆸ�a{2���9L�j_^�W�%�Ut�o�g���&�����f�J��:\*p��_��gK�}s�h�/O�������T{�M3�TC�    ��,=�襤�hq����/L�=���&���1��1�Y8�ڞ]:�e&P�92a!�9(� ��T���*P�u�=g
���Fd@�ȏ��hJ+�u7]���A)k�%k���j���1�O�(�v�Yԙ@	��ŗ$ӗ��H=�ae�x3j�Ţ�f�h�K8zWa˶���N�}E	^�,%�������'1L�7�[Z�7r�F�"���1R_ft-e��xWug��p�w�U_����.�:��E��G�Giwg�h^B6T{�K�����N-:f6���V��nMZ��@���%(Ӽ�N*����,���l+��\��ལ�)Ц�N����8��M��/t�Ac�
�IHxPN��R�j%�����6Sk�ĭPxS�t�����x�--7U/W���bhn�@�$b=�I]��x���A��Ԯ�,I�P��=�N����	�e����hщ����uUH���S��c�r�4QH��c<^:Z���zΎ�� |򃱴�]̍WO�-����k@����(��==#e�j����k�xc �)�h�R�n0���Tॳ7Ӽz�T(��̪k'�����N��s�Lta�o�f5�(�lΘ��6:Ķ��/�4y�4xwcǖi��8L����u�����6n�48R�Vŋ�a�C���j�yD�S$H�\������{��U���e�'dF�,)7��=�Z����Lk��x��
�?Cm���;��M![Z�%(]�]�'΃|��{ ���}�2�vْ�`!v�)ꨬ0k�:p�b5���=T�1�-E��R�.�"�7��J;A�5���E��h��b�b��8��
���]e�d<[��:L=!�9T���{��V܌�~�<Ѿ�.��W�rU٪c�s�����,��E:�~)���58�	&@�5D��H7��[��[���@�FL��/��p���Ƶ�3����$��22������\ ���қAW8�zh��
���f�6'ʪgI�H�`�����Ʊ�h�̡��]Tv�﷕��bGK&������q�ay�%�A�d�D+;
m��������JyoZf�[hIfz��n��,����6K��ֆ��ƔiI/�u؅����x��sB,��׮(#`+c9���0���EM\r��9���7b�H&���.��ޏ�d�漢��0��s�T�y/?�AO/թ�0�SmE��<�9 鲟�7�C6�]g@v���:Z1	�Ě�=��\+}�ΫE�I�#�v+#A0����jX�O"Y�aL���Yqڐ*]l�����4ޚ�ᡀц`()�{�����ݨ�b����762f���S�X����@
���(	�d�͈�,[���[l�����R��d��2(�w4����p��}��өe�y4�2D���_��m�]���{�����@{S�VP�$Y�+;�u���0� N��<N$��;G��9���RE�&ĤS�-I��>���'�U��~� �R���O1M�ӫ�AAW��*l0�;��$�g�,r#����m�J-Lb/�R�Rvj}{����֡{��B����q,������n"����0�؞���e�b-������SP�L�<
&������y��}��i,�0��U��5��������憐��؜��w��x��>WJ�v�
gu��T�f���+Ţ@�|�V)׳kPc���q�b�"-&�4���W�G;dV���	�娯�Y`>í� ��-������X��_�6x��xd�F[�8+{b끣e(��=��I����x�Y�;V�1���4��V�,�w� є��ģu$����uF���DtԊ\��Z*�azrۮ�}�j�'�E��6�a�X��PB+Q�1B�smu�=y�1��7~�؝U���-_qn
d$���8+���1%���c�ab8'O�ɣE��r����+�Fk�i�EM�<;l�Ώ��Y@�\�+{������V�/ӼI����LC�q�CpR��5����y�B��|���Y���u����Lm}u{�����mN���6"<~�$��̚�nPZ(���]R+P'���9�b���ʇ�A��:�(�����[�ͷ��ֈ�\-�ek��������-�ոGEy�.
w'�4巖f9�#v�(��%�*�g��l:���K68�K�'
��d�bgeX��l���F�lG�Ѻ��tnx����D[��Ch�be�_�i-����\߆i���,��^�T#������
����~�'����v�{�Ѻ=��M�j�P_m��%(��ؚ�1���*�g���]n�AB3us'۵ZE�`��i�����%PDL
��~�5S��Y�[,:2��Y�K#��Bf��ē��������U#�d�s���R��1��Gn��'�]~�_�"N�{��7�kKw�7�N-UPn�hէ;=�o��W�>����f)UZAnXLC,	M�$�m����z�:�DX�TbMKb��|t�R\sV}�Vܓ�8fK�mD���3.���G&gR�!w�����zN�fT������x��2$��Qhw}1�3P,�C�����j����*�β}PȀ� 'B;��r�m����[5�D����j��"����ΉDv�<w7�ƅ�Q𹅥HIr�P�|^�����YOz�T�dj�	C�ը�2���\X�Yi�,�`��Ȭ�]�Uz!���`=-��LڳZ���RcW�<�;�H��1&�bFf�R\U����4��lPjU��!�/w>'Y�o��pA.n|Y��L�(	��>d��c��`���_�w̓�u/��1�D��S*=����l���'=�6��-$�]I�zU�+����� �L��w�N+�N���w,3<E�=�&�U���0�_FI�֠{���j_;�\c܃A{,��hnկo��2��θ�x��k�U]�~c"C�{�І��u�eﰄ^Y)�c�P�V먰)O�]T2��ӍM<�Ŏ�E��޳dDLe�h���j���x͈�y}�!б'�uE50��E���4�E,�=4�,X5Y+�u;����lg�ɳ�=߰G�5��S;k��IB��!-�]�]�ęÌS(��\f35�.��kȺY�n�>HE��r�2�xo�f�֟����7r�>R��bac�۰w�{~�O��f��>׆*���׿���Ь��t�޵k��H��י�ei$�jc�(�c2y��FN��`3Y���M�ܣ?D����y6Tf|���%=��4�>��D$�a���N��T��[r�r��ͫWU@{V(�S��!U��8�2{ A�#�Wa���_�
]��ö���CC�,��R�u�эLi�'�3�gk��s�Bn� 2b>�6E�&�;F���v��淞6�;F�4��f.sm�*�XXŻj�%S)o���i[�wO���j7v����2� 5]��e-Lt@Y��
����d���j��q��S�lj�9��HE?#\S�.e5ajs� V\�~��{n9�s6n��y�UK��	Ln-�4�x;	v3���ZC[�h1��ԾJo)'��8�Z4F��5�*�'ðF5��x�w�~u��]��o)4;%� E�Q��{�j��������J<p1>�<)�ǹJ^�əG�����O�� �!��z%c	7J� P%^�(�Q0M'O�#*���.gퟌ�`���Z���H��b%2���\"������U=�������3o�ʇp�"�'�h��Rz�����LcZ"�����[2[u��+�Ml��J�U`y}|�9����{��k�T��O��#Krl��.�^��C����Cu-����L�2����c�t�3J��iD��rO�U��<�D��Ʈq�Ѩ9#�X�	XB�q��Y���ź��p�ł��tH�d�0�֢���Y�x�p �ރ��YD���B�����_�z�E�y喇;v��^�,��^�~)���cS�K����'�X���K��_��<��І�G�7;��Ќ/�t_�ک�S�ڌԋ;�H%a������E0Z̗?[:-�,�� &�c���f���<�c���� ;�3H�������gs*x�F�:������)&�J�\<Mk�P7��1�    ��:g�ʚ�F8�v\��$��)s��eD_5�Su5�Q��K�r�|��>Ok�Vo_�%�O�a��`� ��,�b!�������f��y�?qű��E@�8�GIo3��1u��Y:)�5O���ĨL!Z&˽��yx�t�J�AǠ<Çk�m\�Ӷ!u*:;~=���x}�ְ�/�M�uf��|NA�XX�\��A�� ��Ҳ�*��N�D���D�\m��#�}����T�vb���w�����*	�P��t2\H���bT�nN�������p�K}�K��P�lj������96��U4N%��Q��:|0Q�E��N�~nU��]����X�-Y�a+�Uq�9% ',�"j���S�����}M�w��l{q:��DZ�(��4
�H�#>R��:����`Dg�]���nb���#��XUX����#ge��`��u/3!Z���(5�N���ަO�U�]���l{+c@��w�$�&��C�Y��gq�m+6Q�xi0r�t�����R��|���'�Z�K�5��HDmR;�\��̶Cx�Y�7$8�^����_'f��h�=ՓH�I��aDxS�*�����42��y�"�����}F���t�S��IC�ne��f�A�`�z�YHu��!� 6$ւ�_�2���|��Dr0�����O���X4��p�v{4<U^�
-ܕ�~�Bg�O%���`K�B�(�
�`ag�Iy<��22P��D��Z��*�5�����אI�F����#=6*I5 �@@	x��g�züȹ�Ȳه����JTV�����|~(Y�f��(Lj�L�"_d�'��xLݔ�����`1B�
P��s߶��um�L_t�P�%[���p ْ�K2�N6�d�,5Y�SU���S�!yL~._�5Ƙs�Uܛ���0`u7/Ū�暗q�$��}V�ށ��\~�v�B�op��p��\�ŷ��ȩ�%D.�g�20��@���BtVүN��q$`���.Z�
O&�	?H�
�l���֔��s6���&��H��������sF>� ���9?2�yn�KZ��/�m���R�E��5��)ι��v�ˬr�!�H�Yt2;��߬�3�:;iǌ;�*�uN��4HժZv��{L������4�3E/큱�q�-�
���]��ޚ���
m���<��;�a{�t�!l������c��|�.ㆰ�uI�8;���2�c��`�qÑ3�.@{M֭�����+ǜS)X�a)	�x�gn^S ��'���4��xAϭ1p�!fJ��t�?�U*~9��䣯���z{6Lg�Ñy>A�Z�p��.�(ݗ�_	���a�Bs��)�AB|��D��6������T��̯�R���ga��}����I7���i``-��rZpS��'��IK�b�`kY=rx��W���פv$@#^�L�zY���e&F;��V��es�]�����BY�$*��L3��m+���\���������H�P���T)ξ�
c'ց��X���a	.�?���>�2���V��G \�ƳM�LJ��sCHDO��v��G	�$*����P����7��KPה11v��������Te`լ'0-�~�Ɍ���=:�[z�	Ž�C{}p)Z��I����A�C�;	 ����P��qv��w����% �Z��Zn�kSv�BfJx���Di3Ϊf��{�eB�Okw���q���"6{�N/g`[�ł��X�hz��w����&���'@3�Qj:�e;���@i��9�_��z��:�V=H1���FA{�^��9r�����16�Egs_�qT�� t�(�&���J�Wg[��`�.�M� MH��9��-H4�5z/��U:�l]�݊0+]��A�y�����
���� Mb�d�s1+�87e�+g~c��ܧ��vC�望�Tu�L%����ILK�:SD�Yg�Uւ��n� ��$���(�wC�*raצ�uu�(�*����&ز1��8�s�-h�S}L�<i�!���,�fw�7Z[�����J)��R��-R9u����V����]����/*3lZT͐����B�q�4�+Ӫ�ܐb(E��t"^v4��!�?��_�0�6�jz�W�PkYvݕ�h���;SYjIm��:�]���x4Lm���3�@�֌�Bh[��9$������nx)S%���D����M4F�\�vxM�|W�E��?���3����,H��3ޛ6Lv�H��&��J8�󏑷D�~��.ćMR� ?�ֽba�oJ�#��>���3�OH,�ұ
�#r������FDUb1F��Q��1�}{z B7F��O��A����y���<�JZ#QI�u(6�5p�ҍ��K�\c��Qe ����Om#�)�:(����ڝ�����u�8:�����P��oJ�O���n��,�s��C.9,�N{��K+�U`K����r�H@�L�a���Y��s�ֿ(ıq�|_� M���=�u}w%����b��e�`�=��o����D�q#���$�/Et��Vv��*qs�����N��}jzV��痔9�QÓ��j+��tW���j�`�OV�ڑ��d�i�/;ϩEU���Kj�ι�u����%:���t\�ʻ�WY�/K�:0�4��&��О����&�Sߍ��Γ�Q9��A�(b w�=��]��03a�Bx0����U����5h��8��� �o�M'�թ<��W���T�2�@��eP;�|��q�۽�-S;�'"Be��@ی�z�]O�/+�D�!�7�Ӫ�-.\j�/jt�r|��Ӧ�r
��)ǂØ���U�M����1��,0��J��e@xa�'��?�ʡM��7s��ـ��A�h��>C�P/�=%��q�#��^�L��f�eAZAG��6.�
FtB��s��:1���2ݸ7_�⇷^��_��~Z"B�T`u�+No�k���k�Qp��Ȍ�|��Ƣ��$�����E��7?G�*=ķn�!F0"Bw����zI���ZI���14��`7}��f�pG��\UƄ�\
n2\�b\y
�rw��N���&�jݧ%H@?�V�Nx���/��'[����X�rxk
0����Sfs���M�����E�r-�=2��� ��&M��GMld��xJ����pS�&E�a:��[�����Ƃ	x8����@z�O[�%��e���B��0�p�4���6П`��պә��� Y�/g_�Sf���ϳ�6��E�#����~��Α���Jo�`۸��:p����%���M����lZ$�� Fv]�w����H�P?2�'6�7"I��<ȷ�� F�t/����`tE}��ݞ�
|��9�����-�HA�qR�쎚$,+4ށ�5t��o���q�B.���"�|���f��9���-���T�Zf�.�a��PF��]��i���$�$��e�(���f��f�#	;�<+k4�mu���du�7B�8s�?|���
�祎u�D+�m�$C���AJkc���X�QOT'S�X��&��S�R��X5�v:���K��%��9g# ���^��(�<k�7�_����6��:�虙6̦~2�L=�aQ y*o�>���j��޷�n��e�H%�Y��Sg���V}�WV�6*9Dܧ@�¥��5�]���a���ƪ��n�U~W�S��re��&Ŏ=E�k��̩0핃���;�EG}��8�s�b�1I2�6�=&�������_<�%�������}�NA�ؤ��4ۻ��v���a�?�!`�@8SB�X�*�z���!q7^�K��t�Ȟ��#���z#[��SFjk������ee�;��h�Y��$�����d���w�2��{�ԓ|,ȓ�J�����q
T~2�
uHRJ�c(�Ao��T� m�6��41x�p?��g�9"Ӛ�C����T�^���ג~���������Ap�o��	5��=<��) (���b�t�����|����i=åb(v&\��t�JO��/=t�VaصSS������K�B��t�tW�    ���"���,������նc{._1`������͚��
�8WL,c
�\�w�j�g�WK5��B�N�jj��Y�C�L��r��ђc�]'I���|��pױ����ޜ�S�g5\�K�1��>�L[��+/UgW�9*�_��r��U�OJ��V�շq��[�׹�ǀv�])�˄��>�jJ�{�/�����q�u���)qr.�h���
gn�z�!��N�7+��^��B.R��QQ�Y��������[S-�s�vr0��5&��5RlK����˶��D���^�co�KY*�1J�D��L�H�@Qjl��k��n���ԧW�a��$�|��I�Q���cз.�B���30g��l����TcO��{K�7g��O5��k#qҞ��6�����#��5V��V$i�N ���J�~���?T�~6�=L]A�y�����R��W�������cK��GɵBU�󿐰���7~��6�O��]�CO���;�� Ϙ�>U{���^��2U��4|(&�V|=�M���Gl	Θ�d�z�e�=F�ϕ�)<R�]�A?����?�Ey���N��]��s!��:���^�`���7Z+��GK�W}��W��&�0��_��$!�"�X�������tL��POhm�@=��8C�r��_����
m�v��=�5ƿc:=��AK?�d��J�&�
F��~��e4ac���<O�����*�f/���������ֵ�FE�yWN���B���4p��2�����t�p����k��D2a㳣����R�!���]�-��op�q(��r�'K\EL�T�11�2��ѧ���}��ÀY����!'�4DrF�����"؏*X6sXB/�MgD-�G?��w31��h;ZO��H;�^鿷�ٌ��a��Pz0_o�r����������h�MP�`5`�҅�&~ۤ
:|h�W�ˮ'	�Pn76�;G#S��Td�4�VB��St�ڸ�#�KY�O�_��٧GG�3�9j�z4���>�f���0�Z"�Z�*�H�e���{j�I����G�Fh�l�>�8����a��F~��%F�&�a�H�#�<�����z@��[b�2���=v On'
��c�i;kv�!���<E&HD�ه;۞K1��?I�t��o�0�Jw Bj�ҫ�[��΂������������@��;���( �ÒU+(�æ5�$��X�]����#tE���ܤ�B��1��ab8�U<��d�6y��ӧ��ɐn$�w�߅�9�)-�7	�v�]�*��Fn�����j��<�.41ú~��3	һj��H��z������:=ƉD�T�E:��3wf/#8�ŅB=�oi92�q�l&�����b�����G�;2G�幠�:n�x�٪�	�"���yY��1��P,���x{7 ���i�-koh�vÂ�2�l��Og�Xw{4���_a��B�����W�?�����]� ɐ��������?s�;��Cͅ[d�U\�YFG,_uc�A�SOa����DxOp�ѥ*��)����=D�X�$���B��*�`��I*�Di�6"e����,�� ����,�fc~�(�]X���(q>�"�uw��!|�ǅQ��j\�jZ.��l�>Ҡ�ֹs�������~3��g�OZ�O�r�!�a�y;�'��:���ө��1{�ݤ��=���:��;�Ж�����埾�٫�<OH!c��x�f��m[������ӏ�dhv��	��i��.?W�m|�.7�������ӏ������7/$��� ��/�L^=�N��Z���~�UC+���� ��ǉQi[[�RI۾:�ƀ��e�#5�c����m�4��u4�E�i�Ru�3�HL+����!M=S�)N�(�[�>� ���+�.�<��OZ0��K2H���>��p�9[� :�bf����g����lr�l5�T��q����϶�W D4�<Oz�Gʠ��9��;dUX�P��u.Θ>m�g?粍:wt��x���Q��D�� �$�3��j�l�����r+/F=֛�fxh�zX�~X���#�dlVH�l~�I����$IQܚ�sV�0	���O �]����RxH�O]�N_φ���/v��\ฮ3��ф�F���ap{J�?i�L�b�qt��)4>����Yz�����_��������)�7����FA��5�xY�G�،M5����f��j��9���Yڨ���� �:uQ:�[���E�l܏���U�ʧ|UpN�m�W<V��Cwc`C��Җ]�Knhwid5?N�V�jC�z�HL�J{��Ե!oߟ�e��G#�����.���fP�[Mo��d[+pq���@��O4����/�HB�&쪻!��0C�g��.ߕ3�I[r��Y����cS7��ݱ?��BL����K��[N1��|,��[�:E�^L�t����a��X� aŦ��!>b�p��<�۩��hT���������_�)�S�6:5�p���l��d��>D�n�-�	B�-�1K��*ꎳ�=G��S��.|FgL�ݎ�{VzV�m�{�3SG�D��Ͻ�!��ў��c{��qD�-L��G�·�����V.N��� "���&��n�7�ЩG�k�Q%�h�̘��8�S���\pN!Š0,'�ߴ셬�ˌ/��;@�	_:�U6j��GY�=)$��ۆtm���3*Q:U8�dr��6�o�P/e�y�:��xPK�k]������
<ww[V+���כկ�����M@������-�^z�TSn$��
;f@�*nA���2q��ԕL���o}�WrOr�uì���̸�� h�[�����"!�J�gd|U�@W�c�d'���+ͰFÃ'!{�ĨF�/}Λ�"M����}��H�g��ì�'�b�_Ԃn_\�V�T�f��J�!�r�Y��Y�K���p����=F'�IZ	,ŵY��|}�����]oN�;i�/���#3��4!��7�"l=[=D9x��(��|���S���R����h�L1��j���"��X��/g_;3@�$�J�ա\V�������0�R	�3�>����0�G�/�:T�i5�?<y�(�������H�K�%��� h�����汾�X���ښ�#�o��S'��H�z�7�{jӻ�S��U�_fW�"&IL����kK�Ց�_���R�>�dʍ�0�6��9L�Wa�1�v�p��3�b^X�wV!�s��Pl��ؖ.����� ���	��JA�?��9I_;Z��<�9��m=�,� ��*�J������E�o�v@�êZ.��b_�z��W�I�35���j\�~1Qkmb�P:HS�/ ���=y�wV��% �����9n���}�����7�KWB���ӞP���f���BG���YKhQ���n�K6�����R>ذ�ӑ�	�^{'�k6��-���N{
aj�P���p�
���Zn�������5�'�ϟa�/^O]�a���nk�ꚝ�,�Ӡ��#^�V9��[����w���Q�У���W��V��
&�RʎY��E����4��T��	�2ƿ��1��U[�[�T�[}cB$��	���JQ���wN��'qM��+|�� ��ȸ�de.@ɤv��S���I�A!o>��p�&�1q|�������&/��oa7���B�=�7��b�'���=��:-�v&o��<oG̹7�	�i�j�zi�TZ ��t���L���J_�Xf?t�;����=��v��a)�?4�0�SW}�,N�&�������+g:���'O�Rb���W5��o҂�� �}VN.I� �<�t�&
���uM�,�	���(�b�.��v�@U�Q�g<��0�)ao�.���$a�>ō��]T�V���(ꅔǑ�Y���&���T ͑�jJ	mob�����	׶����L��=�Zq:Ut�%���`�&��Ra�Eh���F�����.~�?�B�@�d�'�xJ�ؤ�Ϩ�RE<����f��t
nGJ)�A�^wL    �.�"��3�X)�Sq���S&$�Z~r:R����}b$K@ρb�9�5nJ��U}��Φ���{&�X�OΣa�/h��׆����<V�6>XHe)4�t��6ٯ��0��b���zx���j��m�(�,����V�}���wd<�V)�ߵ2��f�;��}��伫��ukh- #�<6�p��a��w��U�>O�0�DSL�-�M+�<tð	��C*:K�@@`p�^�g5v�"W�Rv�"����T�%n4�tS��޻X���B;-��MaɐQ4��M?���R�0!p���V���W*/p�э�	�@�<��U��I��l����ٷ2� ||�`���.Nz.�������E��5�r�N��y�9�!�����݆N��h�)�l��B"�b�em�:�
�R0�鳡���H�����C���t���kv��;��+�1" \*�s���T:���6ŕ��ދK���i��@(a�t7���vM���&��`ԇ��A����ÔD���-|y�;�v�*��B.���ie�Ȟu�v�ŷrJ�?:�`u���9�tE9e�>^� ��'�(�Oi��4����Rfiޘl/��7��R�s�����.-�&��@g'�L����s�>�O}�����ǭ���4��6I7�n�lJz�di�/Jˋ��}�J&f�����7d�n�����M�ŤC��Y�'�^��rq�B!��6A��/z�n�jq<2#��	k<��b��0�i-]��)���ŅC�/�<�s�/yߞV��bO�5�o�{kB9�:oo8���^�yұ�������t>E�� ���d)�$�?P�4��<�_7u�� gM�SFW,A�?��䕃O�{���p���su.[Q!I�����
#��,!\�vu~�D�(����]�4��l���c�{�mg(�!x_mo��� ި>����}��Vjen�)�Z�q��������$���|c�߆ϴ)-E�0�qb:jr�c�Vs�ʲ0:pL�B+c��)^zGӒ�q^��vV����h��Ìh%�7Q�Ày�:�E[�.� �e���]ḭ����V6�I����M��������a�\�#�]6CRWA4��/̏��u��p��˒�P��^|:�͈
yɪ�b]_�N3�ۭʵ���SoE@�����I�U�u��l�c�0T�y&��Rv�(N���8}6�Mb�'�֓�OMwg, <k�gP�A�!+`�,�ɏ��o�Cܺ�4������_�Y.�-�
���X�1�j��8;>ҧ�)�`&1�j ����Y� �8��5`�����[p_kS�ȳT/��4��E�x��Ap�M��J'
�pQ\�����e9��7x�A��rH��ť���@��fJ��I��c�k�u���s�S��?tKbU�f	a�Z���0��Iת�(QFw��s�����ܞ���W46z���\�e��z�z�XH�4���<1�g�:��<7.��F'y\kE^R5��z\ ��}�C��B$,�d�3* �51-0^Z��Mד�!���(���uņ�B��p���)��Z�e#@)&p�)z{]�5KR%��h���(�1�C�I:RS�脆�Z��~LW�{ʵ�o���	m�����/i]_��$o`7�ɐɯC@^���+��Ğ.58i���͆�����.e�l]�u^�h��t�xl�۷
x؟Rl􃔗3\��g�<u��V���I"�پ^�̃+]^��|�o V�h\1�=4�,{ߝ�%|<4�e��U  ��b
�Vr�ZX�G�;�cm0��7	q�� v�� `M��t��<�.��� Z�6�5M�Р�y��^�ޖ��}��1Zڟ�ų�#R�,$Co�6,� ҽ�Z�c���ꞌ/����#;�Y]��۹��΢*��Fw��Xu��1Dj�Ř�#��B��˹qnZT+�v��סH�y�W�޿��Y��C���
_��S?1��A$	��������g�r�|ݹ���W\)]���G��e��`��Y#L�HD������F,�C~z8e>����_�ɜ��� Nߎ�٧�	�rܝe�l���]���֢�������՞���q_O�; ����KQ��o����Ձ����)�gʳ��"N# ա B�N�U�}y�O&T�;���a7��1�`C1�	�|*i�;Q��$��*H+�b�����ɕ��pw��$W~?5{�m�5������F�B1K�ҳ�{�NR�9@U_%�9&L�ңuh7��b��n�A�U-X
{-kS���?�T�����h�x��`�tmj�ތ���Lo;��;݈��G8�\J��Z��J�������ZK�2]�����?�,Ma�w����9��b�iv����@ �`<������?��$�zԼu/\ء�ײϼ�D_��q�u��Wp��N\B=a��r�
�N5�P�:ː������EZ���JP��I��R�2��9���>���A��0�@���UhY��ub�������U/g�"y��3�����x���5��������~�C�y����ٷ)aW�	�u�ް���6�N��W��r��~t�;wD4�=;M�\M:����5|�b�Z��Ã���!�~C��X��;0��_ �	<�Y�[�3�B�y	_�,���)5�6`�%��u��>4+V�d�%G�������.�jї��r���(	�j_�/O��N��9�^��s[����B�Y�Yt�M��{�b>��,m*dA2�`�<a�Ջ���4��|lC���O]h�����b���p���P�������??�Y[MS��TJ?�	(T?�BK�*E���ÊY��h��;ȶ�S%Sٶ�+h�ȾM�k;*߅9x�h�� �6����~�-l3-v�� ��"��]�2�#���LM?�Zqt�g=CO�B��}K�[ܑ?b�#�L1IǮS�L�e���V��<��?��L�@�5Y<��z
c��(��F�f<�ʆ��ˁ��X�*�[��®ɘ��OΩGmM�7����q�Gz�ns�����T�xf8���V�SU�K�X������#E\7w�h�j�Yf�5�>��\�l��a�������̄	��<]X�8^�YW��.���_�Q�����-۸�Э��$��1��O���ɒ6�[��݅Y���������x!��w��LV�-�ٰ��'|[_���T�$8�
��[�C�,�0�.(�c��R��������ׇxذ;qJ�X}פ�I[B�� >�*zs�����R�a�E�V��-r�Zl13_#G�h��B~"��>�B+�
����Rb�9�F����ͪ)k��n!��*=����� f4/�?<i����6����٦g'���v���p���U��/�R���E�|��P���/�L?|{I���K�;{JwiF��,���t]W�Q�3iF=͛є���C��&�����jB�۸��X�߇^�E��R�� �cŦ� ���騁���mG�C"}�c���JpM��*tטg���z��Ks��5���ə���t�d�	�f�u�����2Ӂ
@@l{�˕Lr>�b�L�xYQ�9�{F���iR��ξK�BG!u��@�Y�&�P�T�m��L �Ց����9A1�{Y����">$�G�Z�&c��mƐ��C��VtC��Ԟ ����W�c;�-�w?7�Qa!U�҉���#��l �� ��倻�ŜsY*T�g�ѯy����&M��&z��?b��/j�sI��0	�|:J�� G���(�}8�F�][F�qj]�/�����=����p����x�Dj�$���gh�����W���p���ـ�r`��#��(�էs��f0�!��6{�U^�z���`	!�Q���?DƟY�0>E@��Zm�z�M^���o4�7�l�g 7��=	($��k9c��KL�����	�x�e���I$,�`J=�V��>:0/�9�ڌ����`���osg����1�t��i�G7?�j��z�ѽ':���O�v��aH����l����r�H1�x��ܴ��4�(Ib�������c+�D�`cg��wX�5�DX   .��	bP���1��:��ϵ���L�zR2P��j[�ԩv�O�YYq��������_��/�v�tP��n�_�Qc�4'��{%����1:����.X��pq�\���j�>?9�m���"��Yxl�ٲa�գ��7�
�KEQ���<�"]�}RU�sq-�M�5���f��2���#G�G��v�1�s=̿;��e���6�*Q�5����^2�*q�5J�&�� y��[����}�sHu�t(�� X��ھ:d�����~�OC����Z;G4�U��J��4�MV�5pdH�Pc�P`wQf="y3����=6^��H�@��t0ۥT�ת%�y"��V��"}���' ��g��cU��s�+��2Ո�3-��P���}����l��wt� ���J���:{�5�H��F5ߦ(12�Ii�� ����eݳ+B��-*�]̓�����$?���ְ�t�ױ��@�R���c���2�|���R5�؅N��ج^����ؠX���ԊL[�M�E�l[��o��7f�[vj��:T�����PG\�~�ޙ*��h!gѿ��%��/�̠��A�K��Px�F����rp�D��uk�`<��.���|`"����#>�w��x�0�`�B�/?�}O���ݓ3���"���n����㕝*&��9 ��Mg��+)b>uA# Z ����uw�>��,mS��P�#� aa���ɓ����{��9�&b�P/�����Iw�
��v�R����Y�DlZ/�8����l@7{N�I��/hM4���p/{H�@���Y0mT���!Nθ:Z�r/�+f���=��ʶJnB&횋�̄�ژlZ� �lҒ:ޝ���F�zV#:����'d^�����qS�U�A3xk ۍ���27|9~���A1�ߐ���m���%��eӔ���`2�#(��4��47���uX��k:WB��q�ځ Q�sL�X2�,���5�ts��s\h�.@����VF9�b�CZvƀ������g�w�{�#�tpk����Q����T��=aާJ�}�ݛx`��)J��]��)�����5@ksR�2����Y�O=�F��J��!��J�;�8c�U��	@���&����ޞ�NĄT܉yA��o�F���{X��K��o9'h8��i�;;�/x�	�,I�Ǿ�ռۺ�܅����	�@0gƏx�����q@�5� S��U��D���b�a�r�:]b[�z���hBeo�J��}����q+UG��wAF|-mդ�,�C���)����}j��yB��b�D"t$�18���V�+�?�@��������=�G�7�(#��SH�4�׸F]E��l���I^�T��Ɠ������D�Gu:h��`���qϜ2a{lO?�}�SA&�Qܟ00]���9^��1�~֡x�ܰ�c�cX]���G��^�� �/b���~���'ssܿ��>��k����$�f"5j t7��f�y��.EoDg�$R�����'?�?-j(�      �   @
  x�5�K�-��]����{������@:u��I��������	F����f��7��J�v��7��Ip��_�	.�K�����G�;��ך�$�d��p��nBq�"������$m{?�K������<2� l�����-�A޷	��!\�}	��x�'y�������K�SHp����a~�pv�}3$�7��!\&���d��,r%D��*d���D���7��$D���d�\	���2�%�&{��[4�߼�?�G��u��#Y�J�H�v�E���d�+���޷��%�&{��0r%��\	U2r�o�d�J��"WB����ȕЧE����RF/b��`Ċ�b�U�+g4K|�3����j�*و�4��)�%VT�K����XY�]ˢ�g�/B�t����FHb����k"*�m��㻾-�&�m�+�oa�}�(K|����h�8�&�w3n�ݘ��#o��c�w�M�Z�ї��أ/�6�1>��vQ�m�{�������
Y���I{F�f��!YX<%*��� j�ĮP��;�M�#��:�GyAё�&��`��_�f��l����<���7������逽����F���f���V������� ' M����+L�V�	���0
0a�f&��*ȳ�r�c�SpM}�ٞ0qa�Fk�08 \<-�/ \@�6�.8f;�l���-� Zj�	�^ j�� [�l}���Ζ�f��l����<�=!+1� �p�V�*�}'�2c�ǘ,���l��c�Sp͖
�H�3���Af+PN@�(P� �`�샹�p
���XA��χ�+X�k�
V+�W/��(X�,`-�U�\5XUεV�s�ӳ4Y��W�j1F`N1FB/`5�ta�]��`�]�1=��-qĘ #�_����o�V��78� ΁q� >��d;���`�Up̶��N�3��������ec v��1��^�Lr�өxװgl0㵯;��<@8�]�� `���=�>d����
܏0�1l|�qp|��[V�0� �	V�=�aL�`r�1H����<��Q��7�`�V�3���f*��f��_���a��l��>�1L�'���d�par���;�Ͷg���@3�-�f{j�e�t��s,	�v��!ap*̾
8f߂;�eB�9���:��O�&��
�CЅ�ta�\���M�@b�8�/��)p�>A8� u�}���>A�g+P���0
؁&cy�����M4�h�>a��[0�W�꛱O`�M������ǟ�H`
�s`�U�.<�.`���'�s��_��3��S�Y$�
t~��ߣ�	��1�$�@콽�=���'XA�� ���1� ��
8� +8��
�΅3&�yvɌ���L�s~�"�y��
8� +�L����@���*���.��z��g������3��/b�=3�+�&�Ɂ��)_����6�w���:��o���2@'.��ą� ��b�?��H`���M��p�VA3�.�f;C��ԩ�~�"�pa�V�T�Z/@��F���paq� ��b���S��?�[0}�+��3\Xi�p�V���!?�.��*���� f��7�W�� 3+���p!��#��1
��!?p� 3+�@FUp�ĎB�G���T��
��Cq�s��[��|k����������L���9�`��W�'��Y��x-���_�k�E3��a�\��ᐸ�*�*	݀���آWl�p\��0�pal^�c���p��06��M7ȵg�c�-a�\�Y�N��M7ȅ̀�_���+����g��{ ��ѷ��󊔂��s���s����p��!�X���b����P�[�A.<�>�
�`܃ Vg+x��
^/�G9��R�G�,�Gq�~��.�G�0M}��8+У�E��8У���7���c�Ȼr#pTo��n�]0�v
��n�2[���7� 7���Z}�9� \`�H̘��q�Y�	��L�|�o�?n�k�e�[�qYP��,\�0�m\�0
0a�1�?ƌ�
 K{s=�w\��o�6�+`1n\���y�V�	\��n�| ���.�+�� .V���^۞U����?�tf���k���2`�e�6��� l�G�����%�6����y_����מ}��'�>X�~b��gD~+�뫿[!+q�)�7�+�V��!����0cpT�|�-������9�r;����a��ʀ�aH�O؂�����4��}N*ಜ�`# �V��as���4��:�p+H�� W��[�uc�0�=�G`�a{����0�=��9���RF��a5H�����wFp%�aN����N���4��:H���4��JL���t���r^���m΋;=#؅��>H���IϜ�-�O�FpC��.�t��'$������g��t~L�.h�>�'$S�n�N:H��⤃V�I��-���X��?� t���<�Zr�C�L}
��o����|��?+�2      �   ;  x�=��n� ���S�	��sl��I�HQ,��^(�ګ`� '�����f��j�`�R��X/>8k�0�6RK���Ym��U��A��հ����t[M��"�
�v���3�a�
�&v仉<2���WrL~oh;'�~f�X ���uQVph��Iu����@2�-f�#��l+x��-8Q��ݺkr������I�����	���o8�S8>b˅�$}�
�=i�����#͞�gb�>�KJ�����Ⴃ$�@��ڤ2h���shʴ@V@�Ǆ�e%4w�dW��=)�O�{�6�����o�g��/K�)      �   A   x�3�t�,�H-R�,.I�Up�/J�,�2B�Up�(H�KIMQ�/�I)�1��/*�b���� ���      �   
  x��X۲۶}�� k�q2I�3�i��I3u;���"!9 � �d�)ї�^��km��$˩['�$� �e�����Ck���gU�S6Q�hbR!*���fk�c�ɶF��(�v0�ߘ�}�g������§J�7��X�5Κ�
��u1m��;sR��w7q��6k5�S�٦��V����r���|?&\RGq�8>����9�Fg�Zs��;F�Q����䌟�7��w��SμT�}R:5&\v'�	#,܍n���svo`P>f�!����?���0Vn�.`#��<	F4��}��,�ب҈z��;f?��?�0���C.��A0J�5È�:��	�Vg$��y�d��מ�2w��p`,��ҽ�mB�V[$;�O�@7�Ok��5K����I����n��9
q��t����? ���Dٝ$m/q���A�(ni�B�d`H�xS�AZ0��(0!
'e3у$z�,8/���"�%��Bd����O�I��/�g��H�Z2w�;�K���V��c�g%����1�_cM���ζ��ز�m8������@��
��%$hN���8��ypAA�{�O�E��h]T#₝�͒��"�PP��4꽭�|��<���Q!�,ے�J����&X6�+�b�s>:��0yL�M�l�$0Zcڊ>�:=�+2��.������4��~�z��×
|U��`ݗ�2ގIn�N�	�n��۽!������e�tW�M�W�[.ˮ��ì�<��?�)��-�L��@n'M+L\�Q����te?�8�hY1�$P��F���~��m�#��$�r�d��M��Bv���W��Ɖw�.`�f���^��V�����V�������k��j��O�&��>��IP�`M�bēH:%�c �����'�X���m����[K��"��aDyۀ�j(d'��1�ee'h�N�n@����ß��yM���Ϟ��O�cI4��� }+���g�;W̕J`�G$��3uǊ6 f�P�U{�okS�v���;%(4����@�8`0�Yʹd�*�2[3�"��ѐՈ�SeCƱ"�LE��>����g���{Ѹ}��]I�]�Ŗ�$��y�a� )o�zKn�>	\�G� l�_�0K�q.U����Y��W=1��E������YZtL�/t��3q�5;N�24� ��RJ���ec`��qKkΓ�F,wG}�a tm�z$`��ԃ%;vAT���Ou��P�3�*�z@4|&ܗ{�bN^��a���%���ѱ�q#k`?"�@�Q��1�P����-P^ڶ�M�\Q��1�($zpN��L����JOJy!GS�@�iI�.��S��u49�0����r{�Q����`^�		�9�Y�\�0 Ή�M8�7dS�!���q���ଈ #A� b�(�����g�> -	�/�]�	�-;s.vW�v[�$o��-����~���]�����E5�/����b�]$�I��d�uђe
�TEfyv���B}0cR�K��Z�ڻӏ������n�;�����VՐ�OV��F�WDA��b
�W��"=J+����D�%�~��������4one�ې9�	?�ɒAK���P^�7G���=M��l�v$�%��-rs��w�`��3�Mc��H/����FʆL�G�e[k�Q�V�<u�F�s���I}i��HC��p� |�ϥS���r�[TgS�_��F`
[L��;��=�f/2���	� ����/�=͖��A�$�lt_��P)���0��sh n���-�*I��.Ѥ�8����+t)���L����wH9���\{��+�"��~����(����Y{7D���仳42?$Y�3�b\�&X��PL�S%5#<Iun�����.���z5EU:�9�	B����wk�2��A���W:8�!K2����HF������R22IJ`k%h�Kxl������K&�F�+//��%d{Έ�Q6*.����X^���#{a����Rok�$��U{�~;y X��!�`�,_Xq�e��yw����9&��r�oɖ��[
�_��i���V7?՗�&a@�\��v�� ��L�g�5�$\�Ր:h-��ѕ�^��VF7OҴ{�>B�t=�����C�t_LJ�)s8�����V�lД1S ũ�V�|m�DǴ{*^��@�`���d���z��Y�[�ڭ�ֈ�G��h���b��p;2��O@�j
�t�O�K�Dh?U��2���(B��V1MG��B�v���D���l��
Q�`��S�.��t��xh�-�t�!ɔA�����$ ��ԗ�4u&�=����k:��h�0�;�v&�B����!�"ag:�&���hP�N��6�O����m�9����b4��E�����~�gj���d�9�c�v{���boĨD����cOp*�4#����c$�ֽv|O�N/��RR!�&K��C��l C�bM��41�fu��?�/�����T�e�:Y�
qH�ț�����We÷���o̺�S��º| �7�gϞ�&�e�      �   *  x�-�[r�@���l@��.��9V�=��d`FS��=?��w��r�Qz�9��9G�9�(+�e眣��s��E�D�STj����߄p��Ϸ!���U�D��UB6�"�	�GDCxD4�GDCxD4�GDCxD4�GD�i<_@�#�!<"�{�����������h�Η;��h�����h�i���g�����1���gf$�gV�A�1��!�= �='�����x
��<3_/���c��x,<}�>D������g���@��x �l<3�|b1��b����7n��o�3߸-f���f����7n���63?�mf~����ౙ��c3�G�BxD*��a������/&����.bs��O�@���t���9"^Hf��}o�#W�{�&r��<|}����./y�[��1B��
÷�\�#7{r�a�@��t�O޷H@6��/�k^���t��Qk�5�]6`��uޮ���ZYǯ��jی���h������$��R�7��ٌm�flK6cc?o�v�l�~=��m�f�^o]��7��l�>d��)���:
��xn�{��n��.m���vb��W/U�I^�Aau� c�z�7�h6
z�J�J
��]`��e�6�`�(�`�(�`�6��#/ؒ!�"#ܢ�\�i��M�,�覱n�;�i+�|�܎tf3ҥӮ^6�n��H���R���s��/o�`��>�o`��/C�E]W��)~�h���2�m�uo���l��8�u���>�f��E���%�G�n��WJ��4�      �      x�̽�rɱ&�;�)���h͎��~�?�w���`�mgF&K�@6�P]HAc�l^c_o�d�#"��"*�(�hM��F~���w�#����?^3�L�g�Δ�B�?Y�����m����?��O��u{�ӳ�������o,B���3i�6F`�0�m�7�/]��^�_�'�x��7��[o�����/�����g�>�jF��V����z�ލ�E̞Q1���U��f}��n?�qY�Rf���"c�g\τ��j���fq�Y��f�g3!�!�s���I�@�f�H����/�o�*�M�����j%�:&J� ۙV�Q�Քƨ���3ɩ0���n��~��_G�,��♔3���~x*&v.���L�'kfE1�6'3"��rD]%�13 ��pD��:����/ ^�	b�!i���|��3If�Ƌ�ۻ�C��i�6�>�t�,Kܷ������.s�ǌ#�3�g�uֽ���m�龵9	3�P �f\)���m��=~�	�3��))%��RI��[���~�|^dW�b`($/e���}�^� x��3bg�(�"V�Xu��d"~^�f�s��w����}����9C�gvRRA��˿w��7�@�U\���zլ7��u���EA�0�qU���E��������!֋5]��{����҃�!�����6����fu��N"�t hb�I�� �X��)�D��(�Mw���u!&Fa���v���#���#�cz���dƭ��}P�ۻ��b�gMӤd�8�����߶ݺ�`p���(b@@�W" e�.�M���iP��Y"�gP��?�ߺ&G<�N	W���o����[f�"&M����XΝ"���mV�<]Ŕ)�T��~L�n;���+qH� ^�S���*l��ɽ]��i��Xʅ[?���/�n��C�b�FqX�c.�������<u�pԈ�2�adj"���� *������S�����cF���	k ���<o	?���c�+�uY}hW��~�-�NA@Z2!�g�����[ty�&�0�a@�����ۛ�,I
?�n=������
T��?�|ȂȘ.)���RK����+�E�@eL��"M%��4@�W�ݪ�l�1qR� 
���\m@g���XLƤ	�Ϭ��+�� W�U�5BdL�����x]����n���eL�T�6�d�Ā��w_rt!c�@ࠈs%�^V�`������"b
nfJ)��n(@��dm̘:���pF�e�
�s�n�6�1�R��ՌiE��p��?w��6/nTB��,��{�&�m�*TL�l[=c�-�� �V�mT1]�f(�����f�ij���(Q��3�����2 ��_������܅��7�����e1P�A��,ao�]\/��ӭ�?@x ��)km>���t�z������g&@-Sl��Sqc"�= r��m:���_u8���A_2�h�yf��6_� 1����.8\(���6��mW`�u�������p�=��Gx&&w�,**$S��s�V�@�� O��F>�;���|��e�/G�1��!RR��<���Ѡ�Iڼ���t�[���1-;<s�Dw�M�u��儇b����*����D-�"��	I����g�;\
�Y���
�ǋ�` ����j�/��P]~$�5� ��\|��Z�����;vC8�h�K�����/��f���7Y��ɐ�R�=�`!���M���_�ԯ�U��x�l��N)U].���~�6����k��,����wCS��=���m�����n�U���Y̷�f�t��	���k�TŠ-U�ߴ?Ɣ&a�\½�Ƌ��4�"H!�:�N!�i��N݀����$�k�������}����8�"������߿Ƿ1>h] �4���sv�� \\άd�ͽ-<J�G�ݎ�A,Elw�BY�6��� fz�9�z'O߉>f��j2<|�;E�N4og����2�������y��<8��*~5G2Vi�Xx5\P-��l����c$�x�-����Yo�5ܒ�EN6ZÀ\Q3c���9|�] /tߺe[_q���MӦ��ƋdUt[�JXؙi�(N�_��Hx]a<I�P:��3�HD�)�}��[|'�(I�&�h���!�ʄ=5:C��P"d^���Sj`��<z��"aA�������r�ϼ0�T�1@����/xK����o�"�7E,
^��F�V�H�GMʊ��G7h<3N�.�G�&�m0��8(o�\�҄���;R{��4c4�p�A�'W���3S �0:�D�֔VO�������3N����{�@'<mAɇea��8fx̿���f`�yCk�,���-�V.|�>�Y �,�32��B�<��
�Bcp*�����1�:fs(X�<�h`��� 3C-�g:�v��,
�./g��DB�c.|�¤f\�Q���S8tbv�Ԃ7��o� !9��ߐp-XNbF���>���t �0$ï\�`����0%{&
�y�c�%9
+k��a�� _��丯�h&m�*�O8�c�AP��$V ���@eL�T��H���	s
<]aE�	��G�	kJ����`���B�	[�`j���=��l�)�	��on���
�����Y�����Y����*gyR��v�D�w��~y���"쾤��wm�Iy¬NS���r��qݯ6��A��E{4��!��E����Z�1���Uj4p�c���-�:%6$<�=�kPܺͱp�ǊO��R�!�	t�/�o��}Y��˄D稢�\P֯��o۶�����|�Cc�@`*�Q������K����,�5���0���,�|1��_��z��7���~��{��_��З}z
\��.����f�n���Tbs�>�9�/��V	7�j�t[s�ē���B}\��iӡ!�vY����m�M�����uNɘOdb���9��b�P��ݠ���m��&bP��Ԍ�2(#���Y}������,6�	S{����C?/Q�3O�D3Q32�^a�M�U���4�gJZ3��p���,��m~�D�HTS/C@�x�Ϸk�������[��l�Ez����8Iꠐ!��C|F�m}�p�q��*�1�|A�x�_"⽇o3z�ہ��e�P�IX'"��̠��W�G�U��1��)����z��������M��u��[����J�+fX�q`B|_8�E����%�z��'�r��ĔJ��H��~y���6����+9��	�C���ޟO�]*f@��_	P�dH�H�^c>v}��[d�M�<��Fӽ�����K�جз���� �v���>T�V��v㯛w��,Z��K0όy& u�-��k0���^ח@i`�Lܮ*��]j���P �]7o�k��CcV4���@�R*&}N��@��/(� �=�$������W^���]-�uR���}b�Og����� ��U�i�o�Z�c�G����2b��d��A���/�kY����ƥ��B�P��WߛU���1�# ��Z���J0��Fs�/�c�..�搇���-���R��u��W�,�	Qb�����@x�ま뾶��ױ�*�3�p� K��b��h>�G�i�T�g����>j�cjU�\rջ�A�x�]]O�:�w���O9y�������i8����\`hD����7��e6�U�*F��LL�X `fڂ��H���u��n��y�/R:�w�7J��9���;�A��k���6+�m7Y��$���
�ځ��C��1J�iVs4�P	�[�"�ld�����M^Λ��A�9/�1>Wt��.L�D<^���|.�s�=��z�UۢI���	��.1��0�}@4������蔒W����쏖vx̘䥻�$3@�VW�-��]c|�7�m��#�{�B�0�W��-\`�X�٘�HHLq��Kyu�@�XS:��Isq��ý���U�@�wy��1�K��L�P�~��o���n��q    ژ�N`��Hoԁ~ ��vk�� ���1�K珠�3O��|j_��T���&,`�3Ē��j����N	C��u��v�̳�v���|�/��cϗ������[+LƮ?uwY�v����$��,F���t�KEo���a�su��P�zz��7��r����Zȇi�*���'rXX�[���\���;�m@$��vE�2wD��GB�l�_�Ţ}��6PI`BG4�=��\�n��X��b��p�����c����t���0���l̥�X'�C��u��0s�C�4�<�
��a����(Ȩ�3����6a���z�w(e<6�tz���B���@�D脕��23��P���YNA�Y
�xE����4\3�/3�L�N<� :<f6M�r|ǕE'b��'��rf�^�J���-[y|�l�2�!J|o�}�Љk)0�L`}jWxs"��q)Zo�ZC2��O~�?���X:��� A��t����	P0�v�3W��K>��� �p��B+o���tq��o�p�|�_.�up�w�+�<�MA��Ô�*�q��v�0e _$�1 ��_���y��i����fx�o򃃗�F�w �s��f����g�-H'��'�O�D
sS����U�_�p�r-$$�Tc9�	g��&J[~$�q"v�SS[([v�	v�[n��u�Qs�;7a8��-6Fe�[���'����z�������7]� �����c�׉�H8׸�4bB��1���W$���ԙ���A{�OD�y��۠ޚ�Цz�Y}�Ig�)s�8�j�/��^.��\��YZ�T�M������t[3sF�VR�GC+�)��&g�3sVH���+g�+'�v�Y�����	�oa�NC131�rτ�����v�F�Ĝ��$�F;)n�6�)gT��r�_���]�a�T���~��,:=R���Qϊ�c>��"
t �ɑn'��\�ɐ���Cq��D���0�B��K88�@L�D`����T�#�1b�"��T	-�2�C*<��Kܪ�D��1mPb��{��s#6Z���X4�2�H&�(0H4v�����T�Ʉ%�(���2�lI&�)�����T�_���t
%d�b���N|C¯�`+o����_�p���D��B�H�։�H8X�.J���u6��ר���k��쐮t,���w$<-�&�-|��9f�Jە��CB6�cyQ'�/ax�	`��J��K�����}W6��ÞOW:�-	�;5�+�]�SYL'�)a{�̂�����xrӉ�I�_a/6�w���9�	�k�K�0�>�9s��]��{Wa���wp��7��a����v1��-��̏ߐ�7�)y��r8N|E����	1��b�Q��	�kl�h�!�`������A����N&�~�[�6�	��]<��BO|G��X��֤��s��_���k�!�1��~��O'l���Dg����$�m�pS�����3�sl��'��x3iJ��1�b��$ā٠����µ��b.�>	��P��3�>`zn̘?����ߕ�nVM���h�'���(5�̪����F5�+9gc��<Z�u��`1v&B�H����fs4o>��l%����\�� �����esM�'fLx��u$Xl���a�S!���ʘ2.�~�������t��;��̣٘���)je���B��:�5P�v^!-�	U�����Wل�]�P��=sP���m� I��	[ȅ�h�z�/�l�Q�)�qkB�0o�-������dg�����~Z6w-��/�R־��V(��t��������?��.z:|�O;1�ø�K�?�dC��[�z���_�0-ʇ^�0.�1<i�'���=�}l�O+0~0�d�ќ� eS(W�&M�
Gp�������$7&ti�Ug|l�����\��DS$� �4�.�R��oѷ��'?�G�-C�Ce��ߩ��6 ��w�o��6˃������5�����ׅ��[l����������x-�k?���J8����y�O��4S��JJL"% 	e�D
'�,N��p>T�g�F`��L_[��B
�Ӓ�i9j+�~���=�!����?��^{����#jQ�N*x6R�J��S�`����5����~S��jJ<�1��c���7��~���ĥ���W�q.�Й�9�=�7s_�XXJcL���hN?ԗ�>�^r_���Č*K��'r-�@	��w<7���I�X'����{���LV�E�H;�P�Hg�Sc�o�T��;�.60c�Z
�5_�+����p�*� ��d�\Z̓{�j;�c�omX]-�M��>a���R����O��<���% �>������C�Է$�q96p�G�8���3j���ݧ�w��ñ�F���p�C��˿�c��r��#Z@�������V�;H�!7�s׺��u�J�d?�&(*���#,�=Z� h�Бd�Q�^�����x�k@`G����8V9mH19v0�@��(��C(x�m���,I�לa��C_��m3ϔ��)Ν2Cg&.����=����G7(�� %}�3����:� 38 HL�1��A� ��W�	'�n\�3cP�QI���'>$au����v���'R"�s(���/y7�H��zD�#�'ôC��u�؍y��c��:?���8�R���X#�>dv(�}Ӓ	�8�r d���A�Wm7���I9LM������@�0��S_�S(���B<)l���8҃�F3��l~�o1T�n�>w&S �ZQ��!�b9�#���H��j�1��s䆬4��V�y(�B��UJ���3T�C�;�H��@B+R���U����> �Q�,4Cg/nƉ��R��Q�x����{�����z{X�C7#a��ռ���D"�\�H�+�wyX��t�G$�K;Â��j��w����eг�`�s�g]g8�����?f�D��ംK�wO�,D���2�D�a3�B���o~��m'�f\�F�0�GT2�<@"լ�)�C<�Q�fc�ȱ��<�ŤW 1"����ٹ �f������}��|��
c|��իn٭oQ�N:�D,� �c�)�>�$�g��+@�?�ԋX�a�&
�6S�������7^�/���X�a�X #]�LlB0���X�Q��όfԧ�a��n��\��|��%��a�r�&���e�ME]��e�/8TD���"��ԋ6>�[9:�"�ϵ��؝f����YN�7	s�+ÖɡŷVK��L�s&�q�"�7�R{, t
t,[����,��@Q�~��W����a�
CI���X�rլ�<mA�o��b��]<��!mS��U�м{_Ų��9�m�����(;�d>:9���;S��Cr&-B�9\�2S�)Ny�^�T��e�^4���%�����X���>�C�Q����\N�c�D\��Y�
�N����>L�CTB�nB�a�R�P�Iν���[TWbhZ+xtDae�yDW%��@Mg�S*��� tT,���Hō�=P��ɵ���ӹ~\�L�6BRo�kR]͛��R���6Ӓ{�HS �.�7>=.�g��kİ�E���б��m��E��(��ۡc�� ��)64Y)���@J�j8�����_���-/�`��D�c�-$&7JW��F����M�c.\W�¬:-��ۍS���b�-���]�<����b"��Xb��Q9�F��ZWo2}�@��#:pS��6�+�7
@	�1�ҢW��@؀��B'mQ�pn�O�4о�GA����<Pз��6X�٬��*L�ʮ�X5̵(��=�����Ur.�2�%��+w�S�xB5EH+%��Q�^���ð��������H}A�KY�RW��ǜ^�p�*F�n��lR�Ǜ/<�y����[b�l	�3����k��f�]M#c,��$С�cu��vu�PX��v:jT��ń��0�֙��[� �1�:[��e���!L
����z[�`���u���ab-6�N_��Ⓧ�Du���D\��(���P    q����-��/m6Sj��&Le��A0��m�%��n��e�X�G�׿/W����������UN�c ��&��遨�Bi(f}������5ض��𩍹^��ؤ��fÂ?6��5R����˃�L/���pJ�Ro1��]b���U�L�o+)������m&b�6�z?��pa}����4s�����z|�V�[�����(HL�8�䠢�g�G�%����{*/�PmY�E��&i7{�-z��l�Ϸ�*�����"Q2��%\�&ִ�GF�O9��K)5Z�.��j�A���-��#9�������v��b\P2�`�?��Efq~�N�1.GP�	�&+��Bp��s��c�%������^����oW�#@M�hpcQWV�?I��PYUC8�����(ʱ�(x0���x��k��wy�����?^L��qf� �ɬ��E����;�7�r���+�+O��w5�����i(�B��g����Ǿ�jhU�s�?����_M;c�� ����&xH����ڶ5*�yKC�X
�z02�<[|`�r䔊���eHQ����$Oc��]�f8�a�)0�P��[�`��0���a�D�g�S�_6���߶��	����@�ғ�rJ��b���B�P���rv���l�����u��ѯG���XF���i�h�ͪ_�`���G��"�.J�yW�ݸ;�����ɔU.��Q�2>�=��A��7]�OPB�����z���G��&s�^ѡ{k�=1=����HH�E�đ��Jx
ˀ�6>��i��cT��b�\si$�ɠ��a/�q J�PG^]�pX�1��A�1�+6�E��֯ן����~qtH@�1�����	���K[�K������j��M
��s�W}` �������/���06�F���c?��j����L.���$��랃Z�;���9|�q��#�AR��	c�u�v�/k�̭�?���y��g1��,nbuH,7է~u���) �=S�4�礹�\����,��au%�1�3����i�V��t�=�ry����J�!mHe!Ջ������bzǈ��ɝK��7@��'H"&q��(v�Ua�\�W�%�����k�
Ӭ�'H"�u��e@0������-��}Ev�B��ޅ�*cF-�l3u�x���OČ���,��6LE9�'�"�x�7"���׎[OB�]�f�-�J�T�N@cF����X�߸(2�l�=
P1_H�ZI��n���3����k������3�3����e��~�=��R��C��r�
�ja�[��Ǭ%��H��Q��y�!	�1a�[	}��QuM|Wmƥ�j�ς�>O�~�LT�
	�ٮu�e{
�Q����)ֺ=P'6��>�!<`��u~�B��I�Vo���f���(2Eq^.��I�w���2N��U/ 2�SA��؃^��7����Ւ|���{� 9�	<��=tݫ��k����n�j�A:���K|v���2	����t��l�#~�f}$�S�s"=�g$P�BW4X\���h�h���Bc�nQ�N/pE+o��X���$'4Xɲz�λI#T���I+��#
<�ry�]5ǧ�q��Q�3���-q􍶱��wEqװa{�S�h��� ���32�w�1��B��s����A���TY�:zS~4���u��բm]{�W}�"X(�B��ǩ5��!X��-\>�t=�b �}Z�X	<f���56�t.WN�<�9��2T�{n�S�oI���p�e��~@s�c=~3�X�2�bDs&)\�Q���b�XʷбƘs
7:\�Wp����_~�sJ��X3vǦU狈��u�?�7(��L���@��+�(cCDਖ�4����[�`m����`t�q�l6�v��p(�����I	��e�y=�3���0�
�0�uR-'l��P�o��+��>.�<���|`n��V3�l�6��4_���@����P$����<�\�NC����T�+kp��Dc=Kq��qf AN���(2�S�ħ�pl�D}�ty[%Υ�+�}u�zzob�Eу�C��{��ͷ��O���{����o89xr~o��p��m�2wt�5��+7�[��??��b��u[�o�sP1� �L�䊛=XL��IBF�2_t�m�n��{58 S6�j�X�+��V�q�4NL����������0mژ�}0� �S4�^.p��Ҧ�)���5�}�I7 ������?���"O����'�Z�Hʂ�=��D�M�\�a�L�%��ҡ��$?x��%���W)�`�������%������!�����nJ������*�8c�#��g%-	>��_��Yob���1��	��hD��u*܋v�!Ē�ܵgOhMu���y\o���Y9�9�@T�τ�u�e���ĀsZ���.�d��n��q���+F������~��O���Y�_�,���M�>�r'��bFg<���`���/S|,倫y�t��(�椗��%�̴����6!;�$�X`������>swH�oBj�I��j�#���#%ڃ���t;�8��%�}�ţ_ |���҇���J"�����U��5�lb��a����=�M�ޔp��H(�4��Om��6�(aqW�MѾ{��z��)�v��DQk�����o�z*�[QN;t$M��M��48�a��������6�4acT �l�2�G����r�*j�
�	Ӻ��nf!�������	Iu���Y�����x�	���ʼ���;�-��Vm�G-Y�da6�"V���=v�Ž���.����8J���92�k�@����Ε�ҩB��K\?�NvvE4��I�j@c�k�*�t	es�<�,cN +;�&�o(!"�
��0�z�,7���$�B�֕�	nB��SrP�C2��������e3I�#h�w5�C����:;�mR�q���j�z��]��2�P6��%���՛6�A�89��g\P�s1eu��oW@d���cC#�ƤP\���כ?^���f�p�9���C��MFUD�4f]������������9lf,؏�+ ��n�Pj��my��ȱ����~�����v��۾��/��aW����b�8�?V�6D�7�������-���y(��X^��yu�����9����D-�\#�p�A����J�<�q��l`��KQ]�q,owT:8�c��H��$��f�,�SRJ����H�� 	:$��:DBܮx��v�x��.{��&�Vh|���B���}������ I�&⢻�<�������� ����~�ɸS<JB�X��MK�bм��M�%!a7���U���<�y��n��%��.~�Ʌ�*0&˃�(C�K���7���v�m����`�Ɩ�2Ig��@�f̧�¯y�0�Ac�{=�[{ ��)�}�$7�R�9��!]����tN	���#0f&A����X(����l��)�4ܘ�w��{/N~�L1�a��!9!A�{��qP*�rmv�ڑ!c�]?�z*�$��q\)�[<�p�f�nR�ԡ'$�� @��B����f��g%T̜)m@�P!����O�J����3�¬�M��aZ�M��P&D�>��ۯ�)�T	)c�`�:�B4·��2O%t�:%\2=�&�������>��2s�_+����F��i$�d����.�c�{Po&Q"f�e�TI�C0�c���!�ЯD���!haWw�k�I�׵��x��8�ղm&IW%��"S��vs6`�l���N��T0�	������M-D'T�_Qi���֟��n�h����%��客.�`*W�_��"(qZ��Tu��|dLCi�'r:��(�`������K�*umD��֣<|+�*(f(Q���)<e�.�q=g!�rvoddf1��sި���VE��@Oy��Dh8�H�@��lTvZ�p\{n�t� g~��G
����������FY;0�ޑ^���a�S�Ar�    p�EH-$��������WS}��(b���1��Tn�/�Xq�]N�A���� �1�B��:t�\��Xc���|6��F��׆�0�'��<��˷k�_�_*c<�J,�"�_բ3t��_������T��%J��(�nj�yT����QwYW�@�%��x�ˈx�e3��d_��Mh���{H�{Q7���͝Ua��CO�2�d&�`�� <L������/_`]� ���/�x���8����u^u7��Lic�m@'�&����\N�$^�<�b���,���C)���D��||e��,c���H���6lŰ�dF�ƾx�_w_6m����&)�
k���E��>o�����&��E��f�.Â��V՟��n��H�g�Y�V�P�v-��i?p����JS�wtQԵnO�0"�C��:g��&��Q��s���1�����c0����p<��&�����M3��NZC9�W+`z6)~Ͽz���lr朅񡌨���a� 6t|Zo�����(Տ
�̥���dx��ͪ��̥F�~Gb;f�
��������frj�%�(�
��L/oMI
P��Մ@����v#�A�KV�j�oP���I�QZ�F�4�coGE�6N�a[���F{Y����Ͱ���?��P����b�f���p���v�?>�"�F�|�g�9����`�T�c��Q"�o����c�Aj��^�bϐL!����#yQ�F�{;(l�`)���u���H�(gʗ�F){й����tT��W���6Lt�T��P�|ưsy =�5�!=�R�>^Q?���J���i�3���"\F��aZ,���l>�y)IY�jzA�6!T*-�kV܆|/xEy�&����n-�T�0-1��ˈiH�@����Gs �1�k	�9��Q��jj`}�nV���&�u�!�0���wH%���d��nY��r��A�Erz#�e3V���(������|�.��k^��X0S��Sq��8��\��U�W�h,�)���ڄ�BI�&��+7�s�U�b�<�pfF�
��st�ݎȰE;���D-�XPR�ut �����+�10/$;���L*0�	8�*]�;�ɂ� ���J`>S*��Pe�9g.��c��ҍJ���L�-pD��_?�"l`Y���5�⛀�v#.��M&������*� ��(�ߨ]�/������kՒǋs��knνW��*��}J���0GU$�'L�3M�7-�q-��?�7�X�2�8�ң����a~�O��Q<��°Նo�y�@ 5s'�6X[�y�,4��p�ۛL���3<�3 �)y�|�g�E��%�ð�ř����
��~����u�{=���Z���y�-8a´g�����+�{�\�w�=��1�pQeiE轢5 n��v��aT��M��<�WSm�*�n����0:�Qxckw-�lh�P�o��9y�I�0�e�nH�7	��#���1�v�\�Py�U�#\�?,�X�XJvE(���u��@�%�iL�Eᴈ ��C��zݹPr�G����ڽ���v��r�0?r��HHJ	��9�.��*�9�Uy�|���b$��@9)0�H2NCcqv�w���~�j���X��ﰜ��e�Q��l�U?�m�
x IL[����ŀ��k�?�v��v+G�8\��
R���v�*�T�G�2��/?�F�p�Ѩή��ѠG:�	uv����u}8!�ߘ�E�p�8y��
Nk�
]���~F%�9^��`F	�ƕoa�fO�`7���@�@L���(u}��0�X�f�	aex�K?߮3��@�1&F�X�������(%���B+yvG^Eˏ��I(�Ȉ�u�D� �o%Oq�ϩ���]�ء�Qe�6y�!���B�2���u�ˣ�#hr&@ �|��gq��ߔPz�K6;���f��K(&�̄$�+�B�C�7�e�F��Ҁ�3�J�b��o��\����1�FA����unA�?����n���P&�sM2$c,���j�8�x7!ɥM�����;���Շ�-jW�Q���Y<Eb<, �1���{������R4�3�J2\0����)|i*�D�Z1�]�@�ǩ�*DU$R:g!��J R�)�lv�R����E��E)�U�L��9����Xp���ط��tF��~��WXe�<٥]�b��4��mV���M��`�zZۘ�7+Z�h�y��Qf�3����[�*�J�#��A�����v�xlWc���0�S�PBFX���\ ק	o�ϫ�*��)	K��?^�%}^4��u�X<2WJ��*/#�w���.�W݄?T�"��ڟ���*4�jW�&���%�+Әi��y�O���ɕ�rz^E(�S*[��l���K��9ۑ��'�������@,���p�uAm������b&��3w����n�iV�gb�g�k�+�aK���f�X�՘�5����=�z�Xl�e�&��.;J'����r�-xh~������溛�Q:an���}���A�ݬ�,�I�ۢ�a�� v����~��(1g��J�Gm�r\�m�[���=>����l�}I9��1�RV�s��}VL�������a����ܕ������Ĉ�J�+��2{2��"�cL0% �����8J��^B�X�p�~B
�}����iJ��z�a�=��9V���v�Q�.���z�P0����,��e�zd�2��(lʘ	w<U������6�0�����`q��T�_�oVSZ��6��v��	P��c���I�՜3�������v*te��;US,��f� Iu��]��n���!ބ�l�^�E�U����
{��m���E8�?����#~�{���X�
�K�_c�+Ghg���0�ŗ<6�Q�u���.p�\���~�"���=V�6�8��>�]���r����IM�F��M���Sn��z37����F����߶�ab+R@��&'�$6�j�w���$��d��e�bOފ�4�dm�sQ�b�C��У�Ǯ��Ə��Š����c��6k�;ŚM��l���8(����r=�zXqp%�m������&@D�,����2	�	I�$��o,(�[-�m��4�1�� F�/eLa ��ڴ���-fv���B���N��2:#F�����G�T˴��,�"#�	���s+�/e�k�)��B�	�BS����tu��OL��$�k��r��0�/���L�$�L��rÆYj�O��b�|Y�D��$��`�ᨊ����r�����ܘq�H�Myl���t�R�H��a`�����g�KE�3ن䷫���'M��]���$|����V�Dt�-�b�]%����m�Y<�[4���"��d{@~oW_��G�1�n�s�>�a]��D�E{�-�]1	v�S���]&\F�PdܺS-y����^�'�3P�	=���x/�i,P�w�pҴ�d���[McI������`����}���y���t�g�-(�܌�X(�ҍ�њ�0����JZ����I"�n�� $�@6�͌Ŀ�# �b$r�t1�fA�����#@�3�v7��׵+�~GG^�5�����y�����=��l�X|b̍�B�\��:Ꞑ���&�3���͕7��x)�������x�n�(RD� @_	}!����W�n����4�1�Ĩ�R�dף��1o�f*��ƚ0�A���{��	���e	L�@a���Vl�<a�k�H�ڔkNt�D; ^=�}��)5K䋛a�Y��ݖ�v&���(�!"��(|J\e��C�:��~ �3�>&�3`<���O�7��4��(=6���I�i<�[��@�(�&h�`�[{�ln�7\wT�c�ǆ�ҠXH��{�y}�]��;���`Ԇ���U����d$���]���Ώ�5J�]e�������`/�<^,����3�)*�dU�y^��H@St�^	���U��>��oJMY	���*��3\���.�r8��D�< �w���t����4��{�����R�Y�l��o�)�o�q=��QaA
Dt_���n�:��    m����C�4&uuٺ"�9��y@7�����V����"W\��������[���W���#-baĝ#�q�M�n[�	G{5�e���7٤-b����-`�4K�fTu�y�=��}7O��,Д?+���e��4�Wm��z�K򸱐����.6�~Q�
�����q����5.�a�(�~��pѮ?q�Qcƙ�C�$��$3��1/�u�����X�rW?�pβϱ�`��z;������}����i��טU���i-�Lٲ�K�\�A�e�"���m���P&	it��(>r����H�h�D��]-���0�ZT?��U��|BL��ۆ.KL�*�nM'2)�a�`	��W*�b�M�o����V�x<�D��<8ȕ�^�<��u�09��A�o��k�ր�lOYK���7�D�+�3&�L����{�j��ev�^��h�(��PF�����2��9��>�ݩ]@�2�f��T�5&i��7�)��ay�I7��*�g�0M���2_(�|�W�p2��^i��0C��Ԛ<T,��B%Ub���m�QZƂ	8N��5�<l�ˇ|����`n��f�����<O��D8iNL�G��o�-�V�LҮz{zUL��i����Jd�q}�!�*���gNx�U"�֘JI���a���}q���z��xY�kD�e�׶,jO�g�gm�`K4#2�1_�<�An�DnZg�j:%g㚖���*��Yڢ�߮6ջv�n]��U�����?�Ϻ�����X�J�f�Br��U@��/�f´Q���~�zF-�R�¨��<Z,n��@t��`h�j2)]�X��B;��v,p-g'����e- r�� �[{4|aA�ƺ�Ҡc
�_�k�����2�e|��0'^�8P�U~�t�<|X�D5V�R23���#5�z�-A�,��>�����c	�~+3br*�a1���,7���Y�o~҂x��F�PWL`G�
X@����ŷ	��tǃ	9�Z����&�o�T�úC�׌1&�1c|׻�_�O�R��	:��ГAW�W��[����B(,qp�_�����o�κ̡|xą%:�C��$��B��Y�r"���ʃ`�+ס*�dH�
�)8ù�,a#-�>uK�U'PL"j�8cݫÖ=ܦ�0&3���l�v����F�X�`3[Q�V��Y����7� {��`;XY�].�o�;1�F_����NfA`-1 9��'3�K��na���Xſ8�,�a��H���_;�+�'��ǄJ���������aOD{�c�+��l&p.d`+l6����i�&`X��q�)W�58����nQ5�c�r����^��z�~�ϰK۞(:�&c�dGg�������V{��B08ƣď.��z��-~c���m,�8���H!��O��lpn�b�.'4
K2�M��q��8�q�W�.������g�!B����.':�j4����F4�7x���_��;�]��[�2c2��fj�x�)��}�[�)����
��7=��&(��!�6��v�i�^nwS�z��0G�K憋�#w"F0ηe���!e��5��.��e�^I�f]�$I��E1P�d�;�'�%����i*D������t�G~k�����^�Y\ҭ��}(�J0�$+����sw ��61�Ue]h	U��#7��oJ��"E|�Nջ�K[�/bbF���U�L	@�?"�s��߸�X�o�	/��oJ����ð_bpR���f�"[�X�u�ȶ4�6�0��I�w���K���ۻ��/S��Y�
�#��!�+�M$�_�N�!~��nH|�J�q��-l��	��%{|�~ϐ�z���=�	�SZ]|���� ��*��ڡy:��v}w�����C�-o��iH,�\�,�۫��zѷ����/��=6�(H�88�"�G�q�(k�0&���DT$�=�6���u:"��RrXsǘ����&�>����[h%��4�����z�c[���]<db ��R6Էq�*�z��C�1�k�'8(�^�S�on��G«)�V�y,,*����7��FY�a�B	����0v
�ۛ;��u^<���H�Y�������(������a�;��̃ݡ�)Q��.3��'\�ܝk��t�{֣yx�w���4�@Sp��S�%CE���}���Ӝm�'�
�)���G�Wrq��G�]U1�F#V���1,��i�"��Z&|�;u���}��_3.+�`8]+�		_�+�}�E4���+�G�0��X�Z�j�Sb���.s=�x~��
L�@�c<�7:�=1�w}��a@%gp�l����'"Fc�
A)�}�7�6�_��y$�"�~��z}���j��t�����X�`��3a�Uɰ�70Mt��Ү�����	���}�ؠ�R���f�g^�����2������p��jq�y��ⅻx�q�qZ��.6"M�M��px������˿wX��vY������A�+Kb�}^Q*Έ��Zc�TU֜-!���4&�2�"!�"	2"���8�9\�/�gZp�3.8g�o���.���oj���B,)%�B�}�����YO���p"���v7�~zږ�4������;ù�^�����Y
��.l�G�p��_��	���d�x�0(�����k�`o7���'RL,T�&L{�8�C��t��e�ƛC���Q��F�P��`�IEan<������8=�=�r��t)��*�;nv�^vCԳT�b4�4E
�b a�C{���-6����:����� �&�׿oA�ɛ�<E��,M�����=6�}X�T���D�������|'@����*���F�Y}}|�E,��u��p���"��ͣS�n�(B0P9ĐD,G�%\���KJ;#�:'T4"�"V�Q�v��Y�q�f1"��"���	qx���}�cɟ�$�}��)
)p��=V�j5�����:)��X��(~�;�0��ڿ%�q�����6�����*�\���J�l���ʅ�.\�>�+��|�1��
��4Bj��ԕ�T^\7��i�L�׺n\�r�~l��l���{��|��E��� T��x��2��ƳE�W��ie���3�iP�,N}�@���C^�ϨB�����"��H��Q����'1�o�nI�j�p�{�E9��~zs~��(�u��V��!�Ͱ�7.�`91��(C��mk���b9��cs��1�u}���咯���p��)��3j�2����������&�$#,l1�M� �Kq��_�CA���n�/�Zj�RH�I����!U��;���ߗݗ�c�G�4�AB�	ӕ���RVE�1i�E���踬-ՈzK��7�p�Z�hYӑ#dY�����Q�F�˼h��I��:0^��d��vݮ�R�/�j����E3�å2�R��g��@O{�}�^�W�#�Q�ô�L�M�+׽�7J@S 0�ݔ�vˣ�T�g����%U~���o�� �Wu�8~��2ܨ�)�T(L�.������x�;�Q��������1�1��ѳҥ^+i��g����J�����b���v�B��h�j�L�n�*�&�r;���;`M�f����ǚ̼u=)~�X�/�K��a����^��]��fs�f���	Ng"���Oi�S��W^��;4Aq�W_�����c�	�kZ�����~�0z�!�k]��1t���獻v2�~�E�'�^�rH<�-<��8���
Sxp�߶ݽ����{�=���+,)�C�w�`�*�k@ą�q��k�Y���ǧ=�ق+w�?���o�?�i�������f6��c��d�@S��-�W vB��H����5r�&���qStFsW{��׷��-�XD/�%`�	�'��]�|��f,�o��`#d��۽��9������k����1ގ��GL`dTÈ�_r�_��/��+F�A�л�gDan����j�t��N�2&E���aP�^ޅ~��!��a��C�ט\�l�N��Ip-Iq9ф�B�ڛ~ٯ��B�#�vƈ����v�    :����Rd��up#�Q��%p��ۜΏ�[lA�Cq���G�b�ݠI~���q(��q�r*qn�_oV�vy=&n+�7`��!�GT�+b����P�����+����_�۾�%�RL���p"����8-�ߴ��CN�nh��t1�/ۿ�|µ�V����u��$&����YB�ׁ}���~XB�W`L�Θ&�-x����ůЮm���s��k�n�n�,�;л�>T�1>���1�E����l�p5�=H���A�
���f����Oۻ�b�.�?��v�g���ٚ���<i��b�����Q�c5f�+' ��uA����}�e��t�e���(^��[� 	^$��^.��f�ƛc��_F�:�h#	�Ô*��̈́�ߒ�;��'b��:�?̾�l�r^n��e]`�����g�N�KPD��j�ě�wMaHA�e�4z���~����Kt�(�j�j�3�cV5ڐ�-��˲X��8%4�xJ����~����ɟ[��m}�:��ew�]��al�\yˈ��̸l�W�D��� �բ���SIm��<o���i�>��p��n3��Q�
;gm!)�B`�d��QaQx��!:B1SH�']I�j$|=�����0��P#�wǺ����wQT�fJ*m~��9��	�n���/S�r�$��k���������x��~����H��b_4�T�Z��c��R�֠�50�6cRr�ԟ*˼
����?˙#y��d�㿎��r��ؽq��z�""\E��s2����O���L�ҍhtTI�<��y/,#�[�7IAe��ۮ�C�Xe4�ᮊ�ء��|1�X�
�b81<����'n֯�vխ�I�����E��E}ʄd��>�+l���p ��!T��[]�`����3�-�)Hki��1�T���v�G��O��L�X�;a��[�V��\W�e��{8��am'�{��M���W�[�� �̤0Řf$��6CƎk���Y6�ے����ۂ�=*ʘ���(���˒��#.���`w�/��
��04�B$�kW�� ��ټ5�c9��ı(��P���������cy,���\+eBE��C�O}�Y�˛|����4�n��òa@�N�[�a��@���tZ��X=~�DO�A����ѥn�6�-Nm�<;�%�`����z��Ѯk�م��Ђ"�C�(J�ړ�uA;(b����T9��,���ٓ��;���Y�#�}�e��s�<�u��*�&2n��ku0g�X�����5cF����P�Z���w��X�H��0&���Y7�=a�dM�l��f
V.6ëW�Mw�����莢n�о!�}^-�@_�t�!G���Ϭ,1����*�5K	���Ø%���ǯXaU�#9�����]�Iʙa,��Q�oQ���88���V�Q(�$�燀i[]m�U�]E�z�	��1F̌QI�40�
c��O�}G�8�&�vB�-�E���~�-���P1��k���$HS�@��<���$��V4�3��?u�L�(@�*��%nA��~�ū�f��8Mc��&�#H>K�����g�[IRX��$���U#���+8���MH@�z���Q^�=n���?Ǩ�Hr[Q�ў��T�C�.��#z.3R*.���-�?�b�P���<����
	J��/��a��y
j;`���+�Wέ��]<���D��C���r����nn&D�410.�#28/����9�`c��V�!Xk���!�r������8�2���!��~ѯ��r%�h���'̏ j9|N�}]��P9��7���ҟx���s��N�H`��@�),B�*znGLe�������X���n�5gdJ����G�!�kR��0�CԌki|�� 4�{կ�}ˬ)���%|_�����:���&'c8����V��w���<��19��${<��;a�:��8'���A��P}�2M���Z�4,SU�~ADXf̦`�`N�	j���������|߃�X:i���٢�.�1%���C�t�؋4���ދ$M����%���]�Z)�q�&�#��.��h��p�ͤž��T?����]�|ԁ�Y������O�G���2lu,��4�΅���z�nB��f�zб�4l��BO<A1{u��S� �(�����-���^?}�bQ%��!�r`�h���X,��+��!t��	��'D� E-!^9���z��OKJE�HI�������d�¸*mxSp��u@�Eޱ���)�H��1ޕA��nn�=�6TJ�U2Ae��v3w���3$sCN��gs�v`���`4�`2�0������[�n�ܙ�y��a1�k��3�04����֫�����c�lF96�wT��U�C���<�H���Q��O&����|�L_�"�$A)||c}���SG�Ы���A���0�h��["
-s3Om�9��Sc�)|@�Eq��)o/]��iC��?�0߫E0Z=*L�\͠c�զYLb�bN�DJ�W��a!��Z������p�\J���RTW��n�q7�/���M����
&��آ��ǈ��Π#�0Tu�]��𨦃�6�`��T�'	�+���n�J-�a��Xi��$�:��cߙ�+�K���}�8f0����Q_��^֏���=��W�;��������V�G)j7[�QU��sHK{	4.��L���Nt{	fAz��b"	d\��A�N��p�əch鷢�l�'"Jゾg�I����)�; H�6�v���(��8E�o���Р��;1�Fɸ���d���Ìi�yu�Y�S�� ��8"-����sQ���L��E(8����7|7�~��( �4�e:e�]�̢��x�b/$Shi�	�H#�ȣ��=�DY&��n݅�Rb�yB:�i��@.""��z�rbm ]�`��Pq��� +��O`�P0����@���߻��d,�Fpf�t$����D| �%v2بX� �����]���N,̂��8���~q>��$�q������~��_�؃�J��TB%4f��S4�:^6
6�l.�����p�L���*I��F^�ko�E�Rc&��ƂM��nL�M����_���� �)�R.a�c�[f4}.��F�숽�8(�̿���>�-�`�	x$��%Jq*��
*��#N��2'(_�8L�(��zC��S���T� E��l�	����@ث�>*8��I:�Ę 	�ލ~������ͥ�i��h�zހ���(���K\�Ě<��a-�*�-{�w���6}#6��Ĩ �,���<�-�Dh�������PH� ��Կ�����b���!)�� 2L-��r#F�-XG(��ܗN@��a��t�%��h{=����3���D�������~{�/�`����b��E#�v�W��q,WW;�2��\E�\����D]�EG(��ז�o	ND�#��b��=�@Sͫ]�W��ˉif�d��dg��0�AHQ}�t���I�͏��X&�M�H�mL?�9�l��m>]�b��k�)�&d�����Kc1�]�.ؠS�`�}_�a�b��b���|!$J]]-����W�X�b�#9��p�Ġ�
�լ�n�Z��4\F���������ౌ(Xޜ&D^P*�RY⼖M_�d����?�,�3��2a�'�B	1"�2ף'�Bu�ΩE;0&ߞ�e1�B�@���fW��K@�k&�.s8��4��p�z������'�ï��N��c>�T(V����<u��%�������fŇA�(�pîN�OK�|���NI{¢ś���fMh7��H��W��9�[6Ed89D��-�)�Á��ߔ��[�[)�hQ*}Yv�7 ������b*]]���p�Z,�ch�XŇ<7e|��k�wms=u\��p��R��Z(�|����<=�6"ē*\S�z�jQ^ٞ?��a����Q'��}���g������	��+"B���� B��:�hR��-���vC�'�C�h�u3`�y��� ����B�hR�i�ATi�5ט�hp�M]"��'�����z    ��ë���tAC����OAz,����t��
� -��ذ6Jd,�����@��O�1��N2��8����l�;Qa~.�֠c�K��V�Uw=qT2� ��̀"�0�+��9=p�'�b�M����6��d�G c���
�/m���H��#h��֒���ST�y�%E�g�En�i~8��ΙCw����9�c"?�K=��Ȗ���N��ypjlF�|_LʖXTs�`D	&|I�0 ���L��]N�X2����ʹ0&����|]��pb�8�����R�ac��v�_}�7	h�4�������7���m_6���n�X�4q�6D�3'����+fyM���׷�Ӝڷ����n�X)@�"��+��2얪��ł�e3��X�r���΁�����X	?�$z耇�J8!K�Is����aq������okn��{��
�_\ᥑ��}��T�L��K��k�'6P$a�"� �j͓������9y@	2�J��LG����<����#N�P8�8"=���s���}zm2|e� �+��X�[����s����0?���܄��x
�f��1daOm�²ҭ	��B��V�F�LVT1⬒�?�SqQh䡑8�3q���OU��/.n��Q/d�|&����N�f��:�}z�	�6HA|�Q4�ӄj�6�}��D��>"(n�b�Ü8�q�gm&�
��-/�A.��5�/X�x��:e�4�'�Cw�L�u���q�lЋ�4����.�g4�K%;N7S+ʆ��J�Ͼ]*�q�<����bT���P�\R�5��2قDYd��(�,5��"�]�G�ߜ�^R�x�AF�Ty⦲
�L���b��z�и(P���K%��nk������ųX���Ttj=؜�+~��!g�R��icj ���F
���)�zX%q���n���w��&[��Ry�)6�`c}��@|6�����+�T�!�Ӻ��&dR�����~2yAEb9�� �"j�<�p�e<�t�#��24v��7r�j�uVe�T����ʻ�L�Tj�T�i�T���0���/�_����L�@�R�hT�RhcW�����{��;;�� C�������w}s7�Ì��S!�}��<E�~S�Ż�������U�T
�E,VT�
W���y�T!TXiGϱ�����K6�N��|��@JE�uF�S6��h��i'�R��c�(����5�VT��+S��_���n�uڡJ�h����ı���;��n�-�$�Hҭ����`��&n���an_��������������M����?���.��A�x�_$�\��P�-��Y4=G�ze��q��O#A�w�&EX8gp�+#��{_��z�[�9��~!4��ne�|�͸9��V�h.�Oͮ��W �-��LO�p���x�RkQ�&%Ѳ�	]�d>�O�(��xS�I��F��M��j�)n�g�����4�����H�C������ ��v�E]��fO������&1��$q�\	Y-.��f��΄;ĴM,���@���F���9{Fb�/�0�#��'�ޟ���ɮA��)V��e~J���]���;s3G�3Ww�F(��|�l:8�z���	"N,��U��f���>g�iQDQj����5F^�{�D5��Sp�Ji�� �fA �^��w�t8��ui��E!��^"�^���/k2~"�"a;����d�.��)?�gQ�R:�����-(��I�R�،�Ƭ�/�M��:���VM��N*�����Je���
���Y�� ?��� H�X�3��2��%��v	�
���X�n�\��-'T\�Y��e�R����W�s�Qj��=e�Μ�L�:�"xjz�&���L�:\����LGоc�"\����QX��Op�6�}s�b��3iO�h/�l+e������	����<�H�K=��2Q>�Kd�ǶL<1I��rF	Ĉ���'T��#�hʔ�<�^ָ~�9F�a�Q�S-��*�k��򇆑��m�ݶi�R�p�b�w,��2� �9��+0HC�]->w���,���u.�*��?f1�t��8��Z��G�v
b�����F����%.���>=��\�����R6vn����
�Ŵ-(>A	�ȫk�V�#^��S�u�L}���!b�i�_���/ْ�k�9HDZ���|�GF�eK�Su�e:&�"���#	4�Cr�8ߴ���3S��	�G����-b8�����*�W���nw�-�a��*�=b��U�2�&j��"�Q���.�:-��D�XN{���9G+�Q��k����\=�e��3�-��𒏙���vE0�d�d1��Qj��_�H���ț
r���Пo�Z�¾�5��Rp�Sf�<�j�5��gO='�]IU��ŬQ�0)/v����iG�$ܙ�1����P�z�ަ-G��f�f�F.~���I���*��)��3敢*�SR�sEa0e�
�q�c�XX�3&��F�2��i���"�d�	�7ǁ]�L@)5e�-j�Y8U��=~���Y�[�ĴG������g����0K��y��Ï�6:X=9pٕ��Z�����?Il�(=r��pMU�_���i˒�ͮF��
bQ�G�嫟�� >f��	�t�S�$��L���̿�3��'�lN���3�4��C6�=mB0
�{�f$Q�b�M��o2�״�	��`�C�1v�_n��2h"E#E/bS�1ǩi�л���=��Ӷ'��d7Z�2MH^��W��e���)�a8�2U�0&,��QO����u{&[0m{BH��ǵ���`�x�E����6���턡��+�`�\ԏ[P%I�)��%'V���`���s]�%�Y89B�EMIS,둚�]a���F�{ڎ��E�h%�n#�Z�w	g�korC�Ĵ)"i����c�lBd��)��
�u�:�/�����r�����Û=�¯~X�iMc���v9ŧ�)�]���`D�����q��2:˦�WP9��E�Ƃ��i6;\���]���3^�ME���2T^�jP���^~@"�K�Q�����сV��k��g�_n�Ma~�P��:W(l*z�E�� �4ά�#u�?�sΓMe�P��w�Õ���0�M孠M�G	�ߕ���G����D���BQ��p����
(l�y����y�B¦�N`YԪ�����������.?4��Ǉ���f���h�{,Da���w��&'Um*���������΢�;��@Ra%�.f���u�Z��N>�$�K%��=���8��8��J���"�R	8ҭ���N;��F*���{� �wjA�����:��!ii�P>6Z�@Z�����l5�KŐtd�[�z&�}�G*�,��vȤ�Rdi$Rl���#1E�G0�*.U���b����<�~Y(ۥL��f��xc�m&�Ҟ���RQ��n��P�3�}��RK
%�r���p��uf��p��Sć���������4�Si�|L ��X4��E�~����mw'�y3��=,
�N+�/��D�����r�O��!���2(��ig̧2�����F� �z�v&g�R9���8lV{.�ǩ�f����}_g">�/���}$�D�W���v�6�#|�@'8��:�	ޜb�赽�/� �fS|��>�"�� ��Y|i�:!�6�r �)�R��1����[�z�2t�vSv�4���W8"�pKJ/1{Y��Q���x���+�rO���!�ӊ�S�^E�1⩢w�rRY��)�)*���LaL'a���w�h�x����|%���� ���5n�@p�C����z2��<�;��|qE�q�/���$3G��J�1-��W�;X���P�`�l�yX5���G��פ�8�E)Ǒm�^��a���ULrZW�N�ቸ��{'܂��=��9m3�ո'�J�dc5G���rֻ7[D(E��]UqCP�ϛ;l����lĸ�b�����b�СH��*�$���cޤ�w��!Q�K{�2�)kQ���slH M��&Pad�R~���v�rH9����b'�    �3
xIm�A�|��]��z_𓐐U*���9%������.:�U*԰XB������A3%7�J�`h�*Wq����n�[~isS�d�� �{�{�u��8Yn5u~k�s���I�n�%B�<a�ә˳��Ǆ���,�?~!y����|e�����yg�X`��X�c`tA����4(L�����>| �v8�^*t$e%8{܍�x�[*,�ҕ�7�}�1dXf�Mh���eDp��DeE�zJZE�)=�ĒH���-�;�[���L�y�m��
��0mA��J��	����Ouv��3�g�"�"NL��ס�5�T3X3��P�h�� �����m���n&�|��o�mނD�O�]Ff����Xڢu�*3l���1�U����O��BȀ�{�����	A�y)���9^��6��~
^s��0��1��Hт�
|
�d�Um�mҒ2�<6��
N)Y����,��N�T�h�oo���t���{	��JeO\�!�,{@:}��;����T�`���?@��_cN�Fg軻��d��ፊJ.�_�)m|�E4����d*rcxP��l����n ���/��M�7�O�+g��.�����}�=4qqf���� 4���T6��[�=��������]|e/���$���h�O�a?3W�%��ki��pkd�д �I��4៚&�
�2�8M��y�T�}9#��"�2=��@���t��m��6��?�X��m�г��owy��R�0?!��Q��/1ԷέI�J�x_1pe���߄�.&�`J�B帅��((�����M~ H0��߮��;�J�P��Di[b��h�U�����U*G�Q�bjɂ�"���-�ߺ~M�Ρ��c�5�E=����~ۜ�rs,�`�1c�D׳o��Q���U`M�������������5�&�_8ot8E�ЈF������9�%F4Xp��F�R�d%�"��,;�j����2��S�TH����x�@XP��xc`o�IzK�JHA�S*��!��C/o���T:�*n���3�:~�z���{g���#u*/1) ����Q��N�J�|J�"SHZx����賷�f�Ϲ�:���bW�
Z�W..��[��*����.|�/h��C�G���H�m���q�N�V}��q1�e�� ��+��u6��S�$b?�v:��[0@>�+č�Y�NUQ�D��f�̏*[�"u*k0�~�&�'X�Dp�2E�hw�i036�����{'v�f�f,(�-X"a���33�C��qʺ���3�x3�4�_$�7Gn�]�%#�L�X4��}���Үݳ�5�6Tio�V���c�w`�?�f��)Xi+�1�8"`;�u��������[^���*�)s���?���l��Fq� ���0	�5��I{$��L�Ҁ�`�����th�4y:s/�L�RpdoV�]c�2�OIE6������ Y=n�Ʌel*�%����s"�(�f��v�TP�t+$�=�`��4Q`��uG] �d*��M�4 �j�.扈z�۪/v��63�I�TXc�'rF۸�j2�a�e��ɠ�2�*��(8� û�:z�n�oX�6�XY����Ԙ� ��)���ȇ�̶�̖��A����M�Q<���D/.�5������F���l 	Rfa�@����_�
�FtXh����"����ʜ&FBǦ"/veh���'F���87+Eڙ 3���an ������nI%ή�S(��q3�G1,a%/�9��e{�qq87���L��KfӰ�c_o�1q�[���.ҥSUX7!�塦O'���v����'�=>�T�;	�����\t� ��j,���f>ҧM�)�J�zfbW��ɀ�f	��}�~f�K,U�G{����y��R�4z���*����P̋�
���]$ҥ����U�q�B�t�;��ߴ��"���w��-�#�tLשtT��P2:њ�-Zܴr�;���=�`&��Ve�mk�V�����Kޯ��&�f��� 9{ ��ϛ��!��+}*��2�
'�2/��@e4���96R�@�g�u2��FpK?�D9[S�V���?���ѱ�=��#7/[��S��d����<_���p�a����r%-}}�������|��J*+Le�)D4e5kJ)�8�(������矐Vq��SV{$�|�pY�[U`SD���#�8�� ˻��4����F��Ѽ�3ޓOE��4�88Y��G��������C*�4yv�Q��ST�{w>�RI���7��Xf�{�s�ZjҧiR�u.�R��u�|\��%�9���ef2��O��h�n9��K��۝m�!�8\��dؔ�8��D�B��1��!��p�Ŧ��q	�;��_�L�J[�)v���5�7?uVQ��	e�\J�ey�͗�߽$�t��ˤdB�e�W#:.��Ω�0�4&ّ�3Y�0P��tlf����o.�|�*̤,�Q���R(i����~�|�f�0��	��Upbㄨm&Ť��l��kJI�~o�}}�����������AgB���T ��|�?��u�c	���ӺIU�x5Xڏ]�.�Ĵ�	^����a��J%+@����Ҝ$g�C�_ƾ�g�[*^|f�;�A�؃m�⼒� \b2���H�*��A������t��O�R�R�ɓ�PU�!�'p$P���,��>oG�*U�&&���q��j*VU*�p�]�%����A�u����R�e4m1�J����쟚��������f����0CS��"1��1<a��]w�g E*͌��4fȽ�Ìu��?w�}'`�B��i��5x̄��CsڕUb&�he�sa�]�"bl��CeFTPZ�τP�(=v�/]y�p��?�3bl1�>N���+��\� �!�?Y����q��JW�Z|�;���+�����#;�A<x�=��ߩ���L�P�9�˲��i[8.���3�Э���91�-�
�sKzT�ƃ_�_���<�J�eD8�W�k;���o����M�Y����$�6�P��y�����/�4|��t�Y�~�N�ѝ�1���K4��Ih��� D��/�������G�]eW�ǁY�=΢8�NI�s�
��C�m��}j�����wSs<~�eY���wn��J�Y$��$� 
� � s��t�H��w+@�F'$��/�m���Y��v�?I
������^��0�����0��+[��3������(� RJ(y�R��΋B��E��ե7k�[�F�8}������g()9�TI't%��/��k����[%gj�T��)�Q���&�"�w;��f��q�2���K���Ep��Y+�*��0K��39����Tzb��XI���̀A��}���،t��K�T�
*[�zI���ys�e R��sa�
��p�l�1)�$>�
P���xנ��|���6W�Kf���v��T��9G��T��wU�]��u� SY/t�S�8W�Bs�@2�N�)��a�`lN���4̸Bnx,� ���I�h|��d�VN��
W�a�̹�M��p��qY۸j��w�g3J���0�e��|W����K�1��LJġ�F���xA��d��9�%F�[*��DG�gR1ЊQ�^8}ģ�R1p���6��Wz&$i��)��������4>��M_��eU�Ne$m�ºI7���azh��U:3����N��஢4�u{���r���NE����p���Q���Ms�	��T��8s�|�T�����	��޶���N�ka�Jb��	��l7@�9�[��XJ���D\����.�F��h�ی�
�g�U���$U��)����Ȅ�SLq%�@&#�aRI.���+����%��O��ۺ��i0H�O�+��t�DJ�%1N���M�^�b�Cn��2�l,`)U)6ל 5s�~D���S^5��ʷX��l�	s�3����7�sx��6�G?��Z��Ġ�mZ�ù຅���;�d����V��A����)O�|��Pf&�,hB�_:�3z���c�5������ǲc    �Ue gRС���T1��H�=�b_(k�|�,�4�U�H�c^�$sK��p�E��lG����
��(%��d�<����P#�jS٪0~��Nd��Q���[������b�e��A���U�L�����X�S�4����Y�ڶw��&��JW�R`�Q��V����-w���Wg2V*SK���R�-��t]ooO��c�T�*Z4f��q���eh�k�,9?��
���D�����s}��������_��8�����n,�=!e���2����+�����c�T�$6@Y5��8�yy�7��ꨞc�T~z�	.��we*K�F�Z��K��~C;8�;;��n�()�jay���Z�+Vd��Z��x��Z��Էݵ��Ag�������?7Q=���Ǘ�1֌-,^���!@����~�
����4�����q����v�+p��7(Xn���q��u��݌3H�
��tg<��x3�p�Y��l�1�n�݀p]�}g�"�p2���X/�;j�<�4���Lm;x��e��9B��G�|��0,���������G���g�O�Z8t�ky���}͂�?PY�V�	�0's�����h��f�[e��C�����u{�����F��܍��͗$.��יk�3B���V����K���q�m�����*#b}J�X����y�`����	�y[��g��qF5���?{Ĳ�)k�3��2�+�,�7����>�a��5 IR�Jn�M�S��8/c�A1��%|���>C�!e
,�+/�剎�W��c�R��
���%-�dwdpV���Gt춭��C�����x��!R��lB�z�n2N���.em�yˍܠ���<��]b�nh�C~�X�
��-�__/��m{��v��k���6�M�>�c�+X� ��F U����;��%��#OV�9)٫���o��/����9̘4�^��H;��Ƞx����Mws�>>ϓg<�0S�p�Q<ep�/�_����j� c6�Nk������f��Q�k��(������:�J9�P��9�큦�Hf�9��U��6�KT#�W�A��Y&�U���D@�H֠��[�J��(�Ҹb<��Z\��q�{��Rv ,`6!�-�3�֐���]=.�S5U��r����'�=��[���,������pkd����i-j�
�UJ�����b�
h�����9�)���mT%b�̓���;�pb��捥$N�o�q��pf�n1�$-
p�%���o{8��w͈�Q���<^��}��gp���h֡�F2���{�y\��B����"�I(0�cIR&<�]�R'%��$U��<U���r���us\��䃌ze&(����QUD�_���w��,)��y�-���m�}�������w-�ra��hK\-�����x��Q���*�y�
������p�"�(�oW������f�mZa����O?1*2\~iZ���~W���ƞŭ5X�t\�1J��'�DV�'�[ߴ��OFI�^P�7&ec�7x�k �nT�0HJ�fWp�C�x �v�k�MR2ơ``��������m�n/�W�1Όf)-�Q1���H�f�2:�ق��f�P`���H�1��m�9�A�P)9�h{���j`���檥��g���"�ҵ�⥕���a�z�����(�Ҹ�1�U�f�;wy�JUJ账}�+ ������?9y�QRB�� {� �B�!
(�7�>�=���iO�Jh���������/��䎻6p��	t���Ђ���4/�� �VE�;������<&�0��xz*��wͮۜ,.�8:%uL��smB�< I�p���ўG#9#yG1J���e�c�w�vKs<679��;�!���؎@)������C�XN��������Br�3��h�
+�i�{q�c�z"9�7x*TU�c�q����x|�^Ҍ)h����Qf �D�k�Y�Or�3V	�
��œ��=P��JyF�,� �B�NU5�� b���+K�HQ�	��j���v��2�7�W��^4dT	>T5e����[� ��
��U�"���ܫ)'��|͡�-N���Ek�X�rl��1����#T�;�<O5�=���gh���8�{=ä�0���������j�?g0;Cv�A�]��*�X�5?<7*��{_c��9�h�a|
C^���`��=�2�c95*���
�8������|��E��j�)�T6��R��K�@#uw_���4�"�G,�bI�S�\�{Z7v{����fL�S��k�@����}{��k�o1/����К�pPy���]bg��i��U�[�)'���]w��/;#zZ���j����/ͮ�p�ĩ�H�8�|�i6��eD�y���k�f�h&�v��2·3�7�}�z��Fa% ]\��I��Gr��1 ��aT"��3��y���9 �H^p��C�^��p��r�K@Q���D-`�[�v�^��O����'XH/cd �����d%�z�p�
�xū�ql4�~ܯ�-���ץ�b�TN$PJ�������=ݞ��)K(M��y�'u�2c'e,G����[�@�`9B�������G\���G�]�`u��.*����H�*-B��14l��7�9�H� f����H�z���Q��> )�`8�&�N�b��{<z`Oާ:�M�s����D"�������<'a�����qK��gf������D+��x#D�Նa_��Pdl�m�p3vX`�Xο?�l-}w";˨)s�n�j����T�S1�� S&Ѵ��8�垠�V��)ۧ<���	���kG��(P�K���tn��� �f����a���m1����O���; F/.�2�&�܄���9S)�̂��,hm��8�m�ރ�F����3�ؐ�nA��������� l� ���/fД?0G�k�|pC����������̡�
+�9M�����G�i�;޵�P3����
<L3$��z4�S껯��Θ�$�UBȡ��S������hv�qu�VX43�i�ܧ<]�x�fI(���iF03�;2r��fL���V��S���7��Q���3�e��	LE���0X�u(����
G�I�'-���*ښ�"���x���doh�~e��<nyy�"4UJ�F�Ċ�������T)�c��I�XL�Ͷh^eY�T)�f���S�A���: (���xuzR��$���
��A�}nzrr#Of�R�7,�k/g�k�m���oھې�w�S6 \�idO�^J��m�mp�u6�lDJ� �Mq��t�����}�3bF��FUؠ��J�s�n1��������A�U�c�(��o��.�4Ӥ���x�Fi:l�#�����%� W�� c|?;J��i�Z��
�	��@/N��b?���)*Ͱ4`�D��qX�ɣ��s��N��t��g�������j�Ⱦ?1A��|
wB
�3JA7�X��kO�g��9*����S�c 
��ֻ��M���T|f�q�����H�M�Qh!ŋ�	���*��Os�Yc4��x�a��|�&�%� ?Ϻ�c�B��`����f�1�2�V9�Q�)�纯׏��x	���#T�0h�ᄰ\|�F���9��)��n�*u3|5N/�^7���M�r��1 ,�hؾ���C�ɺ�F��a����
.��/#�g�2z�C��7w��?gb�5w_O�͍@*�yp/���v1���;<5�K�.`�t�6l��_��9^��H3.���� u84"2��6��M9��6q{��P3.p^��1�&m!p;�e�@�AfD�-5`O`Ġe�M�=f��b�Ui���-��	V5#tOY''�R
��'<��@I`��#���ů�������=߭��!k����po��S��l���ѧBpI��M>�jtJ��s��&�^�-.���w&?dtJ�h$��aw5Я�)�0:%i�Pu���y ʕ�ˏ]�uR�������%$nU٣���M��R�0P�k���x���` �  ���c���c]� zq�`�J��tJ����޳����@���@��-i�de�>	Ў�k��[�	*{D3�6S �:t����p�af�M뽱����U}������i�TW�
Є��z����Q��6F��y�O�^g|&3#rc+�U���k�#������ĵ��yz-�q�>�騛��$�&g��еC�te�Y(@�!i��c�YsӤT�e�4�q�֠Ǹ����s��cR��z�T�9�'@A�A�\���,�Q��/w�sR�Y&e	U���X~?�پkׇ*"&��m�'��28!��m����g�,cHd�ŗ� w��c����3f�M��(K\��X���[�r�M�%F.��%]
;�q��{��N,�e��g����P��^�,7�j�Gp�`�:]�g*�MY��+�^��A����Z�/�r
�-�犅:�ٿ�[̌��ؔA�E/$80/������u3�w�C��֔K��uF�"`����R{�w$�O,�B$�LϠA��e���͘�b��UƳ���X{}U�g�j7c�͋WL%n�`>+�c܌|\u����/~7�hgc�؀Zb%`T|�a�o����9��fL@�9���b�j񿚾�oχ ��e���W�z�,��{7��{��2�r{��2C�8�1��N	c�A=w��,�K�\"�A���`�i����I�a�p��C�P?���#*[ 6�ADNڀ��$�t�d�4�#�C�X�?�߯$������P&?��p��A��q�A�֐�T
F�p1U�9�=�ac�]����8ULx�S� D���z���ʄ�c��nG��8A>m?����O��[�BvXqp"ڰ0�Cf���1,� /��
����\���>�#h���31��)\K�\�ߔ�
)ի�5x��XlW��>�ЍX�J���HL��!�����F�o��@S�J�R�^�؉t$���E㓷1c|�b���'a�q>x���W���0:E�9�bW�v��4�L�����W�$k��M������R�8Z�8_�T�������e���p��z�����
�*z��G����*�)֙�S3�
GD>�S����_o��k@5��������C�M�ۭ���qF8�(�3���Ck�2�,��[�O��*�liF�b����ޜ��0�L�y��q�0���t��׹�Ts �|{��@�=Wx�H:E��2D�8�����ݟ2���`5�������׻�378����#
G@�!��it��}ܛb���:����V�Ѽ>e�1RJ�ک��o�I)���[��Lc��Rb7M�wƚ!�׍mOW�E(�һ�5�8��bZԄ��lN�d��ڱ�@�q�-p�+�K�[�2 6ҫUU6���F讗����������I3�G̔)a��ZG�]_�L\f)�M�P���G}��f���u��{��טUY~:�^�q�I`�D�>����}�[�#�h6AC@�
�����U�/�aC���pb�8�=����`⥛z��6.��.}2�p��Jţ�S��>������{0 чd�����kQ��Ւ����D�~�^�ߦ�N�;��MH^BSQ2&�b�.�&D*oA%�r���*��q���Q�8�ނWh�w�7��ҋ��l�s9i����H���#%�ƣ)��r�G��¥=�7�s��G��|�S�O{V�9�sK�j3��P�e�U+9H�Bb�	�x�B�ޱoο��C*�
�d>;'
���e��Mġ��'aD�y{�@
�҇)Rb�U�:t��jo��h����Q�����o{tɳ�'|H74`� ���LU���bz�r��K�x��ҎL��S`��T��?nw�ѺEƚ�į�g�cȊ_�`�h5�(da�.�����\5����m����E,B�J��xF�sʡ�	��s�7�q���cI+nf������o�7�o��gǯd���
�OO�H��[*�Y0-�d��G�3̄y�-s4C�6�:lӪ�������[Zᷤ E�\u�"k�|i�4�)�R��j~;O�Z�pT�-��k�0�������	��A�+)qm4$�v�n�ш�*E��]��'j1�D�?Ѩ+�t�����d�`2p��}�S�}�'tj�����:�	?|�!#�BG�R���1#�h����������R      �   �   x�m�MR�0���a��I܅��*��Idd{���i 8���=�=�q��3ɝ��+X�rM �9F����Ur�~Kr$���Җ�@�N�b"=��O �Ưa$��dn�rH��V�g�{M�9�j�<qZ�_�.ٿcw�����r6`_�-<�0JVOW��� <x� �?� ��&�/���вϞ�|�o�)�Z��Y���vMu���M}��� � )�e      �     x���mn�8@���*p>I�,���B;+;���wH��4�n(�6�<S���i:^�����}<?�`���e��0@���@�H=a��S��5�|�}\~|A�� �P"�i��6?A� XB�����j���v�k��O����1#3����yE�M�>ʓ�{����������2���8�M��t:���m��p�����"G���7]Qg�1����gA�5J�QxI)?�rN��c�r&.�|C�q؝/e�'{����sR��Z n����c�o�[�}({����.��K�kw�^v��|.=��|����|޽��_L5il������|��Q �
�(o����RYB�(~:�U��r��Eʡ3�ÿ����4���{�.�hj���eM�
Ѥ	��=�.����ct�0DC��ة�U2H����x��ӻ��p����t|�����!X��A�Tm�"@v$�ٻ��J�z�]4;S�6.J�;D
�A��FI�qǈ[�x���:��P��1�����8/�@� ���X_Ʌ�VR�8�/է5B�G�2�@^# ��#�x��;J	���4�kF��!v���N�	k#�
��ےaP9	έv�3h�`�`*[�Y��H��m:L�_�@���V�B������th�9t�'�T"�#h;�G+���>v��6��_Qv�RlC�X_����V�,�o}˨h'�1InŌ���������Ŋ�d�^�TZ���:Ƣ������Ru$�#�=����)Qc87$�(u6��H�Hr:"�|��ojq�$f��	H��"g!�=t�ng C����&���/�Y��v��W;Q=C�[��:ƪ2�(�';%1n�\�3qN�z=�$��L�/�����+�!ud�b�W5;%1/�s�ez��4��:�ж�%���C��R��P%=�R��);-	��o��l�,/cF�>�������r=%���Fa�m설U}��o��%�d��Zo���ֳ3��30�%�Q�"�$��fg'���?}�������a�Έ�QZ�ڿ;?I7+At��j��B�B������#@m��'�-C=#���(��ӓ�A~S�
/t�1a�6��0�N�=��oمЁ��KqV2������s�E�Z+�89����\^���5���䍛D�dU;{x�Rqn��MZv���X����87YZ��7-�4V+̆خau^��N�zן�洁j���[uWչ�79����o��
_e87��W^{�i1,��aͭ݃EL�f*m �E�>�_@��[kW�'�U���ff��E{�d�u��6�i*����{�@�m$[��%{�mC���`�e� J�܃͎Vܱ�u���n#����~�#��Q͚"�}-ҹ)t��#��|x*�"���RVj[�cC�uȰ;���z����?v����uS� \�t��jvtF�. [�
�J�n'Y�Ƕg�D�"VpW/bU��fiG��I)i�P���5[wS�IɋWy?͗y7]�sg�${�2�&m�?:1u%���E�#��׺��j�|e81<��1�C)ôU��[�E'���Q>�ڭ����҆�v�T��WE����������
QS݆���M�����]��ܹ�&X��X�N+E�,K�TUψ�+F��!1��M�T�[�x���:�t��]��������|�\�R�r9_5�Ť�+�]�d�ΆCi�'�j��߿��S��2���(9]#lֲ���<n�k\���9��h6Hi���f�I$���7�u.�Z1�uQΓ�G��X�1�lC@���˗/� �e��      �   �  x���͎�8���S�td�m���3IG��ѝ���7	!x�1��jw�`�rA��Q��CҌ7?V�q�.g�N�C8@U��ƿ��k�;%6�t�%�IA�;+۫C&�'�6k����6���ܕg�UV���|��i���}��o�m~�O���M�D'�Be��Q4ޑ[Y���e��,ET��?no���?�?�� *X�2Z����]2�{�p�	�,�t:'���<�m}��f��X��աtaM�ѓ��>��G!VY���P�
��6_��Ȓ�%��!/�=��8�f�-��Ʌ�>�g�.����A����|�d����6��DV�	$ei!"
Xj���S+AYl=��eG�D�Y�`�dWT�� �:�m"��k��a��K��=�f;��%�K��,�`����O��HhB���$J���^>���n�;��v�00>�J�׶�:��;���i���F�8_�/;�d��æ��d���2��0�4r�A8Du&���i���� �1���~gPn��.P���s�8����vS�*Z���q�۲�N!��Aګ���=x�(D)��[���9�q����귲�Z��=�뻶R����RW��v����:6�pt���vv��z������l�(�ſ�2-�Vg�,fH�e'Fm�W.v/H��%1t�-8�����_�2j��!� 3�f��h�T�i�v����g46Č�N��6d����]�6����KH�a����wt�([��EQ|���II��'h)jSu�����������Ls֤Lk���al-e����ie<<�y��̊O�9떇�!'sFɵW5"1���:��#3(o	T�5�f�D�mj�E/���sv:��!uGQ�R��kb�'񜢷a���[��)!��L�]nt��sGy�]a���Ny����v�����M�t���0��ٸjZ_��h�$�pu�ʼ��pk>�&;��9zۢaԜ+�Z<==����     