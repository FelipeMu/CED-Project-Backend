PGDMP     1    8            	    z           CED_BD    14.5    14.5 o    w           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            x           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            z           1262    16394    CED_BD    DATABASE     d   CREATE DATABASE "CED_BD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE "CED_BD";
                postgres    false            ?            1259    16395    admin    TABLE     ?   CREATE TABLE public.admin (
    id integer NOT NULL,
    nombre character varying,
    correo character varying,
    contrasena character varying,
    rut character varying
);
    DROP TABLE public.admin;
       public         heap    postgres    false            ?            1259    16400    ADMIN_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."ADMIN_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."ADMIN_id_seq";
       public          postgres    false    209            {           0    0    ADMIN_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."ADMIN_id_seq" OWNED BY public.admin.id;
          public          postgres    false    210            ?            1259    16406 
   calendario    TABLE     ?   CREATE TABLE public.calendario (
    id integer NOT NULL,
    fecha_inicio date,
    fecha_termino date,
    semanas_totales integer,
    periodo character varying
);
    DROP TABLE public.calendario;
       public         heap    postgres    false            ?            1259    16411    CALENDARIO_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."CALENDARIO_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."CALENDARIO_id_seq";
       public          postgres    false    212            |           0    0    CALENDARIO_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."CALENDARIO_id_seq" OWNED BY public.calendario.id;
          public          postgres    false    213            ?            1259    16412    carrera    TABLE     [   CREATE TABLE public.carrera (
    codigo integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            ?            1259    16417    CARRERA_codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."CARRERA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."CARRERA_codigo_seq";
       public          postgres    false    214            }           0    0    CARRERA_codigo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."CARRERA_codigo_seq" OWNED BY public.carrera.codigo;
          public          postgres    false    215            ?            1259    16418 	   modalidad    TABLE     }   CREATE TABLE public.modalidad (
    id integer NOT NULL,
    codigo bigint NOT NULL,
    tipo_modalidad character varying
);
    DROP TABLE public.modalidad;
       public         heap    postgres    false            ?            1259    16423    MODALIDAD_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."MODALIDAD_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MODALIDAD_id_seq";
       public          postgres    false    216            ~           0    0    MODALIDAD_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."MODALIDAD_id_seq" OWNED BY public.modalidad.id;
          public          postgres    false    217            ?            1259    16433    profesor    TABLE     ?   CREATE TABLE public.profesor (
    id integer NOT NULL,
    rut character varying,
    nombre character varying,
    correo character varying,
    contrasena character varying,
    dv character varying
);
    DROP TABLE public.profesor;
       public         heap    postgres    false            ?            1259    16447    PROFESOR_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROFESOR_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."PROFESOR_id_seq";
       public          postgres    false    219                       0    0    PROFESOR_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."PROFESOR_id_seq" OWNED BY public.profesor.id;
          public          postgres    false    220            ?            1259    16448    programar_evaluacion    TABLE     ?  CREATE TABLE public.programar_evaluacion (
    id integer NOT NULL,
    fecha date,
    semana integer,
    hora_inicio timestamp without time zone,
    hora_termino timestamp without time zone,
    id_tipo_evaluacion integer NOT NULL,
    id_calendario integer NOT NULL,
    id_modalidad integer NOT NULL,
    codigo_asignatura integer NOT NULL,
    nombre character varying,
    color character varying
);
 (   DROP TABLE public.programar_evaluacion;
       public         heap    postgres    false            ?            1259    16453 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq";
       public          postgres    false    221            ?           0    0 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq" OWNED BY public.programar_evaluacion.codigo_asignatura;
          public          postgres    false    222            ?            1259    16454 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq";
       public          postgres    false    221            ?           0    0 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq" OWNED BY public.programar_evaluacion.id_calendario;
          public          postgres    false    223            ?            1259    16455 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq";
       public          postgres    false    221            ?           0    0 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq" OWNED BY public.programar_evaluacion.id_modalidad;
          public          postgres    false    224            ?            1259    16456    PROGRAMAR_EVALUACION_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_seq";
       public          postgres    false    221            ?           0    0    PROGRAMAR_EVALUACION_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_seq" OWNED BY public.programar_evaluacion.id;
          public          postgres    false    225            ?            1259    16457 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq";
       public          postgres    false    221            ?           0    0 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq" OWNED BY public.programar_evaluacion.id_tipo_evaluacion;
          public          postgres    false    226            ?            1259    16424    plan    TABLE     j   CREATE TABLE public.plan (
    id integer NOT NULL,
    anio date,
    codigo_carrera integer NOT NULL
);
    DROP TABLE public.plan;
       public         heap    postgres    false            ?            1259    16458    P_codigo_carrera_seq    SEQUENCE     ?   CREATE SEQUENCE public."P_codigo_carrera_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."P_codigo_carrera_seq";
       public          postgres    false    218            ?           0    0    P_codigo_carrera_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public."P_codigo_carrera_seq" OWNED BY public.plan.codigo_carrera;
          public          postgres    false    227            ?            1259    16459    P_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."P_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public."P_id_seq";
       public          postgres    false    218            ?           0    0    P_id_seq    SEQUENCE OWNED BY     :   ALTER SEQUENCE public."P_id_seq" OWNED BY public.plan.id;
          public          postgres    false    228            ?            1259    16401 
   asignatura    TABLE     ?   CREATE TABLE public.asignatura (
    codigo integer NOT NULL,
    horas_semanales integer,
    laboratorio boolean,
    visible boolean,
    nombre character varying,
    nivel integer
);
    DROP TABLE public.asignatura;
       public         heap    postgres    false            ?            1259    16688 
   plan_nivel    TABLE     ?   CREATE TABLE public.plan_nivel (
    id integer NOT NULL,
    nivel integer,
    id_plan integer,
    codigo_asignatura integer
);
    DROP TABLE public.plan_nivel;
       public         heap    postgres    false            ?            1259    16643    profesor_dicta    TABLE     ?   CREATE TABLE public.profesor_dicta (
    id integer NOT NULL,
    seccion character varying,
    id_profesor integer,
    id_modalidad integer,
    codigo_asignatura integer
);
 "   DROP TABLE public.profesor_dicta;
       public         heap    postgres    false            ?            1259    16705    hola    MATERIALIZED VIEW     ?  CREATE MATERIALIZED VIEW public.hola AS
 SELECT DISTINCT pd.id,
    asig.nombre,
    pd.seccion,
    pn.nivel,
    asig.horas_semanales,
    md.tipo_modalidad
   FROM public.asignatura asig,
    public.profesor_dicta pd,
    public.plan_nivel pn,
    public.modalidad md,
    public.profesor pr
  WHERE (((pr.rut)::text = '2222222'::text) AND (pr.id = pd.id_profesor) AND (md.id = pd.id_modalidad) AND (asig.codigo = pd.codigo_asignatura) AND (asig.codigo = pn.codigo_asignatura))
  WITH NO DATA;
 $   DROP MATERIALIZED VIEW public.hola;
       public         heap    postgres    false    216    232    233    232    233    219    211    211    232    211    219    232    232    216            ?            1259    16712    hola2    VIEW     ?  CREATE VIEW public.hola2 AS
 SELECT DISTINCT pd.id,
    asig.nombre,
    pd.seccion,
    pn.nivel,
    asig.horas_semanales,
    md.tipo_modalidad
   FROM public.asignatura asig,
    public.profesor_dicta pd,
    public.plan_nivel pn,
    public.modalidad md,
    public.profesor pr
  WHERE (((pr.rut)::text = '2222222'::text) AND (pr.id = pd.id_profesor) AND (md.id = pd.id_modalidad) AND (asig.codigo = pd.codigo_asignatura) AND (asig.codigo = pn.codigo_asignatura));
    DROP VIEW public.hola2;
       public          postgres    false    233    232    232    232    219    216    216    211    211    211    233    232    232    219            ?            1259    16466    t_ASIGNATURA_codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."t_ASIGNATURA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."t_ASIGNATURA_codigo_seq";
       public          postgres    false    211            ?           0    0    t_ASIGNATURA_codigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."t_ASIGNATURA_codigo_seq" OWNED BY public.asignatura.codigo;
          public          postgres    false    229            ?            1259    16587    tipo_evaluacion    TABLE     a   CREATE TABLE public.tipo_evaluacion (
    id bigint NOT NULL,
    tipo character varying(255)
);
 #   DROP TABLE public.tipo_evaluacion;
       public         heap    postgres    false            ?            1259    16586    tipo_evaluacion_id_seq    SEQUENCE     ?   ALTER TABLE public.tipo_evaluacion ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tipo_evaluacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            ?           2604    16467    admin id    DEFAULT     f   ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public."ADMIN_id_seq"'::regclass);
 7   ALTER TABLE public.admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            ?           2604    16468    asignatura codigo    DEFAULT     z   ALTER TABLE ONLY public.asignatura ALTER COLUMN codigo SET DEFAULT nextval('public."t_ASIGNATURA_codigo_seq"'::regclass);
 @   ALTER TABLE public.asignatura ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    229    211            ?           2604    16469    calendario id    DEFAULT     p   ALTER TABLE ONLY public.calendario ALTER COLUMN id SET DEFAULT nextval('public."CALENDARIO_id_seq"'::regclass);
 <   ALTER TABLE public.calendario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            ?           2604    16470    carrera codigo    DEFAULT     r   ALTER TABLE ONLY public.carrera ALTER COLUMN codigo SET DEFAULT nextval('public."CARRERA_codigo_seq"'::regclass);
 =   ALTER TABLE public.carrera ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    16471    modalidad id    DEFAULT     n   ALTER TABLE ONLY public.modalidad ALTER COLUMN id SET DEFAULT nextval('public."MODALIDAD_id_seq"'::regclass);
 ;   ALTER TABLE public.modalidad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            ?           2604    16472    plan id    DEFAULT     a   ALTER TABLE ONLY public.plan ALTER COLUMN id SET DEFAULT nextval('public."P_id_seq"'::regclass);
 6   ALTER TABLE public.plan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    218            ?           2604    16473    plan codigo_carrera    DEFAULT     y   ALTER TABLE ONLY public.plan ALTER COLUMN codigo_carrera SET DEFAULT nextval('public."P_codigo_carrera_seq"'::regclass);
 B   ALTER TABLE public.plan ALTER COLUMN codigo_carrera DROP DEFAULT;
       public          postgres    false    227    218            ?           2604    16477    profesor id    DEFAULT     l   ALTER TABLE ONLY public.profesor ALTER COLUMN id SET DEFAULT nextval('public."PROFESOR_id_seq"'::regclass);
 :   ALTER TABLE public.profesor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            ?           2604    16482    programar_evaluacion id    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_seq"'::regclass);
 F   ALTER TABLE public.programar_evaluacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    221            ?           2604    16483 '   programar_evaluacion id_tipo_evaluacion    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id_tipo_evaluacion SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"'::regclass);
 V   ALTER TABLE public.programar_evaluacion ALTER COLUMN id_tipo_evaluacion DROP DEFAULT;
       public          postgres    false    226    221            ?           2604    16484 "   programar_evaluacion id_calendario    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id_calendario SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_calendario_seq"'::regclass);
 Q   ALTER TABLE public.programar_evaluacion ALTER COLUMN id_calendario DROP DEFAULT;
       public          postgres    false    223    221            ?           2604    16485 !   programar_evaluacion id_modalidad    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id_modalidad SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_modalidad_seq"'::regclass);
 P   ALTER TABLE public.programar_evaluacion ALTER COLUMN id_modalidad DROP DEFAULT;
       public          postgres    false    224    221            ?           2604    16486 &   programar_evaluacion codigo_asignatura    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN codigo_asignatura SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"'::regclass);
 U   ALTER TABLE public.programar_evaluacion ALTER COLUMN codigo_asignatura DROP DEFAULT;
       public          postgres    false    222    221            [          0    16395    admin 
   TABLE DATA           D   COPY public.admin (id, nombre, correo, contrasena, rut) FROM stdin;
    public          postgres    false    209   ??       ]          0    16401 
   asignatura 
   TABLE DATA           b   COPY public.asignatura (codigo, horas_semanales, laboratorio, visible, nombre, nivel) FROM stdin;
    public          postgres    false    211   ??       ^          0    16406 
   calendario 
   TABLE DATA           _   COPY public.calendario (id, fecha_inicio, fecha_termino, semanas_totales, periodo) FROM stdin;
    public          postgres    false    212   ??       `          0    16412    carrera 
   TABLE DATA           1   COPY public.carrera (codigo, nombre) FROM stdin;
    public          postgres    false    214   ?       b          0    16418 	   modalidad 
   TABLE DATA           ?   COPY public.modalidad (id, codigo, tipo_modalidad) FROM stdin;
    public          postgres    false    216   f?       d          0    16424    plan 
   TABLE DATA           8   COPY public.plan (id, anio, codigo_carrera) FROM stdin;
    public          postgres    false    218   ??       s          0    16688 
   plan_nivel 
   TABLE DATA           K   COPY public.plan_nivel (id, nivel, id_plan, codigo_asignatura) FROM stdin;
    public          postgres    false    233   ??       e          0    16433    profesor 
   TABLE DATA           K   COPY public.profesor (id, rut, nombre, correo, contrasena, dv) FROM stdin;
    public          postgres    false    219   f?       r          0    16643    profesor_dicta 
   TABLE DATA           c   COPY public.profesor_dicta (id, seccion, id_profesor, id_modalidad, codigo_asignatura) FROM stdin;
    public          postgres    false    232   -?       g          0    16448    programar_evaluacion 
   TABLE DATA           ?   COPY public.programar_evaluacion (id, fecha, semana, hora_inicio, hora_termino, id_tipo_evaluacion, id_calendario, id_modalidad, codigo_asignatura, nombre, color) FROM stdin;
    public          postgres    false    221   ?       q          0    16587    tipo_evaluacion 
   TABLE DATA           3   COPY public.tipo_evaluacion (id, tipo) FROM stdin;
    public          postgres    false    231   6?       ?           0    0    ADMIN_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."ADMIN_id_seq"', 1, false);
          public          postgres    false    210            ?           0    0    CALENDARIO_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."CALENDARIO_id_seq"', 1, false);
          public          postgres    false    213            ?           0    0    CARRERA_codigo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."CARRERA_codigo_seq"', 1, false);
          public          postgres    false    215            ?           0    0    MODALIDAD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MODALIDAD_id_seq"', 1, false);
          public          postgres    false    217            ?           0    0    PROFESOR_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."PROFESOR_id_seq"', 2, true);
          public          postgres    false    220            ?           0    0 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"', 1, false);
          public          postgres    false    222            ?           0    0 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_calendario_seq"', 1, false);
          public          postgres    false    223            ?           0    0 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_modalidad_seq"', 1, false);
          public          postgres    false    224            ?           0    0    PROGRAMAR_EVALUACION_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_seq"', 1, false);
          public          postgres    false    225            ?           0    0 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"', 1, false);
          public          postgres    false    226            ?           0    0    P_codigo_carrera_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."P_codigo_carrera_seq"', 1, false);
          public          postgres    false    227            ?           0    0    P_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public."P_id_seq"', 1, false);
          public          postgres    false    228            ?           0    0    t_ASIGNATURA_codigo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."t_ASIGNATURA_codigo_seq"', 1, false);
          public          postgres    false    229            ?           0    0    tipo_evaluacion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tipo_evaluacion_id_seq', 1, false);
          public          postgres    false    230            ?           2606    16489    admin ADMIN_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT "ADMIN_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.admin DROP CONSTRAINT "ADMIN_pkey";
       public            postgres    false    209            ?           2606    16491    calendario CALENDARIO_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT "CALENDARIO_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.calendario DROP CONSTRAINT "CALENDARIO_pkey";
       public            postgres    false    212            ?           2606    16493    carrera CARRERA_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT "CARRERA_pkey" PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.carrera DROP CONSTRAINT "CARRERA_pkey";
       public            postgres    false    214            ?           2606    16495    modalidad MODALIDAD_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.modalidad
    ADD CONSTRAINT "MODALIDAD_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.modalidad DROP CONSTRAINT "MODALIDAD_pkey";
       public            postgres    false    216            ?           2606    16499    plan PLAN_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.plan
    ADD CONSTRAINT "PLAN_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.plan DROP CONSTRAINT "PLAN_pkey";
       public            postgres    false    218            ?           2606    16503    profesor PROFESOR_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT "PROFESOR_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.profesor DROP CONSTRAINT "PROFESOR_pkey";
       public            postgres    false    219            ?           2606    16505 .   programar_evaluacion PROGRAMAR_EVALUACION_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT "PROGRAMAR_EVALUACION_pkey" PRIMARY KEY (id_tipo_evaluacion);
 Z   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT "PROGRAMAR_EVALUACION_pkey";
       public            postgres    false    221            ?           2606    16692    plan_nivel plan_nivel_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT plan_nivel_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT plan_nivel_pkey;
       public            postgres    false    233            ?           2606    16649 "   profesor_dicta profesor_dicta_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT profesor_dicta_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT profesor_dicta_pkey;
       public            postgres    false    232            ?           2606    16509    asignatura t_ASIGNATURA_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT "t_ASIGNATURA_pkey" PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.asignatura DROP CONSTRAINT "t_ASIGNATURA_pkey";
       public            postgres    false    211            ?           2606    16591 $   tipo_evaluacion tipo_evaluacion_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tipo_evaluacion
    ADD CONSTRAINT tipo_evaluacion_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tipo_evaluacion DROP CONSTRAINT tipo_evaluacion_pkey;
       public            postgres    false    231            ?           1259    16698    fki_codigo_asignatura_fk    INDEX     \   CREATE INDEX fki_codigo_asignatura_fk ON public.plan_nivel USING btree (codigo_asignatura);
 ,   DROP INDEX public.fki_codigo_asignatura_fk;
       public            postgres    false    233            ?           1259    16511    fki_codigo_carrera_fk    INDEX     P   CREATE INDEX fki_codigo_carrera_fk ON public.plan USING btree (codigo_carrera);
 )   DROP INDEX public.fki_codigo_carrera_fk;
       public            postgres    false    218            ?           1259    16512    fki_id_calendario_fk    INDEX     ^   CREATE INDEX fki_id_calendario_fk ON public.programar_evaluacion USING btree (id_calendario);
 (   DROP INDEX public.fki_id_calendario_fk;
       public            postgres    false    221            ?           1259    16513    fki_id_modalidad_fk    INDEX     \   CREATE INDEX fki_id_modalidad_fk ON public.programar_evaluacion USING btree (id_modalidad);
 '   DROP INDEX public.fki_id_modalidad_fk;
       public            postgres    false    221            ?           1259    16704    fki_id_plan    INDEX     E   CREATE INDEX fki_id_plan ON public.plan_nivel USING btree (id_plan);
    DROP INDEX public.fki_id_plan;
       public            postgres    false    233            ?           1259    16655    fki_id_profesor_fk    INDEX     T   CREATE INDEX fki_id_profesor_fk ON public.profesor_dicta USING btree (id_profesor);
 &   DROP INDEX public.fki_id_profesor_fk;
       public            postgres    false    232            ?           1259    16672    fki_id_tipo_evaluacion    INDEX     e   CREATE INDEX fki_id_tipo_evaluacion ON public.programar_evaluacion USING btree (id_tipo_evaluacion);
 *   DROP INDEX public.fki_id_tipo_evaluacion;
       public            postgres    false    221            ?           1259    16515    fki_id_tipo_evaluacion_fk    INDEX     h   CREATE INDEX fki_id_tipo_evaluacion_fk ON public.programar_evaluacion USING btree (id_tipo_evaluacion);
 -   DROP INDEX public.fki_id_tipo_evaluacion_fk;
       public            postgres    false    221            ?           2606    16522 )   programar_evaluacion codigo_asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 S   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    221    211    3241            ?           2606    16661 #   profesor_dicta codigo_asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 M   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    211    3241    232            ?           2606    16693    plan_nivel codigo_asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    211    3241    233            ?           2606    16532    plan codigo_carrera_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plan
    ADD CONSTRAINT codigo_carrera_fk FOREIGN KEY (codigo_carrera) REFERENCES public.carrera(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public.plan DROP CONSTRAINT codigo_carrera_fk;
       public          postgres    false    3245    214    218            ?           2606    16537 %   programar_evaluacion id_calendario_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT id_calendario_fk FOREIGN KEY (id_calendario) REFERENCES public.calendario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 O   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT id_calendario_fk;
       public          postgres    false    212    221    3243            ?           2606    16542 $   programar_evaluacion id_modalidad_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public.modalidad(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 N   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    3247    216    221            ?           2606    16656    profesor_dicta id_modalidad_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public.modalidad(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 H   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    216    232    3247            ?           2606    16699    plan_nivel id_plan    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT id_plan FOREIGN KEY (id_plan) REFERENCES public.plan(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 <   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT id_plan;
       public          postgres    false    3249    233    218            ?           2606    16650    profesor_dicta id_profesor_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT id_profesor_fk FOREIGN KEY (id_profesor) REFERENCES public.profesor(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT id_profesor_fk;
       public          postgres    false    3252    232    219            ?           2606    16667 '   programar_evaluacion id_tipo_evaluacion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT id_tipo_evaluacion FOREIGN KEY (id_tipo_evaluacion) REFERENCES public.tipo_evaluacion(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Q   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT id_tipo_evaluacion;
       public          postgres    false    221    3260    231            [   6   x?3?LL??̃?z`ҡ?819C/9???54261?44?Rzf???\1z\\\ ??      ]   ?   x????j?0???S?	J?tM??u?C????? ??l֧??:ac-c?bЧ?OR????{Nހ?>R??JM??"h$/????互?9??
h w?Ȧ"O??R?i$??fFume???w?0?v???H?*tf?7#5l?pè?b?????`ptp/?}??<L0?B~H{o|????}???$]r%?	$??z????F? ?.?qN`???e=???{?????\?˫?WM?|???(      ^   (   x?3?4202?5??54?0?t?L8-9?4?????? ??o      `   9   x?3463?t?,??QH?+?L/??2??0?t?JM.M???S?+M-	???Ab???? U??      b   /   x?3?4??ͬ(??2?4?K-.H-*????2?4?t?,-2c???? ??
?      d   1   x?3?4202?50"NCc.C??\?ܘ?(bh163?????? )f	?      s   p   x?=??D!CϦ?CT??l?u,??K^?k?GY'?R?6?PhK???1???+?^9???q??>?-??A6???????4rr`^0pݵ??ъ??<z??f?Vվ ???%W      e   ?  x?m??n"1??=O?'??p???l+?*??jo??????? ?ӯ?IڵB????? A{?.?c{??e??AZ?Z̫??ZW^?>]???D?CN??RF??2h?ۆG?:߉rItСlRɳ)L?`t?~*???=?I0?? ?"1?$??fd??j?^??ҞՃmݽp?(	???.??A(!?Y6?9Ď8?j]?x?????FBl?㺣????/?l??/???ޱ????βk????[?Ȗ?$???????6x$??d?&\4T??[?G%?I-???`+O^+??9?;?)g?$?ˈ?6?$V??d?d?'V??F?M?)f??? )?/??????Hs??	?	:~`??Y?}??Ae?x?h???I?;,?eިZzvз?={籎??Op?H???DN?O??쨫/e?!T8?????Nl??? ??q?8񶌍???&??h?{??9?upH>\???FYUF??y?H(?^????K5γ??qJ???n	?&?A?R{??9??[?mui?JlC??m|?'R^&:?M{?%?%9?I???????ד???b?<?? ?Fz??9lSr???[~????-?v710Ez?5?59>u?b?ǲ???ԡH?%?q??Q??	?r??k???_?-q??p(?(/"?8#սs??K`46?(?|?:???A-?ކ?5E?"?N?7ϲ?/jٶ      r   ?   x?]?;??0Ck?0;???lZ!g???kRJ?I??i??C~M?@???????`?KWt֓[??檨Qod??K?l
?~'G;ֺ9?J??L?45D??????0?lrl?ڐ??ym(???&???????A?ƚ?d?ϛ??.6C3Eb?Hь?h&6FX9*as`-_????????????a??2P),?B?"?5_???D???mLu?H)ؑ??-?:3??U?	?^?      g      x?????? ? ?      q   ;   x?3??IL?/J,?/???2???K?/?M?2?t??+)???2?p?2EV?
S???? ??     