PGDMP     3    &            	    z           CED_DB    14.5    14.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16395    CED_DB    DATABASE     d   CREATE DATABASE "CED_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE "CED_DB";
                postgres    false            �            1259    16422    ADMIN    TABLE     �   CREATE TABLE public."ADMIN" (
    id integer NOT NULL,
    nombre text[],
    correo text[],
    contrasena text[],
    rut text[]
);
    DROP TABLE public."ADMIN";
       public         heap    postgres    false            �            1259    16421    ADMIN_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ADMIN_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."ADMIN_id_seq";
       public          postgres    false    214            �           0    0    ADMIN_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."ADMIN_id_seq" OWNED BY public."ADMIN".id;
          public          postgres    false    213            �            1259    16397 
   ASIGNATURA    TABLE     �   CREATE TABLE public."ASIGNATURA" (
    codigo integer NOT NULL,
    nombre text[],
    horas_semanales integer,
    nivel integer,
    laboratorio boolean,
    visible boolean
);
     DROP TABLE public."ASIGNATURA";
       public         heap    postgres    false            �            1259    16440 
   CALENDARIO    TABLE     �   CREATE TABLE public."CALENDARIO" (
    id integer NOT NULL,
    periodo text[],
    fecha_inicio date,
    fecha_termino date,
    semanas_totales integer
);
     DROP TABLE public."CALENDARIO";
       public         heap    postgres    false            �            1259    16439    CALENDARIO_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CALENDARIO_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."CALENDARIO_id_seq";
       public          postgres    false    218            �           0    0    CALENDARIO_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."CALENDARIO_id_seq" OWNED BY public."CALENDARIO".id;
          public          postgres    false    217            �            1259    16406    CARRERA    TABLE     R   CREATE TABLE public."CARRERA" (
    codigo integer NOT NULL,
    nombre text[]
);
    DROP TABLE public."CARRERA";
       public         heap    postgres    false            �            1259    16405    CARRERA_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public."CARRERA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."CARRERA_codigo_seq";
       public          postgres    false    212            �           0    0    CARRERA_codigo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."CARRERA_codigo_seq" OWNED BY public."CARRERA".codigo;
          public          postgres    false    211            �            1259    16449 	   MODALIDAD    TABLE     X   CREATE TABLE public."MODALIDAD" (
    id integer NOT NULL,
    tipo_modalidad text[]
);
    DROP TABLE public."MODALIDAD";
       public         heap    postgres    false            �            1259    16448    MODALIDAD_id_seq    SEQUENCE     �   CREATE SEQUENCE public."MODALIDAD_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MODALIDAD_id_seq";
       public          postgres    false    220            �           0    0    MODALIDAD_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MODALIDAD_id_seq" OWNED BY public."MODALIDAD".id;
          public          postgres    false    219            �            1259    16481    PLAN    TABLE     l   CREATE TABLE public."PLAN" (
    id integer NOT NULL,
    anio date,
    codigo_carrera integer NOT NULL
);
    DROP TABLE public."PLAN";
       public         heap    postgres    false            �            1259    16498 
   PLAN_NIVEL    TABLE     �   CREATE TABLE public."PLAN_NIVEL" (
    id integer NOT NULL,
    nivel integer,
    codigo_asignatura integer NOT NULL,
    id_plan integer NOT NULL
);
     DROP TABLE public."PLAN_NIVEL";
       public         heap    postgres    false            �            1259    16496     PLAN_NIVEL_codigo_asignatura_seq    SEQUENCE     �   CREATE SEQUENCE public."PLAN_NIVEL_codigo_asignatura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."PLAN_NIVEL_codigo_asignatura_seq";
       public          postgres    false    229            �           0    0     PLAN_NIVEL_codigo_asignatura_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."PLAN_NIVEL_codigo_asignatura_seq" OWNED BY public."PLAN_NIVEL".codigo_asignatura;
          public          postgres    false    227            �            1259    16497    PLAN_NIVEL_id_plan_seq    SEQUENCE     �   CREATE SEQUENCE public."PLAN_NIVEL_id_plan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."PLAN_NIVEL_id_plan_seq";
       public          postgres    false    229            �           0    0    PLAN_NIVEL_id_plan_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."PLAN_NIVEL_id_plan_seq" OWNED BY public."PLAN_NIVEL".id_plan;
          public          postgres    false    228            �            1259    16495    PLAN_NIVEL_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PLAN_NIVEL_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."PLAN_NIVEL_id_seq";
       public          postgres    false    229            �           0    0    PLAN_NIVEL_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."PLAN_NIVEL_id_seq" OWNED BY public."PLAN_NIVEL".id;
          public          postgres    false    226            �            1259    16458    PROFESOR    TABLE     �   CREATE TABLE public."PROFESOR" (
    id integer NOT NULL,
    rut text[],
    nombre text[],
    correo text[],
    contrasena text[]
);
    DROP TABLE public."PROFESOR";
       public         heap    postgres    false            �            1259    16567    PROFESOR_DICTA    TABLE     �   CREATE TABLE public."PROFESOR_DICTA" (
    id integer NOT NULL,
    seccion text[],
    id_profesor integer NOT NULL,
    codigo_asignatura integer NOT NULL,
    id_modalidad integer NOT NULL
);
 $   DROP TABLE public."PROFESOR_DICTA";
       public         heap    postgres    false            �            1259    16565 $   PROFESOR_DICTA_codigo_asignatura_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_DICTA_codigo_asignatura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."PROFESOR_DICTA_codigo_asignatura_seq";
       public          postgres    false    240            �           0    0 $   PROFESOR_DICTA_codigo_asignatura_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."PROFESOR_DICTA_codigo_asignatura_seq" OWNED BY public."PROFESOR_DICTA".codigo_asignatura;
          public          postgres    false    238            �            1259    16566    PROFESOR_DICTA_id_modalidad_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_DICTA_id_modalidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."PROFESOR_DICTA_id_modalidad_seq";
       public          postgres    false    240            �           0    0    PROFESOR_DICTA_id_modalidad_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."PROFESOR_DICTA_id_modalidad_seq" OWNED BY public."PROFESOR_DICTA".id_modalidad;
          public          postgres    false    239            �            1259    16564    PROFESOR_DICTA_id_profesor_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_DICTA_id_profesor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."PROFESOR_DICTA_id_profesor_seq";
       public          postgres    false    240            �           0    0    PROFESOR_DICTA_id_profesor_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."PROFESOR_DICTA_id_profesor_seq" OWNED BY public."PROFESOR_DICTA".id_profesor;
          public          postgres    false    237            �            1259    16563    PROFESOR_DICTA_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_DICTA_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."PROFESOR_DICTA_id_seq";
       public          postgres    false    240            �           0    0    PROFESOR_DICTA_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."PROFESOR_DICTA_id_seq" OWNED BY public."PROFESOR_DICTA".id;
          public          postgres    false    236            �            1259    16457    PROFESOR_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PROFESOR_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."PROFESOR_id_seq";
       public          postgres    false    222            �           0    0    PROFESOR_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."PROFESOR_id_seq" OWNED BY public."PROFESOR".id;
          public          postgres    false    221            �            1259    16523    PROGRAMAR_EVALUACION    TABLE     V  CREATE TABLE public."PROGRAMAR_EVALUACION" (
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
 *   DROP TABLE public."PROGRAMAR_EVALUACION";
       public         heap    postgres    false            �            1259    16522 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq";
       public          postgres    false    235            �           0    0 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq" OWNED BY public."PROGRAMAR_EVALUACION".codigo_asignatura;
          public          postgres    false    234            �            1259    16520 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq";
       public          postgres    false    235            �           0    0 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq" OWNED BY public."PROGRAMAR_EVALUACION".id_calendario;
          public          postgres    false    232            �            1259    16521 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq";
       public          postgres    false    235            �           0    0 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq" OWNED BY public."PROGRAMAR_EVALUACION".id_modalidad;
          public          postgres    false    233            �            1259    16518    PROGRAMAR_EVALUACION_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_seq";
       public          postgres    false    235            �           0    0    PROGRAMAR_EVALUACION_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_seq" OWNED BY public."PROGRAMAR_EVALUACION".id;
          public          postgres    false    230            �            1259    16519 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE     �   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq";
       public          postgres    false    235            �           0    0 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq" OWNED BY public."PROGRAMAR_EVALUACION".id_tipo_evaluacion;
          public          postgres    false    231            �            1259    16480    P_codigo_carrera_seq    SEQUENCE     �   CREATE SEQUENCE public."P_codigo_carrera_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."P_codigo_carrera_seq";
       public          postgres    false    225            �           0    0    P_codigo_carrera_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."P_codigo_carrera_seq" OWNED BY public."PLAN".codigo_carrera;
          public          postgres    false    224            �            1259    16479    P_id_seq    SEQUENCE     �   CREATE SEQUENCE public."P_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public."P_id_seq";
       public          postgres    false    225            �           0    0    P_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE public."P_id_seq" OWNED BY public."PLAN".id;
          public          postgres    false    223            �            1259    16431    TIPOEVALUACION    TABLE     S   CREATE TABLE public."TIPOEVALUACION" (
    id integer NOT NULL,
    tipo text[]
);
 $   DROP TABLE public."TIPOEVALUACION";
       public         heap    postgres    false            �            1259    16430    TIPOEVALUACION_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TIPOEVALUACION_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."TIPOEVALUACION_id_seq";
       public          postgres    false    216            �           0    0    TIPOEVALUACION_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."TIPOEVALUACION_id_seq" OWNED BY public."TIPOEVALUACION".id;
          public          postgres    false    215            �            1259    16396    t_ASIGNATURA_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public."t_ASIGNATURA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."t_ASIGNATURA_codigo_seq";
       public          postgres    false    210            �           0    0    t_ASIGNATURA_codigo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."t_ASIGNATURA_codigo_seq" OWNED BY public."ASIGNATURA".codigo;
          public          postgres    false    209            �           2604    16425    ADMIN id    DEFAULT     h   ALTER TABLE ONLY public."ADMIN" ALTER COLUMN id SET DEFAULT nextval('public."ADMIN_id_seq"'::regclass);
 9   ALTER TABLE public."ADMIN" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16400    ASIGNATURA codigo    DEFAULT     |   ALTER TABLE ONLY public."ASIGNATURA" ALTER COLUMN codigo SET DEFAULT nextval('public."t_ASIGNATURA_codigo_seq"'::regclass);
 B   ALTER TABLE public."ASIGNATURA" ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    16443    CALENDARIO id    DEFAULT     r   ALTER TABLE ONLY public."CALENDARIO" ALTER COLUMN id SET DEFAULT nextval('public."CALENDARIO_id_seq"'::regclass);
 >   ALTER TABLE public."CALENDARIO" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16409    CARRERA codigo    DEFAULT     t   ALTER TABLE ONLY public."CARRERA" ALTER COLUMN codigo SET DEFAULT nextval('public."CARRERA_codigo_seq"'::regclass);
 ?   ALTER TABLE public."CARRERA" ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    16452    MODALIDAD id    DEFAULT     p   ALTER TABLE ONLY public."MODALIDAD" ALTER COLUMN id SET DEFAULT nextval('public."MODALIDAD_id_seq"'::regclass);
 =   ALTER TABLE public."MODALIDAD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16484    PLAN id    DEFAULT     c   ALTER TABLE ONLY public."PLAN" ALTER COLUMN id SET DEFAULT nextval('public."P_id_seq"'::regclass);
 8   ALTER TABLE public."PLAN" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    225    225            �           2604    16485    PLAN codigo_carrera    DEFAULT     {   ALTER TABLE ONLY public."PLAN" ALTER COLUMN codigo_carrera SET DEFAULT nextval('public."P_codigo_carrera_seq"'::regclass);
 D   ALTER TABLE public."PLAN" ALTER COLUMN codigo_carrera DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16501    PLAN_NIVEL id    DEFAULT     r   ALTER TABLE ONLY public."PLAN_NIVEL" ALTER COLUMN id SET DEFAULT nextval('public."PLAN_NIVEL_id_seq"'::regclass);
 >   ALTER TABLE public."PLAN_NIVEL" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    226    229            �           2604    16502    PLAN_NIVEL codigo_asignatura    DEFAULT     �   ALTER TABLE ONLY public."PLAN_NIVEL" ALTER COLUMN codigo_asignatura SET DEFAULT nextval('public."PLAN_NIVEL_codigo_asignatura_seq"'::regclass);
 M   ALTER TABLE public."PLAN_NIVEL" ALTER COLUMN codigo_asignatura DROP DEFAULT;
       public          postgres    false    227    229    229            �           2604    16503    PLAN_NIVEL id_plan    DEFAULT     |   ALTER TABLE ONLY public."PLAN_NIVEL" ALTER COLUMN id_plan SET DEFAULT nextval('public."PLAN_NIVEL_id_plan_seq"'::regclass);
 C   ALTER TABLE public."PLAN_NIVEL" ALTER COLUMN id_plan DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16461    PROFESOR id    DEFAULT     n   ALTER TABLE ONLY public."PROFESOR" ALTER COLUMN id SET DEFAULT nextval('public."PROFESOR_id_seq"'::regclass);
 <   ALTER TABLE public."PROFESOR" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16570    PROFESOR_DICTA id    DEFAULT     z   ALTER TABLE ONLY public."PROFESOR_DICTA" ALTER COLUMN id SET DEFAULT nextval('public."PROFESOR_DICTA_id_seq"'::regclass);
 B   ALTER TABLE public."PROFESOR_DICTA" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    240    240            �           2604    16571    PROFESOR_DICTA id_profesor    DEFAULT     �   ALTER TABLE ONLY public."PROFESOR_DICTA" ALTER COLUMN id_profesor SET DEFAULT nextval('public."PROFESOR_DICTA_id_profesor_seq"'::regclass);
 K   ALTER TABLE public."PROFESOR_DICTA" ALTER COLUMN id_profesor DROP DEFAULT;
       public          postgres    false    240    237    240            �           2604    16572     PROFESOR_DICTA codigo_asignatura    DEFAULT     �   ALTER TABLE ONLY public."PROFESOR_DICTA" ALTER COLUMN codigo_asignatura SET DEFAULT nextval('public."PROFESOR_DICTA_codigo_asignatura_seq"'::regclass);
 Q   ALTER TABLE public."PROFESOR_DICTA" ALTER COLUMN codigo_asignatura DROP DEFAULT;
       public          postgres    false    238    240    240            �           2604    16573    PROFESOR_DICTA id_modalidad    DEFAULT     �   ALTER TABLE ONLY public."PROFESOR_DICTA" ALTER COLUMN id_modalidad SET DEFAULT nextval('public."PROFESOR_DICTA_id_modalidad_seq"'::regclass);
 L   ALTER TABLE public."PROFESOR_DICTA" ALTER COLUMN id_modalidad DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    16526    PROGRAMAR_EVALUACION id    DEFAULT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" ALTER COLUMN id SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_seq"'::regclass);
 H   ALTER TABLE public."PROGRAMAR_EVALUACION" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    235    235            �           2604    16527 '   PROGRAMAR_EVALUACION id_tipo_evaluacion    DEFAULT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" ALTER COLUMN id_tipo_evaluacion SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"'::regclass);
 X   ALTER TABLE public."PROGRAMAR_EVALUACION" ALTER COLUMN id_tipo_evaluacion DROP DEFAULT;
       public          postgres    false    235    231    235            �           2604    16528 "   PROGRAMAR_EVALUACION id_calendario    DEFAULT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" ALTER COLUMN id_calendario SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_calendario_seq"'::regclass);
 S   ALTER TABLE public."PROGRAMAR_EVALUACION" ALTER COLUMN id_calendario DROP DEFAULT;
       public          postgres    false    235    232    235            �           2604    16529 !   PROGRAMAR_EVALUACION id_modalidad    DEFAULT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" ALTER COLUMN id_modalidad SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_modalidad_seq"'::regclass);
 R   ALTER TABLE public."PROGRAMAR_EVALUACION" ALTER COLUMN id_modalidad DROP DEFAULT;
       public          postgres    false    233    235    235            �           2604    16530 &   PROGRAMAR_EVALUACION codigo_asignatura    DEFAULT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" ALTER COLUMN codigo_asignatura SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"'::regclass);
 W   ALTER TABLE public."PROGRAMAR_EVALUACION" ALTER COLUMN codigo_asignatura DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    16434    TIPOEVALUACION id    DEFAULT     z   ALTER TABLE ONLY public."TIPOEVALUACION" ALTER COLUMN id SET DEFAULT nextval('public."TIPOEVALUACION_id_seq"'::regclass);
 B   ALTER TABLE public."TIPOEVALUACION" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            d          0    16422    ADMIN 
   TABLE DATA           F   COPY public."ADMIN" (id, nombre, correo, contrasena, rut) FROM stdin;
    public          postgres    false    214   ֤       `          0    16397 
   ASIGNATURA 
   TABLE DATA           d   COPY public."ASIGNATURA" (codigo, nombre, horas_semanales, nivel, laboratorio, visible) FROM stdin;
    public          postgres    false    210   �       h          0    16440 
   CALENDARIO 
   TABLE DATA           a   COPY public."CALENDARIO" (id, periodo, fecha_inicio, fecha_termino, semanas_totales) FROM stdin;
    public          postgres    false    218   �       b          0    16406    CARRERA 
   TABLE DATA           3   COPY public."CARRERA" (codigo, nombre) FROM stdin;
    public          postgres    false    212   -�       j          0    16449 	   MODALIDAD 
   TABLE DATA           9   COPY public."MODALIDAD" (id, tipo_modalidad) FROM stdin;
    public          postgres    false    220   J�       o          0    16481    PLAN 
   TABLE DATA           :   COPY public."PLAN" (id, anio, codigo_carrera) FROM stdin;
    public          postgres    false    225   g�       s          0    16498 
   PLAN_NIVEL 
   TABLE DATA           M   COPY public."PLAN_NIVEL" (id, nivel, codigo_asignatura, id_plan) FROM stdin;
    public          postgres    false    229   ��       l          0    16458    PROFESOR 
   TABLE DATA           I   COPY public."PROFESOR" (id, rut, nombre, correo, contrasena) FROM stdin;
    public          postgres    false    222   ��       ~          0    16567    PROFESOR_DICTA 
   TABLE DATA           e   COPY public."PROFESOR_DICTA" (id, seccion, id_profesor, codigo_asignatura, id_modalidad) FROM stdin;
    public          postgres    false    240   ��       y          0    16523    PROGRAMAR_EVALUACION 
   TABLE DATA           �   COPY public."PROGRAMAR_EVALUACION" (id, nombre, fecha, semana, hora_inicio, hora_termino, color, id_tipo_evaluacion, id_calendario, id_modalidad, codigo_asignatura) FROM stdin;
    public          postgres    false    235   ۥ       f          0    16431    TIPOEVALUACION 
   TABLE DATA           4   COPY public."TIPOEVALUACION" (id, tipo) FROM stdin;
    public          postgres    false    216   ��       �           0    0    ADMIN_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."ADMIN_id_seq"', 1, false);
          public          postgres    false    213            �           0    0    CALENDARIO_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."CALENDARIO_id_seq"', 1, false);
          public          postgres    false    217            �           0    0    CARRERA_codigo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."CARRERA_codigo_seq"', 1, false);
          public          postgres    false    211            �           0    0    MODALIDAD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MODALIDAD_id_seq"', 1, false);
          public          postgres    false    219            �           0    0     PLAN_NIVEL_codigo_asignatura_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."PLAN_NIVEL_codigo_asignatura_seq"', 1, false);
          public          postgres    false    227            �           0    0    PLAN_NIVEL_id_plan_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."PLAN_NIVEL_id_plan_seq"', 1, false);
          public          postgres    false    228            �           0    0    PLAN_NIVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."PLAN_NIVEL_id_seq"', 1, false);
          public          postgres    false    226            �           0    0 $   PROFESOR_DICTA_codigo_asignatura_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."PROFESOR_DICTA_codigo_asignatura_seq"', 1, false);
          public          postgres    false    238            �           0    0    PROFESOR_DICTA_id_modalidad_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."PROFESOR_DICTA_id_modalidad_seq"', 1, false);
          public          postgres    false    239            �           0    0    PROFESOR_DICTA_id_profesor_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."PROFESOR_DICTA_id_profesor_seq"', 1, false);
          public          postgres    false    237            �           0    0    PROFESOR_DICTA_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."PROFESOR_DICTA_id_seq"', 1, false);
          public          postgres    false    236            �           0    0    PROFESOR_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."PROFESOR_id_seq"', 1, false);
          public          postgres    false    221            �           0    0 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"', 1, false);
          public          postgres    false    234            �           0    0 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_calendario_seq"', 1, false);
          public          postgres    false    232            �           0    0 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_modalidad_seq"', 1, false);
          public          postgres    false    233            �           0    0    PROGRAMAR_EVALUACION_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_seq"', 1, false);
          public          postgres    false    230            �           0    0 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"', 1, false);
          public          postgres    false    231            �           0    0    P_codigo_carrera_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."P_codigo_carrera_seq"', 1, false);
          public          postgres    false    224            �           0    0    P_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public."P_id_seq"', 1, false);
          public          postgres    false    223            �           0    0    TIPOEVALUACION_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."TIPOEVALUACION_id_seq"', 1, false);
          public          postgres    false    215            �           0    0    t_ASIGNATURA_codigo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."t_ASIGNATURA_codigo_seq"', 1, false);
          public          postgres    false    209            �           2606    16429    ADMIN ADMIN_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."ADMIN"
    ADD CONSTRAINT "ADMIN_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."ADMIN" DROP CONSTRAINT "ADMIN_pkey";
       public            postgres    false    214            �           2606    16447    CALENDARIO CALENDARIO_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."CALENDARIO"
    ADD CONSTRAINT "CALENDARIO_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."CALENDARIO" DROP CONSTRAINT "CALENDARIO_pkey";
       public            postgres    false    218            �           2606    16413    CARRERA CARRERA_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."CARRERA"
    ADD CONSTRAINT "CARRERA_pkey" PRIMARY KEY (codigo);
 B   ALTER TABLE ONLY public."CARRERA" DROP CONSTRAINT "CARRERA_pkey";
       public            postgres    false    212            �           2606    16456    MODALIDAD MODALIDAD_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MODALIDAD"
    ADD CONSTRAINT "MODALIDAD_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MODALIDAD" DROP CONSTRAINT "MODALIDAD_pkey";
       public            postgres    false    220            �           2606    16505    PLAN_NIVEL PLAN_NIVEL_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."PLAN_NIVEL"
    ADD CONSTRAINT "PLAN_NIVEL_pkey" PRIMARY KEY (id_plan);
 H   ALTER TABLE ONLY public."PLAN_NIVEL" DROP CONSTRAINT "PLAN_NIVEL_pkey";
       public            postgres    false    229            �           2606    16487    PLAN PLAN_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."PLAN"
    ADD CONSTRAINT "PLAN_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."PLAN" DROP CONSTRAINT "PLAN_pkey";
       public            postgres    false    225            �           2606    16577 "   PROFESOR_DICTA PROFESOR_DICTA_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."PROFESOR_DICTA"
    ADD CONSTRAINT "PROFESOR_DICTA_pkey" PRIMARY KEY (id_profesor);
 P   ALTER TABLE ONLY public."PROFESOR_DICTA" DROP CONSTRAINT "PROFESOR_DICTA_pkey";
       public            postgres    false    240            �           2606    16465    PROFESOR PROFESOR_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."PROFESOR"
    ADD CONSTRAINT "PROFESOR_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."PROFESOR" DROP CONSTRAINT "PROFESOR_pkey";
       public            postgres    false    222            �           2606    16534 .   PROGRAMAR_EVALUACION PROGRAMAR_EVALUACION_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION"
    ADD CONSTRAINT "PROGRAMAR_EVALUACION_pkey" PRIMARY KEY (id_tipo_evaluacion);
 \   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" DROP CONSTRAINT "PROGRAMAR_EVALUACION_pkey";
       public            postgres    false    235            �           2606    16438 "   TIPOEVALUACION TIPOEVALUACION_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."TIPOEVALUACION"
    ADD CONSTRAINT "TIPOEVALUACION_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."TIPOEVALUACION" DROP CONSTRAINT "TIPOEVALUACION_pkey";
       public            postgres    false    216            �           2606    16404    ASIGNATURA t_ASIGNATURA_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."ASIGNATURA"
    ADD CONSTRAINT "t_ASIGNATURA_pkey" PRIMARY KEY (codigo);
 J   ALTER TABLE ONLY public."ASIGNATURA" DROP CONSTRAINT "t_ASIGNATURA_pkey";
       public            postgres    false    210            �           1259    16511    fki_codigo_asignatura_fk    INDEX     ^   CREATE INDEX fki_codigo_asignatura_fk ON public."PLAN_NIVEL" USING btree (codigo_asignatura);
 ,   DROP INDEX public.fki_codigo_asignatura_fk;
       public            postgres    false    229            �           1259    16494    fki_codigo_carrera_fk    INDEX     R   CREATE INDEX fki_codigo_carrera_fk ON public."PLAN" USING btree (codigo_carrera);
 )   DROP INDEX public.fki_codigo_carrera_fk;
       public            postgres    false    225            �           1259    16546    fki_id_calendario_fk    INDEX     `   CREATE INDEX fki_id_calendario_fk ON public."PROGRAMAR_EVALUACION" USING btree (id_calendario);
 (   DROP INDEX public.fki_id_calendario_fk;
       public            postgres    false    235            �           1259    16552    fki_id_modalidad_fk    INDEX     ^   CREATE INDEX fki_id_modalidad_fk ON public."PROGRAMAR_EVALUACION" USING btree (id_modalidad);
 '   DROP INDEX public.fki_id_modalidad_fk;
       public            postgres    false    235            �           1259    16588    fki_id_profesor_fk    INDEX     V   CREATE INDEX fki_id_profesor_fk ON public."PROFESOR_DICTA" USING btree (id_profesor);
 &   DROP INDEX public.fki_id_profesor_fk;
       public            postgres    false    240            �           1259    16540    fki_id_tipo_evaluacion_fk    INDEX     j   CREATE INDEX fki_id_tipo_evaluacion_fk ON public."PROGRAMAR_EVALUACION" USING btree (id_tipo_evaluacion);
 -   DROP INDEX public.fki_id_tipo_evaluacion_fk;
       public            postgres    false    235            �           1259    16517    fki_o    INDEX     A   CREATE INDEX fki_o ON public."PLAN_NIVEL" USING btree (id_plan);
    DROP INDEX public.fki_o;
       public            postgres    false    229            �           2606    16506    PLAN_NIVEL codigo_asignatura_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PLAN_NIVEL"
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public."ASIGNATURA"(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 K   ALTER TABLE ONLY public."PLAN_NIVEL" DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    3246    229    210            �           2606    16558 )   PROGRAMAR_EVALUACION codigo_asignatura_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION"
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public."ASIGNATURA"(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    210    235    3246            �           2606    16578 #   PROFESOR_DICTA codigo_asignatura_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PROFESOR_DICTA"
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public."ASIGNATURA"(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 O   ALTER TABLE ONLY public."PROFESOR_DICTA" DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    210    3246    240            �           2606    16489    PLAN codigo_carrera_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PLAN"
    ADD CONSTRAINT codigo_carrera_fk FOREIGN KEY (codigo_carrera) REFERENCES public."CARRERA"(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 B   ALTER TABLE ONLY public."PLAN" DROP CONSTRAINT codigo_carrera_fk;
       public          postgres    false    225    3248    212            �           2606    16541 %   PROGRAMAR_EVALUACION id_calendario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION"
    ADD CONSTRAINT id_calendario_fk FOREIGN KEY (id_calendario) REFERENCES public."CALENDARIO"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Q   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" DROP CONSTRAINT id_calendario_fk;
       public          postgres    false    235    3254    218            �           2606    16553 $   PROGRAMAR_EVALUACION id_modalidad_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION"
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public."MODALIDAD"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 P   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    235    3256    220            �           2606    16589    PROFESOR_DICTA id_modalidad_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PROFESOR_DICTA"
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public."MODALIDAD"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public."PROFESOR_DICTA" DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    220    3256    240            �           2606    16512    PLAN_NIVEL id_plan_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PLAN_NIVEL"
    ADD CONSTRAINT id_plan_fk FOREIGN KEY (id_plan) REFERENCES public."PLAN"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 A   ALTER TABLE ONLY public."PLAN_NIVEL" DROP CONSTRAINT id_plan_fk;
       public          postgres    false    229    225    3260            �           2606    16583    PROFESOR_DICTA id_profesor_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PROFESOR_DICTA"
    ADD CONSTRAINT id_profesor_fk FOREIGN KEY (id_profesor) REFERENCES public."PROFESOR"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public."PROFESOR_DICTA" DROP CONSTRAINT id_profesor_fk;
       public          postgres    false    240    3258    222            �           2606    16535 *   PROGRAMAR_EVALUACION id_tipo_evaluacion_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION"
    ADD CONSTRAINT id_tipo_evaluacion_fk FOREIGN KEY (id_tipo_evaluacion) REFERENCES public."TIPOEVALUACION"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 V   ALTER TABLE ONLY public."PROGRAMAR_EVALUACION" DROP CONSTRAINT id_tipo_evaluacion_fk;
       public          postgres    false    3252    216    235            d      x������ � �      `      x������ � �      h      x������ � �      b      x������ � �      j      x������ � �      o      x������ � �      s      x������ � �      l      x������ � �      ~      x������ � �      y      x������ � �      f      x������ � �     