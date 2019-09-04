PGDMP     $    	                w            website    11.3    11.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16541    website    DATABASE     �   CREATE DATABASE website WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Chinese (Simplified)_China.936' LC_CTYPE = 'Chinese (Simplified)_China.936';
    DROP DATABASE website;
             postgres    false            �            1259    16554    t_news    TABLE     0  CREATE TABLE public.t_news (
    c_id character varying(36) NOT NULL,
    c_title character varying(50),
    c_content character varying(500),
    c_create_time timestamp without time zone,
    c_update_time timestamp without time zone,
    c_state integer NOT NULL,
    c_link character varying(256)
);
    DROP TABLE public.t_news;
       public         postgres    false            �            1259    16542    t_user    TABLE     5  CREATE TABLE public.t_user (
    c_id character varying(36) NOT NULL,
    c_login_name character varying(20),
    c_password character varying(100),
    c_name character varying(20),
    c_create_time timestamp without time zone,
    c_update_time timestamp without time zone,
    c_state integer NOT NULL
);
    DROP TABLE public.t_user;
       public         postgres    false                      0    16554    t_news 
   TABLE DATA               i   COPY public.t_news (c_id, c_title, c_content, c_create_time, c_update_time, c_state, c_link) FROM stdin;
    public       postgres    false    197   �                  0    16542    t_user 
   TABLE DATA               o   COPY public.t_user (c_id, c_login_name, c_password, c_name, c_create_time, c_update_time, c_state) FROM stdin;
    public       postgres    false    196   �)       �
           2606    16561    t_news t_news_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.t_news
    ADD CONSTRAINT t_news_pkey PRIMARY KEY (c_id);
 <   ALTER TABLE ONLY public.t_news DROP CONSTRAINT t_news_pkey;
       public         postgres    false    197            �
           2606    16546    t_user t_user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.t_user
    ADD CONSTRAINT t_user_pkey PRIMARY KEY (c_id);
 <   ALTER TABLE ONLY public.t_user DROP CONSTRAINT t_user_pkey;
       public         postgres    false    196            �
           1259    16563    i_news_link    INDEX     @   CREATE INDEX i_news_link ON public.t_news USING btree (c_link);
    DROP INDEX public.i_news_link;
       public         postgres    false    197            �
           1259    16562    i_news_state    INDEX     B   CREATE INDEX i_news_state ON public.t_news USING btree (c_state);
     DROP INDEX public.i_news_state;
       public         postgres    false    197            �
           1259    16547    i_user_state    INDEX     B   CREATE INDEX i_user_state ON public.t_user USING btree (c_state);
     DROP INDEX public.i_user_state;
       public         postgres    false    196                  x��{isTٕ��ԯ�D��#�ə�D���Lu��e��r��vt��4(S�'% )5��%�&@��25��v�so~�����T��4D����)���}�^k��1�/"n��-�um���D�\�ƙ���̿T?�����#r[����*?R.����ʣ�tmCu��V�~�a���?C�A.�����!��4C2�n߾q���kѝ[� ���lp����7����~��_|���/���}��;���￼z���%<{���o�v�44��^`�'��Y�Eq$�0Ȕ�:���d�(Yx�����Ąܛ=���~�4|�ד����y���m�g7�I[��w������~ÿ�{����>�ӟ~�{QxVh8/��%12臁eGš^y#�~𿝳�S�.&++����o��VH,A9�C�"�U$7��ۛ���_|u�W���?�����*ZC�ɭ����kq�d��\��������_e��+������_]��ﲔvĖ�Z�EQ�]���(�MF�Lz<U.���M�p���>G=��蘂��*�r�C��ҍ�[�����\�~�o��~ǻ�ͭK����~ɤ���K���%ʈ�!H`z����5D�Í\�p��s��Њ��?:��{�r�0Yޖ��;�>�G'�ެLu�����~2�_��=V[�����;nJd��Z����Aݹs'��[�/E�o����߹q��k���Rʄkrj�,2��Ɓ�Q�4b@����B��`̲je��'򠘔
��PenIu.��P�lN�_h5�(�[�+�u��nD7����,��]������;����k�AY�Ʀa�1���wCJ���3f�gd�v�<$�ԋ����7X>,��,��ͱV�2�7[��;�(�^�Z-�����ѵ���/k��W�P��C�;�I\۴�W벡�ox4��(���ўI2�r��)��.TK�5���jv��?Q�o^�7��7�F�b�7�6ֱ�RJ38�0ag��C�����+\W_(�/���M���u8���&��z�����.��ߟ�m���Ӛq��(�3僧���ʣ��CGC����Ք��Y���w/g��������w7�#g�k�՛��0�|�a�7�a�5@/ZV Dlg��E�=��d��۔�r�.=���,���g��dhC������-��_�gݭ �.u��F؉���d/}�]���徭�����{����/��ş�����;&��з�A� -�[��{qhX@c.�����rG~�;���F�d���9��-\�D��)Z~ڳm�Z�ś����^_RXm�������!��gF̋�a�xӬc�;DEN"�����b=�s�3Lw��B��M7��1y5!/8�Yv�8�~N�O��C{w��!y���h�aeZ�(�m1��F'���kuLh4�v�0l_ O,@���Ɏ�ЄB�B�������r���y�וw�Kҁ���bzԍ��ҝ}�S�]�h���9���(��u�)�a��ѷ�P+�&�4k�����kQW�GxѼQG�R�C��F�������BX$�ljf`gT߄.��d��[Ӛ��#�H��t���S�`�W5*)������BMt�btzW�[AsE�j��!sb�c'��_֑9A�s�Y h�/j�E�AA��׾e!w�Ў��Չ�����ҥ���jr(y��?�y?Y��f	�����!�Z��|���'�������HS����v��ѵ�#��ud�#�F���ʘG��`�8�m����-����Fҿv������[��n$�TJ���~���(ۜ�I�gd�t+P�C\�,[��	m�{��\�.y׳xր���r�sj����j1�m�4yG�A��{��ez��1\y���P+������j|_w���Q�Ő�~^.-���kS�O��1J��Bl���%4�8�o��;6=Qtb�.,H���`l�|+"�]��A��M�z����/^ˍ��ۑ�����2�C�M_  v.�r��Aɮ9ӂ՝,t	ijpj!�m��5��ѭ��S��>4��e��D����LL�S(|��X,x���P�����g ��^Qb������b�N��ż���!Օ����x+T�$��T����`�D���*�>�б�Q@$���q�i]�ڬ��&�9��P�=� ٣ߪ���oEοB�Ti!��U�O�8YU}}郂��Q�rx�Ɖ��	˅�lbn;|���y���V�qQ:�u/r���4��4!�\E�8�dTogr8�ƕ�˭����̰�]��.��j�8�8�f;��K5��i�k<���'��P��q��X��ZiA�>k_��Z�؞p���&>�#�EO�Bm8�L=K}O��,3��W�z ��g��4���Lr���Vڳ�L�Z:W.��^ՉX�ׂΝ�k��n��j��t�n�:*;pH�C����L`�|�0Ì=��ď��Lڿ�}��x2����?M��T�,��6�ʒ�z&Ǻ+=��A&*�%�:U�y���t���PH�k��C'��?�t���GB�����y]�wX�P�ԣ+�5/�>��e�~܎=�V�)�+/W��TefY=��e#U�GMu���;�±�,A-�J����ʚݐE��Q>��Uo��]��i��-�{Z!6MFY�L�C��+�=���%@-�k�n�4e���Ly@v�ˮ��F����ߐ���~u6w��	ˇ���x�^�Ҩ��V�Г,�W�C�{����G��材�3.3����?���"�a`�(r2��������@�O��A��{k���kW�h�܀T�����S ���a8���x+�h�,g(�& ��*�t�._��?�=φ�����@�7"3��NlC�U�^�������R���Ŏ�%O��I4<��;�� �_�<ؗTnX?B�$��M']�P[�{ʸ\�BfL�>�&ˌ|C�n߅-Cˌ	�㈠���{ju>Y���rq)�}	RD����/��N�ի���S����qg2�&9���V`�q,�e�n�,O��Ev�A�Ȏk��pj�B��z�<h*0������O����X��i�zzt$GG���p0����Y���OӍ��h�RAX�~��UQ��)O���"Ӈ&�4��PM��3���'��2��
�`����Y�.V����Y5��rjzG=DZR����`��^>�a���i]y�H�/���'o[a��v�4�B�Ǥ�_���9���e� ![w,#��}f1�u����r.��R��r%�������1)gv�
jmG�>�è:�ݖ$A�l�m6�n4B���Dly*�$�B+Fw��nx3)�$ɨ7Sjs.����M=�?N�Ar��46��F�<]ZL�sj�������!�	Ӧ9�S�>j���n������!y_�=��ń�(��7�i����!��=��ȇ����ӯ?���ņ6�K4���Za��������sZ�ʥ!5��N���5�İ�8w���F����l�6|����DWbx.������<A��jE����D��~]�\�-�Yz�`N���{}r�>�0]{��7P��������O���V�8|QS&���3!�"���K�/�4�5V�&#�c#���ѩ,ߢa���s@#K�HzO2�_.�U������|���awz<%g�Е����\2�@^��u(�dx/+�S����{�hƎ�P�"$���'�խ�
�	s��(�
86�di�n ��m�z�꒚m@��=�p�:8�.����kh��*��C�XvV{]o�,�81E��1c�����ā�h@��]1���q!0Lߦ�vXhK�+���{�JovL��ɚU�<~K��Ρ���2�:�ݗG9�	�[?�&�b��K��C��
�bjJ��P{���0�����LJ"�چ�`;��y44���e�aL�'Dv���5�R��W�������H����?���3��>Q��*����� �g+H����#mI�����D���h_�Øa�1�6Z���Mrt�X���-�*��=��d|D_�aAh�(������E4bX45У �  j�vV��T������V�)@p�k6��z�-��K�ۍ��Ld�zhΖ�g�Z� �ȏ9E{a�y��>�\�[�<~�g��[�B9����B�ȃ��cASca$}���m�i8��Ti��L��!ʘsj�����4��vЍ�W/߾�:5����f�����Q�~��Z�- ���Dl��|�
I]T:�@몷S+y�H�muQ=}��bu':�&8\r�=�(tbO��d����������=�������x��W��ow��T�~g'�߹�g���/��}y����/f�`SJ̬I:Xh�f��!���ke�����cƮ�F�.�0h���t�:ځ�(ꭋ�5�e�xЧ&��Q9��
�È`͓Y�8C�1��-�ODflخCд�Ȁ����>��ڞ؏7������N�lM�M�p0�|cL/Α��8Z�)N)���*FO�q��K��ƴ
1p�؀�BrXd�"m� �ހ�}�0;������C̫����bL amc쇃��{�J��ј�M|�?��Y��
�뺌:-Cmw0)qH|b��7�hH,�;��]#����J�aӀ����Q�QcS�=���˽<�`��z(��dj�i��!��KՑ�t��b���jW-��liK���ņCc0e�ވe�H7�ا�m;6#��	Z�z�\*U��҅�d6�g2{{x�Gg�ȵ^�w/k��ə���Z����Vh�˩CW?
�/�ЏOJ�/>k_���a� 	��9��ȋ"�6)����!݊{k�(7;e�����^oro_=(�K��vގ��R�Б��X(m��B���b�j�'<�!E������*38���$F!w}��ϯi;�(��kp��~����Y�������s��m��D�<���Vp��t9����r'�_~g�BAu����5�#�wAu�m�ս��g����.�v&CM,�&}�z�Fv�29���m�9��<�<{Ғ�MJ����9D3K(wD3r���&̌\�	��1�]N_�I��	Ϩ�c��x��(
2�(�ԋN�>�Oa����1�����O����X�0���gy�Em����d�ݸd�J�7k��P�������Rc���ܘRxd�E�f��s�Z���
m=��aV�:-��^��z${a���zn3>�A�.����|��d���
���E�qC-t�<f�����Z�0]W ?�j�4ևJc=�|Ǡ��н�����V��j���~�1R>�(����
�W�G3U�D���g����*M��5Tj���*d�����տm�d�	car��a��5���~��"�ͤ�_���Mw���AZ|].>;{�6�MFfBvO����t�E��Yy�<����G�@2���6o��t����ō��G(u�z�e�3�gx&zm�cǏz�4}�R>|)d!����2�E2�]�:X�A��}�Gz���R�`���/�5���V�-䮕%��V3��ڢ:M��m�c3�  B8PQ�5<�\�-3� Ds3��⇕�y���h�XM��1.���Dmǡ�����r��3��n��u���)��\+\�i֭�!�C���"z�H�#��<�GlnpW��� N2�KJ� ��߲IF���wS���i	�[>S��P|��Pe�X���	�p^v� v+$�P�n���!냉��00D��v����Q���֚�k��D�z�!�gh�iq��;��xTy1IZ�����C���p%Y*�k�~'�!�}ɞB��t�V�L� ��ޫ��N��2�E}��9��#a�C^"�Ҳ��7M߈�B�߱��pU
�Jz��Z߻�L����M��Ԛ����nr\Bf5?���7.ܶ�P͗T5Ԗ��P���~�Ec(c1Fk(��{"]~ @��ܥ�����j����HV���-�Z�B�W��V��BjaQx�`���&��V=�Q�闍م�ۜz�iX�C��A	�����Z�3ruNMM��9=�Y��V� p}
�2�.��w#`�j'��ӵy=��^�#�t=������v+t�!T4GW}�*��<(��&c�K./�FL��:hxQ��Ŗ644��!���H=��{*?Ӻi��wM�4��99�����D4YXV[ϒ����;��m�mg�?�w�j⻾ �������Ck��X�DF�^��C�~�h�dtN�G����߈�ϣ?���Ǒ������Q�sT�{�w�.)��NN�UC�Ӈ	�D�=��6�� ��D����a���]3D0�mFVH�nz����ĵ�:}jv%y�K�U���x�����6_�ܒ#��Ї6��{�����X���o�B����� q]Z�Փ�P��%̣�e�F��E��[^��"�Z�l10��6������篓�����5��p$Y{������^R<ƇΤC�P)P���O�/Q��d�>M�L��C��3�[4������	LǊa�c�z0�e�8>%f�E��m���N��͌�CX�����:�����Z�st�t�E�T�Vs�'_�h\8�z��u�z�-CR8x��4��n?FksТ=�{H��EA#��<���C *lȮ72ד��Ǫs�J>��tއ�L��@�%r�%( �n��&����ɚ#V���>BBٖ�}8&�#b9�2��!<q�=j�����A�n��m}�upBnnj-�{�>��߳��j�s���%5��`���t�6<�ی2�!���05v�4d���E��[;>�����1�Oz�g˥)�bw���y^>��eA�цW�V�¶�N�_Oj�rկƽ�{S�w=���JtP�g=���!(�K̤H�Ϭ�ٶaW�|b#q��p
f�섢��7��#���{�z�n�im�U���`�얋p�K�;�{��n�6ׅ����z7}��׬[s�n�:�4Md=�6���R.6fkf }f0�A�P
T�g$5�q�X�����8=\��Y�8[UP���*5�*�~��^\�!ޔ�-z0�7jg��t4��-G�r-�mnV@>�f�z��w��"['�V� �e;::�?،��          }   x��̽1��ڞ�َ��YhNI�3PCG�l�nB�t�I_���x��P��5���[R�.�؇���2\��
,A-��~m�����Ӝ���p5����R£w*^9f�
5�'�i�x����l1�     