PGDMP         	            
    {            AMX1    13.11    13.11 K               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    41286    AMX1    DATABASE     e   CREATE DATABASE "AMX1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "AMX1";
                postgres    false            �            1259    41334    Sesiones    TABLE     �   CREATE TABLE public."Sesiones" (
    id integer NOT NULL,
    fecha date,
    hora time with time zone,
    id_usuario integer
);
    DROP TABLE public."Sesiones";
       public         heap    postgres    false            �            1259    41332    Sesiones_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Sesiones_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Sesiones_id_seq";
       public          postgres    false    205                       0    0    Sesiones_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Sesiones_id_seq" OWNED BY public."Sesiones".id;
          public          postgres    false    204            �            1259    41311 	   Usuarios     TABLE       CREATE TABLE public."Usuarios " (
    id integer NOT NULL,
    nombre_completo character varying,
    cedula character varying,
    contrasena character varying,
    correo character varying,
    telefono character varying,
    id_tipo_usuario integer NOT NULL
);
    DROP TABLE public."Usuarios ";
       public         heap    postgres    false            �            1259    41309    Usuarios _id_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuarios _id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Usuarios _id_seq";
       public          postgres    false    203                       0    0    Usuarios _id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Usuarios _id_seq" OWNED BY public."Usuarios ".id;
          public          postgres    false    202            �            1259    41347 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    id integer NOT NULL,
    nombre_categoria character varying,
    estado character varying,
    ruta "char"
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    41345    categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categorias_id_seq;
       public          postgres    false    207                       0    0    categorias_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;
          public          postgres    false    206            �            1259    41445    factura    TABLE     �   CREATE TABLE public.factura (
    id integer NOT NULL,
    numero integer,
    id_pedido_mesa integer,
    total integer,
    fecha date,
    hora time with time zone
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    41443    factura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.factura_id_seq;
       public          postgres    false    217                       0    0    factura_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.factura_id_seq OWNED BY public.factura.id;
          public          postgres    false    216            �            1259    41358    mesas    TABLE     �   CREATE TABLE public.mesas (
    id integer NOT NULL,
    nombre_tipo character varying,
    numero_mesa character varying,
    estado character varying
);
    DROP TABLE public.mesas;
       public         heap    postgres    false            �            1259    41356    mesas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mesas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.mesas_id_seq;
       public          postgres    false    209                       0    0    mesas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.mesas_id_seq OWNED BY public.mesas.id;
          public          postgres    false    208            �            1259    41384    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    id integer NOT NULL,
    id_mesa integer NOT NULL,
    id_usuario integer,
    fecha date,
    hora time with time zone
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    41382    pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public          postgres    false    211                       0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public          postgres    false    210            �            1259    41404    pedidos_mesa    TABLE     �   CREATE TABLE public.pedidos_mesa (
    id integer NOT NULL,
    id_pedido integer,
    id_plato integer NOT NULL,
    cantidad integer
);
     DROP TABLE public.pedidos_mesa;
       public         heap    postgres    false            �            1259    41402    pedidos_mesa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_mesa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pedidos_mesa_id_seq;
       public          postgres    false    213                       0    0    pedidos_mesa_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pedidos_mesa_id_seq OWNED BY public.pedidos_mesa.id;
          public          postgres    false    212            �            1259    41421    platos    TABLE     �   CREATE TABLE public.platos (
    id integer NOT NULL,
    id_categoria integer,
    nombre character varying,
    precio integer,
    ruta character varying
);
    DROP TABLE public.platos;
       public         heap    postgres    false            �            1259    41419    platos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.platos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.platos_id_seq;
       public          postgres    false    215                       0    0    platos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.platos_id_seq OWNED BY public.platos.id;
          public          postgres    false    214            �            1259    41289    tipo_usuario    TABLE        CREATE TABLE public.tipo_usuario (
    id integer NOT NULL,
    nombre_tipo character varying,
    estado character varying
);
     DROP TABLE public.tipo_usuario;
       public         heap    postgres    false            �            1259    41287    tipo_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tipo_usuario_id_seq;
       public          postgres    false    201                       0    0    tipo_usuario_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tipo_usuario_id_seq OWNED BY public.tipo_usuario.id;
          public          postgres    false    200            Y           2604    41337    Sesiones id    DEFAULT     n   ALTER TABLE ONLY public."Sesiones" ALTER COLUMN id SET DEFAULT nextval('public."Sesiones_id_seq"'::regclass);
 <   ALTER TABLE public."Sesiones" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            X           2604    41314    Usuarios  id    DEFAULT     p   ALTER TABLE ONLY public."Usuarios " ALTER COLUMN id SET DEFAULT nextval('public."Usuarios _id_seq"'::regclass);
 =   ALTER TABLE public."Usuarios " ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            Z           2604    41350    categorias id    DEFAULT     n   ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);
 <   ALTER TABLE public.categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            _           2604    41448 
   factura id    DEFAULT     h   ALTER TABLE ONLY public.factura ALTER COLUMN id SET DEFAULT nextval('public.factura_id_seq'::regclass);
 9   ALTER TABLE public.factura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            [           2604    41361    mesas id    DEFAULT     d   ALTER TABLE ONLY public.mesas ALTER COLUMN id SET DEFAULT nextval('public.mesas_id_seq'::regclass);
 7   ALTER TABLE public.mesas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            \           2604    41387 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            ]           2604    41407    pedidos_mesa id    DEFAULT     r   ALTER TABLE ONLY public.pedidos_mesa ALTER COLUMN id SET DEFAULT nextval('public.pedidos_mesa_id_seq'::regclass);
 >   ALTER TABLE public.pedidos_mesa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ^           2604    41424 	   platos id    DEFAULT     f   ALTER TABLE ONLY public.platos ALTER COLUMN id SET DEFAULT nextval('public.platos_id_seq'::regclass);
 8   ALTER TABLE public.platos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            W           2604    41292    tipo_usuario id    DEFAULT     r   ALTER TABLE ONLY public.tipo_usuario ALTER COLUMN id SET DEFAULT nextval('public.tipo_usuario_id_seq'::regclass);
 >   ALTER TABLE public.tipo_usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201                      0    41334    Sesiones 
   TABLE DATA           A   COPY public."Sesiones" (id, fecha, hora, id_usuario) FROM stdin;
    public          postgres    false    205   {R       �          0    41311 	   Usuarios  
   TABLE DATA           q   COPY public."Usuarios " (id, nombre_completo, cedula, contrasena, correo, telefono, id_tipo_usuario) FROM stdin;
    public          postgres    false    203   �R                 0    41347 
   categorias 
   TABLE DATA           H   COPY public.categorias (id, nombre_categoria, estado, ruta) FROM stdin;
    public          postgres    false    207   �R                 0    41445    factura 
   TABLE DATA           Q   COPY public.factura (id, numero, id_pedido_mesa, total, fecha, hora) FROM stdin;
    public          postgres    false    217   �R                 0    41358    mesas 
   TABLE DATA           E   COPY public.mesas (id, nombre_tipo, numero_mesa, estado) FROM stdin;
    public          postgres    false    209   �R                 0    41384    pedidos 
   TABLE DATA           G   COPY public.pedidos (id, id_mesa, id_usuario, fecha, hora) FROM stdin;
    public          postgres    false    211   S       	          0    41404    pedidos_mesa 
   TABLE DATA           I   COPY public.pedidos_mesa (id, id_pedido, id_plato, cantidad) FROM stdin;
    public          postgres    false    213   )S                 0    41421    platos 
   TABLE DATA           H   COPY public.platos (id, id_categoria, nombre, precio, ruta) FROM stdin;
    public          postgres    false    215   FS       �          0    41289    tipo_usuario 
   TABLE DATA           ?   COPY public.tipo_usuario (id, nombre_tipo, estado) FROM stdin;
    public          postgres    false    201   cS                  0    0    Sesiones_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Sesiones_id_seq"', 1, false);
          public          postgres    false    204                       0    0    Usuarios _id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Usuarios _id_seq"', 1, false);
          public          postgres    false    202                       0    0    categorias_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categorias_id_seq', 1, false);
          public          postgres    false    206                        0    0    factura_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.factura_id_seq', 1, false);
          public          postgres    false    216            !           0    0    mesas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.mesas_id_seq', 1, false);
          public          postgres    false    208            "           0    0    pedidos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pedidos_id_seq', 1, false);
          public          postgres    false    210            #           0    0    pedidos_mesa_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pedidos_mesa_id_seq', 1, false);
          public          postgres    false    212            $           0    0    platos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.platos_id_seq', 1, false);
          public          postgres    false    214            %           0    0    tipo_usuario_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tipo_usuario_id_seq', 1, false);
          public          postgres    false    200            e           2606    41344    Sesiones Sesiones_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Sesiones"
    ADD CONSTRAINT "Sesiones_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Sesiones" DROP CONSTRAINT "Sesiones_pkey";
       public            postgres    false    205            c           2606    41331    Usuarios  Usuarios _pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Usuarios "
    ADD CONSTRAINT "Usuarios _pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Usuarios " DROP CONSTRAINT "Usuarios _pkey";
       public            postgres    false    203            g           2606    41355    categorias categorias_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    207            q           2606    41455    factura factura_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    217            i           2606    41366    mesas mesas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.mesas
    ADD CONSTRAINT mesas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.mesas DROP CONSTRAINT mesas_pkey;
       public            postgres    false    209            m           2606    41437    pedidos_mesa pedidos_mesa_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pedidos_mesa
    ADD CONSTRAINT pedidos_mesa_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.pedidos_mesa DROP CONSTRAINT pedidos_mesa_pkey;
       public            postgres    false    213            k           2606    41396    pedidos pedidos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public            postgres    false    211            o           2606    41435    platos platos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.platos
    ADD CONSTRAINT platos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.platos DROP CONSTRAINT platos_pkey;
       public            postgres    false    215            a           2606    41297    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public            postgres    false    201            t           2606    41390    pedidos id_mesa    FK CONSTRAINT     x   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT id_mesa FOREIGN KEY (id_mesa) REFERENCES public.mesas(id) NOT VALID;
 9   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT id_mesa;
       public          postgres    false    211    2921    209            v           2606    41410    pedidos_mesa id_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_mesa
    ADD CONSTRAINT id_pedido FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id) NOT VALID;
 @   ALTER TABLE ONLY public.pedidos_mesa DROP CONSTRAINT id_pedido;
       public          postgres    false    211    2923    213            y           2606    41449    factura id_pedido_mesa    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT id_pedido_mesa FOREIGN KEY (id_pedido_mesa) REFERENCES public.pedidos_mesa(id);
 @   ALTER TABLE ONLY public.factura DROP CONSTRAINT id_pedido_mesa;
       public          postgres    false    217    213    2925            w           2606    41438    pedidos_mesa id_plato    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_mesa
    ADD CONSTRAINT id_plato FOREIGN KEY (id_plato) REFERENCES public.platos(id) NOT VALID;
 ?   ALTER TABLE ONLY public.pedidos_mesa DROP CONSTRAINT id_plato;
       public          postgres    false    2927    215    213            r           2606    41325    Usuarios  id_tipo_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuarios "
    ADD CONSTRAINT id_tipo_usuario FOREIGN KEY (id_tipo_usuario) REFERENCES public.tipo_usuario(id) NOT VALID;
 E   ALTER TABLE ONLY public."Usuarios " DROP CONSTRAINT id_tipo_usuario;
       public          postgres    false    201    203    2913            s           2606    41338    Sesiones id_usuario    FK CONSTRAINT     }   ALTER TABLE ONLY public."Sesiones"
    ADD CONSTRAINT id_usuario FOREIGN KEY (id_usuario) REFERENCES public."Usuarios "(id);
 ?   ALTER TABLE ONLY public."Sesiones" DROP CONSTRAINT id_usuario;
       public          postgres    false    203    205    2915            u           2606    41397    pedidos id_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT id_usuario FOREIGN KEY (id_usuario) REFERENCES public."Usuarios "(id) NOT VALID;
 <   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT id_usuario;
       public          postgres    false    2915    203    211            x           2606    41428    platos platos_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platos
    ADD CONSTRAINT platos_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id);
 I   ALTER TABLE ONLY public.platos DROP CONSTRAINT platos_id_categoria_fkey;
       public          postgres    false    2919    215    207                  x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      	      x������ � �            x������ � �      �      x������ � �     