PGDMP     :    $            	    z           postgres    14.5    14.4 p    m           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            n           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            o           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            p           1262    13754    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Latin America.1252';
    DROP DATABASE postgres;
                postgres    false            q           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3440                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            r           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    17788    admin    TABLE     ?   CREATE TABLE public.admin (
    id integer NOT NULL,
    nombre character varying,
    correo character varying,
    contrasena character varying
);
    DROP TABLE public.admin;
       public         heap    postgres    false            ?            1259    17793    ADMIN_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."ADMIN_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."ADMIN_id_seq";
       public          postgres    false    210            s           0    0    ADMIN_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."ADMIN_id_seq" OWNED BY public.admin.id;
          public          postgres    false    211            ?            1259    17794 
   calendario    TABLE     ?   CREATE TABLE public.calendario (
    id integer NOT NULL,
    fecha_inicio date,
    fecha_termino date,
    semanas_totales integer,
    periodo character varying
);
    DROP TABLE public.calendario;
       public         heap    postgres    false            ?            1259    17799    CALENDARIO_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."CALENDARIO_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."CALENDARIO_id_seq";
       public          postgres    false    212            t           0    0    CALENDARIO_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."CALENDARIO_id_seq" OWNED BY public.calendario.id;
          public          postgres    false    213            ?            1259    17800    carrera    TABLE     [   CREATE TABLE public.carrera (
    codigo integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            ?            1259    17805    CARRERA_codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."CARRERA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."CARRERA_codigo_seq";
       public          postgres    false    214            u           0    0    CARRERA_codigo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."CARRERA_codigo_seq" OWNED BY public.carrera.codigo;
          public          postgres    false    215            ?            1259    17806 	   modalidad    TABLE     }   CREATE TABLE public.modalidad (
    id integer NOT NULL,
    codigo bigint NOT NULL,
    tipo_modalidad character varying
);
    DROP TABLE public.modalidad;
       public         heap    postgres    false            ?            1259    17811    MODALIDAD_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."MODALIDAD_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MODALIDAD_id_seq";
       public          postgres    false    216            v           0    0    MODALIDAD_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."MODALIDAD_id_seq" OWNED BY public.modalidad.id;
          public          postgres    false    217            ?            1259    17812    profesor    TABLE     ?   CREATE TABLE public.profesor (
    id integer NOT NULL,
    nombre character varying,
    correo character varying,
    contrasena character varying
);
    DROP TABLE public.profesor;
       public         heap    postgres    false            ?            1259    17817    PROFESOR_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROFESOR_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."PROFESOR_id_seq";
       public          postgres    false    218            w           0    0    PROFESOR_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."PROFESOR_id_seq" OWNED BY public.profesor.id;
          public          postgres    false    219            ?            1259    17818    programar_evaluacion    TABLE     ?  CREATE TABLE public.programar_evaluacion (
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
    color character varying,
    detalles character varying
);
 (   DROP TABLE public.programar_evaluacion;
       public         heap    postgres    false            ?            1259    17823 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq";
       public          postgres    false    220            x           0    0 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_codigo_asignatura_seq" OWNED BY public.programar_evaluacion.codigo_asignatura;
          public          postgres    false    221            ?            1259    17824 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq";
       public          postgres    false    220            y           0    0 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_calendario_seq" OWNED BY public.programar_evaluacion.id_calendario;
          public          postgres    false    222            ?            1259    17825 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq";
       public          postgres    false    220            z           0    0 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_modalidad_seq" OWNED BY public.programar_evaluacion.id_modalidad;
          public          postgres    false    223            ?            1259    17826    PROGRAMAR_EVALUACION_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_seq";
       public          postgres    false    220            {           0    0    PROGRAMAR_EVALUACION_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_seq" OWNED BY public.programar_evaluacion.id;
          public          postgres    false    224            ?            1259    17827 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE     ?   CREATE SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq";
       public          postgres    false    220            |           0    0 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq" OWNED BY public.programar_evaluacion.id_tipo_evaluacion;
          public          postgres    false    225            ?            1259    17828    plan    TABLE     ?   CREATE TABLE public.plan (
    id integer NOT NULL,
    anio date,
    codigo_carrera integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.plan;
       public         heap    postgres    false            ?            1259    17833    P_codigo_carrera_seq    SEQUENCE     ?   CREATE SEQUENCE public."P_codigo_carrera_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."P_codigo_carrera_seq";
       public          postgres    false    226            }           0    0    P_codigo_carrera_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public."P_codigo_carrera_seq" OWNED BY public.plan.codigo_carrera;
          public          postgres    false    227            ?            1259    17834    P_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."P_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public."P_id_seq";
       public          postgres    false    226            ~           0    0    P_id_seq    SEQUENCE OWNED BY     :   ALTER SEQUENCE public."P_id_seq" OWNED BY public.plan.id;
          public          postgres    false    228            ?            1259    17835 
   asignatura    TABLE     ?   CREATE TABLE public.asignatura (
    codigo integer NOT NULL,
    horas_semanales integer,
    visible boolean,
    nombre character varying,
    catedra boolean,
    laboratorio boolean
);
    DROP TABLE public.asignatura;
       public         heap    postgres    false            ?            1259    17840 
   plan_nivel    TABLE     ?   CREATE TABLE public.plan_nivel (
    id integer NOT NULL,
    nivel integer,
    id_plan integer,
    codigo_asignatura integer
);
    DROP TABLE public.plan_nivel;
       public         heap    postgres    false            ?            1259    17843    profesor_dicta    TABLE     ?   CREATE TABLE public.profesor_dicta (
    id integer NOT NULL,
    seccion character varying,
    id_profesor integer,
    id_modalidad integer,
    codigo_asignatura integer
);
 "   DROP TABLE public.profesor_dicta;
       public         heap    postgres    false            ?            1259    17848    t_ASIGNATURA_codigo_seq    SEQUENCE     ?   CREATE SEQUENCE public."t_ASIGNATURA_codigo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."t_ASIGNATURA_codigo_seq";
       public          postgres    false    229                       0    0    t_ASIGNATURA_codigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."t_ASIGNATURA_codigo_seq" OWNED BY public.asignatura.codigo;
          public          postgres    false    232            ?            1259    17849    tipo_evaluacion    TABLE     a   CREATE TABLE public.tipo_evaluacion (
    id bigint NOT NULL,
    tipo character varying(255)
);
 #   DROP TABLE public.tipo_evaluacion;
       public         heap    postgres    false            ?            1259    17852    tipo_evaluacion_id_seq    SEQUENCE     ?   ALTER TABLE public.tipo_evaluacion ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tipo_evaluacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            ?           2604    17853    admin id    DEFAULT     f   ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public."ADMIN_id_seq"'::regclass);
 7   ALTER TABLE public.admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            ?           2604    17854    asignatura codigo    DEFAULT     z   ALTER TABLE ONLY public.asignatura ALTER COLUMN codigo SET DEFAULT nextval('public."t_ASIGNATURA_codigo_seq"'::regclass);
 @   ALTER TABLE public.asignatura ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    232    229            ?           2604    17855    calendario id    DEFAULT     p   ALTER TABLE ONLY public.calendario ALTER COLUMN id SET DEFAULT nextval('public."CALENDARIO_id_seq"'::regclass);
 <   ALTER TABLE public.calendario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            ?           2604    17856    carrera codigo    DEFAULT     r   ALTER TABLE ONLY public.carrera ALTER COLUMN codigo SET DEFAULT nextval('public."CARRERA_codigo_seq"'::regclass);
 =   ALTER TABLE public.carrera ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    17857    modalidad id    DEFAULT     n   ALTER TABLE ONLY public.modalidad ALTER COLUMN id SET DEFAULT nextval('public."MODALIDAD_id_seq"'::regclass);
 ;   ALTER TABLE public.modalidad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            ?           2604    17858    plan id    DEFAULT     a   ALTER TABLE ONLY public.plan ALTER COLUMN id SET DEFAULT nextval('public."P_id_seq"'::regclass);
 6   ALTER TABLE public.plan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    226            ?           2604    17859    plan codigo_carrera    DEFAULT     y   ALTER TABLE ONLY public.plan ALTER COLUMN codigo_carrera SET DEFAULT nextval('public."P_codigo_carrera_seq"'::regclass);
 B   ALTER TABLE public.plan ALTER COLUMN codigo_carrera DROP DEFAULT;
       public          postgres    false    227    226            ?           2604    17860    profesor id    DEFAULT     l   ALTER TABLE ONLY public.profesor ALTER COLUMN id SET DEFAULT nextval('public."PROFESOR_id_seq"'::regclass);
 :   ALTER TABLE public.profesor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            ?           2604    17861    programar_evaluacion id    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_seq"'::regclass);
 F   ALTER TABLE public.programar_evaluacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    220            ?           2604    17862 '   programar_evaluacion id_tipo_evaluacion    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id_tipo_evaluacion SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"'::regclass);
 V   ALTER TABLE public.programar_evaluacion ALTER COLUMN id_tipo_evaluacion DROP DEFAULT;
       public          postgres    false    225    220            ?           2604    17863 "   programar_evaluacion id_calendario    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id_calendario SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_calendario_seq"'::regclass);
 Q   ALTER TABLE public.programar_evaluacion ALTER COLUMN id_calendario DROP DEFAULT;
       public          postgres    false    222    220            ?           2604    17864 !   programar_evaluacion id_modalidad    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN id_modalidad SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_id_modalidad_seq"'::regclass);
 P   ALTER TABLE public.programar_evaluacion ALTER COLUMN id_modalidad DROP DEFAULT;
       public          postgres    false    223    220            ?           2604    17865 &   programar_evaluacion codigo_asignatura    DEFAULT     ?   ALTER TABLE ONLY public.programar_evaluacion ALTER COLUMN codigo_asignatura SET DEFAULT nextval('public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"'::regclass);
 U   ALTER TABLE public.programar_evaluacion ALTER COLUMN codigo_asignatura DROP DEFAULT;
       public          postgres    false    221    220            R          0    17788    admin 
   TABLE DATA           ?   COPY public.admin (id, nombre, correo, contrasena) FROM stdin;
    public          postgres    false    210   .?       e          0    17835 
   asignatura 
   TABLE DATA           d   COPY public.asignatura (codigo, horas_semanales, visible, nombre, catedra, laboratorio) FROM stdin;
    public          postgres    false    229   ??       T          0    17794 
   calendario 
   TABLE DATA           _   COPY public.calendario (id, fecha_inicio, fecha_termino, semanas_totales, periodo) FROM stdin;
    public          postgres    false    212   p?       V          0    17800    carrera 
   TABLE DATA           1   COPY public.carrera (codigo, nombre) FROM stdin;
    public          postgres    false    214   ??       X          0    17806 	   modalidad 
   TABLE DATA           ?   COPY public.modalidad (id, codigo, tipo_modalidad) FROM stdin;
    public          postgres    false    216   ??       b          0    17828    plan 
   TABLE DATA           @   COPY public.plan (id, anio, codigo_carrera, nombre) FROM stdin;
    public          postgres    false    226   0?       f          0    17840 
   plan_nivel 
   TABLE DATA           K   COPY public.plan_nivel (id, nivel, id_plan, codigo_asignatura) FROM stdin;
    public          postgres    false    230   ??       Z          0    17812    profesor 
   TABLE DATA           B   COPY public.profesor (id, nombre, correo, contrasena) FROM stdin;
    public          postgres    false    218   ??       g          0    17843    profesor_dicta 
   TABLE DATA           c   COPY public.profesor_dicta (id, seccion, id_profesor, id_modalidad, codigo_asignatura) FROM stdin;
    public          postgres    false    231   [?       \          0    17818    programar_evaluacion 
   TABLE DATA           ?   COPY public.programar_evaluacion (id, fecha, semana, hora_inicio, hora_termino, id_tipo_evaluacion, id_calendario, id_modalidad, codigo_asignatura, nombre, color, detalles) FROM stdin;
    public          postgres    false    220   G?       i          0    17849    tipo_evaluacion 
   TABLE DATA           3   COPY public.tipo_evaluacion (id, tipo) FROM stdin;
    public          postgres    false    233   d?       ?           0    0    ADMIN_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."ADMIN_id_seq"', 1, false);
          public          postgres    false    211            ?           0    0    CALENDARIO_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."CALENDARIO_id_seq"', 1, false);
          public          postgres    false    213            ?           0    0    CARRERA_codigo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."CARRERA_codigo_seq"', 1, false);
          public          postgres    false    215            ?           0    0    MODALIDAD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MODALIDAD_id_seq"', 1, false);
          public          postgres    false    217            ?           0    0    PROFESOR_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."PROFESOR_id_seq"', 2, true);
          public          postgres    false    219            ?           0    0 *   PROGRAMAR_EVALUACION_codigo_asignatura_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_codigo_asignatura_seq"', 1, false);
          public          postgres    false    221            ?           0    0 &   PROGRAMAR_EVALUACION_id_calendario_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_calendario_seq"', 1, false);
          public          postgres    false    222            ?           0    0 %   PROGRAMAR_EVALUACION_id_modalidad_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_modalidad_seq"', 1, false);
          public          postgres    false    223            ?           0    0    PROGRAMAR_EVALUACION_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_seq"', 1, false);
          public          postgres    false    224            ?           0    0 +   PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."PROGRAMAR_EVALUACION_id_tipo_evaluacion_seq"', 1, false);
          public          postgres    false    225            ?           0    0    P_codigo_carrera_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."P_codigo_carrera_seq"', 1, false);
          public          postgres    false    227            ?           0    0    P_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public."P_id_seq"', 1, false);
          public          postgres    false    228            ?           0    0    t_ASIGNATURA_codigo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."t_ASIGNATURA_codigo_seq"', 1, false);
          public          postgres    false    232            ?           0    0    tipo_evaluacion_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tipo_evaluacion_id_seq', 1, false);
          public          postgres    false    234            ?           2606    17867    admin ADMIN_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT "ADMIN_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.admin DROP CONSTRAINT "ADMIN_pkey";
       public            postgres    false    210            ?           2606    17869    calendario CALENDARIO_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT "CALENDARIO_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.calendario DROP CONSTRAINT "CALENDARIO_pkey";
       public            postgres    false    212            ?           2606    17871    carrera CARRERA_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT "CARRERA_pkey" PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.carrera DROP CONSTRAINT "CARRERA_pkey";
       public            postgres    false    214            ?           2606    17873    modalidad MODALIDAD_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.modalidad
    ADD CONSTRAINT "MODALIDAD_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.modalidad DROP CONSTRAINT "MODALIDAD_pkey";
       public            postgres    false    216            ?           2606    17875    plan PLAN_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.plan
    ADD CONSTRAINT "PLAN_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.plan DROP CONSTRAINT "PLAN_pkey";
       public            postgres    false    226            ?           2606    17877    profesor PROFESOR_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT "PROFESOR_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.profesor DROP CONSTRAINT "PROFESOR_pkey";
       public            postgres    false    218            ?           2606    17879 .   programar_evaluacion PROGRAMAR_EVALUACION_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT "PROGRAMAR_EVALUACION_pkey" PRIMARY KEY (id_tipo_evaluacion);
 Z   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT "PROGRAMAR_EVALUACION_pkey";
       public            postgres    false    220            ?           2606    17881    plan_nivel plan_nivel_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT plan_nivel_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT plan_nivel_pkey;
       public            postgres    false    230            ?           2606    17883 "   profesor_dicta profesor_dicta_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT profesor_dicta_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT profesor_dicta_pkey;
       public            postgres    false    231            ?           2606    17885    asignatura t_ASIGNATURA_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT "t_ASIGNATURA_pkey" PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.asignatura DROP CONSTRAINT "t_ASIGNATURA_pkey";
       public            postgres    false    229            ?           2606    17887 $   tipo_evaluacion tipo_evaluacion_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tipo_evaluacion
    ADD CONSTRAINT tipo_evaluacion_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tipo_evaluacion DROP CONSTRAINT tipo_evaluacion_pkey;
       public            postgres    false    233            ?           1259    17888    fki_codigo_asignatura_fk    INDEX     \   CREATE INDEX fki_codigo_asignatura_fk ON public.plan_nivel USING btree (codigo_asignatura);
 ,   DROP INDEX public.fki_codigo_asignatura_fk;
       public            postgres    false    230            ?           1259    17889    fki_codigo_carrera_fk    INDEX     P   CREATE INDEX fki_codigo_carrera_fk ON public.plan USING btree (codigo_carrera);
 )   DROP INDEX public.fki_codigo_carrera_fk;
       public            postgres    false    226            ?           1259    17890    fki_id_calendario_fk    INDEX     ^   CREATE INDEX fki_id_calendario_fk ON public.programar_evaluacion USING btree (id_calendario);
 (   DROP INDEX public.fki_id_calendario_fk;
       public            postgres    false    220            ?           1259    17891    fki_id_modalidad_fk    INDEX     \   CREATE INDEX fki_id_modalidad_fk ON public.programar_evaluacion USING btree (id_modalidad);
 '   DROP INDEX public.fki_id_modalidad_fk;
       public            postgres    false    220            ?           1259    17892    fki_id_plan    INDEX     E   CREATE INDEX fki_id_plan ON public.plan_nivel USING btree (id_plan);
    DROP INDEX public.fki_id_plan;
       public            postgres    false    230            ?           1259    17893    fki_id_profesor_fk    INDEX     T   CREATE INDEX fki_id_profesor_fk ON public.profesor_dicta USING btree (id_profesor);
 &   DROP INDEX public.fki_id_profesor_fk;
       public            postgres    false    231            ?           1259    17894    fki_id_tipo_evaluacion    INDEX     e   CREATE INDEX fki_id_tipo_evaluacion ON public.programar_evaluacion USING btree (id_tipo_evaluacion);
 *   DROP INDEX public.fki_id_tipo_evaluacion;
       public            postgres    false    220            ?           1259    17895    fki_id_tipo_evaluacion_fk    INDEX     h   CREATE INDEX fki_id_tipo_evaluacion_fk ON public.programar_evaluacion USING btree (id_tipo_evaluacion);
 -   DROP INDEX public.fki_id_tipo_evaluacion_fk;
       public            postgres    false    220            ?           2606    17896 )   programar_evaluacion codigo_asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 S   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    220    229    3251            ?           2606    17901 #   profesor_dicta codigo_asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 M   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    3251    231    229            ?           2606    17906    plan_nivel codigo_asignatura_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT codigo_asignatura_fk FOREIGN KEY (codigo_asignatura) REFERENCES public.asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT codigo_asignatura_fk;
       public          postgres    false    230    3251    229            ?           2606    17911    plan codigo_carrera_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plan
    ADD CONSTRAINT codigo_carrera_fk FOREIGN KEY (codigo_carrera) REFERENCES public.carrera(codigo) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 @   ALTER TABLE ONLY public.plan DROP CONSTRAINT codigo_carrera_fk;
       public          postgres    false    214    3236    226            ?           2606    17916 %   programar_evaluacion id_calendario_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT id_calendario_fk FOREIGN KEY (id_calendario) REFERENCES public.calendario(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 O   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT id_calendario_fk;
       public          postgres    false    212    3234    220            ?           2606    17921 $   programar_evaluacion id_modalidad_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public.modalidad(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 N   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    216    3238    220            ?           2606    17926    profesor_dicta id_modalidad_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT id_modalidad_fk FOREIGN KEY (id_modalidad) REFERENCES public.modalidad(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 H   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT id_modalidad_fk;
       public          postgres    false    3238    216    231            ?           2606    17931    plan_nivel id_plan    FK CONSTRAINT     ?   ALTER TABLE ONLY public.plan_nivel
    ADD CONSTRAINT id_plan FOREIGN KEY (id_plan) REFERENCES public.plan(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 <   ALTER TABLE ONLY public.plan_nivel DROP CONSTRAINT id_plan;
       public          postgres    false    230    3248    226            ?           2606    17936    profesor_dicta id_profesor_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profesor_dicta
    ADD CONSTRAINT id_profesor_fk FOREIGN KEY (id_profesor) REFERENCES public.profesor(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public.profesor_dicta DROP CONSTRAINT id_profesor_fk;
       public          postgres    false    3240    231    218            ?           2606    17941 '   programar_evaluacion id_tipo_evaluacion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.programar_evaluacion
    ADD CONSTRAINT id_tipo_evaluacion FOREIGN KEY (id_tipo_evaluacion) REFERENCES public.tipo_evaluacion(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Q   ALTER TABLE ONLY public.programar_evaluacion DROP CONSTRAINT id_tipo_evaluacion;
       public          postgres    false    3260    220    233            R   D   x?3?tL????,.)JL?/RpN?I?KI,??Wp???K?LI??I????????C#cS?=... n??      e   ?  x??W?n?0}?~E> ???&?c?!?@?#/??72r??q???3?8?Mv?۷T=???3?Y?g??ظ?;?D?p?pp?K?	?3p??q7????fM-:h???xt'4(|(?B#???w??OQkYC0-5"???S?w?
????O?z???t?柨1??,????B?_?ɶ??F#?p?????l??1*?T??]pJ?6??ws????O?Y??:8?D?<??ƶ?0?͞,????%?a?[??89???Ik?4?@?+4?ԙY?0?? ?ډƂJ?!RF???6?NN
?f?JbHh?=?$????	ۉ???L?զ?????k?[?՚+&_??7??e??YwYz???Uv?c?k1,?QL?????{o??҉?qWT???)vZn??nYl???????p?0+?^?)Yz?5?????	Hx8Yb??=$??????z?#J???y?dt`j3B???~??&AUv(F+&V?5?ضE???!???O??orΖݷh?? A?Ҙ??8?O3??JD??M?Q??"?????6?u?`?i|?gٌ?~?R??Ys?G???E-????R?	a???3?Dv˗???c??9ab?Q??c?|J_??F?F?V?g?2;??#l\	3???H?????r8+y,_p<???5vd???s?W?q??j.~(ց8?????z?-?W?r?q˙Z??e???MȢ2??sw??eq?'?????<??m??Aϥ3??G??0????zǲ???Ҋ:?߬ef???%?-??8??*K?35x?WE??T?hޫ"??+??U+??_Y???M?l<??S??Z?6??41?Aս2?|??$? ?۝???????ʨgțOH-???`|???B??5>Z??jj?,9???QQ??.,??ẽ6???]"ʲa?Fa?㊏8?xQ9??>?/??E??嗯V?Ƀ?Xe"?%2摳s?&?͜?r??ɑ?????K`??????Oɠ???'ï?777?ߢ??      T   (   x?3?4202?5??54?0?t?L8-9?4?????? ??o      V   9   x?3463?t?,??QH?+?L/??2??0?t?JM.M???S?+M-	???Ab???? U??      X   /   x?3?4??ͬ(??2?4?K-.H-*????2?4?t?,-2c???? ??
?      b   G   x?3?4202?50"NCsc??̲????Բ|.c???	L??&[?????e?"kaa̙???\????? ???      f   $  x?E?Kr!C??0)???%??G?ݠ?l?J?P3????i-??h;ڦ??1?hGR'Vk{ve????=??o-s?g?????Yц7????X?!~?:I:?B(?F?s6d???AM???׿?l07???v?7??y??:??&=V???6ހv?$`J??F??lp$,?/%?`??auӲ?X_?N???> ?{"?z!??d? g??;ɢ_?ׅ?6??1	!?Jp??? |ԁ~?A??$??"??>P?MXȧ??	r?H?X"????>?????Ⱦx9?????p?      Z   ?  x??W?R#7}_?/P??????d[T?*/mY???hf\??*ߐ?i????!?'?i]?r?g4R??7??Z???.?݂??v?6ʊ?4[?O]Cvil?юF???????|????\"}?,~?
 Ͳ?=???X????+?j?n?g????g???Г?PȣcuG?B?/),\????sZ?Ze?X?{v!?>/V]?????5??8??r3???)K?:)????K?j??+F??v?wo??2v?G}n?ᡍ?:h#?uI)_ç?&?-۴)*+??|???xtݹ?}????/?#F?z???&៩??j??܂???6????*C??gXR?P]??_??H????su??QO5sF{jY+?#~D?E9?>76?)񓁙??d*?7??B??>΃?d???%??????4?Z?ٻQ?0?*???v????X7?N??????s????fR??/?f?>Q?9X?"}????"#xv5xvY&???
???:v???????__??I?g?9 5cӒ??!A?7??
???T}?y?:RK?7?~???!???y??Ίr<?\??>?Ttch?hn3R???QsZp*o?z??????Q)?|?!?)??z)?gfY_???:?/\??r?Ւe?????(k?{???"?*?_??2???,??J?`b6?A6?d?'?????9?????l1???+ۤ????H???Hnd??B?5T?a?/??i	׽Gq?F???7^?3xw??w.D??Dx?A????a??c/]ב5oC?+??!j?9u??[n 8???<4??????XëE5?6?ס{?j?????Me?S5?y?R??E|?,??*???y???[?9?%
??t ??Z6?qV?C߉??tt?n}?~^?T?A`?c?ʫ??u%D?uV??D???A????2*??????_??Z?w+ħŋӛi26|oz??d9Nr???UA?u???X?????[??????U?ϸi?3*??z?/mL??z.???B?3hZ{fY*?i???I????.?? m?V}]???ȋ:????? I?WD͙??$?FU??o?WP??ˏ?
1??Qo?Q???????٣C?????rIu?P??,??Q?1@???ݎ?GȲ??L
? ????M?;?CR?<e?0/?n?O0?!??ݠ???"f?l?7?
I6?"?д;??~?0]???T6?	Aa?'%??m??Nt;??}Q?????b?yEIl8??\S?a???y??????u^?Yq,??H-??????P8"????9???Q?v9c?Q??n("??erԋ
??"B5?B?vC-*?J?d?\?P-?X??Q<?d̄????T??Ȣ2?\N???%	j???%??wV󒭃 ?L????s?b ?_??Y????w?w?L?/.4X^D????3?QG?J!N??DX???X?^?h?,Zf?i??A??Ev????Qf??Oi?G(??A!??t??7??a/Mz^?}}zr??x??g1?h??4?1d;W???O?g	5?7?p܉1eд?+??m?yr??_?£??)?3?卾N,W?Tel?43V?qEo???"?j??????;?46??#?}\????Xu?r?7?te?????fU?aN??p??Q?????Me ??á5??1p|??{s?AR?%?7.??i?]????0? es?k      g   ?   x?]?;??0Ck?0;???lZ!g???kRJ?I??i??C~M?@???????`?KWt֓[??檨Qod??K?l
?~'G;ֺ9?J??L?45D??????0?lrl?ڐ??ym(???&???????A?ƚ?d?ϛ??.6C3Eb?Hь?h&6FX9*as`-_????????????a??2P),?B?"?5_???D???mLu?H)ؑ??-?:3??U?	?^?      \      x?????? ? ?      i   ;   x?3??IL?/J,?/???2???K?/?M?2?t??+)???2?p?2EV?
S???? ??     