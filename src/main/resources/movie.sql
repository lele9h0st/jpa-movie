PGDMP         
                z            movie    15.1    15.1 g    v           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            w           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            x           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            y           1262    16494    movie    DATABASE     ?   CREATE DATABASE movie WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE movie;
                postgres    false            ?            1259    16495    actor    TABLE     ?   CREATE TABLE public.actor (
    id bigint NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    dob date,
    gender smallint
);
    DROP TABLE public.actor;
       public         heap    postgres    false            ?            1259    16500    actor_actor_id_seq    SEQUENCE     {   CREATE SEQUENCE public.actor_actor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.actor_actor_id_seq;
       public          postgres    false    214            z           0    0    actor_actor_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.actor_actor_id_seq OWNED BY public.actor.id;
          public          postgres    false    215            ?            1259    16501    actor_award    TABLE     w   CREATE TABLE public.actor_award (
    actor_id bigint,
    award_id bigint,
    year bigint,
    id bigint NOT NULL
);
    DROP TABLE public.actor_award;
       public         heap    postgres    false            ?            1259    16504    actor_award_id_seq    SEQUENCE     {   CREATE SEQUENCE public.actor_award_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.actor_award_id_seq;
       public          postgres    false    216            {           0    0    actor_award_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.actor_award_id_seq OWNED BY public.actor_award.id;
          public          postgres    false    217            ?            1259    16509    award    TABLE     ?   CREATE TABLE public.award (
    id bigint NOT NULL,
    name character varying(50),
    type character varying(50),
    description character varying(200)
);
    DROP TABLE public.award;
       public         heap    postgres    false            ?            1259    16512    award_id_seq    SEQUENCE     u   CREATE SEQUENCE public.award_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.award_id_seq;
       public          postgres    false    218            |           0    0    award_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.award_id_seq OWNED BY public.award.id;
          public          postgres    false    219            ?            1259    16513    director    TABLE     ?   CREATE TABLE public.director (
    id bigint NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    dob date
);
    DROP TABLE public.director;
       public         heap    postgres    false            ?            1259    16518    director_id_seq    SEQUENCE     x   CREATE SEQUENCE public.director_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.director_id_seq;
       public          postgres    false    220            }           0    0    director_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.director_id_seq OWNED BY public.director.id;
          public          postgres    false    221            ?            1259    16519    genres    TABLE     T   CREATE TABLE public.genres (
    id bigint NOT NULL,
    title character varying
);
    DROP TABLE public.genres;
       public         heap    postgres    false            ?            1259    16524    genres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          postgres    false    222            ~           0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          postgres    false    223            ?            1259    16525    movie    TABLE     ?   CREATE TABLE public.movie (
    id bigint NOT NULL,
    title character varying(100),
    year bigint,
    length bigint,
    language character varying(20),
    production_company_id bigint,
    director_id integer
);
    DROP TABLE public.movie;
       public         heap    postgres    false            ?            1259    16528    movie_award    TABLE     w   CREATE TABLE public.movie_award (
    movie_id bigint,
    award_id bigint,
    year bigint,
    id bigint NOT NULL
);
    DROP TABLE public.movie_award;
       public         heap    postgres    false            ?            1259    16531    movie_award_id_seq    SEQUENCE     {   CREATE SEQUENCE public.movie_award_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.movie_award_id_seq;
       public          postgres    false    225                       0    0    movie_award_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.movie_award_id_seq OWNED BY public.movie_award.id;
          public          postgres    false    226            ?            1259    16532 
   movie_cast    TABLE     ?   CREATE TABLE public.movie_cast (
    actor_id bigint,
    movie_id bigint,
    role character varying(50),
    id bigint NOT NULL
);
    DROP TABLE public.movie_cast;
       public         heap    postgres    false            ?            1259    16535    movie_cast_id_seq    SEQUENCE     z   CREATE SEQUENCE public.movie_cast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.movie_cast_id_seq;
       public          postgres    false    227            ?           0    0    movie_cast_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.movie_cast_id_seq OWNED BY public.movie_cast.id;
          public          postgres    false    228            ?            1259    16536    movie_genres    TABLE     h   CREATE TABLE public.movie_genres (
    movie_id bigint,
    genres_id bigint,
    id bigint NOT NULL
);
     DROP TABLE public.movie_genres;
       public         heap    postgres    false            ?            1259    16539    movie_genres_id_seq    SEQUENCE     |   CREATE SEQUENCE public.movie_genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.movie_genres_id_seq;
       public          postgres    false    229            ?           0    0    movie_genres_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.movie_genres_id_seq OWNED BY public.movie_genres.id;
          public          postgres    false    230            ?            1259    16540    movie_id_seq    SEQUENCE     u   CREATE SEQUENCE public.movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.movie_id_seq;
       public          postgres    false    224            ?           0    0    movie_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.movie_id_seq OWNED BY public.movie.id;
          public          postgres    false    231            ?            1259    16559    production_company    TABLE     ?   CREATE TABLE public.production_company (
    id bigint NOT NULL,
    name character varying(100),
    founded date,
    country character varying(50)
);
 &   DROP TABLE public.production_company;
       public         heap    postgres    false            ?            1259    16562    production_company_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.production_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.production_company_id_seq;
       public          postgres    false    232            ?           0    0    production_company_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.production_company_id_seq OWNED BY public.production_company.id;
          public          postgres    false    233            ?            1259    16563    rating    TABLE     ?   CREATE TABLE public.rating (
    movie_id bigint,
    reviewer_id bigint,
    star bigint,
    comment character varying(500),
    id bigint NOT NULL
);
    DROP TABLE public.rating;
       public         heap    postgres    false            ?            1259    16568    rating_id_seq    SEQUENCE     v   CREATE SEQUENCE public.rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rating_id_seq;
       public          postgres    false    234            ?           0    0    rating_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;
          public          postgres    false    235            ?            1259    16569    reviewer    TABLE     Z   CREATE TABLE public.reviewer (
    id bigint NOT NULL,
    name character varying(100)
);
    DROP TABLE public.reviewer;
       public         heap    postgres    false            ?            1259    16572    reviewer_id_seq    SEQUENCE     x   CREATE SEQUENCE public.reviewer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.reviewer_id_seq;
       public          postgres    false    236            ?           0    0    reviewer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.reviewer_id_seq OWNED BY public.reviewer.id;
          public          postgres    false    237            ?            1259    16695    tbl_tbl_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tbl_tbl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tbl_tbl_id_seq;
       public          postgres    false    224            ?           0    0    tbl_tbl_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tbl_tbl_id_seq OWNED BY public.movie.id;
          public          postgres    false    238            ?           2604    16573    actor id    DEFAULT     j   ALTER TABLE ONLY public.actor ALTER COLUMN id SET DEFAULT nextval('public.actor_actor_id_seq'::regclass);
 7   ALTER TABLE public.actor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    16574    actor_award id    DEFAULT     p   ALTER TABLE ONLY public.actor_award ALTER COLUMN id SET DEFAULT nextval('public.actor_award_id_seq'::regclass);
 =   ALTER TABLE public.actor_award ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            ?           2604    16576    award id    DEFAULT     d   ALTER TABLE ONLY public.award ALTER COLUMN id SET DEFAULT nextval('public.award_id_seq'::regclass);
 7   ALTER TABLE public.award ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            ?           2604    16577    director id    DEFAULT     j   ALTER TABLE ONLY public.director ALTER COLUMN id SET DEFAULT nextval('public.director_id_seq'::regclass);
 :   ALTER TABLE public.director ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            ?           2604    16578 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            ?           2604    16696    movie id    DEFAULT     f   ALTER TABLE ONLY public.movie ALTER COLUMN id SET DEFAULT nextval('public.tbl_tbl_id_seq'::regclass);
 7   ALTER TABLE public.movie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    224            ?           2604    16580    movie_award id    DEFAULT     p   ALTER TABLE ONLY public.movie_award ALTER COLUMN id SET DEFAULT nextval('public.movie_award_id_seq'::regclass);
 =   ALTER TABLE public.movie_award ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            ?           2604    16581    movie_cast id    DEFAULT     n   ALTER TABLE ONLY public.movie_cast ALTER COLUMN id SET DEFAULT nextval('public.movie_cast_id_seq'::regclass);
 <   ALTER TABLE public.movie_cast ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            ?           2604    16582    movie_genres id    DEFAULT     r   ALTER TABLE ONLY public.movie_genres ALTER COLUMN id SET DEFAULT nextval('public.movie_genres_id_seq'::regclass);
 >   ALTER TABLE public.movie_genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            ?           2604    16587    production_company id    DEFAULT     ~   ALTER TABLE ONLY public.production_company ALTER COLUMN id SET DEFAULT nextval('public.production_company_id_seq'::regclass);
 D   ALTER TABLE public.production_company ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            ?           2604    16588 	   rating id    DEFAULT     f   ALTER TABLE ONLY public.rating ALTER COLUMN id SET DEFAULT nextval('public.rating_id_seq'::regclass);
 8   ALTER TABLE public.rating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            ?           2604    16589    reviewer id    DEFAULT     j   ALTER TABLE ONLY public.reviewer ALTER COLUMN id SET DEFAULT nextval('public.reviewer_id_seq'::regclass);
 :   ALTER TABLE public.reviewer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            [          0    16495    actor 
   TABLE DATA           G   COPY public.actor (id, first_name, last_name, dob, gender) FROM stdin;
    public          postgres    false    214   q       ]          0    16501    actor_award 
   TABLE DATA           C   COPY public.actor_award (actor_id, award_id, year, id) FROM stdin;
    public          postgres    false    216   ?r       _          0    16509    award 
   TABLE DATA           <   COPY public.award (id, name, type, description) FROM stdin;
    public          postgres    false    218   ?r       a          0    16513    director 
   TABLE DATA           B   COPY public.director (id, first_name, last_name, dob) FROM stdin;
    public          postgres    false    220   .s       c          0    16519    genres 
   TABLE DATA           +   COPY public.genres (id, title) FROM stdin;
    public          postgres    false    222   Ks       e          0    16525    movie 
   TABLE DATA           f   COPY public.movie (id, title, year, length, language, production_company_id, director_id) FROM stdin;
    public          postgres    false    224   hs       f          0    16528    movie_award 
   TABLE DATA           C   COPY public.movie_award (movie_id, award_id, year, id) FROM stdin;
    public          postgres    false    225   &u       h          0    16532 
   movie_cast 
   TABLE DATA           B   COPY public.movie_cast (actor_id, movie_id, role, id) FROM stdin;
    public          postgres    false    227   Cu       j          0    16536    movie_genres 
   TABLE DATA           ?   COPY public.movie_genres (movie_id, genres_id, id) FROM stdin;
    public          postgres    false    229   ?v       m          0    16559    production_company 
   TABLE DATA           H   COPY public.production_company (id, name, founded, country) FROM stdin;
    public          postgres    false    232   ?v       o          0    16563    rating 
   TABLE DATA           J   COPY public.rating (movie_id, reviewer_id, star, comment, id) FROM stdin;
    public          postgres    false    234   1w       q          0    16569    reviewer 
   TABLE DATA           ,   COPY public.reviewer (id, name) FROM stdin;
    public          postgres    false    236   Nw       ?           0    0    actor_actor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.actor_actor_id_seq', 20, true);
          public          postgres    false    215            ?           0    0    actor_award_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.actor_award_id_seq', 2, true);
          public          postgres    false    217            ?           0    0    award_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.award_id_seq', 2, true);
          public          postgres    false    219            ?           0    0    director_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.director_id_seq', 1, false);
          public          postgres    false    221            ?           0    0    genres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.genres_id_seq', 1, false);
          public          postgres    false    223            ?           0    0    movie_award_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.movie_award_id_seq', 1, false);
          public          postgres    false    226            ?           0    0    movie_cast_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.movie_cast_id_seq', 46, true);
          public          postgres    false    228            ?           0    0    movie_genres_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.movie_genres_id_seq', 1, false);
          public          postgres    false    230            ?           0    0    movie_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.movie_id_seq', 1, true);
          public          postgres    false    231            ?           0    0    production_company_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.production_company_id_seq', 3, true);
          public          postgres    false    233            ?           0    0    rating_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rating_id_seq', 1, false);
          public          postgres    false    235            ?           0    0    reviewer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.reviewer_id_seq', 1, false);
          public          postgres    false    237            ?           0    0    tbl_tbl_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tbl_tbl_id_seq', 23, true);
          public          postgres    false    238            ?           2606    16591    actor_award actor_award_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.actor_award
    ADD CONSTRAINT actor_award_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.actor_award DROP CONSTRAINT actor_award_pkey;
       public            postgres    false    216            ?           2606    16593    actor actor_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    214            ?           2606    16597    award award_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.award
    ADD CONSTRAINT award_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.award DROP CONSTRAINT award_pkey;
       public            postgres    false    218            ?           2606    16599    director director_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    220            ?           2606    16601    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    222            ?           2606    16603    movie_award movie_award_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.movie_award
    ADD CONSTRAINT movie_award_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.movie_award DROP CONSTRAINT movie_award_pkey;
       public            postgres    false    225            ?           2606    16605    movie_cast movie_cast_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT movie_cast_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.movie_cast DROP CONSTRAINT movie_cast_pkey;
       public            postgres    false    227            ?           2606    16607    movie_genres movie_genres_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT movie_genres_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.movie_genres DROP CONSTRAINT movie_genres_pkey;
       public            postgres    false    229            ?           2606    16609    movie movie_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_pkey;
       public            postgres    false    224            ?           2606    16619 *   production_company production_company_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.production_company
    ADD CONSTRAINT production_company_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.production_company DROP CONSTRAINT production_company_pkey;
       public            postgres    false    232            ?           2606    16621    rating rating_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pkey;
       public            postgres    false    234            ?           2606    16623    reviewer reviewer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.reviewer
    ADD CONSTRAINT reviewer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.reviewer DROP CONSTRAINT reviewer_pkey;
       public            postgres    false    236            ?           2606    16740 '   movie_award fk2to1p0s312ve9wyw7n4u5vcb4    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_award
    ADD CONSTRAINT fk2to1p0s312ve9wyw7n4u5vcb4 FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 Q   ALTER TABLE ONLY public.movie_award DROP CONSTRAINT fk2to1p0s312ve9wyw7n4u5vcb4;
       public          postgres    false    225    224    3252            ?           2606    16760 (   movie_genres fk5mnvheg6gflcqn2x7846uhff3    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT fk5mnvheg6gflcqn2x7846uhff3 FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 R   ALTER TABLE ONLY public.movie_genres DROP CONSTRAINT fk5mnvheg6gflcqn2x7846uhff3;
       public          postgres    false    224    229    3252            ?           2606    16725 !   movie fk8n8hmglai6hjs0rkdt86t4pqc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT fk8n8hmglai6hjs0rkdt86t4pqc FOREIGN KEY (director_id) REFERENCES public.director(id);
 K   ALTER TABLE ONLY public.movie DROP CONSTRAINT fk8n8hmglai6hjs0rkdt86t4pqc;
       public          postgres    false    220    3248    224            ?           2606    16735 '   movie_award fk91q5rtfr3ha44f9ybf7s1j21y    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_award
    ADD CONSTRAINT fk91q5rtfr3ha44f9ybf7s1j21y FOREIGN KEY (award_id) REFERENCES public.award(id);
 Q   ALTER TABLE ONLY public.movie_award DROP CONSTRAINT fk91q5rtfr3ha44f9ybf7s1j21y;
       public          postgres    false    3246    218    225            ?           2606    16755 (   movie_genres fka2l5d3adulscj3n8cj5qh12mi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT fka2l5d3adulscj3n8cj5qh12mi FOREIGN KEY (genres_id) REFERENCES public.genres(id);
 R   ALTER TABLE ONLY public.movie_genres DROP CONSTRAINT fka2l5d3adulscj3n8cj5qh12mi;
       public          postgres    false    3250    229    222            ?           2606    16745 &   movie_cast fkaxveuqdcawe3up4vtc4lt00y7    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT fkaxveuqdcawe3up4vtc4lt00y7 FOREIGN KEY (actor_id) REFERENCES public.actor(id);
 P   ALTER TABLE ONLY public.movie_cast DROP CONSTRAINT fkaxveuqdcawe3up4vtc4lt00y7;
       public          postgres    false    214    3242    227            ?           2606    16624 "   rating fkb03uhn78uorfy8t0xrr66q7by    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT fkb03uhn78uorfy8t0xrr66q7by FOREIGN KEY (reviewer_id) REFERENCES public.reviewer(id);
 L   ALTER TABLE ONLY public.rating DROP CONSTRAINT fkb03uhn78uorfy8t0xrr66q7by;
       public          postgres    false    234    236    3264            ?           2606    16629 "   rating fkcwoocik3wwu9kycps3mktk4be    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT fkcwoocik3wwu9kycps3mktk4be FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 L   ALTER TABLE ONLY public.rating DROP CONSTRAINT fkcwoocik3wwu9kycps3mktk4be;
       public          postgres    false    234    3252    224            ?           2606    16750 &   movie_cast fkeyj1stv5dgc66lfnxu69bqiqx    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT fkeyj1stv5dgc66lfnxu69bqiqx FOREIGN KEY (movie_id) REFERENCES public.movie(id);
 P   ALTER TABLE ONLY public.movie_cast DROP CONSTRAINT fkeyj1stv5dgc66lfnxu69bqiqx;
       public          postgres    false    3252    224    227            ?           2606    16715 '   actor_award fkjbp5jw46mf4mjfqnwc87bohw4    FK CONSTRAINT     ?   ALTER TABLE ONLY public.actor_award
    ADD CONSTRAINT fkjbp5jw46mf4mjfqnwc87bohw4 FOREIGN KEY (actor_id) REFERENCES public.actor(id);
 Q   ALTER TABLE ONLY public.actor_award DROP CONSTRAINT fkjbp5jw46mf4mjfqnwc87bohw4;
       public          postgres    false    216    3242    214            ?           2606    16720 '   actor_award fkpg5iexqtn36ftbf5bmm5sflw6    FK CONSTRAINT     ?   ALTER TABLE ONLY public.actor_award
    ADD CONSTRAINT fkpg5iexqtn36ftbf5bmm5sflw6 FOREIGN KEY (award_id) REFERENCES public.award(id);
 Q   ALTER TABLE ONLY public.actor_award DROP CONSTRAINT fkpg5iexqtn36ftbf5bmm5sflw6;
       public          postgres    false    218    216    3246            ?           2606    16730 !   movie fks6uw245c6yh21r99v71f07fxu    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT fks6uw245c6yh21r99v71f07fxu FOREIGN KEY (production_company_id) REFERENCES public.production_company(id);
 K   ALTER TABLE ONLY public.movie DROP CONSTRAINT fks6uw245c6yh21r99v71f07fxu;
       public          postgres    false    3260    232    224            [   ?  x?-??n?0???S?THr??c?ld ?.?K/ܘ???R*???헴??o??e`??`C?p?);0˶T?Uƀ),??=l0|???V?Qz??K8??>?[?g????<?X??`o????(?jR,x??5O8bw???ץl?%????7?k?A???$?2????Gx?<??h?e??ظ?]<c??'f?6?H?%pdñ?${q?????????x??a`^6?XUJ\Îb??EX?^???h????8???kdUP;??y?m???4"*?'a?H?M?Qs?
\???Ѓ????Z?Vx??䴗D4????)@?	;8̮u)??4????1?F?a?Kk???ri??cΎn????????>wĚ?q?O!?????B[;?/???P??/4???K????EQ?XT?      ]      x?3?4?4??4?4?????? 98      _   A   x?3?tL.?/R?/NN,?L?9??RҀ????y
I??%
`.#?????bbԃ?q??qqq ??!?      a      x?????? ? ?      c      x?????? ? ?      e   ?  x?u??R?0???S??,َmn?j	P??[\rQ????"?Fڟ???lX??^??[3???s??????*t[&3?0Qglk???`??Q??"????v{&??`???????o:??J~???p?'-p???M@g#_2Q?c????؍?:??ׄ7?x??a׭??;Y'?"c?
??g.@?????i???wt6?F}&h]?O??z?=jO*??M^?j??jV?????-??????O??U"?O?q=?=?????Ѣb"????ŵ2??K??:.cW?Ԋ2O?e??3???/^??-W?;?l???ށ,O?"??̵????N??>???u*?z?,?'acU??????:?Q??̚??^?t?|?@2c?n;,A?R???͡??A?J?%B?? ?????ye?&;@?R???aչ7MM?9&????4?      f      x?????? ? ?      h   p  x?m??n?0E?3_?/@?y--P? ????I?????;??e?9Ǒ??M`??"h?`ab?????
-d?C?Z?i$???`
????xW?0??H/0?_`&м?\?}?f?іC?x?7?T
?'?a???0?̴0????2>?u??ZDםxsmEЈHE???0#"aGD!"??kA?X????bS{0	?2??D?u?Ё!䬔?;ӥ??z???+9.#?H9lܭQ???B?c?[P????"G??-???"'??>?ɐS??_?y???9?&؅?S?L??ɪn?L??kk7????6??	?#?DD>"HD1"??rDp??/?[?+w?ܣ?y?Gy ?"?ֆ???.j?/??f?;A??j??      j      x?????? ? ?      m   A   x?3??M,*K?Q.)M??/?4??4?54?50??2?O,?K-Rp*??? H.F??? D!)      o      x?????? ? ?      q      x?????? ? ?     