PGDMP                         w            website    11.3    11.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16541    website    DATABASE     �   CREATE DATABASE website WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Chinese (Simplified)_China.936' LC_CTYPE = 'Chinese (Simplified)_China.936';
    DROP DATABASE website;
             postgres    false            �            1259    16554    t_news    TABLE     U  CREATE TABLE public.t_news (
    c_id character varying(36) NOT NULL,
    c_title character varying(50),
    c_content character varying(500),
    c_create_time timestamp without time zone,
    c_update_time timestamp without time zone,
    c_state integer NOT NULL,
    c_link character varying(256),
    c_remark character varying(100)
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
       public         postgres    false            �            1259    16566    t_web_loader    TABLE     1  CREATE TABLE public.t_web_loader (
    c_id character varying(36) NOT NULL,
    c_javascript text,
    c_remark character varying(100),
    c_create_time timestamp without time zone,
    c_update_time timestamp without time zone,
    c_state integer NOT NULL,
    c_url character varying(256) NOT NULL
);
     DROP TABLE public.t_web_loader;
       public         postgres    false            
          0    16554    t_news 
   TABLE DATA               s   COPY public.t_news (c_id, c_title, c_content, c_create_time, c_update_time, c_state, c_link, c_remark) FROM stdin;
    public       postgres    false    197          	          0    16542    t_user 
   TABLE DATA               o   COPY public.t_user (c_id, c_login_name, c_password, c_name, c_create_time, c_update_time, c_state) FROM stdin;
    public       postgres    false    196   �C                 0    16566    t_web_loader 
   TABLE DATA               r   COPY public.t_web_loader (c_id, c_javascript, c_remark, c_create_time, c_update_time, c_state, c_url) FROM stdin;
    public       postgres    false    198   VD       �
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
           2606    16573    t_web_loader t_web_loader_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.t_web_loader
    ADD CONSTRAINT t_web_loader_pkey PRIMARY KEY (c_id);
 H   ALTER TABLE ONLY public.t_web_loader DROP CONSTRAINT t_web_loader_pkey;
       public         postgres    false    198            �
           1259    16563    i_news_link    INDEX     @   CREATE INDEX i_news_link ON public.t_news USING btree (c_link);
    DROP INDEX public.i_news_link;
       public         postgres    false    197            �
           1259    16562    i_news_state    INDEX     B   CREATE INDEX i_news_state ON public.t_news USING btree (c_state);
     DROP INDEX public.i_news_state;
       public         postgres    false    197            �
           1259    16547    i_user_state    INDEX     B   CREATE INDEX i_user_state ON public.t_user USING btree (c_state);
     DROP INDEX public.i_user_state;
       public         postgres    false    196            �
           1259    16574    i_web_loader_state    INDEX     N   CREATE INDEX i_web_loader_state ON public.t_web_loader USING btree (c_state);
 &   DROP INDEX public.i_web_loader_state;
       public         postgres    false    198            �
           1259    16577    i_web_loader_url    INDEX     Q   CREATE UNIQUE INDEX i_web_loader_url ON public.t_web_loader USING btree (c_url);
 $   DROP INDEX public.i_web_loader_url;
       public         postgres    false    198            
      x��|ksٕ����D�s#HqN��̓D8:�������n�����p䳡M�t�'����[���x�����/�:�Y��/ܵ3K�ZT���7L�R�䮽��k���)<�c��&ddi�cK�c���uL��YU|O,�p0P�����m5ڗn����J�e��Q}���o��n5����Z�w4�?�9..	vI�m�a�O��/�;wn^�x�zx�v����{�����?���>����?��_�w��ˮZ���k׸�f�ݾr��k��b�H��յ�v}M�f��(bZh�nF���P�kOV�WG��#|_�{OL���s�Zn�W��P��bR���׏�罍�3ڄa&o.��S��w�/~e|v��Ʒ�]�e}�����ǳ�n���h�e@?7t5�a���e��.͂y�V�d���Ϫ�v����|	uӍ��j�k��%����"��*�3en��_o]��?�͵�ů�݌.��f��\��n���g�8�a������׮�Ȼ���7m��������?_����8'�#ˊ�AZ�2�r�K3)ED���Bz<U)ͨ�-u���>�c6�R��ٍ\�&��Z~{�f��{�j�^�q��/�v�{���W�fJ������������\g=�`��
�,�	G��kN�ؚ4�`��0(��}����f��mձ�zӅ���`���TW�1�u&�������U�r0����%ژt,�7��zݽ{���w��7n}��_�x���گ�?��\�ip���^�����=S�<�"��k�[Da�
]�l�[��:(%����Pu~%n_i��B���Y3щ�ݮ=,��{3�EK�����{��_�����e�iӃ�~hq����RA�	8�\ו���6ӽ���NV���J��~ܿ\��矴U[�=��;F��^��g�w7�e��߸~'�~��S�O^��ܠ�q�IK�d�m����x�i.�"-�)n�d�t�]���qܦ�m�)����DF�?ܸu-h�޸y-���>f~r��a9c�fp�`���N"g.	>b�8��<���54�t�9�0"�@!hx#)n!�1BPe�?y�*���`������b�\��q�{Y��z��P3�Li5V5I�-���wW۾��.�����	X�tL���D��#$_ׄH�p4�l�م�YIuϐ��u��-u<�֟��ޞ��x�rn�m�k����d<[������d;\6�)��u�¸�v�o��o��-�0����Ȉ.:���ߺ���?���>r���3I����5��H��i���l�a8��?��w���Ӿ��#��Sm�N�.q�9 Aڳm��r��u?V�����jYmL�����R�5C�ߪ��-�T-Ϸ�XX&4M������D�rd�����BV�M7;�5y>���xl�=H�qd�B<>����]ȕj�&�V��fZ�8�V� V��j���u����S���[
�ٞ��t�ÃZvh&0 ��V;W��iǘ)�{]�Hw�r/�L�ӣn�!��W=êk)$Y����+U�*%��<N]<�oj����5ʖ5�l��cqG�*��y�TI�{������%uj��!,�67}ӷq��Zq�R��!�-��*��Sr=2�x��yY*�R��0�Xʱ)"ym��v���]MEv+�d�z�r����I?�W���D@P4}�#�&~�,\���W�#�{���t�i���R<9�,��;�;��^�l��]��rLק�%}���ƺ�m��X�`R�����u����}���G��C�P��32B���'t#4�m��E�{Ͳؿ���D������xoC�a�R-�C�����}��6�	��7G���5�L/S2G4�YMT��<��WW�+�6|����j�3n!�0���m����M��7Kj�� ����	;
EU���D����S�:^��W���O*�xnIum�����Cι�l���S4A5���@�'m^�}u�>�yaE�"��Y8d!cfฺ�GD���׻��s���<@���{�ɋ�di�D�O_b���zՑ��(��ZR3MB�lja	Q.�Zz��اJݮ���`�pmh�Ñ�w��W�f�ep�ċ�Q�9��K���jϠZܪ/ V�Jj'g0.�S�(� ��b�T��18w��=�4�L1�d��U����S����ũb��'��������I�0m?�cgIl�M��o�W}�.�KYjK�^���a\^JƐ֫O&/@?U����{���N�}�FF�(�LEa9 �ME��JE߰_���U����$b�J *�15�7M�*G 5Jx~!�mO'�В�E�j&}�"A����!8 z��k��"�ƅx�=�xϾ�\���3)?��6S�fR��N��Z�.	w�����l�K��\�P�#��N�
"�pT�P�U�c��GN�ګN�C�ga���/M:^��Wiώn�k���`<���M!K���x��X�a7V,�T��n��پd�P�X�3���43r-=`^���-b������`��8ݘˑ�*=L�m�/W�W�aw�g8�_R���2N`<<��UmoRYq �,�4�����u�^r|eL�ϻѭ�Ր?ij��ϥI�/FИC���"Dގ\)�P)MW��TkSՙ������5�uA��K�q{p
��N��(�����4bQ)��g7TǴ��V�=͔6M���Y}�=�����OtBS�"��G='04�k`ᆅ�����W]�0N�O�{�������]츀�L6�y�X9|���h�V���$tm�r�e7��5Q�\��04Ns~]��@酣k~�D�m͋�U�PH'�m#e!y1���Ӛ���jd����zz�I���M]R����д��r�J!�C#�����x30i�6C�5��DԒ�5�կNut�خk*�H}�4���i���(r� s��gt��	�.�T�������_��(Y�D"T��0���������cD�<���V��4,���Zb�3,瓯Xy��	�2COY�s@�M#ƽ(d�Ej��xm1YU��Ji%�}�0	���_���UWo��9�V��s�����pT|��5�G�RZNS�ݒ�������B&l�P�@ׄˁ}$s���.@b��D&K�'��d2��#=:Rc�i�!�N25��h�`u�q���X�ƹ`z�T}"j	�|�q#��;�"4=�fH�#Z0N���"]:���DX��7��0_]:8O�cm$)�6⁎xzG݇qR亮���� �A��Z��!�݄��ze�?~���� ��nd�\$?�X?��Wu�D@ǵ4�G���4�����[:��OKj�#m�'W�"�L1혮LPT��|�i�I5�� ��Ľ��USs�i��8B�6TFND��
���r�}��B�Tv�g�J�䠠���������ڢ���Hz� �����xoߧ+��bG���������!`�NT���:}�L5)�O��Z�ة�~��S��<�M�7S�!a8v�s-C��y���1q꧛D�W6/�z;���mfA�U���{��P<�<'�O�����x�� E��>(E��V��3@�h���%h���L�pu���_�>��7QB^�Hw7.!!Wʻ�N��Pc���^��C���ҝ���&�Ww��/����`3�����1����H��?YW�|��i�Y����fy"׈\���2c!'%C������p��P= ��P9�N���,�aU|���'�����xr YƏձ���iF�F4��5QKod�-��,v��:��Xj	S�t�sʑ������U�mq���YD���Gl�Ϫo�!� ���g�x���Z��i�1�`�h.�>��s�������rj�	����0=����7p�~���^��6���Z��	vu�	�x26�d�nt�⋤w_u k���8n��d���n��H�0�� 4�����S�^Yh8�f:>��e���2˲� b~�`Luu��>4��̛������q�OAӨ�P^�;r	�g2��.�6�
�D4��5I��Y��.{߮�T&    І�"��qHk����c��LF1��<���<ǭK��d�m�.��:�Y����̺�����FE�n|���W�y-�:�}��2��1�s u]���0m��6���Ė�Z�V��q�&�^$�����
�à\�~��p.��K���W}�������f59|��p̆ѽ&ji��q��;u�X7�h��L*��uC/28 ������jeo�:w���p���~��ԥڳ���GӅ�t�t=��}ɐYRb0�h,�.ϴ���z��
�d:ݼq�ꝫ���B7o�n�&6-G?�H� T�R�#h�L�\|AZ�d0i����GHRqo;�fXom9~��Q5Z �i�=;Ô$�sSRxgRA����~��W��-����w����߿
�o�z�r%�T��'j�������~~����>i���93�L�!���^����¶���ܕf��Om&Z�_N׳�֣	�,�r&�A�Cz�O.%kcjp���RgBol�LT7t�!��9�]�"�d "Q���p��tfx����w
�7Չ�da]�O�p0ݸcHut��fr�)�`��Z�aW r����?��B �/���L����m!�QC��@7�`�����8���?�/���;�?t���qy�&�ַ�f���oK��H�tG粩�e��3ɢ�N�^-�X�p4ߣ
+�"�}S�g3tHy!~8�~O����j������W#�T�쁱�� ̻��UΧ��/���;�1pѦC��%-C���'uTT�q�Q�Z�y.C�"�k�-m�����C����*�ru�a�t��vP-jo_��ށW�z���?������d�]u��f
	$�3Ck?������!�g������#�e�e"F�P��g�@��04BJ��k�R"x�;��J�ծ��8�9��������p�ґ�:w⽮xi ��:|\6:T5QKuB��v��"2j%Y8J�e�BҔ��k,Bf��xq�}q�p�Ȳ���5���cXg�(��Y���N��p0Q|�����G�4�L#X򫦢�Տ3���zn&��CM8�A��i��=�Ϸ� ���-T���}�|�%�X����U*�!�u�V'��u�����d��|=�<���I�Ac-�6�)Ŋ\��lf��^g���Ղ#�`ңh2*��;.�&-1��~������v�1Oc+pʣ�x�!�p�����^`05<���ED��ޓn�S�?yjdQ�h��k��ҳ��������:�&���Hk G�t�,+��j�*B�lY�#��8�<��7+E��7��^5�h �;��G�fU�9���J�6,�(T䢺���=
Aɗ[R�u��J:'Pi<�1݈���'5��xl�|�L=��>/a��6G+���Ji,�#�h�5�H���	���V���qy���P��� x�f"��#8S��׺��-�H�B #�����1נv����SH���<>��n�Ki�E��p�\^�NFg���BTLV�ͧ�j{u��?�O;��&�l���F�E����-��Ի�sqдlj�\�5��#�^��Z�郗��gjiI��1�
���w�Z)����>����d��ޛ>��+�E
)϶��&��jcs�F��&j��٘q���j��_@'�(�MGs���o�2�S�Z���S��g��P(cj������y���C=(�̓j�`2�M�*���E��iG3ո#,�(��D��5$�Q/�泳� q�mh�#"���Ǐ�y~@��f������8���W�k�@���Pu�Xm�[��E�=͛)#�v�CUY�7��Ä	��O�ǡ��#M�uA��	G蝅"�h����^U;��OT��V{��rͨ8�=��LV�TT�흤W���� �m{��O!-4��_0a�~ocIGŤ�X]ڵ�����N�Y:@�=���H� �y�6��Vz�����}o���%���S딌��@��3��q����nu���m����D-c��^�����gu�(K���q�P�F�|��o��6�;nm� �~��6������KB���Y���dv���>	|8Z!*���̱iV}��e]���l����Y�w�����������]Pk���tZ��b�zW�c�*��ի���P@��+�t}��?}��T�O7:�As0}��LA]2.+�����x?�,wL]7�IF L�Z��I��a��ĶEL�f��d� �&�����V�%j$>$����c@���&|�di5~��L��}�pb�!�	�i*2ZI���w����s<ˇV6�$0�� $"��#���B��,?���p ���yU%T8�K�'cH�H���1&5���V�❣���B�ex��z�rB6�]&2�;�� U6�m��s�")C�4�$lOh�cF�i�6C+`Ppzl���j����8�ϾL�w$��ē����9,:�&�bu��T�}�4�p��zҲ���,�wbHƶ�����M������N�y�ek��t�g�a�	�����x�pS�M���M?y���@���4KG����8B��{�I�o:��� (WJ�l��Z�6N8�pMd���({sΤ�������"P�&u)MJp �ЅǙ"*��< �b���l�n�H'���۟'|�t��<����N�Yb9yvg�j��k��1����u������L!�IdoWx.�f��qD���#��(5���^����i��<�ۗ��ԓ�j{'Xh:��J�8S��$�#F��P��k�8e�)uf5�Ě�0�m��qg&Y>)�P���Fhh� ���5J�/�H�dĻ[jv���'��!����G�zv�x�l!���Z�@����S�� LN���@�>�FU��󑫁C-�-�	e�p�<�"(�Y@�Oz��+�)Rdw���yR9��mA���5j�-m�����гґm&�����Tܻ��&޸�t�
�R��iM���Dp$8����s�y�궭�٦�� d�V���I�s�~GW��}9�8�A��g4X�z�R�^��ҽv�@(�u��q��:�x?,�T���N��54gM�Ҝg�4���L �M�-L@ ��S�tô�n���9���˪c��Ζ9���a�x�y�}/�x���q��uo�Zٳ�4���?�C`e��i��i �Qa�&j�w�=�d��3�5��<�#�wi�Wc����
��/�����Oǫ�_���7㝲�[�e�| ��rk��c���{��li�h.���Q�I#�LX'�(�r�?��\ߤz8�aH�5����=W��=�rd�v~ff�V_��8���{+'�e:])�4`�N�S:;1W��CCK�:�5�����a9��uAi�t<�:4���Ҝ'-X:��,<))#˽���pz��ӥg����n����~f���	����\Td�nk�&lfk�w�й��7_�]�oX��ç��5a�n��|Y��&����&9%E=,D_��۴P�ւ���W��V[�=�kh�#��ԭ�"�c6[�=��8pb1=d�u��,�!���ZH�~�Y�d&��9�m0�l$O���n48|���'�u�gX���~\�6k�a0��[�g!�;���6�s~iA`2�[�ᙴU2�<�g��QW�G�M�G5�m�߸y�������������~�� ���v-5
sLKjǹz�j7�^7����FS���?�WFit�k�:ʑ����'˥��!|����at�Hh��Ϧ�@�;���k�_1�����kYM�vu#�e!+�u�ݡ=R�N���� �F^\է��o���"�}�M.^�7.������g�鷟F�~����f%'�4���� t�;����.�<�R�Bj�����N2u��Q�nJ�Qn����Z���<=��_��9"�ć]��NEˉ��Dn⼹���y׽Y�qo�̳�-��k�E<U/
�+Ӷޝ������d,ձ G8�/ŉ�V�Fҍ{͞Yr.��h&z�*����(�� �l����e�H��c��-#f�o��V(h��)5� �04ڸ��? �  �m���A"J���V�z���<���ӝ�<������	��(�Y���3��uJ9��n.i�W?S �|�n��v #!�O�E�K�t5?�q����/�n�@nM��=����pU��'�i����p�O&��|�����F��W�4jP.��G�5m�6����YQK�iSF�#���N����mJ'æ�c�j�mD�(�m���@崽��3�YZ����Þ�\�嫃ԱX(�˯� X��8]}��L1 08MsQ��&�#�Ωb?���f�6���4g��
N 4�wB�&<,�G۴jֻ�Lw�����h}��Z�T�Sx�أ�S�i?��N��2�U�������&qM�ٺ�F~Y�oՑn�qw=�}�TŖ!�\������ҼȢ�ǳ�&�e���Oq�.���i�3��}�`��@"���N�P3fg7~y���6��A*l왙�e�Ѷ-��S^�S]LSxp�K]�025'd�9\�5���M��諒��O�������55@����]�Η����B�L�;ՙ��J�m����ۚ�%��8�2N��E�
sl^�j�dԤLs��lm?��P�xnHM�Ҕ��������d�������vj��M��bqO'
�^�S��4���k����˯�jĦp���NWI	�.[a<D��Ƚ���#�tƳ4떮�Ӑ��j>����(���"]\p��=�M����ހ��L3j��pNM�rC�l���kz2?�y`j�!����������̦�iFu��|���nR�)�]�j�G������B���j?���Q39��,�8���4�Ϧ���r��}�߶�,�Hh1[gFvYQ��VPۥ4leԿ�l!B;2��'���~�<O�h�s�A��^�X��v�C�;�?w�{kiq@�������p��ޙ�n��6�u�52aM��;�6uv�\��+WF��jQֹ�DLW��U�#��� #V��H��xO��d�AG�cB-n��T�z��M�,H>�S+cT}^�5>
.�L%Ĕ�DM$�[%I�H��Ld	�ta���x`�h��@��2�t��,�*�m�]���r���LM�l3��7����5ښ�7;�ɍxh��9�jx[�6���5�woD���w[����]P�ӣw�n���ȌK�sMXͧA
h�Y��u?�=��|����탕�!��^V��(�L����ʦH����0ő���F�*�����F��&j*�T�/_�y�	�4i2
��8nL��m��z�+='*��j�)0V��/;�
i��|ۚ�R��F�#����=�Ji([�zP�+W�{骐��f:���X�L�!�0���0<	�k��'�� &k`����5���&kV6��4���9��a�v�*�w�d��F���tw#wjj�=�i��sm�~���}G$�y�؃�X��ba(�ׂ �F�F��k�E��<_���D�Hͳ%�g,m��+ji)=�_f��z��")wÔ�I��}Z:.�f3ZM��f��l��k����K��C�u�8"-��h���L�r:0	͠uO��B��^r���Ǆ^J�^��de4�.��5���>�c�}�~��fzٺ���"���	%��iA3�Άb�G4{�9���t���Zh��sD�	|h?�Πs���Z]Y>����8њ���%j=�#��7���go��{~��5�Ṩ�f�Y�rӪ�#��i/�0��4� �hQ�6�h��Q!t�����L���(���!rДYy'Y�>�7�/�c�ɳRub�n9�}���X��o���wҶta�a�F>�ɀS��5ˢ�,�EF��<�
"���k:�Z>�4�z�,���� !�fT�+�S��,��Գ���!�6S�F�e��OM���hS�K�L�ɜ1��b� B�"pF��$|aQ�:��`m�D:���X�#������%�߉''�K������kv5�١J��:�l����`Q����G�v�Lu��� -p3�Ȑ�{Ӱ�c��"tX�;�:��k��.������Oҍ�s����t>=B=���ӝ����x2��>�~��&��hqa[�헉��~x���x��O�I#�@�As$ݥ�+���](#n�����E��#�T,Y���>NJ+t��Aoҷ�=�I{�#�\����4͏ХE+����=�T�����&��F0�&�����_��n$M�z���E��CK����q�hk����(��wWh��<����#����[i�X� 5]NԹ��)�X��ݖ��5QK2Z�0�:DYw�3D`�Ӥ�m���G�/�=�¨Vɣ~��:е%n���fe��4��wv��I50��?#��;��f
q8���@5Q뻇"f�ә�O?�y=�u=���- cp�H+����.��G2)=Wǯ����t��{y\o��ɶ�N���d�ER�ş��� ��(j�D-�ug=M�\ϴ�P:45�14&v��N�� �R�c�nlV{�Ǜ����j�����ee�	x���Lw�$����y ���nk�(����Pq3�L����e��C0���y���}t���f�.��tWsB`ʵC6J�������>�+��oů���:�㟞�V鉍��$�Ȇ^�������Su�%]_[ZLז���5���X�	W���vٮ�j����U�@"{xTueH�F�{`8f`��czo̥:�z��h)�s�t���b\|~����2��<�􇃎�f �O�k��||�=M#��GRh��crKo�k��W��ղ.�>�']��MZU�� ��y3}aG�5�?��3 �,]�P�;��G�:�wqԡ�U��h�eo<&����}��|����X��q��>�4�Q0걛��Q'��:���z�7�\v���]K"CS.��BLM��3��!��Q�N9;[�Ș
���aYSz G���wz��%�d7�#D����˒�v%3u����ˢ]�,����53Bq���/���I���nt�����\�e����꛿@#����~	��G{]���D#�:�Z~$iy���\\�Q�!p�g3�:ͦFte�й�07��5�"ݽ{||D���\ǋ������Z�;f���;�G�9�ں�.��$M]��^�H���+I[̲@���P�g���N�E!M7��nt7M�s�Ȅ�6�$����}b��78U4�q4�t�|��v�MfX	a�6z��E�f}!��_�On�"�X�E-�;$���f�!]��# Ps�K����3Fk&�yGa:|B��%��,��v�c����>�	����ӥ;٪d2V����9��N_�Di0C6:c5QK�<��u�f]Uγ]���1a#F�.ӜH�Z�l�"��B�B����Qvꚥ�����A5��դ�E��������d��I7pO�!��-�CKɋ��ZZm�D�m�eM�2�2r�)�:-�Ȱ̈&�.
!ı-I��A��R����=&b92��T����V�Q��p9��&��bur����%�4J���k�R����. I߅����j'q���S�W�����C� P�Z^���Ȗ�QL���ڥ=!�V�,��4숖w��r2?}FV�s�Ҿ�Iv�	5���l����ރx`4+]�S�W��.m�t�Wo3A4���$�Zjxf���_�Z��}�ܴ�	@M���"�<���^�&�@�����x���%�5��S%`�{�qy!��K�.�O��S�=p`�bib�
}��r͛))9��(�H�r1�%�����9���Q7��q��9(-�x���6h�Ǎ}��B-����V<:	��c_���{����G���dk�F�wƉ*��%�e �f�9@���Id������/�.�
"+pLՐ֡Dd��� ��r<=]S�]�%05ԟ��k{R����|�?s)}=�+�cP��w���U�{l�_T'�i|�� u�oh�*���]-u�]A��6������?�qm'2]3��P�T5�{��������B��]u�]��ԝ�q�N�2�:a��]%x��~�����'?�??;��      	   e   x�3L5�H40Oյ45M�5�4��M4OIѵH6KI52N�031�,��/�442615�|�n��	mO'��42 *6 "#C+#C+S=3S�"�R�\1z\\\ ���         �   x�K�076L2K�5J2��51���ML55�M3�H21�HN2O4�,J-)-�S0��|>s��]˞M��r�nN#CK] 2U04�25�25�362554�%ef�i��QRR`����Z^�����R���������� �(y     