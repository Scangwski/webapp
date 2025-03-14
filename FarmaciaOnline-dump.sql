PGDMP  :    -    
             |            farmaciaOnline    16.1    16.1     !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    49808    farmaciaOnline    DATABASE     r   CREATE DATABASE "farmaciaOnline" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
     DROP DATABASE "farmaciaOnline";
                postgres    false            �            1259    49809    carrello    TABLE     �   CREATE TABLE public.carrello (
    prodotti character varying NOT NULL,
    emailutente character varying NOT NULL,
    quantita integer NOT NULL,
    prezzototale double precision NOT NULL
);
    DROP TABLE public.carrello;
       public         heap    postgres    false            �            1259    49814    offerta    TABLE     �   CREATE TABLE public.offerta (
    nomeprodotto character varying NOT NULL,
    prezzoattuale character varying NOT NULL,
    prezzoscontato character varying NOT NULL
);
    DROP TABLE public.offerta;
       public         heap    postgres    false            �            1259    49819    prodotto    TABLE       CREATE TABLE public.prodotto (
    id character varying NOT NULL,
    nome character varying NOT NULL,
    descrizione character varying NOT NULL,
    prezzo double precision NOT NULL,
    categoria character varying NOT NULL,
    quantita bigint,
    immagini character varying
);
    DROP TABLE public.prodotto;
       public         heap    postgres    false            �            1259    49824 
   recensione    TABLE     �   CREATE TABLE public.recensione (
    emailutente character varying NOT NULL,
    nomeprodotto character varying NOT NULL,
    titolo character varying NOT NULL,
    descrizione character varying NOT NULL
);
    DROP TABLE public.recensione;
       public         heap    postgres    false            �            1259    49829    ricetta    TABLE     N   CREATE TABLE public.ricetta (
    codicericetta character varying NOT NULL
);
    DROP TABLE public.ricetta;
       public         heap    postgres    false            �            1259    49834    utente    TABLE       CREATE TABLE public.utente (
    nome character varying NOT NULL,
    cognome character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    tipoutente character varying NOT NULL,
    bannato boolean,
    google_id character varying
);
    DROP TABLE public.utente;
       public         heap    postgres    false                      0    49809    carrello 
   TABLE DATA           Q   COPY public.carrello (prodotti, emailutente, quantita, prezzototale) FROM stdin;
    public          postgres    false    215   N                 0    49814    offerta 
   TABLE DATA           N   COPY public.offerta (nomeprodotto, prezzoattuale, prezzoscontato) FROM stdin;
    public          postgres    false    216   k                 0    49819    prodotto 
   TABLE DATA           `   COPY public.prodotto (id, nome, descrizione, prezzo, categoria, quantita, immagini) FROM stdin;
    public          postgres    false    217   �                 0    49824 
   recensione 
   TABLE DATA           T   COPY public.recensione (emailutente, nomeprodotto, titolo, descrizione) FROM stdin;
    public          postgres    false    218   �                 0    49829    ricetta 
   TABLE DATA           0   COPY public.ricetta (codicericetta) FROM stdin;
    public          postgres    false    219   0                 0    49834    utente 
   TABLE DATA           `   COPY public.utente (nome, cognome, email, password, tipoutente, bannato, google_id) FROM stdin;
    public          postgres    false    220   R       �           2606    49840    prodotto prodotto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.prodotto
    ADD CONSTRAINT prodotto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.prodotto DROP CONSTRAINT prodotto_pkey;
       public            postgres    false    217            �           2606    49842    utente utente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (email);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    220                  x������ � �            x������ � �         X  x�m��n�@���OỂ������e[�TԖ�,HH�q'�4G3���Oû�bxf)�"�2Q||>�qVΜ��֢I�#6��^�b��(�
֔{���ʰyd��8jHd��0����8&����a��x �a��$
�8�+��%G�p;;��)L�L.��J�;�N���d��n�	�_?3ٟ�l��� ��~+�8r��F`�x��R��_��2�	\g�`�B�)�7Er�a0LBvb~�����. 9%C����87��lᣉ�6�~���O]�S&�w#	%��HɈ�l�F�%ZUfΗ�2�å5�s�)=���HK�A]s��/��\��h��F�^��_<jj�G���;�(��*XS�(�X^d=5l��N�v]H�=GiԄ���ڮ��X��%H;�PV�5i�QX>.g�K
��9t�(T���>룏�"�S�d4��=r���C���vi�y�:�pUOcP;��y슙�w�;���x���C�e�7�g�_����v�<�]-o��Ǚ���<7܊�+�+�)����?������k&XK�|�S�v뼂�|֑��v�%���t_l�����_�[���l6��cV         0   x����M-I�+I��)MN�,�,����LI-N.ʬ���K����� 5l�            x�3426����� 	�}         1  x�e��r�@��u��1F�EPB�rs�n�A����S)�lX���U�#�vE�pB��M_Q�*�"C#	Fi��SVI�aE�cbJ���`{1u��g��k�!K��'E�U�>��/��Aϟ�8�$�\9�[6�%���r�gI�zfJ�bT�8���!���\N�f�FQJ�l�oZ�r/CM
�g5�h��2N�b�?���1�yz����ݱ����4�.ĊT��v)>��2��/�2L^�����^��CI�iOC-a6��}x�o�=;Z�fV�F��U��Q�s�f��\o��Y�?���     