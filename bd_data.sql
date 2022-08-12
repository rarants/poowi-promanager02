PGDMP                         z            promanager2    14.3    14.3 4    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    16606    promanager2    DATABASE     k   CREATE DATABASE promanager2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE promanager2;
                postgres    false            �            1259    16672    cartao_etiquetas    TABLE     r   CREATE TABLE public.cartao_etiquetas (
    id integer NOT NULL,
    id_etiqueta integer,
    id_cartao integer
);
 $   DROP TABLE public.cartao_etiquetas;
       public         heap    postgres    false            �            1259    16671    cartao_etiquetas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cartao_etiquetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cartao_etiquetas_id_seq;
       public          postgres    false    220            /           0    0    cartao_etiquetas_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cartao_etiquetas_id_seq OWNED BY public.cartao_etiquetas.id;
          public          postgres    false    219            �            1259    16643    cartoes    TABLE     /  CREATE TABLE public.cartoes (
    id integer NOT NULL,
    titulo character varying(50) NOT NULL,
    status boolean DEFAULT false,
    ordem integer,
    data_inicio date,
    data_termino date,
    data_atualizacao date DEFAULT CURRENT_TIMESTAMP NOT NULL,
    id_coluna integer,
    descricao text
);
    DROP TABLE public.cartoes;
       public         heap    postgres    false            �            1259    16642    cartoes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cartoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cartoes_id_seq;
       public          postgres    false    216            0           0    0    cartoes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cartoes_id_seq OWNED BY public.cartoes.id;
          public          postgres    false    215            �            1259    16631    colunas    TABLE     �   CREATE TABLE public.colunas (
    id integer NOT NULL,
    titulo character varying(50) NOT NULL,
    ordem integer,
    id_quadro integer
);
    DROP TABLE public.colunas;
       public         heap    postgres    false            �            1259    16630    colunas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.colunas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.colunas_id_seq;
       public          postgres    false    214            1           0    0    colunas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.colunas_id_seq OWNED BY public.colunas.id;
          public          postgres    false    213            �            1259    16659 	   etiquetas    TABLE     �   CREATE TABLE public.etiquetas (
    id integer NOT NULL,
    titulo character varying(50) NOT NULL,
    cor character varying(50) DEFAULT 'deafult'::character varying,
    id_quadro integer
);
    DROP TABLE public.etiquetas;
       public         heap    postgres    false            �            1259    16658    etiquetas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.etiquetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.etiquetas_id_seq;
       public          postgres    false    218            2           0    0    etiquetas_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.etiquetas_id_seq OWNED BY public.etiquetas.id;
          public          postgres    false    217            �            1259    16616    quadros    TABLE     �   CREATE TABLE public.quadros (
    id integer NOT NULL,
    titulo character varying(50) NOT NULL,
    descricao text NOT NULL,
    publico boolean DEFAULT false,
    id_usuario integer
);
    DROP TABLE public.quadros;
       public         heap    postgres    false            �            1259    16615    quadros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.quadros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.quadros_id_seq;
       public          postgres    false    212            3           0    0    quadros_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.quadros_id_seq OWNED BY public.quadros.id;
          public          postgres    false    211            �            1259    16608    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    senha character varying(50) NOT NULL,
    ativo boolean DEFAULT true
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16607    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    210            4           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    209                       2604    16675    cartao_etiquetas id    DEFAULT     z   ALTER TABLE ONLY public.cartao_etiquetas ALTER COLUMN id SET DEFAULT nextval('public.cartao_etiquetas_id_seq'::regclass);
 B   ALTER TABLE public.cartao_etiquetas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            z           2604    16646 
   cartoes id    DEFAULT     h   ALTER TABLE ONLY public.cartoes ALTER COLUMN id SET DEFAULT nextval('public.cartoes_id_seq'::regclass);
 9   ALTER TABLE public.cartoes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            y           2604    16634 
   colunas id    DEFAULT     h   ALTER TABLE ONLY public.colunas ALTER COLUMN id SET DEFAULT nextval('public.colunas_id_seq'::regclass);
 9   ALTER TABLE public.colunas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            }           2604    16662    etiquetas id    DEFAULT     l   ALTER TABLE ONLY public.etiquetas ALTER COLUMN id SET DEFAULT nextval('public.etiquetas_id_seq'::regclass);
 ;   ALTER TABLE public.etiquetas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            w           2604    16619 
   quadros id    DEFAULT     h   ALTER TABLE ONLY public.quadros ALTER COLUMN id SET DEFAULT nextval('public.quadros_id_seq'::regclass);
 9   ALTER TABLE public.quadros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            u           2604    16611    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            (          0    16672    cartao_etiquetas 
   TABLE DATA           F   COPY public.cartao_etiquetas (id, id_etiqueta, id_cartao) FROM stdin;
    public          postgres    false    220   I;       $          0    16643    cartoes 
   TABLE DATA              COPY public.cartoes (id, titulo, status, ordem, data_inicio, data_termino, data_atualizacao, id_coluna, descricao) FROM stdin;
    public          postgres    false    216   f;       "          0    16631    colunas 
   TABLE DATA           ?   COPY public.colunas (id, titulo, ordem, id_quadro) FROM stdin;
    public          postgres    false    214   e=       &          0    16659 	   etiquetas 
   TABLE DATA           ?   COPY public.etiquetas (id, titulo, cor, id_quadro) FROM stdin;
    public          postgres    false    218   �=                  0    16616    quadros 
   TABLE DATA           M   COPY public.quadros (id, titulo, descricao, publico, id_usuario) FROM stdin;
    public          postgres    false    212   �=                 0    16608    usuarios 
   TABLE DATA           A   COPY public.usuarios (id, nome, email, senha, ativo) FROM stdin;
    public          postgres    false    210   w>       5           0    0    cartao_etiquetas_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.cartao_etiquetas_id_seq', 1, false);
          public          postgres    false    219            6           0    0    cartoes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cartoes_id_seq', 19, true);
          public          postgres    false    215            7           0    0    colunas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.colunas_id_seq', 8, true);
          public          postgres    false    213            8           0    0    etiquetas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.etiquetas_id_seq', 1, false);
          public          postgres    false    217            9           0    0    quadros_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.quadros_id_seq', 3, true);
          public          postgres    false    211            :           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 1, true);
          public          postgres    false    209            �           2606    16677 &   cartao_etiquetas cartao_etiquetas_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cartao_etiquetas
    ADD CONSTRAINT cartao_etiquetas_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cartao_etiquetas DROP CONSTRAINT cartao_etiquetas_pkey;
       public            postgres    false    220            �           2606    16652    cartoes cartoes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cartoes
    ADD CONSTRAINT cartoes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cartoes DROP CONSTRAINT cartoes_pkey;
       public            postgres    false    216            �           2606    16636    colunas colunas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.colunas
    ADD CONSTRAINT colunas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.colunas DROP CONSTRAINT colunas_pkey;
       public            postgres    false    214            �           2606    16665    etiquetas etiquetas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.etiquetas DROP CONSTRAINT etiquetas_pkey;
       public            postgres    false    218            �           2606    16624    quadros quadros_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.quadros
    ADD CONSTRAINT quadros_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.quadros DROP CONSTRAINT quadros_pkey;
       public            postgres    false    212            �           2606    16614    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    210            �           2606    16683 0   cartao_etiquetas cartao_etiquetas_id_cartao_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cartao_etiquetas
    ADD CONSTRAINT cartao_etiquetas_id_cartao_fkey FOREIGN KEY (id_cartao) REFERENCES public.cartoes(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cartao_etiquetas DROP CONSTRAINT cartao_etiquetas_id_cartao_fkey;
       public          postgres    false    3207    220    216            �           2606    16678 2   cartao_etiquetas cartao_etiquetas_id_etiqueta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cartao_etiquetas
    ADD CONSTRAINT cartao_etiquetas_id_etiqueta_fkey FOREIGN KEY (id_etiqueta) REFERENCES public.etiquetas(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.cartao_etiquetas DROP CONSTRAINT cartao_etiquetas_id_etiqueta_fkey;
       public          postgres    false    220    218    3209            �           2606    16653    cartoes cartoes_id_coluna_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cartoes
    ADD CONSTRAINT cartoes_id_coluna_fkey FOREIGN KEY (id_coluna) REFERENCES public.colunas(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.cartoes DROP CONSTRAINT cartoes_id_coluna_fkey;
       public          postgres    false    3205    214    216            �           2606    16637    colunas colunas_id_quadro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.colunas
    ADD CONSTRAINT colunas_id_quadro_fkey FOREIGN KEY (id_quadro) REFERENCES public.quadros(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.colunas DROP CONSTRAINT colunas_id_quadro_fkey;
       public          postgres    false    214    212    3203            �           2606    16666 "   etiquetas etiquetas_id_quadro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.etiquetas
    ADD CONSTRAINT etiquetas_id_quadro_fkey FOREIGN KEY (id_quadro) REFERENCES public.quadros(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.etiquetas DROP CONSTRAINT etiquetas_id_quadro_fkey;
       public          postgres    false    218    212    3203            �           2606    16625    quadros quadros_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.quadros
    ADD CONSTRAINT quadros_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.quadros DROP CONSTRAINT quadros_id_usuario_fkey;
       public          postgres    false    210    212    3201            (      x������ � �      $   �  x������0�k�)n�3IA	c�fg��ƞēm����U���I�'u��R�/���쐙�P\@�~�\I�lfG���}x~x�y��	#��a�J�t>�("���D=�bB�pb�K��N��XJm�Ӓ ���O��{��y��|�Th 
�@#D��5���5�&�s�ª����$��n���W%(���[�P7�ԧ��.{t)�S
��Ȱ����U�Y�h�e!y_`޲�Υ~F���{�/_�Z���m(cd)�J�W�%|�����P5�#�gq�,��T�%u�1b/���fs���,=���]�ne�������Dm�o��ӣ;f�ʞ��6x)�4m4�&E�/��'{�L���%�s���F@��J6����ۇ�s����ʽ3�r=.���w��XVpszldq��F&���� ��M?�{�ں[	o����xKٌ��ٮw�ȱ������F��n�S�SA��QJ� *�G�      "   k   x�3�t-,�,H-���4�2�(��/�LIL�	��RK�KJ3��&a������kS�r���
i�U�E ���k�Bb^Jbnj^I>D̜�"���� 1L*�      &      x������ � �          j   x�M̽	�0���4�M`�wp/7��|�Π�?tr�*Y��`H�>���ܺ�m�J��O�X�w�ɻ�BB���Q9�YE�������A�e���Q�N��9wQ�)�         7   x�3�J<���8Q��(1�$���(1�u�M���K���442615�,����� ��     