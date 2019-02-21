PGDMP                          w            PhoneCommerce    11.2    11.2 F    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16452    PhoneCommerce    DATABASE     m   CREATE DATABASE "PhoneCommerce" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "PhoneCommerce";
             postgres    false            �            1259    16765    pk_autoincrement    SEQUENCE     y   CREATE SEQUENCE public.pk_autoincrement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pk_autoincrement;
       public       postgres    false            �            1259    16490    Administrator    TABLE     �   CREATE TABLE public."Administrator" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    email bit varying NOT NULL,
    password bigint NOT NULL
);
 #   DROP TABLE public."Administrator";
       public         postgres    false    205            �            1259    16506    CONTIENE    TABLE     �   CREATE TABLE public."CONTIENE" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    wishlist bigint,
    product bigint
);
    DROP TABLE public."CONTIENE";
       public         postgres    false    205            �            1259    16776    INCLUDE    TABLE     �   CREATE TABLE public."INCLUDE" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    product bigint NOT NULL,
    "order" bigint NOT NULL
);
    DROP TABLE public."INCLUDE";
       public         postgres    false    205            �            1259    16539 	   INSERISCE    TABLE     �   CREATE TABLE public."INSERISCE" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    admin bigint NOT NULL,
    product bigint NOT NULL
);
    DROP TABLE public."INSERISCE";
       public         postgres    false    205            �            1259    16477    Order    TABLE     �   CREATE TABLE public."Order" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    date date NOT NULL,
    total money,
    "user" bigint NOT NULL
);
    DROP TABLE public."Order";
       public         postgres    false    205            �            1259    16461    Product    TABLE     �   CREATE TABLE public."Product" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    name character varying NOT NULL,
    description character varying,
    price character varying NOT NULL,
    category bigint NOT NULL
);
    DROP TABLE public."Product";
       public         postgres    false    205            �            1259    16498    ProductCategory    TABLE     �   CREATE TABLE public."ProductCategory" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    name character varying NOT NULL,
    subcategory bigint
);
 %   DROP TABLE public."ProductCategory";
       public         postgres    false    205            �            1259    16482    Review    TABLE       CREATE TABLE public."Review" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    title character varying NOT NULL,
    text character varying NOT NULL,
    feedback integer,
    "user" bigint NOT NULL,
    product bigint NOT NULL
);
    DROP TABLE public."Review";
       public         postgres    false    205            �            1259    16453    User    TABLE     1  CREATE TABLE public."User" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    username character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL
);
    DROP TABLE public."User";
       public         postgres    false    205            �            1259    16469    Wishlist    TABLE     �   CREATE TABLE public."Wishlist" (
    id bigint DEFAULT nextval('public.pk_autoincrement'::regclass) NOT NULL,
    title character varying NOT NULL,
    "user" bigint NOT NULL
);
    DROP TABLE public."Wishlist";
       public         postgres    false    205            �          0    16490    Administrator 
   TABLE DATA               >   COPY public."Administrator" (id, email, password) FROM stdin;
    public       postgres    false    201   'T       �          0    16506    CONTIENE 
   TABLE DATA               ;   COPY public."CONTIENE" (id, wishlist, product) FROM stdin;
    public       postgres    false    203   DT       �          0    16776    INCLUDE 
   TABLE DATA               9   COPY public."INCLUDE" (id, product, "order") FROM stdin;
    public       postgres    false    206   aT       �          0    16539 	   INSERISCE 
   TABLE DATA               9   COPY public."INSERISCE" (id, admin, product) FROM stdin;
    public       postgres    false    204   ~T       �          0    16477    Order 
   TABLE DATA               :   COPY public."Order" (id, date, total, "user") FROM stdin;
    public       postgres    false    199   �T       �          0    16461    Product 
   TABLE DATA               K   COPY public."Product" (id, name, description, price, category) FROM stdin;
    public       postgres    false    197   �T       �          0    16498    ProductCategory 
   TABLE DATA               B   COPY public."ProductCategory" (id, name, subcategory) FROM stdin;
    public       postgres    false    202   �T       �          0    16482    Review 
   TABLE DATA               N   COPY public."Review" (id, title, text, feedback, "user", product) FROM stdin;
    public       postgres    false    200   �T       �          0    16453    User 
   TABLE DATA               N   COPY public."User" (id, name, surname, username, email, password) FROM stdin;
    public       postgres    false    196   U       �          0    16469    Wishlist 
   TABLE DATA               7   COPY public."Wishlist" (id, title, "user") FROM stdin;
    public       postgres    false    198   ,U       �           0    0    pk_autoincrement    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pk_autoincrement', 1, false);
            public       postgres    false    205                       2606    16497     Administrator Administrator_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Administrator"
    ADD CONSTRAINT "Administrator_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Administrator" DROP CONSTRAINT "Administrator_pkey";
       public         postgres    false    201                       2606    16510    CONTIENE CONTIENE_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."CONTIENE"
    ADD CONSTRAINT "CONTIENE_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."CONTIENE" DROP CONSTRAINT "CONTIENE_pkey";
       public         postgres    false    203                       2606    16545    INSERISCE Contiene_PK_UNIQUE 
   CONSTRAINT     Y   ALTER TABLE ONLY public."INSERISCE"
    ADD CONSTRAINT "Contiene_PK_UNIQUE" UNIQUE (id);
 J   ALTER TABLE ONLY public."INSERISCE" DROP CONSTRAINT "Contiene_PK_UNIQUE";
       public         postgres    false    204                       2606    16604 5   ProductCategory FK_unique_ProductCategory_subcategory 
   CONSTRAINT     {   ALTER TABLE ONLY public."ProductCategory"
    ADD CONSTRAINT "FK_unique_ProductCategory_subcategory" UNIQUE (subcategory);
 c   ALTER TABLE ONLY public."ProductCategory" DROP CONSTRAINT "FK_unique_ProductCategory_subcategory";
       public         postgres    false    202            �           2606    16611 "   Product FK_unique_Product_category 
   CONSTRAINT     e   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_unique_Product_category" UNIQUE (category);
 P   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "FK_unique_Product_category";
       public         postgres    false    197                       2606    16597    Review FK_unique_Review_product 
   CONSTRAINT     a   ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "FK_unique_Review_product" UNIQUE (product);
 M   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "FK_unique_Review_product";
       public         postgres    false    200                       2606    16590    Review FK_unique_Review_user 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "FK_unique_Review_user" UNIQUE ("user");
 J   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "FK_unique_Review_user";
       public         postgres    false    200            �           2606    16576    Order FK_unique_User 
   CONSTRAINT     U   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "FK_unique_User" UNIQUE ("user");
 B   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "FK_unique_User";
       public         postgres    false    199            �           2606    16583     Wishlist FK_unique_Wishlist_user 
   CONSTRAINT     a   ALTER TABLE ONLY public."Wishlist"
    ADD CONSTRAINT "FK_unique_Wishlist_user" UNIQUE ("user");
 N   ALTER TABLE ONLY public."Wishlist" DROP CONSTRAINT "FK_unique_Wishlist_user";
       public         postgres    false    198            #           2606    16780    INCLUDE INCLUDE_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."INCLUDE"
    ADD CONSTRAINT "INCLUDE_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."INCLUDE" DROP CONSTRAINT "INCLUDE_pkey";
       public         postgres    false    206                       2606    16543    INSERISCE INSERISCE_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."INSERISCE"
    ADD CONSTRAINT "INSERISCE_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."INSERISCE" DROP CONSTRAINT "INSERISCE_pkey";
       public         postgres    false    204                       2606    16481    Order Order_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "Order_pkey";
       public         postgres    false    199            %           2606    16782    INCLUDE PK_Unique_Include 
   CONSTRAINT     V   ALTER TABLE ONLY public."INCLUDE"
    ADD CONSTRAINT "PK_Unique_Include" UNIQUE (id);
 G   ALTER TABLE ONLY public."INCLUDE" DROP CONSTRAINT "PK_Unique_Include";
       public         postgres    false    206                       2606    16512    CONTIENE PK_unique 
   CONSTRAINT     O   ALTER TABLE ONLY public."CONTIENE"
    ADD CONSTRAINT "PK_unique" UNIQUE (id);
 @   ALTER TABLE ONLY public."CONTIENE" DROP CONSTRAINT "PK_unique";
       public         postgres    false    203                       2606    16514 %   Administrator PK_unique_Administrator 
   CONSTRAINT     b   ALTER TABLE ONLY public."Administrator"
    ADD CONSTRAINT "PK_unique_Administrator" UNIQUE (id);
 S   ALTER TABLE ONLY public."Administrator" DROP CONSTRAINT "PK_unique_Administrator";
       public         postgres    false    201                       2606    16516    Order PK_unique_Order 
   CONSTRAINT     R   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "PK_unique_Order" UNIQUE (id);
 C   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "PK_unique_Order";
       public         postgres    false    199            �           2606    16518    Product PK_unique_Product 
   CONSTRAINT     V   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "PK_unique_Product" UNIQUE (id);
 G   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "PK_unique_Product";
       public         postgres    false    197                       2606    16520 )   ProductCategory PK_unique_ProductCategory 
   CONSTRAINT     f   ALTER TABLE ONLY public."ProductCategory"
    ADD CONSTRAINT "PK_unique_ProductCategory" UNIQUE (id);
 W   ALTER TABLE ONLY public."ProductCategory" DROP CONSTRAINT "PK_unique_ProductCategory";
       public         postgres    false    202            	           2606    16522    Review PK_unique_Review 
   CONSTRAINT     T   ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "PK_unique_Review" UNIQUE (id);
 E   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "PK_unique_Review";
       public         postgres    false    200            �           2606    16524    User PK_unique_User 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "PK_unique_User" UNIQUE (id);
 A   ALTER TABLE ONLY public."User" DROP CONSTRAINT "PK_unique_User";
       public         postgres    false    196            �           2606    16526    Wishlist PK_unique_Wishlist 
   CONSTRAINT     X   ALTER TABLE ONLY public."Wishlist"
    ADD CONSTRAINT "PK_unique_Wishlist" UNIQUE (id);
 I   ALTER TABLE ONLY public."Wishlist" DROP CONSTRAINT "PK_unique_Wishlist";
       public         postgres    false    198                       2606    16505 $   ProductCategory ProductCategory_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."ProductCategory"
    ADD CONSTRAINT "ProductCategory_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."ProductCategory" DROP CONSTRAINT "ProductCategory_pkey";
       public         postgres    false    202            �           2606    16468    Product Product_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "Product_pkey";
       public         postgres    false    197                       2606    16489    Review Review_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "Review_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "Review_pkey";
       public         postgres    false    200            �           2606    16460    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public         postgres    false    196            �           2606    16528    Wishlist Wishlist_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Wishlist"
    ADD CONSTRAINT "Wishlist_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Wishlist" DROP CONSTRAINT "Wishlist_pkey";
       public         postgres    false    198                        1259    16562    fki_Contiene_FK_Administrator    INDEX     X   CREATE INDEX "fki_Contiene_FK_Administrator" ON public."INSERISCE" USING btree (admin);
 3   DROP INDEX public."fki_Contiene_FK_Administrator";
       public         postgres    false    204            !           1259    16556    fki_Contiene_FK_Product    INDEX     T   CREATE INDEX "fki_Contiene_FK_Product" ON public."INSERISCE" USING btree (product);
 -   DROP INDEX public."fki_Contiene_FK_Product";
       public         postgres    false    204                       1259    16574    fki_Contiene_FK_product    INDEX     S   CREATE INDEX "fki_Contiene_FK_product" ON public."CONTIENE" USING btree (product);
 -   DROP INDEX public."fki_Contiene_FK_product";
       public         postgres    false    203                       1259    16568    fki_Contiene_FK_wishlist    INDEX     U   CREATE INDEX "fki_Contiene_FK_wishlist" ON public."CONTIENE" USING btree (wishlist);
 .   DROP INDEX public."fki_Contiene_FK_wishlist";
       public         postgres    false    203            &           1259    16794    fki_FK_Include_Order    INDEX     O   CREATE INDEX "fki_FK_Include_Order" ON public."INCLUDE" USING btree ("order");
 *   DROP INDEX public."fki_FK_Include_Order";
       public         postgres    false    206            '           1259    16788    fki_FK_Include_Product    INDEX     Q   CREATE INDEX "fki_FK_Include_Product" ON public."INCLUDE" USING btree (product);
 ,   DROP INDEX public."fki_FK_Include_Product";
       public         postgres    false    206            1           2606    16557 #   INSERISCE Contiene_FK_Administrator    FK CONSTRAINT     �   ALTER TABLE ONLY public."INSERISCE"
    ADD CONSTRAINT "Contiene_FK_Administrator" FOREIGN KEY (admin) REFERENCES public."Administrator"(id);
 Q   ALTER TABLE ONLY public."INSERISCE" DROP CONSTRAINT "Contiene_FK_Administrator";
       public       postgres    false    3085    204    201            0           2606    16551    INSERISCE Contiene_FK_Product    FK CONSTRAINT     �   ALTER TABLE ONLY public."INSERISCE"
    ADD CONSTRAINT "Contiene_FK_Product" FOREIGN KEY (product) REFERENCES public."Product"(id);
 K   ALTER TABLE ONLY public."INSERISCE" DROP CONSTRAINT "Contiene_FK_Product";
       public       postgres    false    197    204    3063            /           2606    16569    CONTIENE Contiene_FK_product    FK CONSTRAINT     �   ALTER TABLE ONLY public."CONTIENE"
    ADD CONSTRAINT "Contiene_FK_product" FOREIGN KEY (product) REFERENCES public."Product"(id);
 J   ALTER TABLE ONLY public."CONTIENE" DROP CONSTRAINT "Contiene_FK_product";
       public       postgres    false    203    197    3063            .           2606    16563    CONTIENE Contiene_FK_wishlist    FK CONSTRAINT     �   ALTER TABLE ONLY public."CONTIENE"
    ADD CONSTRAINT "Contiene_FK_wishlist" FOREIGN KEY (wishlist) REFERENCES public."Wishlist"(id);
 K   ALTER TABLE ONLY public."CONTIENE" DROP CONSTRAINT "Contiene_FK_wishlist";
       public       postgres    false    198    3067    203            3           2606    16789    INCLUDE FK_Include_Order    FK CONSTRAINT     }   ALTER TABLE ONLY public."INCLUDE"
    ADD CONSTRAINT "FK_Include_Order" FOREIGN KEY ("order") REFERENCES public."Order"(id);
 F   ALTER TABLE ONLY public."INCLUDE" DROP CONSTRAINT "FK_Include_Order";
       public       postgres    false    206    3073    199            2           2606    16783    INCLUDE FK_Include_Product    FK CONSTRAINT     �   ALTER TABLE ONLY public."INCLUDE"
    ADD CONSTRAINT "FK_Include_Product" FOREIGN KEY (product) REFERENCES public."Product"(id);
 H   ALTER TABLE ONLY public."INCLUDE" DROP CONSTRAINT "FK_Include_Product";
       public       postgres    false    3063    206    197            (           2606    16612 #   Product FK_ProductCategory_category    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_ProductCategory_category" FOREIGN KEY (category) REFERENCES public."ProductCategory"(id);
 Q   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "FK_ProductCategory_category";
       public       postgres    false    197    3093    202            -           2606    16605 .   ProductCategory FK_ProductCategory_subcategory    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductCategory"
    ADD CONSTRAINT "FK_ProductCategory_subcategory" FOREIGN KEY (subcategory) REFERENCES public."ProductCategory"(id);
 \   ALTER TABLE ONLY public."ProductCategory" DROP CONSTRAINT "FK_ProductCategory_subcategory";
       public       postgres    false    3093    202    202            ,           2606    16598    Review FK_Review_product    FK CONSTRAINT        ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "FK_Review_product" FOREIGN KEY (product) REFERENCES public."Product"(id);
 F   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "FK_Review_product";
       public       postgres    false    200    3063    197            +           2606    16591    Review FK_Review_user    FK CONSTRAINT     x   ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "FK_Review_user" FOREIGN KEY ("user") REFERENCES public."User"(id);
 C   ALTER TABLE ONLY public."Review" DROP CONSTRAINT "FK_Review_user";
       public       postgres    false    200    196    3057            )           2606    16584    Wishlist FK_Wishlist_user    FK CONSTRAINT     |   ALTER TABLE ONLY public."Wishlist"
    ADD CONSTRAINT "FK_Wishlist_user" FOREIGN KEY ("user") REFERENCES public."User"(id);
 G   ALTER TABLE ONLY public."Wishlist" DROP CONSTRAINT "FK_Wishlist_user";
       public       postgres    false    198    196    3057            *           2606    16577    Order FK_user    FK CONSTRAINT     p   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "FK_user" FOREIGN KEY ("user") REFERENCES public."User"(id);
 ;   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "FK_user";
       public       postgres    false    196    199    3057            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     