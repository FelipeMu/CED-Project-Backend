PGDMP                 
    	    z           CED_BD    14.5    14.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    CED_BD    DATABASE     d   CREATE DATABASE "CED_BD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE "CED_BD";
                postgres    false            �            1259    16395    admin    TABLE     �   CREATE TABLE public.admin (
    id integer NOT NULL,
    nombre text[],
    correo text[],
    contrasena text[],
    rut text[]
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    16400    ADMIN_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ADMIN_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."ADMIN_id_seq";
       public          postgres    false    209            �           0    0    ADMIN_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."ADMIN_id_seq" OWNED BY public.admin.id;
          public          postgres    false    210            �            1259    16406 
   calendario    TABLE     �   CREATE TABLE public.calendario (
    id integer NOT NULL,
    periodo text[],
    fecha_inicio date,
    fecha_termino date,
    semanas_totales integer
);
    DROP TABLE public.calendario;
       public         heap    postgres    false            �            1259    16411    CALENDARIO_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CALENDARIO_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."CALENDARIO_id_seq";
       public          postgres    false    212            �           0    0    CALENDARIO_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."CALENDARIO_id_seq" OWNED BY public.calendario.id;
          public          postgres    false    213            �            1259    16412    carrera    TABLE     P   CREATE TABLE public.carrera (
    codigo integer NOT NULL,
    nombre text[]
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            �            1259    16417    CARRERA_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public."CARRERA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."CARRERA_codigo_seq";
       public          postgres    false    214            �           0    0    CARRERA_codigo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."CARRERA_codigo_seq" OWNED BY public.carrera.codigo;
          public          postgres    false    215            �            1259    16418 	   modalidad    TABLE     V   CREATE TABLE public.modalidad (
    id integer NOT NULL,
    tipo_modalidad text[]
);
    DROP TABLE public.modalidad;
       public         heap    postgres    false            �            1259    16423    MODALIDAD_id_seq    SEQUENCE     �   CREATE SEQUENCE public."MODALIDAD_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MODALIDAD_id_seq";
       public          postgres    false    216            �           0    0    MODALIDAD_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."MODALIDAD_id_seq" OWNED BY public.modalidad.id;
          public          postgres    false    217            �            1259    16427 
   plan_nivel    TABLE     �   CREATE TABLE public.plan_nivel (
    id integer NOT NULL,
    nivel integer,
    codigo_asignatura integer NOT NULL,
    id_plan integer NOT NULL
);
    DROP TABLE public.plan_nivel;
       public         heap    postgres    false            �            1259    16430     PLAN_NIVEL_codigo_asignatura_seq    SEQUENCE     �   CREATE SEQUENCE public."PLAN_NIVEL_codigo_asignatura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."PLAN_NIVEL_codigo_asignatura_seq";
       public          postgres    false    219            �           0    0     PLAN_NIVEL_codigo_asignatura_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."PLAN_NIVEL_codigo_asignatura_seq" OWNED BY public.plan_nivel.codigo_asignatura;
          public          postgres    false    220            �            1259    16431    PLAN_NIVEL_id_plan_seq    SEQUENCE     �   CREATE SEQUENCE public."PLAN_NIVEL_id_plan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."PLAN_NIVEL_id_plan_seq";
       public          postgres    false    219            �           0    0    PLAN_NIVEL_id_plan_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."PLAN_NIVEL_id_plan_seq" OWNED BY public.plan_nivel.id_plan;
          public          postgres    false    221            �            1259    16432    PLAN_NIVEL_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PLAN_NIVEL_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."PLAN_NIVEL_id_seq";
       public          postgres    false    219            �           0    0    PLAN_NIVEL_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."PLAN_NIVEL_id_seq" OWNED BY public.plan_nivel.id;
          public          postgres    false    222            �            1259    16438    profesor_dicta    TABLE     �   CREATE TABLE public.profesor_dicta (
    id integer NOT NULL,
    seccion text[],
    id_profesor integer NOT NULL,
    codigo_asignatura integer NOT NULL,
    id_modalidad integer NOT NULL
);
 "   DROP TABLE public.profesor_dicta;
       public         heap    postgres    false            �            1259    16443 $   PROFESOR_DICTA_codigo_asignatura_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_DICTA_codigo_asignatura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."PROFESOR_DICTA_codigo_asignatura_seq";
       public          postgres    false    224            �           0    0 $   PROFESOR_DICTA_codigo_asignatura_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."PROFESOR_DICTA_codigo_asignatura_seq" OWNED BY public.profesor_dicta.codigo_asignatura;
          public          postgres    false    225            �            1259    16444    PROFESOR_DICTA_id_modalidad_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_DICTA_id_modalidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."PROFESOR_DICTA_id_modalidad_seq";
       public          postgres    false    224            �           0    0    PROFESOR_DICTA_id_modalidad_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."PROFESOR_DICTA_id_modalidad_seq" OWNED BY public.profesor_dicta.id_modalidad;
          public          postgres    false    226            �            1259    16445    PROFESOR_DICTA_id_profesor_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_DICTA_id_profesor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."PROFESOR_DICTA_id_profesor_seq";
       public          postgres    false    224            �           0    0    PROFESOR_DICTA_id_profesor_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."PROFESOR_DICTA_id_profesor_seq" OWNED BY public.profesor_dicta.id_profesor;
          public          postgres    false    227            �            1259    16446    PROFESOR_DICTA_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_DICTA_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."PROFESOR_DICTA_id_seq";
       public          postgres    false    224            �           0    0    PROFESOR_DICTA_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."PROFESOR_DICTA_id_seq" OWNED BY public.profesor_dicta.id;
          public          postgres    false    228            �            1259    16433    profesor    TABLE     �   CREATE TABLE public.profesor (
    id integer NOT NULL,
    rut text[],
    nombre text[],
    correo text[],
    contrasena text[]
);
    DROP TABLE public.profesor;
       public         heap    postgres    false            �            1259    16447    PROFESOR_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."PROFESOR_id_seq";
       public          postgres    false    223            �           0    0    PROFESOR_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."PROFESOR_id_seq" OWNED BY public.profesor.id;
          public          postgres    false    229            �            1259    16448    programar_evaluacion    TABLE     T  CREATE TABLE public.programar_evaluacion (
    id integer NOT NULL,
    nombre text[],
    fecha date,
    semana integer,
    hora_inicio date,
    hora_termino date,
    color text[],
    id_tipo_evaluacion integer NOT NULL,
    id_calendario integer NOT NULL,
    id_modalidad integer NOT NULL,
    codigo_asignatura integer NOT NULL
);
 (   DROP TABLE public.programar_evaluacion;
       public         heap    postgres    false            �            1259    16453 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq";
       public          postgres    false    230            �           0    0 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq" OWNED BY public.programar_evaluacion.codigo_asignatura;
          public          postgres    false    231            �            1259    16454 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq";
       public          postgres    false    230            �           0    0 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq" OWNED BY public.programar_evaluacion.id_calendario;
          public          postgres    false    232            �            1259    16455 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq";
       public          postgres    false    230            �           0    0 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq" OWNED BY public.programar_evaluacion.id_modalidad;
          public          postgres    false    233            �            1259    16456    PROGRAMAR_EVALUACION_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_seq";
       public          postgres    false    230            �           0    0    PROGRAMAR_EVALUACION_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_seq" OWNED BY public.programar_evaluacion.id;
          public          postgres    false    234            �            1259    16457 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq";
       public          postgres    false    230            �           0    0 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq" OWNED BY public.programar_evaluacion.id_tipo_evaluacion;
          public          postgres    false    235            �            1259    16424    plan    TABLE     j   CREATE TABLE public.plan (
    id integer NOT NULL,
    anio date,
    codigo_carrera integer NOT NULL
);
    DROP TABLE public.plan;
       public         heap    postgres    false            �            1259    16458    P_codigo_carrera_seq    SEQUENCE     �   CREATE SEQUENCE public."P_codigo_carrera_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."P_codigo_carrera_seq";
       public          postgres    false    218            �           0    0    P_codigo_carrera_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public."P_codigo_carrera_seq" OWNED BY public.plan.codigo_carrera;
          public          postgres    false    236            �            1259    16459    P_id_seq    SEQUENCE     �   CREATE SEQUENCE public."P_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public."P_id_seq";
       public          postgres    false    218            �           0    0    P_id_seq    SEQUENCE OWNED BY     :   ALTER SEQUENCE public."P_id_seq" OWNED BY public.plan.id;
          public          postgres    false    237            �            1259    16460    tipoEvaluacion    TABLE     S   CREATE TABLE public."tipoEvaluacion" (
    id integer NOT NULL,
    tipo text[]
);
 $   DROP TABLE public."tipoEvaluacion";
       public         heap    postgres    false            �            1259    16465    TIPOEVALUACION_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TIPOEVALUACION_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."TIPOEVALUACION_id_seq";
       public          postgres    false    238            �           0    0    TIPOEVALUACION_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."TIPOEVALUACION_id_seq" OWNED BY public."tipoEvaluacion".id;
          public          postgres    false    239            �            1259    16401 
   asignatura    TABLE     �   CREATE TABLE public.asignatura (
    codigo integer NOT NULL,
    nombre text[],
    horas_semanales integer,
    nivel integer,
    laboratorio boolean,
    visible boolean
);
    DROP TABLE public.asignatura;
       public         heap    postgres    false            �            1259    16466    t_ASIGNATURA_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public."t_ASIGNATURA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."t_ASIGNATURA_codigo_seq";
       public          postgres    false    211            �           0    0    t_ASIGNATURA_codigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."t_ASIGNATURA_codigo_seq" OWNED BY public.asignatura.codigo;
          public          postgres    false    240            �           2604    16467    admin id    DEFAULT     f   ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public."ADMIN_id_seq"'::regclass);
 7   ALTER TABLE public.admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16468    asignatura codigo    DEFAULT     z   ALTER TABLE ONLY public.asignatura ALTER COLUMN codigo SET DEFAULT nextval('public."t_ASIGNATURA_codigo_seq"'::regclass);
 @   ALTER TABLE public.asignatura ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    240    211            �           2604    16469    calendario id    DEFAULT     p   ALTER TABLE ONLY public.calendario ALTER COLUMN id SET DEFAULT nextval('public."CALENDARIO_id_seq"'::regclass);
 <   ALTER TABLE public.calendario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    16470    carrera codigo    DEFAULT     r   ALTER TABLE ONLY public.carrera ALTER COLUMN codigo SET DEFAULT nextval('public."CARRERA_codigo_seq"'::regclass);
 =   ALTER TABLE public.carrera ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16471    modalidad id    DEFAULT     n   ALTER TABLE ONLY public.modalidad ALTER COLUMN id SET DEFAULT nextval('public."MODALIDAD_id_seq"'::regclass);
 ;   ALTER TABLE public.modalidad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16472    plan id    DEFAULT     a   ALTER TABLE ONLY public.plan ALTER COLUMN id SET DEFAULT nextval('public."P_id_seq"'::regclass);
 6   ALTER TABLE public.plan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    218            �           2604    16473    plan codigo_carrera    DEFAULT     y   ALTER TABLE ONLY public.plan ALTER COLUMN codigo_carrera SET DEFAULT nextval('public."P_codigo_carrera_seq"'::regclass);
 B   ALTER TABLE public.plan ALTER COLUMN codigo_carrera DROP DEFAULT;
       public          postgres    false    236    218            �           2604    16474    plan_nivel id    DEFAULT     p   ALTER TABLE ONLY public.plan_nivel ALTER COLUMN id SET DEFAULT nextval('public."PLAN_NIVEL_id_seq"'::regclass);
 <   ALTER TABLE public.plan_nivel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    219            �           2604    16475    plan_nivel codigo_asignatura    DEFAULT     �   ALTER TABLE ONLY public.plan_nivel ALTER COLUMN codigo_asignatura SET DEFAULT nextval('public."PLAN_NIVEL_codigo_asignatura_seq"'::regclass);
 K   ALTER TABLE public.plan_nivel ALTER COLUMN codigo_asignatura DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16476    plan_nivel id_plan    DEFAULT     z   ALTER TABLE ONLY public.plan_nivel ALTER COLUMN id_plan SET DEFAULT nextval('public."PLAN_NIVEL_id_plan_seq"'::regclass);
 A   ALTER TABLE public.plan_nivel ALTER COLUMN id_plan DROP DEFAULT;
       public          postgres    false    221    219            �           2604    16477    profesor id    DEFAULT     l   ALTER TABLE ONLY public.profesor ALTER COLUMN id SET DEFAULT nextval('public."PROFESOR_id_seq"'::regclass);
 :   ALTER TABLE public.profesor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    223            �           2604    16478    profesor_dicta id    DEFAULT     x   ALTER TABLE ONLY public.profesor_dicta ALTER COLUMN id SET DEFAULT nextval('public."PROFESOR_DICTA_id_seq"'::regclass);
 @   ALTER TABLE public.profesor_dicta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    224            �           2604    16479    profesor_dicta id_profesor    DEFAULT     �   ALTER TABLE ONLY public.profesor_dicta ALTER COLUMN id_profesor SET DEFAULT nextval('public."PROFESOR_DICTA_id_profesor_seq"'::regclass);
 I   ALTER TABLE public.profesor_dicta ALTER COLUMN id_profesor DROP DEFAULT;
       public          postgres    false    227    224            �           2604    16480     profesor_dicta codigo_asignatura    DEFAULT     �   ALTER TABLE ONLY public.profesor_dicta ALTER COLUMN codigo_asignatura SET DEFAULT nextval('public."PROFESOR_DICTA_codigo_asignatura_seq"'::regclass);
 O   ALTER TABLE public.profesor_dicta ALTER COLUMN codigo_asignatura DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16481    profesor_dicta id_modalidad    DEFAULT     �   ALTER TABLE ONLY public.profesor_dicta ALTER COLUMN id_modalidad SET DEFAULT nextval('public."PROFESOR_DICTA_id_modalidad_seq"'::regclass);
 J   ALTER TABLE public.profesor_dicta ALTER COLUMN id_modalidad DROP DEFAULT;
       public          postgres    false    226    224            �           2604    16482    programar_evaluacion id    DEFAULT     �   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_seq"'::regclass);
 F   ALTER TABLE public.programar_evaluacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    230            �           2604    16483 '   programar_evaluacion id_tipo_evaluacion    DEFAULT     �   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id_tipo_evaluacion SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"'::regclass);
 V   ALTER TABLE public.programar_evaluacion ALTER COLUMN id_tipo_evaluacion DROP DEFAULT;
       public          postgres    false    235    230            �           2604    16484 "   programar_evaluacion id_calendario    DEFAULT     �   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id_calendario SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_calendario_seq"'::regclass);
 Q   ALTER TABLE public.programar_evaluacion ALTER COLUMN id_calendario DROP DEFAULT;
       public          postgres    false    232    230            �           2604    16485 !   programar_evaluacion id_modalidad    DEFAULT     �   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id_modalidad SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_modalidad_seq"'::regclass);
 P   ALTER TABLE public.programar_evaluacion ALTER COLUMN id_modalidad DROP DEFAULT;
       public          postgres    false    233    230            �           2604    16486 &   programar_evaluacion codigo_asignatura    DEFAULT     �   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN codigo_asignatura SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"'::regclass);
 U   ALTER TABLE public.programar_evaluacion ALTER COLUMN codigo_asignatura DROP DEFAULT;
       public          postgres    false    231    230            �           2604    16487    tipoEvaluacion id    DEFAULT     z   ALTER TABLE ONLY public."tipoEvaluacion" ALTER COLUMN id SET DEFAULT nextval('public."TIPOEVALUACION_id_seq"'::regclass);
 B   ALTER TABLE public."tipoEvaluacion" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            _          0    16395    admin 
   TABLE DATA           D   COPY public.admin (id, nombre, correo, contrasena, rut) FROM stdin;
    public          postgres    false    209   
�       a          0    16401 
   asignatura 
   TABLE DATA           b   COPY public.asignatura (codigo, nombre, horas_semanales, nivel, laboratorio, visible) FROM stdin;
    public          postgres    false    211   '�       b          0    16406 
   calendario 
   TABLE DATA           _   COPY public.calendario (id, periodo, fecha_inicio, fecha_termino, semanas_totales) FROM stdin;
    public          postgres    false    212   D�       d          0    16412    carrera 
   TABLE DATA           1   COPY public.carrera (codigo, nombre) FROM stdin;
    public          postgres    false    214   a�       f          0    16418 	   modalidad 
   TABLE DATA           7   COPY public.modalidad (id, tipo_modalidad) FROM stdin;
    public          postgres    false    216   ~�       h          0    16424    plan 
   TABLE DATA           8   COPY public.plan (id, anio, codigo_carrera) FROM stdin;
    public          postgres    false    218   ��       i          0    16427 
   plan_nivel 
   TABLE DATA           K   COPY public.plan_nivel (id, nivel, codigo_asignatura, id_plan) FROM stdin;
    public          postgres    false    219   ��       m          0    16433    profesor 
   TABLE DATA           G   COPY public.profesor (id, rut, nombre, correo, contrasena) FROM stdin;
    public          postgres    false    223   գ       n          0    16438    profesor_dicta 
   TABLE DATA           c   COPY public.profesor_dicta (id, seccion, id_profesor, codigo_asignatura, id_modalidad) FROM stdin;
    public          postgres    false    224   �       t          0    16448    programar_evaluacion 
   TABLE DATA           �   COPY public.programar_evaluacion (id, nombre, fecha, semana, hora_inicio, hora_termino, color, id_tipo_evaluacion, id_calendario, id_modalidad, codigo_asignatura) FROM stdin;
    public          postgres    false    230   �       |          0    16460    tipoEvaluacion 
   TABLE DATA           4   COPY public."tipoEvaluacion" (id, tipo) FROM stdin;
    public          postgres    false    238   ,�       �           0    0    ADMIN_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."ADMIN_id_seq"', 1, false);
          public          postgres    false    210            �           0    0    CALENDARIO_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."CALENDARIO_id_seq"', 1, false);
          public          postgres    false    213            �           0    0    CARRERA_codigo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."CARRERA_codigo_seq"', 1, false);
          public          postgres    false    215            �           0    0    MODALIDAD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MODALIDAD_id_seq"', 1, false);
          public          postgres    false    217            �           0    0     PLAN_NIVEL_codigo_asignatura_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."PLAN_NIVEL_codigo_asignatura_seq"', 1, false);
          public          postgres    false    220            �           0    0    PLAN_NIVEL_id_plan_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."PLAN_NIVEL_id_plan_seq"', 1, false);
          public          postgres    false    221            �           0    0    PLAN_NIVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."PLAN_NIVEL_id_seq"', 1, false);
          public          postgres    false    222            �           0    0 $   PROFESOR_DICTA_codigo_asignatura_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."PROFESOR_DICTA_codigo_asignatura_seq"', 1, false);
          public          postgres    false    225            �           0    0    PROFESOR_DICTA_id_modalidad_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."PROFESOR_DICTA_id_modalidad_seq"', 1, false);
          public          postgres    false    226            �           0    0    PROFESOR_DICTA_id_profesor_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."PROFESOR_DICTA_id_profesor_seq"', 1, false);
          public          postgres    false    227            �           0    0    PROFESOR_DICTA_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."PROFESOR_DICTA_id_seq"', 1, false);
          public          postgres    false    228            �           0    0    PROFESOR_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."PROFESOR_id_seq"', 1, false);
          public          postgres    false    229            �           0    0 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"', 1, false);
          public          postgres    false    231            �           0    0 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_calendario_seq"', 1, false);
          public          postgres    false    232            �           0    0 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_modalidad_seq"', 1, false);
          public          postgres    false    233            �           0    0    PROGRAMAR_EVALUACION_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_seq"', 1, false);
          public          postgres    false    234            �           0    0 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"', 1, false);
          public          postgres    false    235            �           0    0    P_codigo_carrera_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."P_codigo_carrera_seq"', 1, false);
          public          postgres    false    236            �           0    0    P_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public."P_id_seq"', 1, false);
          public          postgres    false    237            �           0    0    TIPOEVALUACION_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."TIPOEVALUACION_id_seq"', 1, false);
          public          postgres    false    239            �           0    0    t_ASIGNATURA_codigo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."t_ASIGNATURA_codigo_seq"', 1, false);
          public          postgres    false    240            �           2606    16489    admin ADMIN_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT "ADMIN_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.admin DROP CONSTRAINT "ADMIN_pkey";
       public            postgres    false    209            �           2606    16491    calendario CALENDARIO_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT "CALENDARIO_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.calendario DROP CONSTRAINT "CALENDARIO_pkey";
       public            postgres    false    212            �           2606    16493    carrera CARRERA_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT "CARRERA_pkey" PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.carrera DROP CONSTRAINT "CARRERA_pkey";
       public            postgres    false    214            �           2606    16495    modalidad MODALIDAD_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.modalidad
    ADD CONSTRAINT "MODALIDAD_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.modalidad DROP CONSTRAINT "MODALIDAD_pkey";
       public            postgres    false    216            �           2606    16497    plan_nivel PLAN_NIVEL_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT "PLAN_NIVEL_pkey" PRIMARY KEY (id_plan);
 F   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT "PLAN_NIVEL_pkey";
       public            postgres    false    219            �           2606    16499    plan PLAN_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.plan
    ADD CONSTRAINT "PLAN_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.plan DROP CONSTRAINT "PLAN_pkey";
       public            postgres    false    218            �           2606    16501 "   profesor_dicta PROFESOR_DICTA_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT "PROFESOR_DICTA_pkey" PRIMARY KEY (id_profesor);
 N   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT "PROFESOR_DICTA_pkey";
       public            postgres    false    224            �           2606    16503    profesor PROFESOR_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT "PROFESOR_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.profesor DROP CONSTRAINT "PROFESOR_pkey";
       public            postgres    false    223            �           2606    16505 .   programar_evaluacion PROGRAMAR_EVALUACION_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT "PROGRAMAR_EVALUACION_pkey" PRIMARY KEY (id_tipo_evaluacion);
 Z   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT "PROGRAMAR_EVALUACION_pkey";
       public            postgres    false    230            �           2606    16507 "   tipoEvaluacion TIPOEVALUACION_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."tipoEvaluacion"
    ADD CONSTRAINT "TIPOEVALUACION_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."tipoEvaluacion" DROP CONSTRAINT "TIPOEVALUACION_pkey";
       public            postgres    false    238            �           2606    16509    asignatura t_ASIGNATURA_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT "t_ASIGNATURA_pkey" PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.asignatura DROP CONSTRAINT "t_ASIGNATURA_pkey";
       public            postgres    false    211            �           1259    16510    fki_codigo_asignatura_fk    INDEX     \   CREATE INDEX fki_codigo_asignatura_fk ON public.plan_nivel USING btree (codigo_asignatura);
 ,   DROP INDEX public.fki_codigo_asignatura_fk;
       public            postgres    false    219            �           1259    16511    fki_codigo_carrera_fk    INDEX     P   CREATE INDEX fki_codigo_carrera_fk ON public.plan USING btree (codigo_carrera);
 )   DROP INDEX public.fki_codigo_carrera_fk;
       public            postgres    false    218            �           1259    16512    fki_id_calendario_fk    INDEX     ^   CREATE INDEX fki_id_calendario_fk ON public.programar_evaluacion USING btree (id_calendario);
 (   DROP INDEX public.fki_id_calendario_fk;
       public            postgres    false    230            �           1259    16513    fki_id_modalidad_fk    INDEX     \   CREATE INDEX fki_id_modalidad_fk ON public.programar_evaluacion USING btree (id_modalidad);
 '   DROP INDEX public.fki_id_modalidad_fk;
       public            postgres    false    230            �           1259    16514    fki_id_profesor_fk    INDEX     T   CREATE INDEX fki_id_profesor_fk ON public.profesor_dicta USING btree (id_profesor);
 &   DROP INDEX public.fki_id_profesor_fk;
       public            postgres    false    224            �           1259    16515    fki_id_tipo_evaluacion_fk    INDEX     h   CREATE INDEX fki_id_tipo_evaluacion_fk ON public.programar_evaluacion USING btree (id_tipo_evaluacion);
 -   DROP INDEX public.fki_id_tipo_evaluacion_fk;
       public            postgres    false    230            �           1259    16516    fki_o    INDEX     ?   CREATE INDEX fki_o ON public.plan_nivel USING btree (id_plan);
    DROP INDEX public.fki_o;
       public            postgres    false    219            �           2606    16517    plan_nivel codigo_asignatura_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    219    211    3248            �           2606    16522 )   programar_evaluacion codigo_asignatura_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 S   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    211    3248    230            �           2606    16527 #   profesor_dicta codigo_asignatura_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 M   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    211    224    3248            �           2606    16532    plan codigo_carrera_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan
    ADD CONSTRAINT codigo_carrera_fk FOREIGN KEY (codigo_carrera) REFERENCES public.carrera(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public.plan DROP CONSTRAINT codigo_carrera_fk;
       public          postgres    false    218    3252    214            �           2606    16537 %   programar_evaluacion id_calendario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT id_calendario_fk FOREIGN KEY (id_calendario) REFERENCES public.calendario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 O   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT id_calendario_fk;
       public          postgres    false    230    212    3250            �           2606    16542 $   programar_evaluacion id_modalidad_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public.modalidad(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 N   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    3254    230    216            �           2606    16547    profesor_dicta id_modalidad_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public.modalidad(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 H   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    224    216    3254            �           2606    16552    plan_nivel id_plan_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT id_plan_fk FOREIGN KEY (id_plan) REFERENCES public.plan(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT id_plan_fk;
       public          postgres    false    218    3256    219            �           2606    16557    profesor_dicta id_profesor_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT id_profesor_fk FOREIGN KEY (id_profesor) REFERENCES public.profesor(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT id_profesor_fk;
       public          postgres    false    224    223    3263            �           2606    16562 *   programar_evaluacion id_tipo_evaluacion_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT id_tipo_evaluacion_fk FOREIGN KEY (id_tipo_evaluacion) REFERENCES public."tipoEvaluacion"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 T   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT id_tipo_evaluacion_fk;
       public          postgres    false    238    3273    230            _      x������ � �      a      x������ � �      b      x������ � �      d      x������ � �      f      x������ � �      h      x������ � �      i      x������ � �      m      x������ � �      n      x������ � �      t      x������ � �      |      x������ � �     