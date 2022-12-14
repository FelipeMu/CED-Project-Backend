PGDMP         :            
    z           postgres    14.5    14.4 ?    |           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            }           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ~           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13754    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Latin America.1252';
    DROP DATABASE postgres;
                postgres    false            ?           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3455                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ?           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    18444    admin    TABLE     ?   CREATE TABLE public.admin (
    id integer NOT NULL,
    nombre character varying,
    correo character varying,
    contrasena character varying
);
    DROP TABLE public.admin;
       public         heap    postgres    false            ?            1259    18449    ADMIN_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."ADMIN_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."ADMIN_id_seq";
       public          postgres    false    210            ?           0    0    ADMIN_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."ADMIN_id_seq" OWNED BY public.admin.id;
          public          postgres    false    211            ?            1259    18450 
   calendario    TABLE     ?   CREATE TABLE public.calendario (
    id integer NOT NULL,
    fecha_inicio date,
    fecha_termino date,
    semanas_totales integer,
    periodo character varying,
    id_admin integer
);
    DROP TABLE public.calendario;
       public         heap    postgres    false            ?            1259    18455    CALENDARIO_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."CALENDARIO_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."CALENDARIO_id_seq";
       public          postgres    false    212            ?           0    0    CALENDARIO_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."CALENDARIO_id_seq" OWNED BY public.calendario.id;
          public          postgres    false    213            ?            1259    18456    carrera    TABLE     [   CREATE TABLE public.carrera (
    codigo integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            ?            1259    18461    CARRERA_codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."CARRERA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."CARRERA_codigo_seq";
       public          postgres    false    214            ?           0    0    CARRERA_codigo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."CARRERA_codigo_seq" OWNED BY public.carrera.codigo;
          public          postgres    false    215            ?            1259    18462 	   modalidad    TABLE     }   CREATE TABLE public.modalidad (
    id integer NOT NULL,
    codigo bigint NOT NULL,
    tipo_modalidad character varying
);
    DROP TABLE public.modalidad;
       public         heap    postgres    false            ?            1259    18467    MODALIDAD_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."MODALIDAD_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MODALIDAD_id_seq";
       public          postgres    false    216            ?           0    0    MODALIDAD_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."MODALIDAD_id_seq" OWNED BY public.modalidad.id;
          public          postgres    false    217            ?            1259    18468    profesor    TABLE     ?   CREATE TABLE public.profesor (
    id integer NOT NULL,
    nombre character varying,
    correo character varying,
    contrasena character varying
);
    DROP TABLE public.profesor;
       public         heap    postgres    false            ?            1259    18473    PROFESOR_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROFESOR_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."PROFESOR_id_seq";
       public          postgres    false    218            ?           0    0    PROFESOR_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."PROFESOR_id_seq" OWNED BY public.profesor.id;
          public          postgres    false    219            ?            1259    18474    plan    TABLE     ?   CREATE TABLE public.plan (
    id integer NOT NULL,
    anio date,
    codigo_carrera integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.plan;
       public         heap    postgres    false            ?            1259    18479    P_codigo_carrera_seq    SEQUENCE     ?   CREATE SEQUENCE public."P_codigo_carrera_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."P_codigo_carrera_seq";
       public          postgres    false    220            ?           0    0    P_codigo_carrera_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public."P_codigo_carrera_seq" OWNED BY public.plan.codigo_carrera;
          public          postgres    false    221            ?            1259    18480    P_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."P_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public."P_id_seq";
       public          postgres    false    220            ?           0    0    P_id_seq    SEQUENCE OWNED BY     :   ALTER SEQUENCE public."P_id_seq" OWNED BY public.plan.id;
          public          postgres    false    222            ?            1259    18481 
   asignatura    TABLE     ?   CREATE TABLE public.asignatura (
    codigo integer NOT NULL,
    horas_semanales integer,
    visible boolean,
    nombre character varying,
    catedra boolean,
    laboratorio boolean
);
    DROP TABLE public.asignatura;
       public         heap    postgres    false            ?            1259    18486 
   plan_nivel    TABLE     ?   CREATE TABLE public.plan_nivel (
    id integer NOT NULL,
    nivel integer,
    id_plan integer,
    codigo_asignatura integer
);
    DROP TABLE public.plan_nivel;
       public         heap    postgres    false            ?            1259    18489    profesor_dicta    TABLE     ?   CREATE TABLE public.profesor_dicta (
    id integer NOT NULL,
    seccion character varying,
    id_profesor integer,
    id_modalidad integer,
    codigo_asignatura integer
);
 "   DROP TABLE public.profesor_dicta;
       public         heap    postgres    false            ?            1259    18494 	   programar    TABLE     ?  CREATE TABLE public.programar (
    id integer NOT NULL,
    nombre character varying,
    fecha date,
    semana integer,
    color character varying,
    detalles character varying,
    id_tipo_evaluacion integer NOT NULL,
    id_calendario integer NOT NULL,
    id_modalidad integer NOT NULL,
    codigo_asignatura integer NOT NULL,
    id_admin integer NOT NULL,
    id_profesor_dicta integer NOT NULL,
    id_programar integer NOT NULL,
    hora_inicio date,
    hora_termino date
);
    DROP TABLE public.programar;
       public         heap    postgres    false            ?            1259    18499    programar_codigo_asignatura_seq    SEQUENCE     ?   CREATE SEQUENCE public.programar_codigo_asignatura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.programar_codigo_asignatura_seq;
       public          postgres    false    226            ?           0    0    programar_codigo_asignatura_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.programar_codigo_asignatura_seq OWNED BY public.programar.codigo_asignatura;
          public          postgres    false    227            ?            1259    18500    programar_id_admin_seq    SEQUENCE     ?   CREATE SEQUENCE public.programar_id_admin_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.programar_id_admin_seq;
       public          postgres    false    226            ?           0    0    programar_id_admin_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.programar_id_admin_seq OWNED BY public.programar.id_admin;
          public          postgres    false    228            ?            1259    18501    programar_id_calendario_seq    SEQUENCE     ?   CREATE SEQUENCE public.programar_id_calendario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.programar_id_calendario_seq;
       public          postgres    false    226            ?           0    0    programar_id_calendario_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.programar_id_calendario_seq OWNED BY public.programar.id_calendario;
          public          postgres    false    229            ?            1259    18502    programar_id_modalidad_seq    SEQUENCE     ?   CREATE SEQUENCE public.programar_id_modalidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.programar_id_modalidad_seq;
       public          postgres    false    226            ?           0    0    programar_id_modalidad_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.programar_id_modalidad_seq OWNED BY public.programar.id_modalidad;
          public          postgres    false    230            ?            1259    18503    programar_id_profesor_dicta_seq    SEQUENCE     ?   CREATE SEQUENCE public.programar_id_profesor_dicta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.programar_id_profesor_dicta_seq;
       public          postgres    false    226            ?           0    0    programar_id_profesor_dicta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.programar_id_profesor_dicta_seq OWNED BY public.programar.id_profesor_dicta;
          public          postgres    false    231            ?            1259    18504    programar_id_programar_seq    SEQUENCE     ?   CREATE SEQUENCE public.programar_id_programar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.programar_id_programar_seq;
       public          postgres    false    226            ?           0    0    programar_id_programar_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.programar_id_programar_seq OWNED BY public.programar.id_programar;
          public          postgres    false    232            ?            1259    18505    programar_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.programar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.programar_id_seq;
       public          postgres    false    226            ?           0    0    programar_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.programar_id_seq OWNED BY public.programar.id;
          public          postgres    false    233            ?            1259    18506     programar_id_tipo_evaluacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.programar_id_tipo_evaluacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.programar_id_tipo_evaluacion_seq;
       public          postgres    false    226            ?           0    0     programar_id_tipo_evaluacion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.programar_id_tipo_evaluacion_seq OWNED BY public.programar.id_tipo_evaluacion;
          public          postgres    false    234            ?            1259    18507    t_ASIGNATURA_codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."t_ASIGNATURA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."t_ASIGNATURA_codigo_seq";
       public          postgres    false    223            ?           0    0    t_ASIGNATURA_codigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."t_ASIGNATURA_codigo_seq" OWNED BY public.asignatura.codigo;
          public          postgres    false    235            ?            1259    18508    tipo_evaluacion    TABLE     a   CREATE TABLE public.tipo_evaluacion (
    id bigint NOT NULL,
    tipo character varying(255)
);
 #   DROP TABLE public.tipo_evaluacion;
       public         heap    postgres    false            ?            1259    18511    tipo_evaluacion_id_seq    SEQUENCE     ?   ALTER TABLE public.tipo_evaluacion ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tipo_evaluacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    236            ?           2604    18512    admin id    DEFAULT     f   ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public."ADMIN_id_seq"'::regclass);
 7   ALTER TABLE public.admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            ?           2604    18513    asignatura codigo    DEFAULT     z   ALTER TABLE ONLY public.asignatura ALTER COLUMN codigo SET DEFAULT nextval('public."t_ASIGNATURA_codigo_seq"'::regclass);
 @   ALTER TABLE public.asignatura ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    235    223            ?           2604    18514    calendario id    DEFAULT     p   ALTER TABLE ONLY public.calendario ALTER COLUMN id SET DEFAULT nextval('public."CALENDARIO_id_seq"'::regclass);
 <   ALTER TABLE public.calendario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            ?           2604    18515    carrera codigo    DEFAULT     r   ALTER TABLE ONLY public.carrera ALTER COLUMN codigo SET DEFAULT nextval('public."CARRERA_codigo_seq"'::regclass);
 =   ALTER TABLE public.carrera ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    18516    modalidad id    DEFAULT     n   ALTER TABLE ONLY public.modalidad ALTER COLUMN id SET DEFAULT nextval('public."MODALIDAD_id_seq"'::regclass);
 ;   ALTER TABLE public.modalidad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            ?           2604    18517    plan id    DEFAULT     a   ALTER TABLE ONLY public.plan ALTER COLUMN id SET DEFAULT nextval('public."P_id_seq"'::regclass);
 6   ALTER TABLE public.plan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    220            ?           2604    18518    plan codigo_carrera    DEFAULT     y   ALTER TABLE ONLY public.plan ALTER COLUMN codigo_carrera SET DEFAULT nextval('public."P_codigo_carrera_seq"'::regclass);
 B   ALTER TABLE public.plan ALTER COLUMN codigo_carrera DROP DEFAULT;
       public          postgres    false    221    220            ?           2604    18519    profesor id    DEFAULT     l   ALTER TABLE ONLY public.profesor ALTER COLUMN id SET DEFAULT nextval('public."PROFESOR_id_seq"'::regclass);
 :   ALTER TABLE public.profesor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            ?           2604    18520    programar id    DEFAULT     l   ALTER TABLE ONLY public.programar ALTER COLUMN id SET DEFAULT nextval('public.programar_id_seq'::regclass);
 ;   ALTER TABLE public.programar ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    226            ?           2604    18521    programar id_tipo_evaluacion    DEFAULT     ?   ALTER TABLE ONLY public.programar ALTER COLUMN id_tipo_evaluacion SET DEFAULT nextval('public.programar_id_tipo_evaluacion_seq'::regclass);
 K   ALTER TABLE public.programar ALTER COLUMN id_tipo_evaluacion DROP DEFAULT;
       public          postgres    false    234    226            ?           2604    18522    programar id_calendario    DEFAULT     ?   ALTER TABLE ONLY public.programar ALTER COLUMN id_calendario SET DEFAULT nextval('public.programar_id_calendario_seq'::regclass);
 F   ALTER TABLE public.programar ALTER COLUMN id_calendario DROP DEFAULT;
       public          postgres    false    229    226            ?           2604    18523    programar id_modalidad    DEFAULT     ?   ALTER TABLE ONLY public.programar ALTER COLUMN id_modalidad SET DEFAULT nextval('public.programar_id_modalidad_seq'::regclass);
 E   ALTER TABLE public.programar ALTER COLUMN id_modalidad DROP DEFAULT;
       public          postgres    false    230    226            ?           2604    18524    programar codigo_asignatura    DEFAULT     ?   ALTER TABLE ONLY public.programar ALTER COLUMN codigo_asignatura SET DEFAULT nextval('public.programar_codigo_asignatura_seq'::regclass);
 J   ALTER TABLE public.programar ALTER COLUMN codigo_asignatura DROP DEFAULT;
       public          postgres    false    227    226            ?           2604    18525    programar id_admin    DEFAULT     x   ALTER TABLE ONLY public.programar ALTER COLUMN id_admin SET DEFAULT nextval('public.programar_id_admin_seq'::regclass);
 A   ALTER TABLE public.programar ALTER COLUMN id_admin DROP DEFAULT;
       public          postgres    false    228    226            ?           2604    18526    programar id_profesor_dicta    DEFAULT     ?   ALTER TABLE ONLY public.programar ALTER COLUMN id_profesor_dicta SET DEFAULT nextval('public.programar_id_profesor_dicta_seq'::regclass);
 J   ALTER TABLE public.programar ALTER COLUMN id_profesor_dicta DROP DEFAULT;
       public          postgres    false    231    226            ?           2604    18527    programar id_programar    DEFAULT     ?   ALTER TABLE ONLY public.programar ALTER COLUMN id_programar SET DEFAULT nextval('public.programar_id_programar_seq'::regclass);
 E   ALTER TABLE public.programar ALTER COLUMN id_programar DROP DEFAULT;
       public          postgres    false    232    226            ^          0    18444    admin 
   TABLE DATA           ?   COPY public.admin (id, nombre, correo, contrasena) FROM stdin;
    public          postgres    false    210   Y?       k          0    18481 
   asignatura 
   TABLE DATA           d   COPY public.asignatura (codigo, horas_semanales, visible, nombre, catedra, laboratorio) FROM stdin;
    public          postgres    false    223   ??       `          0    18450 
   calendario 
   TABLE DATA           i   COPY public.calendario (id, fecha_inicio, fecha_termino, semanas_totales, periodo, id_admin) FROM stdin;
    public          postgres    false    212   ??       b          0    18456    carrera 
   TABLE DATA           1   COPY public.carrera (codigo, nombre) FROM stdin;
    public          postgres    false    214   ՛       d          0    18462 	   modalidad 
   TABLE DATA           ?   COPY public.modalidad (id, codigo, tipo_modalidad) FROM stdin;
    public          postgres    false    216   ?       h          0    18474    plan 
   TABLE DATA           @   COPY public.plan (id, anio, codigo_carrera, nombre) FROM stdin;
    public          postgres    false    220   ]?       l          0    18486 
   plan_nivel 
   TABLE DATA           K   COPY public.plan_nivel (id, nivel, id_plan, codigo_asignatura) FROM stdin;
    public          postgres    false    224   ??       f          0    18468    profesor 
   TABLE DATA           B   COPY public.profesor (id, nombre, correo, contrasena) FROM stdin;
    public          postgres    false    218   ??       m          0    18489    profesor_dicta 
   TABLE DATA           c   COPY public.profesor_dicta (id, seccion, id_profesor, id_modalidad, codigo_asignatura) FROM stdin;
    public          postgres    false    225   ??       n          0    18494 	   programar 
   TABLE DATA           ?   COPY public.programar (id, nombre, fecha, semana, color, detalles, id_tipo_evaluacion, id_calendario, id_modalidad, codigo_asignatura, id_admin, id_profesor_dicta, id_programar, hora_inicio, hora_termino) FROM stdin;
    public          postgres    false    226   t?       x          0    18508    tipo_evaluacion 
   TABLE DATA           3   COPY public.tipo_evaluacion (id, tipo) FROM stdin;
    public          postgres    false    236   0?       ?           0    0    ADMIN_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."ADMIN_id_seq"', 1, false);
          public          postgres    false    211            ?           0    0    CALENDARIO_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."CALENDARIO_id_seq"', 1, false);
          public          postgres    false    213            ?           0    0    CARRERA_codigo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."CARRERA_codigo_seq"', 1, false);
          public          postgres    false    215            ?           0    0    MODALIDAD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MODALIDAD_id_seq"', 1, false);
          public          postgres    false    217            ?           0    0    PROFESOR_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."PROFESOR_id_seq"', 2, true);
          public          postgres    false    219            ?           0    0    P_codigo_carrera_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."P_codigo_carrera_seq"', 1, false);
          public          postgres    false    221            ?           0    0    P_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public."P_id_seq"', 1, false);
          public          postgres    false    222            ?           0    0    programar_codigo_asignatura_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.programar_codigo_asignatura_seq', 1, false);
          public          postgres    false    227            ?           0    0    programar_id_admin_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.programar_id_admin_seq', 1, false);
          public          postgres    false    228            ?           0    0    programar_id_calendario_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.programar_id_calendario_seq', 1, false);
          public          postgres    false    229            ?           0    0    programar_id_modalidad_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.programar_id_modalidad_seq', 1, false);
          public          postgres    false    230            ?           0    0    programar_id_profesor_dicta_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.programar_id_profesor_dicta_seq', 1, false);
          public          postgres    false    231            ?           0    0    programar_id_programar_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.programar_id_programar_seq', 8, true);
          public          postgres    false    232            ?           0    0    programar_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.programar_id_seq', 8, true);
          public          postgres    false    233            ?           0    0     programar_id_tipo_evaluacion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.programar_id_tipo_evaluacion_seq', 1, false);
          public          postgres    false    234            ?           0    0    t_ASIGNATURA_codigo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."t_ASIGNATURA_codigo_seq"', 1, false);
          public          postgres    false    235            ?           0    0    tipo_evaluacion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tipo_evaluacion_id_seq', 1, false);
          public          postgres    false    237            ?           2606    18529    admin ADMIN_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT "ADMIN_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.admin DROP CONSTRAINT "ADMIN_pkey";
       public            postgres    false    210            ?           2606    18531    calendario CALENDARIO_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT "CALENDARIO_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.calendario DROP CONSTRAINT "CALENDARIO_pkey";
       public            postgres    false    212            ?           2606    18533    carrera CARRERA_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT "CARRERA_pkey" PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.carrera DROP CONSTRAINT "CARRERA_pkey";
       public            postgres    false    214            ?           2606    18535    modalidad MODALIDAD_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.modalidad
    ADD CONSTRAINT "MODALIDAD_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.modalidad DROP CONSTRAINT "MODALIDAD_pkey";
       public            postgres    false    216            ?           2606    18537    plan PLAN_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.plan
    ADD CONSTRAINT "PLAN_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.plan DROP CONSTRAINT "PLAN_pkey";
       public            postgres    false    220            ?           2606    18539    profesor PROFESOR_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT "PROFESOR_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.profesor DROP CONSTRAINT "PROFESOR_pkey";
       public            postgres    false    218            ?           2606    18541    plan_nivel plan_nivel_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT plan_nivel_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT plan_nivel_pkey;
       public            postgres    false    224            ?           2606    18543 "   profesor_dicta profesor_dicta_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT profesor_dicta_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT profesor_dicta_pkey;
       public            postgres    false    225            ?           2606    18545    programar programar_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.programar
    ADD CONSTRAINT programar_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.programar DROP CONSTRAINT programar_pkey;
       public            postgres    false    226            ?           2606    18547    asignatura t_ASIGNATURA_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT "t_ASIGNATURA_pkey" PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.asignatura DROP CONSTRAINT "t_ASIGNATURA_pkey";
       public            postgres    false    223            ?           2606    18549 $   tipo_evaluacion tipo_evaluacion_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tipo_evaluacion
    ADD CONSTRAINT tipo_evaluacion_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tipo_evaluacion DROP CONSTRAINT tipo_evaluacion_pkey;
       public            postgres    false    236            ?           1259    18550    fki_codigo_asignatura_fk    INDEX     \   CREATE INDEX fki_codigo_asignatura_fk ON public.plan_nivel USING btree (codigo_asignatura);
 ,   DROP INDEX public.fki_codigo_asignatura_fk;
       public            postgres    false    224            ?           1259    18551    fki_codigo_carrera_fk    INDEX     P   CREATE INDEX fki_codigo_carrera_fk ON public.plan USING btree (codigo_carrera);
 )   DROP INDEX public.fki_codigo_carrera_fk;
       public            postgres    false    220            ?           1259    18552    fki_id_admin_fk    INDEX     J   CREATE INDEX fki_id_admin_fk ON public.calendario USING btree (id_admin);
 #   DROP INDEX public.fki_id_admin_fk;
       public            postgres    false    212            ?           1259    18553    fki_id_calendario_fk    INDEX     S   CREATE INDEX fki_id_calendario_fk ON public.programar USING btree (id_calendario);
 (   DROP INDEX public.fki_id_calendario_fk;
       public            postgres    false    226            ?           1259    18554    fki_id_modalidad_fk    INDEX     Q   CREATE INDEX fki_id_modalidad_fk ON public.programar USING btree (id_modalidad);
 '   DROP INDEX public.fki_id_modalidad_fk;
       public            postgres    false    226            ?           1259    18555    fki_id_plan    INDEX     E   CREATE INDEX fki_id_plan ON public.plan_nivel USING btree (id_plan);
    DROP INDEX public.fki_id_plan;
       public            postgres    false    224            ?           1259    18556    fki_id_profesor_dicta_fk    INDEX     [   CREATE INDEX fki_id_profesor_dicta_fk ON public.programar USING btree (id_profesor_dicta);
 ,   DROP INDEX public.fki_id_profesor_dicta_fk;
       public            postgres    false    226            ?           1259    18557    fki_id_profesor_fk    INDEX     T   CREATE INDEX fki_id_profesor_fk ON public.profesor_dicta USING btree (id_profesor);
 &   DROP INDEX public.fki_id_profesor_fk;
       public            postgres    false    225            ?           1259    18558    fki_id_programar_fk    INDEX     Q   CREATE INDEX fki_id_programar_fk ON public.programar USING btree (id_programar);
 '   DROP INDEX public.fki_id_programar_fk;
       public            postgres    false    226            ?           1259    18559    fki_id_tipo_evaluacion_fk    INDEX     ]   CREATE INDEX fki_id_tipo_evaluacion_fk ON public.programar USING btree (id_tipo_evaluacion);
 -   DROP INDEX public.fki_id_tipo_evaluacion_fk;
       public            postgres    false    226            ?           2606    18560 #   profesor_dicta codigo_asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 M   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    223    3252    225            ?           2606    18565    plan_nivel codigo_asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    223    3252    224            ?           2606    18570    programar codigo_asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 H   ALTER TABLE ONLY public.programar DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    226    3252    223            ?           2606    18575    plan codigo_carrera_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plan
    ADD CONSTRAINT codigo_carrera_fk FOREIGN KEY (codigo_carrera) REFERENCES public.carrera(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public.plan DROP CONSTRAINT codigo_carrera_fk;
       public          postgres    false    220    214    3243            ?           2606    18580    calendario id_admin_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT id_admin_fk FOREIGN KEY (id_admin) REFERENCES public.admin(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public.calendario DROP CONSTRAINT id_admin_fk;
       public          postgres    false    212    3238    210            ?           2606    18585    programar id_admin_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar
    ADD CONSTRAINT id_admin_fk FOREIGN KEY (id_admin) REFERENCES public.admin(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public.programar DROP CONSTRAINT id_admin_fk;
       public          postgres    false    210    3238    226            ?           2606    18590    programar id_calendario_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar
    ADD CONSTRAINT id_calendario_fk FOREIGN KEY (id_calendario) REFERENCES public.calendario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 D   ALTER TABLE ONLY public.programar DROP CONSTRAINT id_calendario_fk;
       public          postgres    false    226    3240    212            ?           2606    18595    profesor_dicta id_modalidad_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public.modalidad(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 H   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    3245    225    216            ?           2606    18600    programar id_modalidad_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public.modalidad(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public.programar DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    3245    226    216            ?           2606    18605    plan_nivel id_plan    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT id_plan FOREIGN KEY (id_plan) REFERENCES public.plan(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 <   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT id_plan;
       public          postgres    false    224    220    3249            ?           2606    18610    programar id_profesor_dicta_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar
    ADD CONSTRAINT id_profesor_dicta_fk FOREIGN KEY (id_profesor_dicta) REFERENCES public.profesor_dicta(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 H   ALTER TABLE ONLY public.programar DROP CONSTRAINT id_profesor_dicta_fk;
       public          postgres    false    226    3259    225            ?           2606    18615    profesor_dicta id_profesor_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT id_profesor_fk FOREIGN KEY (id_profesor) REFERENCES public.profesor(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT id_profesor_fk;
       public          postgres    false    225    218    3247            ?           2606    18620    programar id_programar_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar
    ADD CONSTRAINT id_programar_fk FOREIGN KEY (id_programar) REFERENCES public.programar(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public.programar DROP CONSTRAINT id_programar_fk;
       public          postgres    false    3266    226    226            ?           2606    18625    programar id_tipo_evaluacion_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar
    ADD CONSTRAINT id_tipo_evaluacion_fk FOREIGN KEY (id_tipo_evaluacion) REFERENCES public.tipo_evaluacion(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.programar DROP CONSTRAINT id_tipo_evaluacion_fk;
       public          postgres    false    3268    236    226            ^   D   x?3?tL????,.)JL?/RpN?I?KI,??Wp???K?LI??I????????C#cS?=... n??      k   ?  x??W?n?0}?~E> ???&?c?!?@?#/??72r??q???3?8?Mv?۷T=???3?Y?g??ظ?;?D?p?pp?K?	?3p??q7????fM-:h???xt'4(|(?B#???w??OQkYC0-5"???S?w?
????O?z???t?柨1??,????B?_?ɶ??F#?p?????l??1*?T??]pJ?6??ws????O?Y??:8?D?<??ƶ?0?͞,????%?a?[??89???Ik?4?@?+4?ԙY?0?? ?ډƂJ?!RF???6?NN
?f?JbHh?=?$????	ۉ???L?զ?????k?[?՚+&_??7??e??YwYz???Uv?c?k1,?QL?????{o??҉?qWT???)vZn??nYl???????p?0+?^?)Yz?5?????	Hx8Yb??=$??????z?#J???y?dt`j3B???~??&AUv(F+&V?5?ضE???!???O??orΖݷh?? A?Ҙ??8?O3??JD??M?Q??"?????6?u?`?i|?gٌ?~?R??Ys?G???E-????R?	a???3?Dv˗???c??9ab?Q??c?|J_??F?F?V?g?2;??#l\	3???H?????r8+y,_p<???5vd???s?W?q??j.~(ց8?????z?-?W?r?q˙Z??e???MȢ2??sw??eq?'?????<??m??Aϥ3??G??0????zǲ???Ҋ:?߬ef???%?-??8??*K?35x?WE??T?hޫ"??+??U+??_Y???M?l<??S??Z?6??41?Aս2?|??$? ?۝???????ʨgțOH-???`|???B??5>Z??jj?,9???QQ??.,??ẽ6???]"ʲa?Fa?㊏8?xQ9??>?/??E??嗯V?Ƀ?Xe"?%2摳s?&?͜?r??ɑ?????K`??????Oɠ???'ï?777?ߢ??      `   *   x?3?4202?5??54?0?t?L8-9?4??i????? ???      b   9   x?3463?t?,??QH?+?L/??2??0?t?JM.M???S?+M-	???Ab???? U??      d   /   x?3?4??ͬ(??2?4?K-.H-*????2?4?t?,-2c???? ??
?      h   G   x?3?4202?50"NCsc??̲????Բ|.c???	L??&[?????e?"kaa̙???\????? ???      l   $  x?E?Kr!C??0)???%??G?ݠ?l?J?P3????i-??h;ڦ??1?hGR'Vk{ve????=??o-s?g?????Yц7????X?!~?:I:?B(?F?s6d???AM???׿?l07???v?7??y??:??&=V???6ހv?$`J??F??lp$,?/%?`??auӲ?X_?N???> ?{"?z!??d? g??;ɢ_?ׅ?6??1	!?Jp??? |ԁ~?A??$??"??>P?MXȧ??	r?H?X"????>?????Ⱦx9?????p?      f   ?  x??W?R#7}_?/P??????d[T?*/mY???hf\??*ߐ?i????!?'?i]?r?g4R??7??Z???.?݂??v?6ʊ?4[?O]Cvil?юF???????|????\"}?,~?
 Ͳ?=???X????+?j?n?g????g???Г?PȣcuG?B?/),\????sZ?Ze?X?{v!?>/V]?????5??8??r3???)K?:)????K?j??+F??v?wo??2v?G}n?ᡍ?:h#?uI)_ç?&?-۴)*+??|???xtݹ?}????/?#F?z???&៩??j??܂???6????*C??gXR?P]??_??H????su??QO5sF{jY+?#~D?E9?>76?)񓁙??d*?7??B??>΃?d???%??????4?Z?ٻQ?0?*???v????X7?N??????s????fR??/?f?>Q?9X?"}????"#xv5xvY&???
???:v???????__??I?g?9 5cӒ??!A?7??
???T}?y?:RK?7?~???!???y??Ίr<?\??>?Ttch?hn3R???QsZp*o?z??????Q)?|?!?)??z)?gfY_???:?/\??r?Ւe?????(k?{???"?*?_??2???,??J?`b6?A6?d?'?????9?????l1???+ۤ????H???Hnd??B?5T?a?/??i	׽Gq?F???7^?3xw??w.D??Dx?A????a??c/]ב5oC?+??!j?9u??[n 8???<4??????XëE5?6?ס{?j?????Me?S5?y?R??E|?,??*???y???[?9?%
??t ??Z6?qV?C߉??tt?n}?~^?T?A`?c?ʫ??u%D?uV??D???A????2*??????_??Z?w+ħŋӛi26|oz??d9Nr???UA?u???X?????[??????U?ϸi?3*??z?/mL??z.???B?3hZ{fY*?i???I????.?? m?V}]???ȋ:????? I?WD͙??$?FU??o?WP??ˏ?
1??Qo?Q???????٣C?????rIu?P??,??Q?1@???ݎ?GȲ??L
? ????M?;?CR?<e?0/?n?O0?!??ݠ???"f?l?7?
I6?"?д;??~?0]???T6?	Aa?'%??m??Nt;??}Q?????b?yEIl8??\S?a???y??????u^?Yq,??H-??????P8"????9???Q?v9c?Q??n("??erԋ
??"B5?B?vC-*?J?d?\?P-?X??Q<?d̄????T??Ȣ2?\N???%	j???%??wV󒭃 ?L????s?b ?_??Y????w?w?L?/.4X^D????3?QG?J!N??DX???X?^?h?,Zf?i??A??Ev????Qf??Oi?G(??A!??t??7??a/Mz^?}}zr??x??g1?h??4?1d;W???O?g	5?7?p܉1eд?+??m?yr??_?£??)?3?卾N,W?Tel?43V?qEo???"?j??????;?46??#?}\????Xu?r?7?te?????fU?aN??p??Q?????Me ??á5??1p|??{s?AR?%?7.??i?]????0? es?k      m   ?   x?]?;??0Ck?0;???lZ!g???kRJ?I??i??C~M?@???????`?KWt֓[??檨Qod??K?l
?~'G;ֺ9?J??L?45D??????0?lrl?ڐ??ym(???&???????A?ƚ?d?ϛ??.6C3Eb?Hь?h&6FX9*as`-_????????????a??2P),?B?"?5_???D???mLu?H)ؑ??-?:3??U?	?^?      n   ?   x???1?0???+Ε??4?(?8?N.?	R??????7??:???q<??1q???????	?
?
,<?=Y???;Ϸ@???R?9Pc??jX?$ww??ĉ???'o??$???\????W?????f?,F;v?K?I?	?!wT???L??"???1?ΣW?      x   >   x?3??IL?/J,?/???2???K?/?M?2?t??+)???2?p?2EV????	U???? ?X.     