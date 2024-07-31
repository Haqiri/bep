toc.dat                                                                                             0000600 0004000 0002000 00000014233 14652342655 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       )                    |            bep    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    35063    bep    DATABASE     ~   CREATE DATABASE bep WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE bep;
                postgres    false         �            1259    35103    berkas    TABLE     �   CREATE TABLE public.berkas (
    id_berkas uuid NOT NULL,
    id_booking uuid,
    status integer,
    created_at time without time zone,
    updated_at time without time zone,
    deleted_at time without time zone
);
    DROP TABLE public.berkas;
       public         heap    postgres    false         �            1259    35096    booking    TABLE     �  CREATE TABLE public.booking (
    id_booking uuid NOT NULL,
    id_user uuid,
    id_lapangan uuid,
    jenis_pemesanan character varying,
    tgl_booking time without time zone,
    waktu character varying,
    catatan character varying,
    total_pembayaran integer,
    created_at time without time zone,
    updated_at time without time zone,
    deleted_at time without time zone,
    status integer
);
    DROP TABLE public.booking;
       public         heap    postgres    false         �            1259    35108    jadwal    TABLE       CREATE TABLE public.jadwal (
    id_jadwal uuid NOT NULL,
    id_lapangan uuid,
    tanggal time without time zone,
    waktu character varying,
    status integer,
    created_at time without time zone,
    updated_at time without time zone,
    deleted_at time without time zone
);
    DROP TABLE public.jadwal;
       public         heap    postgres    false         �            1259    35071    lapangan    TABLE     �  CREATE TABLE public.lapangan (
    id_lapangan uuid NOT NULL,
    nama_lapangan character varying,
    alamat character varying,
    jenis_lapangan character varying,
    created_at time without time zone,
    updated_at time without time zone,
    deleted_at time without time zone,
    deskripsi character varying,
    tipe character varying,
    ukuran integer,
    kapasitas integer,
    cp integer
);
    DROP TABLE public.lapangan;
       public         heap    postgres    false         �            1259    35064    users    TABLE     �  CREATE TABLE public.users (
    id_user uuid NOT NULL,
    username character varying,
    email character varying,
    password character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    token character varying,
    alamat text,
    nama_lengkap character varying,
    foto_profile character varying,
    remember_token character varying,
    nik character varying,
    no_hp integer
);
    DROP TABLE public.users;
       public         heap    postgres    false                   0    35103    berkas 
   TABLE DATA           c   COPY public.berkas (id_berkas, id_booking, status, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    217       3343.dat           0    35096    booking 
   TABLE DATA           �   COPY public.booking (id_booking, id_user, id_lapangan, jenis_pemesanan, tgl_booking, waktu, catatan, total_pembayaran, created_at, updated_at, deleted_at, status) FROM stdin;
    public          postgres    false    216       3342.dat           0    35108    jadwal 
   TABLE DATA           t   COPY public.jadwal (id_jadwal, id_lapangan, tanggal, waktu, status, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    218       3344.dat           0    35071    lapangan 
   TABLE DATA           �   COPY public.lapangan (id_lapangan, nama_lapangan, alamat, jenis_lapangan, created_at, updated_at, deleted_at, deskripsi, tipe, ukuran, kapasitas, cp) FROM stdin;
    public          postgres    false    215       3341.dat           0    35064    users 
   TABLE DATA           �   COPY public.users (id_user, username, email, password, created_at, updated_at, deleted_at, token, alamat, nama_lengkap, foto_profile, remember_token, nik, no_hp) FROM stdin;
    public          postgres    false    214       3340.dat {           2606    35107    berkas berkas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.berkas
    ADD CONSTRAINT berkas_pkey PRIMARY KEY (id_berkas);
 <   ALTER TABLE ONLY public.berkas DROP CONSTRAINT berkas_pkey;
       public            postgres    false    217         y           2606    35102    booking booking_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (id_booking);
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_pkey;
       public            postgres    false    216         }           2606    35114    jadwal jadwal_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.jadwal
    ADD CONSTRAINT jadwal_pkey PRIMARY KEY (id_jadwal);
 <   ALTER TABLE ONLY public.jadwal DROP CONSTRAINT jadwal_pkey;
       public            postgres    false    218         w           2606    35075    lapangan lapangan_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.lapangan
    ADD CONSTRAINT lapangan_pkey PRIMARY KEY (id_lapangan);
 @   ALTER TABLE ONLY public.lapangan DROP CONSTRAINT lapangan_pkey;
       public            postgres    false    215         u           2606    35070    users user_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pk PRIMARY KEY (id_user);
 7   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pk;
       public            postgres    false    214                                                                                                                                                                                                                                                                                                                                                                             3343.dat                                                                                            0000600 0004000 0002000 00000000005 14652342655 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3342.dat                                                                                            0000600 0004000 0002000 00000000005 14652342655 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3344.dat                                                                                            0000600 0004000 0002000 00000000005 14652342655 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3341.dat                                                                                            0000600 0004000 0002000 00000000005 14652342655 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3340.dat                                                                                            0000600 0004000 0002000 00000000005 14652342655 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000014624 14652342655 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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

DROP DATABASE bep;
--
-- Name: bep; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE bep WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE bep OWNER TO postgres;

\connect bep

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
-- Name: berkas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.berkas (
    id_berkas uuid NOT NULL,
    id_booking uuid,
    status integer,
    created_at time without time zone,
    updated_at time without time zone,
    deleted_at time without time zone
);


ALTER TABLE public.berkas OWNER TO postgres;

--
-- Name: booking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking (
    id_booking uuid NOT NULL,
    id_user uuid,
    id_lapangan uuid,
    jenis_pemesanan character varying,
    tgl_booking time without time zone,
    waktu character varying,
    catatan character varying,
    total_pembayaran integer,
    created_at time without time zone,
    updated_at time without time zone,
    deleted_at time without time zone,
    status integer
);


ALTER TABLE public.booking OWNER TO postgres;

--
-- Name: jadwal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jadwal (
    id_jadwal uuid NOT NULL,
    id_lapangan uuid,
    tanggal time without time zone,
    waktu character varying,
    status integer,
    created_at time without time zone,
    updated_at time without time zone,
    deleted_at time without time zone
);


ALTER TABLE public.jadwal OWNER TO postgres;

--
-- Name: lapangan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lapangan (
    id_lapangan uuid NOT NULL,
    nama_lapangan character varying,
    alamat character varying,
    jenis_lapangan character varying,
    created_at time without time zone,
    updated_at time without time zone,
    deleted_at time without time zone,
    deskripsi character varying,
    tipe character varying,
    ukuran integer,
    kapasitas integer,
    cp integer
);


ALTER TABLE public.lapangan OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id_user uuid NOT NULL,
    username character varying,
    email character varying,
    password character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    token character varying,
    alamat text,
    nama_lengkap character varying,
    foto_profile character varying,
    remember_token character varying,
    nik character varying,
    no_hp integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: berkas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.berkas (id_berkas, id_booking, status, created_at, updated_at, deleted_at) FROM stdin;
\.
COPY public.berkas (id_berkas, id_booking, status, created_at, updated_at, deleted_at) FROM '$$PATH$$/3343.dat';

--
-- Data for Name: booking; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking (id_booking, id_user, id_lapangan, jenis_pemesanan, tgl_booking, waktu, catatan, total_pembayaran, created_at, updated_at, deleted_at, status) FROM stdin;
\.
COPY public.booking (id_booking, id_user, id_lapangan, jenis_pemesanan, tgl_booking, waktu, catatan, total_pembayaran, created_at, updated_at, deleted_at, status) FROM '$$PATH$$/3342.dat';

--
-- Data for Name: jadwal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jadwal (id_jadwal, id_lapangan, tanggal, waktu, status, created_at, updated_at, deleted_at) FROM stdin;
\.
COPY public.jadwal (id_jadwal, id_lapangan, tanggal, waktu, status, created_at, updated_at, deleted_at) FROM '$$PATH$$/3344.dat';

--
-- Data for Name: lapangan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lapangan (id_lapangan, nama_lapangan, alamat, jenis_lapangan, created_at, updated_at, deleted_at, deskripsi, tipe, ukuran, kapasitas, cp) FROM stdin;
\.
COPY public.lapangan (id_lapangan, nama_lapangan, alamat, jenis_lapangan, created_at, updated_at, deleted_at, deskripsi, tipe, ukuran, kapasitas, cp) FROM '$$PATH$$/3341.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id_user, username, email, password, created_at, updated_at, deleted_at, token, alamat, nama_lengkap, foto_profile, remember_token, nik, no_hp) FROM stdin;
\.
COPY public.users (id_user, username, email, password, created_at, updated_at, deleted_at, token, alamat, nama_lengkap, foto_profile, remember_token, nik, no_hp) FROM '$$PATH$$/3340.dat';

--
-- Name: berkas berkas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.berkas
    ADD CONSTRAINT berkas_pkey PRIMARY KEY (id_berkas);


--
-- Name: booking booking_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (id_booking);


--
-- Name: jadwal jadwal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jadwal
    ADD CONSTRAINT jadwal_pkey PRIMARY KEY (id_jadwal);


--
-- Name: lapangan lapangan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lapangan
    ADD CONSTRAINT lapangan_pkey PRIMARY KEY (id_lapangan);


--
-- Name: users user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pk PRIMARY KEY (id_user);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            