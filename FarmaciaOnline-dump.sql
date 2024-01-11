toc.dat                                                                                             0000600 0004000 0002000 00000011675 14550061400 0014444 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   ;    3                 |            farmaciaOnline    16.1    16.1     !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         $           1262    49624    farmaciaOnline    DATABASE     r   CREATE DATABASE "farmaciaOnline" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
     DROP DATABASE "farmaciaOnline";
                postgres    false         �            1259    49625    carrello    TABLE     �   CREATE TABLE public.carrello (
    prodotti character varying NOT NULL,
    emailutente character varying NOT NULL,
    quantita integer NOT NULL,
    prezzototale double precision NOT NULL
);
    DROP TABLE public.carrello;
       public         heap    postgres    false         �            1259    49801    offerta    TABLE     �   CREATE TABLE public.offerta (
    nomeprodotto character varying NOT NULL,
    prezzoattuale character varying NOT NULL,
    prezzoscontato character varying NOT NULL
);
    DROP TABLE public.offerta;
       public         heap    postgres    false         �            1259    49631    prodotto    TABLE     @  CREATE TABLE public.prodotto (
    id character varying NOT NULL,
    nome character varying NOT NULL,
    descrizione character varying NOT NULL,
    prezzo double precision NOT NULL,
    richiestaperricetta character varying NOT NULL,
    azienda character varying NOT NULL,
    immagine character varying NOT NULL
);
    DROP TABLE public.prodotto;
       public         heap    postgres    false         �            1259    49636 
   recensione    TABLE     �   CREATE TABLE public.recensione (
    nomeutente character varying NOT NULL,
    nomeprodotto character varying NOT NULL,
    titolo character varying NOT NULL,
    descrizione character varying NOT NULL
);
    DROP TABLE public.recensione;
       public         heap    postgres    false         �            1259    49639    ricetta    TABLE     �   CREATE TABLE public.ricetta (
    nomemedico character varying NOT NULL,
    nomeutente character varying NOT NULL,
    idprodotto character varying NOT NULL
);
    DROP TABLE public.ricetta;
       public         heap    postgres    false         �            1259    49642    utente    TABLE       CREATE TABLE public.utente (
    nomeutente character varying NOT NULL,
    nome character varying NOT NULL,
    cognome character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    tipoutente character varying NOT NULL
);
    DROP TABLE public.utente;
       public         heap    postgres    false                   0    49625    carrello 
   TABLE DATA           Q   COPY public.carrello (prodotti, emailutente, quantita, prezzototale) FROM stdin;
    public          postgres    false    215       3609.dat           0    49801    offerta 
   TABLE DATA           N   COPY public.offerta (nomeprodotto, prezzoattuale, prezzoscontato) FROM stdin;
    public          postgres    false    220       3614.dat           0    49631    prodotto 
   TABLE DATA           i   COPY public.prodotto (id, nome, descrizione, prezzo, richiestaperricetta, azienda, immagine) FROM stdin;
    public          postgres    false    216       3610.dat           0    49636 
   recensione 
   TABLE DATA           S   COPY public.recensione (nomeutente, nomeprodotto, titolo, descrizione) FROM stdin;
    public          postgres    false    217       3611.dat           0    49639    ricetta 
   TABLE DATA           E   COPY public.ricetta (nomemedico, nomeutente, idprodotto) FROM stdin;
    public          postgres    false    218       3612.dat           0    49642    utente 
   TABLE DATA           X   COPY public.utente (nomeutente, nome, cognome, email, password, tipoutente) FROM stdin;
    public          postgres    false    219       3613.dat �           2606    49648    prodotto prodotto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.prodotto
    ADD CONSTRAINT prodotto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.prodotto DROP CONSTRAINT prodotto_pkey;
       public            postgres    false    216         �           2606    49747    utente utente_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (nomeutente);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    219                                                                           3609.dat                                                                                            0000600 0004000 0002000 00000000005 14550061400 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3614.dat                                                                                            0000600 0004000 0002000 00000000005 14550061400 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3610.dat                                                                                            0000600 0004000 0002000 00000000005 14550061400 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3611.dat                                                                                            0000600 0004000 0002000 00000000050 14550061400 0014232 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        nomeUtente	luca	titolo	descrizione
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3612.dat                                                                                            0000600 0004000 0002000 00000000034 14550061400 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        medico	nomeUtente	1234
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3613.dat                                                                                            0000600 0004000 0002000 00000000153 14550061400 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        nomeUtente	nome	cognome	email	$2a$12$FuAQdw28qqtxyZs0WeBOjueet2kEzG6hF.KvCK4/mcORSuQWjef6O	tipoUtente
\.


                                                                                                                                                                                                                                                                                                                                                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000012405 14550061400 0015361 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "farmaciaOnline";
--
-- Name: farmaciaOnline; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "farmaciaOnline" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE "farmaciaOnline" OWNER TO postgres;

\connect "farmaciaOnline"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: carrello; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrello (
    prodotti character varying NOT NULL,
    emailutente character varying NOT NULL,
    quantita integer NOT NULL,
    prezzototale double precision NOT NULL
);


ALTER TABLE public.carrello OWNER TO postgres;

--
-- Name: offerta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offerta (
    nomeprodotto character varying NOT NULL,
    prezzoattuale character varying NOT NULL,
    prezzoscontato character varying NOT NULL
);


ALTER TABLE public.offerta OWNER TO postgres;

--
-- Name: prodotto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prodotto (
    id character varying NOT NULL,
    nome character varying NOT NULL,
    descrizione character varying NOT NULL,
    prezzo double precision NOT NULL,
    richiestaperricetta character varying NOT NULL,
    azienda character varying NOT NULL,
    immagine character varying NOT NULL
);


ALTER TABLE public.prodotto OWNER TO postgres;

--
-- Name: recensione; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recensione (
    nomeutente character varying NOT NULL,
    nomeprodotto character varying NOT NULL,
    titolo character varying NOT NULL,
    descrizione character varying NOT NULL
);


ALTER TABLE public.recensione OWNER TO postgres;

--
-- Name: ricetta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ricetta (
    nomemedico character varying NOT NULL,
    nomeutente character varying NOT NULL,
    idprodotto character varying NOT NULL
);


ALTER TABLE public.ricetta OWNER TO postgres;

--
-- Name: utente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utente (
    nomeutente character varying NOT NULL,
    nome character varying NOT NULL,
    cognome character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    tipoutente character varying NOT NULL
);


ALTER TABLE public.utente OWNER TO postgres;

--
-- Data for Name: carrello; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrello (prodotti, emailutente, quantita, prezzototale) FROM stdin;
\.
COPY public.carrello (prodotti, emailutente, quantita, prezzototale) FROM '$$PATH$$/3609.dat';

--
-- Data for Name: offerta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offerta (nomeprodotto, prezzoattuale, prezzoscontato) FROM stdin;
\.
COPY public.offerta (nomeprodotto, prezzoattuale, prezzoscontato) FROM '$$PATH$$/3614.dat';

--
-- Data for Name: prodotto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prodotto (id, nome, descrizione, prezzo, richiestaperricetta, azienda, immagine) FROM stdin;
\.
COPY public.prodotto (id, nome, descrizione, prezzo, richiestaperricetta, azienda, immagine) FROM '$$PATH$$/3610.dat';

--
-- Data for Name: recensione; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recensione (nomeutente, nomeprodotto, titolo, descrizione) FROM stdin;
\.
COPY public.recensione (nomeutente, nomeprodotto, titolo, descrizione) FROM '$$PATH$$/3611.dat';

--
-- Data for Name: ricetta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ricetta (nomemedico, nomeutente, idprodotto) FROM stdin;
\.
COPY public.ricetta (nomemedico, nomeutente, idprodotto) FROM '$$PATH$$/3612.dat';

--
-- Data for Name: utente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utente (nomeutente, nome, cognome, email, password, tipoutente) FROM stdin;
\.
COPY public.utente (nomeutente, nome, cognome, email, password, tipoutente) FROM '$$PATH$$/3613.dat';

--
-- Name: prodotto prodotto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotto
    ADD CONSTRAINT prodotto_pkey PRIMARY KEY (id);


--
-- Name: utente utente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (nomeutente);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           