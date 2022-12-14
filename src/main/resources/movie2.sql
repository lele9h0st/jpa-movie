PGDMP         "        	         {            movie    15.1    15.1 o    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16750    movie    DATABASE     ?   CREATE DATABASE movie WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE movie;
                postgres    false            ?            1259    16751    actor    TABLE     ?   CREATE TABLE public.actor (
    id bigint NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    dob date,
    gender smallint
);
    DROP TABLE public.actor;
       public         heap    postgres    false            ?            1259    16754    actor_actor_id_seq    SEQUENCE     {   CREATE SEQUENCE public.actor_actor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.actor_actor_id_seq;
       public          postgres    false    214            ?           0    0    actor_actor_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.actor_actor_id_seq OWNED BY public.actor.id;
          public          postgres    false    215            ?            1259    16755    actor_award    TABLE     w   CREATE TABLE public.actor_award (
    actor_id bigint,
    award_id bigint,
    year bigint,
    id bigint NOT NULL
);
    DROP TABLE public.actor_award;
       public         heap    postgres    false            ?            1259    16758    actor_award_id_seq    SEQUENCE     {   CREATE SEQUENCE public.actor_award_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.actor_award_id_seq;
       public          postgres    false    216            ?           0    0    actor_award_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.actor_award_id_seq OWNED BY public.actor_award.id;
          public          postgres    false    217            ?            1259    16759    award    TABLE     ?   CREATE TABLE public.award (
    id bigint NOT NULL,
    name character varying(50),
    type character varying(50),
    description character varying(200)
);
    DROP TABLE public.award;
       public         heap    postgres    false            ?            1259    16762    award_id_seq    SEQUENCE     u   CREATE SEQUENCE public.award_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.award_id_seq;
       public          postgres    false    218            ?           0    0    award_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.award_id_seq OWNED BY public.award.id;
          public          postgres    false    219            ?            1259    16763    director    TABLE     ?   CREATE TABLE public.director (
    id bigint NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    dob date
);
    DROP TABLE public.director;
       public         heap    postgres    false            ?            1259    16766    director_id_seq    SEQUENCE     x   CREATE SEQUENCE public.director_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.director_id_seq;
       public          postgres    false    220            ?           0    0    director_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.director_id_seq OWNED BY public.director.id;
          public          postgres    false    221            ?            1259    16767    genres    TABLE     |   CREATE TABLE public.genres (
    id bigint NOT NULL,
    title character varying,
    description character varying(255)
);
    DROP TABLE public.genres;
       public         heap    postgres    false            ?            1259    16772    genres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          postgres    false    222            ?           0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          postgres    false    223            ?            1259    16773    movie    TABLE     ?   CREATE TABLE public.movie (
    id bigint NOT NULL,
    title character varying(100),
    year bigint,
    length bigint,
    language character varying(20),
    production_company_id bigint
);
    DROP TABLE public.movie;
       public         heap    postgres    false            ?            1259    16776    movie_award    TABLE     w   CREATE TABLE public.movie_award (
    movie_id bigint,
    award_id bigint,
    year bigint,
    id bigint NOT NULL
);
    DROP TABLE public.movie_award;
       public         heap    postgres    false            ?            1259    16779    movie_award_id_seq    SEQUENCE     {   CREATE SEQUENCE public.movie_award_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.movie_award_id_seq;
       public          postgres    false    225            ?           0    0    movie_award_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.movie_award_id_seq OWNED BY public.movie_award.id;
          public          postgres    false    226            ?            1259    16780 
   movie_cast    TABLE     ?   CREATE TABLE public.movie_cast (
    actor_id bigint,
    movie_id bigint,
    role character varying(50),
    id bigint NOT NULL
);
    DROP TABLE public.movie_cast;
       public         heap    postgres    false            ?            1259    16783    movie_cast_id_seq    SEQUENCE     z   CREATE SEQUENCE public.movie_cast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.movie_cast_id_seq;
       public          postgres    false    227            ?           0    0    movie_cast_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.movie_cast_id_seq OWNED BY public.movie_cast.id;
          public          postgres    false    228            ?            1259    16901    movie_director    TABLE     o   CREATE TABLE public.movie_director (
    id integer NOT NULL,
    director_id integer,
    movie_id integer
);
 "   DROP TABLE public.movie_director;
       public         heap    postgres    false            ?            1259    16900    movie_director_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.movie_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.movie_director_id_seq;
       public          postgres    false    240            ?           0    0    movie_director_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.movie_director_id_seq OWNED BY public.movie_director.id;
          public          postgres    false    239            ?            1259    16784    movie_genres    TABLE     h   CREATE TABLE public.movie_genres (
    movie_id bigint,
    genres_id bigint,
    id bigint NOT NULL
);
     DROP TABLE public.movie_genres;
       public         heap    postgres    false            ?            1259    16787    movie_genres_id_seq    SEQUENCE     |   CREATE SEQUENCE public.movie_genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.movie_genres_id_seq;
       public          postgres    false    229            ?           0    0    movie_genres_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.movie_genres_id_seq OWNED BY public.movie_genres.id;
          public          postgres    false    230            ?            1259    16788    movie_id_seq    SEQUENCE     u   CREATE SEQUENCE public.movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.movie_id_seq;
       public          postgres    false    224            ?           0    0    movie_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.movie_id_seq OWNED BY public.movie.id;
          public          postgres    false    231            ?            1259    16789    production_company    TABLE     ?   CREATE TABLE public.production_company (
    id bigint NOT NULL,
    name character varying(100),
    founded date,
    country character varying(50)
);
 &   DROP TABLE public.production_company;
       public         heap    postgres    false            ?            1259    16792    production_company_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.production_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.production_company_id_seq;
       public          postgres    false    232            ?           0    0    production_company_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.production_company_id_seq OWNED BY public.production_company.id;
          public          postgres    false    233            ?            1259    16793    rating    TABLE     ?   CREATE TABLE public.rating (
    movie_id bigint,
    reviewer_id bigint,
    star bigint,
    comment character varying(500),
    id bigint NOT NULL
);
    DROP TABLE public.rating;
       public         heap    postgres    false            ?            1259    16798    rating_id_seq    SEQUENCE     v   CREATE SEQUENCE public.rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rating_id_seq;
       public          postgres    false    234            ?           0    0    rating_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;
          public          postgres    false    235            ?            1259    16799    reviewer    TABLE     ?   CREATE TABLE public.reviewer (
    id bigint NOT NULL,
    name character varying(100),
    email character varying(255),
    password character varying(255),
    phone character varying(255),
    username character varying(255)
);
    DROP TABLE public.reviewer;
       public         heap    postgres    false            ?            1259    16802    reviewer_id_seq    SEQUENCE     x   CREATE SEQUENCE public.reviewer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.reviewer_id_seq;
       public          postgres    false    236            ?           0    0    reviewer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.reviewer_id_seq OWNED BY public.reviewer.id;
          public          postgres    false    237            ?            1259    16803    tbl_tbl_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tbl_tbl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tbl_tbl_id_seq;
       public          postgres    false    224            ?           0    0    tbl_tbl_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tbl_tbl_id_seq OWNED BY public.movie.id;
          public          postgres    false    238            ?           2604    16804    actor id    DEFAULT     j   ALTER TABLE ONLY public.actor ALTER COLUMN id SET DEFAULT nextval('public.actor_actor_id_seq'::regclass);
 7   ALTER TABLE public.actor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    16805    actor_award id    DEFAULT     p   ALTER TABLE ONLY public.actor_award ALTER COLUMN id SET DEFAULT nextval('public.actor_award_id_seq'::regclass);
 =   ALTER TABLE public.actor_award ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            ?           2604    16806    award id    DEFAULT     d   ALTER TABLE ONLY public.award ALTER COLUMN id SET DEFAULT nextval('public.award_id_seq'::regclass);
 7   ALTER TABLE public.award ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            ?           2604    16807    director id    DEFAULT     j   ALTER TABLE ONLY public.director ALTER COLUMN id SET DEFAULT nextval('public.director_id_seq'::regclass);
 :   ALTER TABLE public.director ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            ?           2604    16808 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            ?           2604    16809    movie id    DEFAULT     f   ALTER TABLE ONLY public.movie ALTER COLUMN id SET DEFAULT nextval('public.tbl_tbl_id_seq'::regclass);
 7   ALTER TABLE public.movie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    224            ?           2604    16810    movie_award id    DEFAULT     p   ALTER TABLE ONLY public.movie_award ALTER COLUMN id SET DEFAULT nextval('public.movie_award_id_seq'::regclass);
 =   ALTER TABLE public.movie_award ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            ?           2604    16811    movie_cast id    DEFAULT     n   ALTER TABLE ONLY public.movie_cast ALTER COLUMN id SET DEFAULT nextval('public.movie_cast_id_seq'::regclass);
 <   ALTER TABLE public.movie_cast ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            ?           2604    16904    movie_director id    DEFAULT     v   ALTER TABLE ONLY public.movie_director ALTER COLUMN id SET DEFAULT nextval('public.movie_director_id_seq'::regclass);
 @   ALTER TABLE public.movie_director ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ?           2604    16812    movie_genres id    DEFAULT     r   ALTER TABLE ONLY public.movie_genres ALTER COLUMN id SET DEFAULT nextval('public.movie_genres_id_seq'::regclass);
 >   ALTER TABLE public.movie_genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            ?           2604    16813    production_company id    DEFAULT     ~   ALTER TABLE ONLY public.production_company ALTER COLUMN id SET DEFAULT nextval('public.production_company_id_seq'::regclass);
 D   ALTER TABLE public.production_company ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            ?           2604    16814 	   rating id    DEFAULT     f   ALTER TABLE ONLY public.rating ALTER COLUMN id SET DEFAULT nextval('public.rating_id_seq'::regclass);
 8   ALTER TABLE public.rating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            ?           2604    16815    reviewer id    DEFAULT     j   ALTER TABLE ONLY public.reviewer ALTER COLUMN id SET DEFAULT nextval('public.reviewer_id_seq'::regclass);
 :   ALTER TABLE public.reviewer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            d          0    16751    actor 
   TABLE DATA           G   COPY public.actor (id, first_name, last_name, dob, gender) FROM stdin;
    public          postgres    false    214   B{       f          0    16755    actor_award 
   TABLE DATA           C   COPY public.actor_award (actor_id, award_id, year, id) FROM stdin;
    public          postgres    false    216   ?|       h          0    16759    award 
   TABLE DATA           <   COPY public.award (id, name, type, description) FROM stdin;
    public          postgres    false    218   }       j          0    16763    director 
   TABLE DATA           B   COPY public.director (id, first_name, last_name, dob) FROM stdin;
    public          postgres    false    220   c}       l          0    16767    genres 
   TABLE DATA           8   COPY public.genres (id, title, description) FROM stdin;
    public          postgres    false    222   ?~       n          0    16773    movie 
   TABLE DATA           Y   COPY public.movie (id, title, year, length, language, production_company_id) FROM stdin;
    public          postgres    false    224   -       o          0    16776    movie_award 
   TABLE DATA           C   COPY public.movie_award (movie_id, award_id, year, id) FROM stdin;
    public          postgres    false    225   ??       q          0    16780 
   movie_cast 
   TABLE DATA           B   COPY public.movie_cast (actor_id, movie_id, role, id) FROM stdin;
    public          postgres    false    227   ?       ~          0    16901    movie_director 
   TABLE DATA           C   COPY public.movie_director (id, director_id, movie_id) FROM stdin;
    public          postgres    false    240   ??       s          0    16784    movie_genres 
   TABLE DATA           ?   COPY public.movie_genres (movie_id, genres_id, id) FROM stdin;
    public          postgres    false    229   ??       v          0    16789    production_company 
   TABLE DATA           H   COPY public.production_company (id, name, founded, country) FROM stdin;
    public          postgres    false    232   _?       x          0    16793    rating 
   TABLE DATA           J   COPY public.rating (movie_id, reviewer_id, star, comment, id) FROM stdin;
    public          postgres    false    234   ??       z          0    16799    reviewer 
   TABLE DATA           N   COPY public.reviewer (id, name, email, password, phone, username) FROM stdin;
    public          postgres    false    236   '?       ?           0    0    actor_actor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.actor_actor_id_seq', 20, true);
          public          postgres    false    215            ?           0    0    actor_award_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.actor_award_id_seq', 2, true);
          public          postgres    false    217            ?           0    0    award_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.award_id_seq', 2, true);
          public          postgres    false    219            ?           0    0    director_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.director_id_seq', 17, true);
          public          postgres    false    221            ?           0    0    genres_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genres_id_seq', 9, true);
          public          postgres    false    223            ?           0    0    movie_award_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.movie_award_id_seq', 1, false);
          public          postgres    false    226            ?           0    0    movie_cast_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.movie_cast_id_seq', 46, true);
          public          postgres    false    228            ?           0    0    movie_director_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.movie_director_id_seq', 21, true);
          public          postgres    false    239            ?           0    0    movie_genres_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.movie_genres_id_seq', 23, true);
          public          postgres    false    230            ?           0    0    movie_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.movie_id_seq', 1, true);
          public          postgres    false    231            ?           0    0    production_company_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.production_company_id_seq', 3, true);
          public          postgres    false    233            ?           0    0    rating_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rating_id_seq', 7, true);
          public          postgres    false    235            ?           0    0    reviewer_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.reviewer_id_seq', 3, true);
          public          postgres    false    237            ?           0    0    tbl_tbl_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tbl_tbl_id_seq', 23, true);
          public          postgres    false    238            ?           2606    16817    actor_award actor_award_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.actor_award
    ADD CONSTRAINT actor_award_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.actor_award DROP CONSTRAINT actor_award_pkey;
       public            postgres    false    216            ?           2606    16819    actor actor_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    214            ?           2606    16821    award award_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.award
    ADD CONSTRAINT award_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.award DROP CONSTRAINT award_pkey;
       public            postgres    false    218            ?           2606    16823    director director_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    220            ?           2606    16825    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    222            ?           2606    16827    movie_award movie_award_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.movie_award
    ADD CONSTRAINT movie_award_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.movie_award DROP CONSTRAINT movie_award_pkey;
       public            postgres    false    225            ?           2606    16829    movie_cast movie_cast_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT movie_cast_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.movie_cast DROP CONSTRAINT movie_cast_pkey;
       public            postgres    false    227            ?           2606    16906 "   movie_director movie_director_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.movie_director
    ADD CONSTRAINT movie_director_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.movie_director DROP CONSTRAINT movie_director_pkey;
       public            postgres    false    240            ?           2606    16831    movie_genres movie_genres_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT movie_genres_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.movie_genres DROP CONSTRAINT movie_genres_pkey;
       public            postgres    false    229            ?           2606    16833    movie movie_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_pkey;
       public            postgres    false    224            ?           2606    16835 *   production_company production_company_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.production_company
    ADD CONSTRAINT production_company_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.production_company DROP CONSTRAINT production_company_pkey;
       public            postgres    false    232            ?           2606    16837    rating rating_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pkey;
       public            postgres    false    234            ?           2606    16839    reviewer reviewer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.reviewer
    ADD CONSTRAINT reviewer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.reviewer DROP CONSTRAINT reviewer_pkey;
       public            postgres    false    236            ?           2606    16840 '   movie_award fk2to1p0s312ve9wyw7n4u5vcb4    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_award
    ADD CONSTRAINT fk2to1p0s312ve9wyw7n4u5vcb4 FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 Q   ALTER TABLE ONLY public.movie_award DROP CONSTRAINT fk2to1p0s312ve9wyw7n4u5vcb4;
       public          postgres    false    3258    225    224            ?           2606    16845 (   movie_genres fk5mnvheg6gflcqn2x7846uhff3    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT fk5mnvheg6gflcqn2x7846uhff3 FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 R   ALTER TABLE ONLY public.movie_genres DROP CONSTRAINT fk5mnvheg6gflcqn2x7846uhff3;
       public          postgres    false    3258    224    229            ?           2606    16855 '   movie_award fk91q5rtfr3ha44f9ybf7s1j21y    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_award
    ADD CONSTRAINT fk91q5rtfr3ha44f9ybf7s1j21y FOREIGN KEY (award_id) REFERENCES public.award(id);
 Q   ALTER TABLE ONLY public.movie_award DROP CONSTRAINT fk91q5rtfr3ha44f9ybf7s1j21y;
       public          postgres    false    225    218    3252            ?           2606    16912 *   movie_director fk9svlwm4hyndpm0ctyxac878el    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_director
    ADD CONSTRAINT fk9svlwm4hyndpm0ctyxac878el FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 T   ALTER TABLE ONLY public.movie_director DROP CONSTRAINT fk9svlwm4hyndpm0ctyxac878el;
       public          postgres    false    3258    240    224            ?           2606    16860 (   movie_genres fka2l5d3adulscj3n8cj5qh12mi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT fka2l5d3adulscj3n8cj5qh12mi FOREIGN KEY (genres_id) REFERENCES public.genres(id);
 R   ALTER TABLE ONLY public.movie_genres DROP CONSTRAINT fka2l5d3adulscj3n8cj5qh12mi;
       public          postgres    false    222    3256    229            ?           2606    16865 &   movie_cast fkaxveuqdcawe3up4vtc4lt00y7    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT fkaxveuqdcawe3up4vtc4lt00y7 FOREIGN KEY (actor_id) REFERENCES public.actor(id);
 P   ALTER TABLE ONLY public.movie_cast DROP CONSTRAINT fkaxveuqdcawe3up4vtc4lt00y7;
       public          postgres    false    227    3248    214            ?           2606    16870 "   rating fkb03uhn78uorfy8t0xrr66q7by    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT fkb03uhn78uorfy8t0xrr66q7by FOREIGN KEY (reviewer_id) REFERENCES public.reviewer(id);
 L   ALTER TABLE ONLY public.rating DROP CONSTRAINT fkb03uhn78uorfy8t0xrr66q7by;
       public          postgres    false    3270    236    234            ?           2606    16875 "   rating fkcwoocik3wwu9kycps3mktk4be    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT fkcwoocik3wwu9kycps3mktk4be FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 L   ALTER TABLE ONLY public.rating DROP CONSTRAINT fkcwoocik3wwu9kycps3mktk4be;
       public          postgres    false    224    234    3258            ?           2606    16880 &   movie_cast fkeyj1stv5dgc66lfnxu69bqiqx    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT fkeyj1stv5dgc66lfnxu69bqiqx FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 P   ALTER TABLE ONLY public.movie_cast DROP CONSTRAINT fkeyj1stv5dgc66lfnxu69bqiqx;
       public          postgres    false    224    227    3258            ?           2606    16885 '   actor_award fkjbp5jw46mf4mjfqnwc87bohw4    FK CONSTRAINT     ?   ALTER TABLE ONLY public.actor_award
    ADD CONSTRAINT fkjbp5jw46mf4mjfqnwc87bohw4 FOREIGN KEY (actor_id) REFERENCES public.actor(id);
 Q   ALTER TABLE ONLY public.actor_award DROP CONSTRAINT fkjbp5jw46mf4mjfqnwc87bohw4;
       public          postgres    false    3248    214    216            ?           2606    16907 *   movie_director fkl8ti0ptk3nju8begleo4pubci    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_director
    ADD CONSTRAINT fkl8ti0ptk3nju8begleo4pubci FOREIGN KEY (director_id) REFERENCES public.director(id);
 T   ALTER TABLE ONLY public.movie_director DROP CONSTRAINT fkl8ti0ptk3nju8begleo4pubci;
       public          postgres    false    220    240    3254            ?           2606    16890 '   actor_award fkpg5iexqtn36ftbf5bmm5sflw6    FK CONSTRAINT     ?   ALTER TABLE ONLY public.actor_award
    ADD CONSTRAINT fkpg5iexqtn36ftbf5bmm5sflw6 FOREIGN KEY (award_id) REFERENCES public.award(id);
 Q   ALTER TABLE ONLY public.actor_award DROP CONSTRAINT fkpg5iexqtn36ftbf5bmm5sflw6;
       public          postgres    false    3252    216    218            ?           2606    16895 !   movie fks6uw245c6yh21r99v71f07fxu    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT fks6uw245c6yh21r99v71f07fxu FOREIGN KEY (production_company_id) REFERENCES public.production_company(id);
 K   ALTER TABLE ONLY public.movie DROP CONSTRAINT fks6uw245c6yh21r99v71f07fxu;
       public          postgres    false    232    224    3266            d   ?  x?-??n?0???S?THr??c?ld ?.?K/ܘ???R*???헴??o??e`??`C?p?);0˶T?Uƀ),??=l0|???V?Qz??K8??>?[?g????<?X??`o????(?jR,x??5O8bw???ץl?%????7?k?A???$?2????Gx?<??h?e??ظ?]<c??'f?6?H?%pdñ?${q?????????x??a`^6?XUJ\Îb??EX?^???h????8???kdUP;??y?m???4"*?'a?H?M?Qs?
\???Ѓ????Z?Vx??䴗D4????)@?	;8̮u)??4????1?F?a?Kk???ri??cΎn????????>wĚ?q?O!?????B[;?/???P??/4???K????EQ?XT?      f      x?3?4?4??4?4?????? 98      h   A   x?3?tL.?/R?/NN,?L?9??RҀ????y
I??%
`.#?????bbԃ?q??qqq ??!?      j   I  x?U?Mj?0F?3wQ???˒JICI??9V??-?nȹz?^?#'??????͈??m??????*2!KA9*??ڄ	>?`N?9̔???x????4?q??B?B%?£?Zﮰ???G??k	f?jcV???z^x??? ?9<?_?qa5????0I	Ub/?3?3????%???m?]O&??$??+x?̹5?????]??ː$?;=???????4J*?D?	?uL??n????,??m??3v???.D"??j?yj?e??:?lY!???}?????
)??oxm??=?7l?????XwjM?=????F?+<???Ȓ?J
???B~?      l   a   x??K
?0E???^??&\??P-liܽ??{?4 ?9l?iA?s?|ˡ??QȔ^???'?=[??#?W1??ʱ??3?D?^`?}?[m?? ?!      n   ?  x?u??R?0???S?ڱd;?م??@?:ݰQ?[E?\?Bxz?lh?N???w??)?c??????*t{&s?2??lg????Jv???x>?hے?????G6#????裉?Ǥf??|?w;??t6?+&J???D|cw??p??FmC?6Ѷ????v? ?&?9?V?'?t! re?<P??^?ݱ??Up6¹????Ȅ????q???^?U'???\??nm D?J?P?Q?)Y?'?q;VGp`?k?k&?&?????2?/?ƹm??n??t??H?j??p?c?Kж??a?θ??C?E?1?a???g?????1;?[?L???_ ??wDEU?`;Q5????A???i?S?v??Si?E1K2g??~??>??|
??l$?
??|J*N???cH7?M?? ?FY???M??N?M?C"{??e?;.#      o      x?????? ? ?      q   p  x?m??n?0E?3_?/@?y--P? ????I?????;??e?9Ǒ??M`??"h?`ab?????
-d?C?Z?i$???`
????xW?0??H/0?_`&м?\?}?f?іC?x?7?T
?'?a???0?̴0????2>?u??ZDםxsmEЈHE???0#"aGD!"??kA?X????bS{0	?2??D?u?Ё!䬔?;ӥ??z???+9.#?H9lܭQ???B?c?[P????"G??-???"'??>?ɐS??_?y???9?&؅?S?L??ɪn?L??kk7????6??	?#?DD>"HD1"??rDp??/?[?+w?ܣ?y?Gy ?"?ֆ???.j?/??f?;A??j??      ~   f   x???0???0Ed;?.??:??LʘT??d?:?&?????L<tXغl?????n???S?f???i??????^??_Z?Đ?]???????G????      s   V   x???	?0??L0?{????????G#?
?R???jMvhyR7?:l)^hEx?	?(?5І?mhhhǇ?/p0??	?,??3?      v   A   x?3??M,*K?Q.)M??/?4??4?54?50??2?O,?K-Rp*??? H.F??? D!)      x   g   x?}?K@@ׯO?'?0???ZL?OL???v?V??Q??8E??[RBI?Y?c?)???5,?L;cە?0?Qc????yD??/5󾠡?J?oh?+???$?      z   b   x?3???O?K?????9z?????F?&?f????$??ˈ3/??25O?,1O!?3????D.cΒ?D??$?$LՖ?f?&?F??%eI\1z\\\ I?(	     