PGDMP                       |            cpp_qna    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16500    cpp_qna    DATABASE     �   CREATE DATABASE cpp_qna WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE cpp_qna;
                postgres    false            �            1259    16502    qa_pairs    TABLE     p   CREATE TABLE public.qa_pairs (
    id integer NOT NULL,
    question text NOT NULL,
    answer text NOT NULL
);
    DROP TABLE public.qa_pairs;
       public         heap    postgres    false            �            1259    16501    qa_pairs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_pairs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.qa_pairs_id_seq;
       public          postgres    false    216            �           0    0    qa_pairs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.qa_pairs_id_seq OWNED BY public.qa_pairs.id;
          public          postgres    false    215                       2604    16505    qa_pairs id    DEFAULT     j   ALTER TABLE ONLY public.qa_pairs ALTER COLUMN id SET DEFAULT nextval('public.qa_pairs_id_seq'::regclass);
 :   ALTER TABLE public.qa_pairs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    16502    qa_pairs 
   TABLE DATA           8   COPY public.qa_pairs (id, question, answer) FROM stdin;
    public          postgres    false    216   s
       �           0    0    qa_pairs_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.qa_pairs_id_seq', 489, true);
          public          postgres    false    215                       2606    16509    qa_pairs qa_pairs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.qa_pairs
    ADD CONSTRAINT qa_pairs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.qa_pairs DROP CONSTRAINT qa_pairs_pkey;
       public            postgres    false    216            �      x��}{�[�q��ҧ8�\�Ds|SLɔ�J�S
�J��lbIXX``)2�\|�a]�b�R�\N"�I*7��*p� ����W8�
�����yO�� �KJ1��sf���������N>W����{|������p|��;��w�ݬ��Kϕߔ��w33�|�ߎ��1h+7���K��k�?�T��Y�Ę�l|��.��r0�=�*#������qV�24�[�������#�3Y���Vo�,�6�K�����珝zN�pS�ֳ�w�6�R_9�TOiC<��������_�og������Y|.VtK�m���������!�/�d��ռ+.��Al�S�\�oEj�:����n|�$>�[�c���`�{b�6��v�����l��.�7�����/�0��~N�c���i2���r3k��^/����>��w��mx�����/�⿷���w�'qu�����^Ճr�o`/��A
|������!��3`F�������s�3ĳ���u���>�mS<�r�|,4�o�L�����yۻ��S�1'3���@L�� �94|y���.">��|FT�c���ʂb q�]���piS�Udf����6��
���8��®���rG7̎����7�x,���Ʒ�P`�� ��-$�&<^-�_�/���Z�������I��qj!��i]1hu[���mޢ�a���� �x��L��~�w4S��C-@PW����9�&�lzI������,�.Dw�sG,|�K�/kW�xD<��w�X�͌F�������ų�����qW�s��_!����g���'�>[�#�FQ*C"ɱJ�Q�7a5 t����ۢ�Z��,.�B{R|���ھ"��[�8pCL�&��n��`��A���4#�5=����(��D�!�|�xP�M�<w�S>A��/��1V�J�ڷ�)���F��ɗ��G�]�r��6�}��n�Po���Ɵ����->�#��V�os��
#:Ƙ�'x��:�Yʎ�3��o�����/H}�d�=���o� ���JJљL��9�a��YQ$�,%F�=�����쨁��&�8�J�)�ץ�P�yE�x�$"r�6��O�����o�Ih>2/D?���=��/�_�cT�"C-�P��P���j�[��D�\��J,q��=
	����u<�+?d6�ٔ8�]����j?pϯ�Z_={���\�^�g?���2�q�i�����o<�G�Y�$G��Z�Ɂ�w/�2S�N 4�m�Ǟ��#ܣۮ���'0RK����d&iFx�'�7����W��qRf�Լ6*�߽�j���U�����cm)5I�����b.A�o"cA��"�'���ނj�E�53"�6��f%<b�F���7�}�2�Os�ť��6��O�OsZ�Z�m���E˔Yk~�e��#��B<�y��q��V�@���� {A,|��sZiMG ��`��r�K��/�Bdk��jo�����f��L��ۤΠ�����i�ڀ�q�>]�p�~3o5�!�7;��Y��^i��f��-Va�ee?���s>��4i�d��(�G�G���A�n���������S�_�JKQ���W�y��!h��m��nû[����#�z#�ᎀ-�H N��w	#a���{�<{��#B��>ѱ��-n�}�ZŝK?�^�>��g�l�c����jkFb��y�MT���zm���ڌJHU~`������3�C�NKnW���	#}t�J�c��\n
�� ���v<���x_)k�f��F<
E�ف�t,�������\XҒ����	"OT�GdF�-xZ>&�S
R�B^Fq ��r��-�U�;>�� ��`,����ƃ�x	'd�Q�%z�*,t�
qʬ���NY��N������tw0Ž�/V�Zy�8׿�V���]</]Qj�}�]�V�~~6��w�⪡�@	,6�:(5��Ji
��,���=�WD�c����p%�/�ꌚl�PjI�u8�4D���<���G�#�;���( ;��b/�"8+X���q�+
��@���?�f��O7H�vE�P�Y@:"��[Av�|q#��4�ۥq����&�� ��^_� �)�~P����n#gH��S��ԞkAi~��uD��)���5Z��s�5���Ya�5���U���\�`��$��������o��z��5�@ ���Ӹ]�Mg��&���������o,�����˨Gl ��"Ő�L���mc�������^��>ۈ�ɑ�(?�� �f����[��*A��&����
1;����Kܶ��WΜi�5�.�ޥ���r��>�}�4q�|Kn��2 ����2t�飘�F���t�P^J��]-�g��Y�x����0(�o+�Db�u�!a ��
Zbk�EZ)z�!��gd)�4>#�;���T4ǰp
̵Ns%[��vѿ�YJ=�H�:��J�@4�(Ǚ���~�Z_��x@~�q ņ��������[����f#22L��6W�-�,_��_�xqwu���݈[���J/M�Y%���n��v1˻W��"��bF��ݬʔ!�Ә6�R�v����s��k���%{xI �uԨ�Ū�A���h���፵�b&h�O|��F_ ���<�h_�B'��Q����Y~#����0��������	<W�U���M�2��\d��N�}����Z�F�oI���iN���rw�C��N7�j~KY��	> �lV!�D��^@�>�� ���Gkuo����JA�;��[+���`���#���P\ok �ݩ�ͬ%����ݲ'�1/ ��"�i��٧�RU��Q��M�w�bCD��ǝWґx���\v&[-V/��uy<ɛF���\KǦV�,��$��z�jG#�-�P�X��y�)썖��W�̐j&	�'j�7qC�Q����IԮ�y�2�� ���B<�&�"�Q�MX�='M�N|кan̟p�3�[���o����C����<B�{0��/�X��CP�*��Է���Q؀��F���:��:�>�KK�xyA|�g��9�u=�Ý|��4
 _ 20A@��N\"���4\�-H��>]����/9m������F��<� =9���kE�O�T�s��� 3I���h ��P����ۈ �2���oI��
�\��Z�s�#ÑN#o�՝�f���Z�����X�F'�z�AH�3X�NL�\#Wsב;a{rʓ&06A��#���B?����9�r�,�?��߳�O~��x��E:xdUi��z��H�pab���-���=�m��7D��A!c�Zm�����¼���M^��G85. qr�@4;�L�x��."��Wơ�q����!�m���Z^�B<?��$�mCyD9��l7Z�+Ev�6�yxS�WR�?��t�����J��P
t�'��w���ӝ&��n��3:.����Ӗb�/�I�@��V�v�_I��A����Y+�9
s^��r�)B�M���#��^9�J?F(W50-�E��ή���l����qe�E�Co1�<�>������b��l4������2��hY1�x.��+�h�@P�_�Y]�C�K�;�sKyGn<�Á*1�"xh�ma���$N�E�[Ѵ�I8q.�B&�鮿Q�7dV'7��	*'H��\�O{�<��D���?��$��曊*���n��wE�j���Bܲ7{ٛ�M�#��<0:	��{Rg}���H��Q�C�����\ĸ��reH�B;�/Ԭ��W1����d;Y�B-��R��/a������������
����Q���������������Szs���x^� �֗:+7���Ha��c����E�I�Ɏ�C6��һ�w��嵾k�X�m����-6�<�Nmq�m�l���R�������]�wI�Pj��c�<�ݓ�9Xo�Qw�dH瑴 �a@�D�e����z�ٺ��Ɍ��۫S/��x�-��N&p��j.p�7@ ���:���� ]?,�b    닇Kj˽��C+X�BB}!�>
#������@�^��t]F�7P��+m0���ȴp@l�g�i Oq�Q�i-�R4{l�S�M��8��� =��Nr�\�6�/���*Vk�w �.�ku���+�C�7}%/��c�&:�±61X�X��T���!�,:���%k�Y��-
��Și��1�%^N�J�~��０-�g�����v��"�'&�& ��n~�ٱt�@�f���M���2���UZ�Mm*k�qM|����9a�ճ���nA��ْ��8��iA����+�}C��MO�!��|���X�Qw�S��@��:,\��H!*I�Q(��G�g���V���H1�A���׌ie]9�%,�_��:X�D ���7�.�bB�եx�w��+糾����8��t�x=;�����C~b�#�-H�9Ɖ+~���AuJ\�b�+��*�0$�h��y=V+��Mj�{�F�y��cв����.��hc�y�aS}�9��V ��30�N����`gb��˟j����3��ǥ�x0*���Ե'�Y��;h|���G���\KŮ�f��h+�m�l�8;�0Y�(��s�͊Y�����5{'B;i`̛��k疭�Ya�z��G�A>������]*�b�ncoMD�:�	��(`�)4�z��&�5�YiQJ��p��d��&j0d�A��LE+,}�!&�8��Z��gd2�Tδd$�����Ni�����3��?���������
q:x���j���oƾ�5�j,/Ǘe��k��G1�M(cG%�sǿ��I�q���B��@&����5,,��f�{�>�J��<�e���� !�_eo�������j�|.;���ǿ����a���z�/w�E{%��5#�DYj+%��%e!�BMW�:�(�9��1���wRn��v�i�SO�PJչ�T�;_+v��Q���(v���"����S.�R��g���d��INc�b8^YK~"��EMR�=��d.�&EӞK���n��������K�v2Q�^�\s�>�������"�\q�<u�;�ঁ �}�GS$�ߒ����cǻ0B��ɨ>}���0�84��&� �Q�k+��41��};��N.@<���E���g	�v.HU�����&^:��O��)���`�xB������~��
@̉d����w��L�D�۟LK�-G^Xލ�S�+E��1�$�  �	2�"��`�:����Nh��o��q;<F��5������ޓ3��k���j^�	��:��l0��a�
Ūo��#��iÆ�4t�ŭ�2���)�ՁΜB���q��iw�$/��	3S2ʫH�=:ŗp4���6�V��Ȫ�!�{� S:�XǩD�t�j��]�+/�f��
1�9�"��zy#&��V�p٧�����j"�R�RWǲ8�K<�*�;�2�E��s����/�k�k[M�I}�/q�����8��G���Uu��r��j���M���@�^�����N%z�[���W���ݺ|��6-h�2���%N��/`��X�J,�Ў��w�?v�$�@O<��2�a�:*�=epM��Z�&k�%�q��(@�xQ%����2���+]Y���lF���Z\[1�(O%*ؗ��⪗t�	�:��ۣ�����J�5�|;�Dz���?�7Q�z��Ym���kOR��Q��2^%��Ʋ�޶��R�`����N�ލv�uC���!mk��Q�+��MGq��SL����I�jU�Z2��$�8��'H��51��Imi�ޑ��[V�o0$�Ȱ��Vr�Z���}�t4(���rT�D��� !&�ϡ%B��//tGF�l���> �$S�꾠[*�5��S� �a�X��)�)B�3��hS�Tz��`U��`��*;�b�+|�U�NI*'�kG���}'w�^_��Փ�P�˃��Q������γ����T_���e:�NW����Z=��w_��z���~�:�O��&�{�	�Aմ�:y`������v2L��:�|���=#l��N]r���ҧ+�O:��e�'��^���b����~I��j� �v*_�(�?J�Mv�ZY�aK��$���
�wp�xG�[j<�C��hj���ׯg�nC�������ie�ˤ2A���?�e	�q�J��!u��5���� �J�h)�م��f�����Г�kK�D��R��+\\��t�~�k	:,�v���@��2Ν:������bj�M� ��q�Ԥ">4�-b�6jC���s��S������	'e�d���ItXL��+#�M�T�T`Ok���~�T�h�O.i����j�꾫���4��0/�gc7E��oLP;��ɤ��[�:V�Z�Jˑ�ZFo}���!���<R���4 ���\��YA�#�=8�n����:�n�F%ȱ�(��������>�:�^��	������=z������=Z�W��1m��_�� ;���Ըx�*�Q���U��U�ٶ`A����ъ䰩�M��31	�p9YCO�b3�S{�-�JI���fc�$�Z��z�_��-�_��G�$���ء+S��W�3�b�2%|��!)�k�fH�g���#3q�s��a���_�:ʥ��*zg�qjp��$�x�6�/���߻d�v&CjL�*R�q���sܟ����U��0�¾��(L�+;���˄��.+���2�)Jop�V��H~����4�|<wV�v�&1��� }"O�Q�m���1qp��;E_��^����r��U:�en�<���®�VVQݪ兙���/�$��fhD�V�J;�%�=fh��g,��������V�܌~��葵�sx_v�:��ݼݻ�鮺���V�ϩL(�TSե��r��KԎL�~�5�KY!!tcۂc+�0������´����&��]�tl
p���Aud���wC�d�h�'F�]H^�O����Z���>2���S�`�>�R"���?�pl�jo'%C��!�}� Cc����*6V�WZ&��eᅦ��z/T~�ܾp�E�.�pZmz�1�d3^%"���5�Z�v�皎<=��2r%&S7�Ҕ �lE�1T�ב}��oa>^��] Q����E��lY
]��+��r?ﹻ����$tL:P���LW�M�,��	0�"4�ae,��/@'�g>����/�/�KS�W��~�M�T챳T�zVv#u�d��N����l�u��#�Z�MU��%K�C2�T�P *s�j����)S�0|���d	cz��d'�gi�8t<�V<��^�D�aK��a�c&������#Х�;�6T���\���!X߆B��v�I��qZ�^���-$�&&��S16����L)<t�a&��DI�"DA�nT���1��M�<�F/�����5�񪡕,P�*05�WQӬ5�����_ ����W�MZ�5$�(2�>���HY�G5�~K��S��gmZ�dWX�Ȼ-w�i2�{�G�I6
R��#cb�]��-GK��}�[�*C"��ŵ�۫dkH�H��*��w�M�\���E���Ԯ��?0@�̲0? i�5�}Lʄ�#5E�7a�� b������P_}�}\/��>F-]��}��
f6T�Ɣ�I G��מS፤
KE����̫６�^/�'�f�_���-|�{�᝟\�j���6�L�@͂n:����9 �d5��o�:ݘ�|��"STd
w<�rpJ!�T&e߆�Ne��ZD�ެ��4un*��wh��X�%�T��h0E��U}P *\�S+�d+6�lo�ݫ�P�'�(1���Ղ�V
�鑗_����l�%/��7�J
�(����������ǹ�nxF�������w	yk��2�_�`n]׽�O��E��dU��Nw��W+y�c��0ô�T�pʠz�Q�t������1[���k_ ��������I��kFb����ҷZ���l�ȩ��*z)Ɛ�����ƩR�u6���"��2�M��qr�DI0n�.�Xs���"�zN�z�������t}�J�r[Ȳ�ǯ�����.����+���� ��gwA@��wΠ�m&y9��z�mw�m�L�e�    ��U�	s����d.�-A9��Y� 
�W_X���?˶5w�ζ]X�8����B8�������ms|�2�C�i~�j���P�	R��]!�H�<w����t�}��$�� _�\�9I@�P�4y�5�*m��'���+=A��
���rʄ�����	f$`�a 4�IY��->[��Qe\Lt����\^X�����[5/.���+��j��}�� �<a	 ӥ�;UH�$�\�:�N�$���bӽ�8�J0�_=���R�P)�ơC&)$�
T̬�'w�+���~������Ň@ޕ�U`w�E�"r��7���r�{�gk@���ƳV%���^Rr���%δx�-c�nK�&Ƴ�/��ea��H$��jW9���(3�`[�!#Θm�� ���w�[�P�UV���h69�!�vۮ5�F_���;m�;^�e��ͣ�{�ec���K���
�>SXwXr�����X�l����*K��d����TD)@
��l8w%�۸�P��˳뷺7H|�_l�y@�+��)|��"��3�V��·�6��s,_����?������ϫ^��ԝX;׊n�����&y���Q��]�AyY����:5�� ��z�f�]r�ڹ�kl�`A�]n�����Ⱦ�Z����ty�,���3~7cw��RW�g�� `��z݂�M8d=�lL:�G鵺��8�0��@u�y_�&�N&=��
X=���ёi/M~F��07��٤����ʓ����cSjWG���p�ɭ������!Csٶ���T�����/:�dP�P�x��O�B�P���� �h�a��l�}U�|B��m�|��*����(�%���0��~7o�{��n��:�ՙbzQ^:x��(�ٓ'6t�j=�K���+b�u��-�Sb��˵Ķy�!1��ژ1
s�m+��Úzm�7Mu�B�H(\8���-���r�r5>ZB�v`$P�MI�ɇ`q�(����OS� _�,�\��}�B�V7�5w�Qh�N�@�|g�m��o)\�U�y��m���@�^Ԕ�19�[���W�_(��3���MEw�[�5���U�Lh��b`��i��4�����u.����W^�@ב��L����M14k��%`���)�A��x�� ��mu.���V�SS@��(�����+�j�����tOy�,eE���Y�VrJ��ƥ�·B�F�ܜ\�kk暃F�06���<����Xd��]�-[��2P/j]RZ���IeABV5Wn�M��ݖ�6�Bk����pk�x'ݴ�
��g|
���׫�j9�S\�n�Q�2R2�חUhţ�Ͷ���'�ut�y��j�WR��[�{��%����Mx�e!S��V^��h� "��7��e�,�(�\�QSU��Tq5��|���#T��f2��%#�lOa�)�\2	}FJʽ��������|�U]Z�f ;�.���4�z��>}�g���@�@���8����,�(J�Oy,= 1����Hq��r�/���)��r�z�V��n�0d9F2��y��U���1��Lc�%�j`_�Ʃ	�S��-��u|S��v�Č���
��%_�����*OS�	#_0q�;e�F���BQ2пO�#N��q7�R�gKi�T%�F�0�F��3{	��9�XϦU\o6:W����f#o-7:�k�����p�N<�JfR1�L�շ�.�i.��L��g�K�NK�E=!y����.Ύinc�6:k7�6뮃���s��>�X�U鐲Jϸ�UL�q+4�xW�x ���>�U�"�L��78��*:��u��0ʤԝ$?Qo��p:�T�*灗x�g��<��s�=��d��m�����me9
���k,����N|�;�o[��D-���U��$��zD��'��b�TK㶡�9���#������6��4��Vy����s��*4e��8�tje�$���G��aj�����V�u����r�
�P�u���r@k\d�;{��[��&oԻ:��"��@�TJ��o�X�m�d��*z�
��PSL<&�$�:[��e��չ0�U���e�Uo�|el�*̷#y����_Zp6<^m7�����i�Z��-����E���g��b1�բ{��LW��ð�Vj1Z�4=�P�[�<s��.��a�x��H�C�<I�φ|ҹ�/�69���X��̬v@�u�K�	~I����	�H0���D�'��١���T؅���Q��e%�^L(T��Q�%�0�K��N��Ӓ�֩nq~�.<%�o�X&�鮲&40�]:̘ނ�s�.!
ߛ��<��j���5*D޵��m�%���2��b,җg<#h�w5���H�!,����"� qS��RD87�_<�K�cZ>��N$��W����6�7��}����DJ�,#Ώ�%7-a���^�����'�י��*Z��A>3�Y,�n�@�D�\�2^El}�L��*�>�=��;�[o��d�ȑؗ�Q��6/����>��X�l�d{ȇ��c�����������C}�l!n��n��4*V�i��D:��֑z�6�U� ���#��ZRR�`Ԥ�O���7�z��-UJ��?*(��"���˗[�׆��;	2�JuYD\�.��;�d��/����W�W/���7/,��֫���;o^<�_���r�^Y���`d���a|�fg[ɦ/[$_��<���d_ok�$��.nG�%��v��Z,ݮ��t�
�W:������n޾�y>�\tz�ʒ�}������4�o�KL���Ϡ�Q��'Jш+�Z1�\������OP�K�ip����Ĝ�xSѧ���.���aT�(�
ѫ��$ƺv@�*q[�1��&.��*��
��z��Ybȕ�[�_j�Fm��zv��1�Jb�gu�쓡�A�Ϛ�qA�Р���s�:��O�='N��ޯa���#E��~v�\v�ln��\*hb�7CΪ���L��fH��2�g��>���9���a�t��Yu��i�͔���@�B�9�?Z]�a�D��w8���8 ��_��!*r�֩>"������5�Q_���hZj{}��
u��\�������I�C:e�� �`݄D:f��(�g5����Ģ7��ڸ�ge4��� .[߃u��ݝ>3r��VxS�=��W�S��5���\H�����S*��Όh�@V�y�X��_7�`���ԧ�/�h��ݙ�i&�O�Y{l��p�Q�ݯ�\L�����b�'gWn5j��TIUN� �hQQQ�;.��Z�^�l�X���)��G��2[����O1dv�<Ġ���>��.�E��Ll�>�Ĕ��o��ńV�^���������� oIcIC��=鐏��ud̨���	�}W	][[Lh��Np�E��̇�*��[�)T�Vl\_�z��+����&���JF�T)ˬ�HF�7�tV���2��C=��	vY��k�yˡ�}�	���[(Rɵʢ��S,��K<����/A�� G�uq-�6s�Āu��pX@��<�g ���eU��5E�x{׼�I�6'���T���4�xi,�v�W;]�������O�Y�e �� �@]�of 7�t�Bu<1���p8+Y�_�D��^��&C�#����F������q��k��@����q��nd1�!��H�]?8���ň�N���tR�p�)�2�u"���R���ٿ~%�*L�j�uTP,��w��z�׼V0;���07���;�窔�Ql������
�`�Z���R ��L��[c
�C�Hojw�]�)Um�뷌����I�_E'�-�M���u�="g7�q=�0ٕ��w$ �xϭ0��91!s�!R���
%��A~E��~�����oT8R�EG4"�i,�oJ�C�1E����>1���2e����T]�¸т܋	�q�x�2u鉱���e�*	�\�& V㮩P�(W:ݓ
�b���OEOSrD|��ń��
~���싾��T�˞>ĳQ��U���	�jZ�6�R'+�x����Z��/}�]jM��:�    W��
��-q��
�+��� �L���7R�tȥ�t*;�<!tU��I,y��2�IBBU��	'�-9^}��D���謷�H�D��R��6��c]{"T}�T�����@RRkX_�����^������~��?B��T|='ܟ=�f��Y�G�"��u_��R��R� ��
G�c�R������u(/��],n�]�^D���Q��U�n�{� 9���El�O��� ӔuOmz�H��{c��g'���
ν�х�
P���W�m���&ڿ��Վ�����CG�b�i��W���r��b��J��V�i*��ԙ��o�W��^�!>IX��vjn�xm*C	a%�~M���.���0�
�R���r�	�E��&�vt�����x��pNPm��׳K�;nbpã����]�����
Κ����+H�xQ\$�U��9�or<i�b�ǻRW���&�f�?�i#U���I���|v�)��\8O�o��dM96�l������Y�ݸ�W��2���\�/�O��=n�Z>�%�Ū���ׂ2���©!e�����$n<�wI�K2�=�(-� �����/�Y��
��Y��,�^��-�-��O/N)T�Z�s�ኝ��eH�D��0Y�-��k�n�a���]M%E�m�$�S���'�Ĳ�B�L����kΤ��rk�)�j��v�
�W*�x"4p��H$@�"��W}���������EZ�h5�V�f����]+}m�Zꕢ�k����4L��VõS��BÍ��]�O�-�|��K�Y�zF���
���(��7�ъ���#�;��1W�x���&+���u���O�*��\Y�4���Eް���r��KM���|�:r�&��"�0����[���)|I��k��i��k3���(L����Q���q�����t�>�v�� E�g}���Գ#v���'��F��<Y�.蔉X��2ohO��ob�*���̯]LI`�jy��닞�?g��Z�¤XUӆvˀ����o��9�>t4W�
S�P�ϯK�&,�{�rͬ��N���y�Q����RO<�{���r��A�q�s9I{��z��h�U�/N�}��nfB��"�_�C�ו��l�F�����1�������\(����f���=�߈CH������k��^M����3A��qwCel�%;*�=�וQ|�;���V�]d�|��������}�{��$�@����쩒���r�x��(�[�|^�z��Vm,�>0%�*�^������F����پ&6��ɪKS�y�EX��N���;�~���{G�E����򵵖�PW���@��kg�
l"���ar9>nT�������.�K�p�â�n�Q����軄�:'����Y��DT�_2V��)��*IS���u��(��8v|"��;����	o.)_d�b�}n$�ş�h�фp�{(�(� -[����bW)д��s"Q�Y-V^�����9�e�:���fy�U�?q�?��5HQǜu�O���EU�	M���@��s�N���4T���b`�D���:�zMu	���}Z��Y� �t���%\K�z���a�F���Y�	\�|<
�q���" ^��Q����7��D��-j�"���f�އ���p}L�f%U�G��U�x"Q�A���\��X�+�0����Q�x'�
,��"�o������
�����aW���r'8u
����Q��զ����_MV��N�/D�M���ex]tGc�d�qX�dj�=S?{�-h�'*j?�����(���a������ųttC��蒷cC�7~&�n�bNr�Ui#�hȬ��߲_�+Rؑ�^D�����Ќ&H�����s�Jd��/���]�zMR���a(�p��B��Yt#+9vx�.Y�<{)��f�I��������/� x6�}���^t�`�uR��l+/� &���}������u��g{6-�%�[�u2�J����jߕ�(���Z��:���D�k��xC������g�K�"���>�α��D��}ミ���W: ���SS)iɂ	^�f��,�U�r"]K:� 6AҶJ�����͟J2WG�M��RC$)���X�����+��1��oq�Ԕ��	_���,w���f���4���f�2+{�A���)dd'���L־��q����j�eӰ�N4d�f�����T�0�01�M��Ί����g��^j��[�ߗ�()�R�J	i���Q4���0'�Q��E���0�Я�����+��c��Xl⨚9~���_j5��~��_��؜��M~��{*I��7����7{@ҫ���:�ǵ(�!�]�L&ԩ)X(�!��U�o�Ѵ�@o~�)ۙ��$Q��]��)r�uwȩ�:Xz�^u�V���%�{[j���לVJ6+cr�XpY�p*���^͛�b_	n�u=�!'l�7�6��uŚY=��lK&����g���b�o�N�Y��~�}{Z
2�G?A#���X%���B�4��t�ui�+�"B���� zw�q8bq��h�R�4��j^yeJ��n��g�x�Z�_���#sx���\=�)]�����}t�/�����k���ڜ�� lίS<�YgE�G�h�$ň�r9�$7hG�vt4��ab��z�{���n�{ �+��Ob̩����, j����ae��x�|Y�so����M��'������!{�����"��UHxə.:�`���i�'��A㥗��j$c"x�]ed�>�o&��v���/�?��m^o�}������Mԟ�^��/O�jl�����_�5͠���I�����"]��~�����K���qV���e+EO��S�m}c����\�U'C�C���U	�B��E���۝��߉�9v$*�!�`�G`=	ZI��'��f�g����eۃ�L��y�,ˋ�/��^)�s�P���w�믜u5m�ɡh᪢l��0Q�fK	��T<��8M��!^���N��.�������S/�H6n�e�*yF��KYM�Y�����쿏��J7	\��X�Ǥ�����<(j�ݼ��T#����B��@L��Y�"�����5��-�?n�����:JT23�=0��g%��Z�StͿ��CйB���o�_ʆ��b��Jg+�<M(0n�<�p�|��z�ZY��=D�V��Zr%��ބa-M�v��[u��rnUT$�&M{HsA(w8�ES����7�
$g,%�3��C�2���W�:��ԓ�Uo��d!�-���=By�I�CC�ƒ�=n�[ �M�)�?��Q�e0ӗ�#҃x��xU������F
Q���dRڡZm�J��(A5ż�\yL�ź��6=�v!�m�x��w�o����66
/�%h��C
��T����'��6P@�9��}���t�*@��f�����&bU�#�Kl��Jv�׬5�4C�CB8f'!ns]��q��r��t	Ju%!;���7��jRZ��IL�_�,��;%O�h�Y����`iZwlsGrHd�H�̬_��������aI�TG�N调��q%8�
�<_�	+LP�+ֻR���iF�����s�-��S@�H�ryp_@�NX�O9AA�#��t"�G����!|�0���=d����D�B�����Ί�kr��!��W�m���G��5� ^k�fG^=SM�s�~`�0�Ԍ�S���[Zi��"aϒ�y���^*ʔ����ͥA��Y��7��W�g���d��^���u}p��x�%��L�k��:ތ}�#1'��4�+�!����C�"�y���B-��.��!�<�d�Qccy�"V_��d��uǉQu��tee"�ui~�T�GQ���m��׊�����vŏ�4�T�:}�(�?{γ���a}����V�+h���ճ�z���ߩg?z맯����!	��u��o�5���.���d#ԩc!��÷�@<���>��>��rfkM�Aaw=ǆ�b���}`��~"FJ�>��J�E�]��~w �  ��������U����W�jR�\����0��z6��cl!}2$ϐR��|~Ɔ��1�Q@(*e��N�C�WA!x$�Q]���Ǌ>K�'���]C�OV����!�p��~���R�5����7�
Re�gQ|_�}1"�َ#�4u�/�5vf���,�ȩ�6 Ǒ9/���\�䬑�k)_y:�
�?di�[�3���0�c<")Y�,"'��"̠�M��j/
�d���@�a�.�H�"���De��2�à\�CK
���ҥ�MI�Q�R��Z���u6;z�(}�2E��������W8hF5ݻ&�N�����oA�G$�۵$`�g�� g/-̦�s�}��#6�e��C�PQ�>M>�~��\�V�_VҁK�$3��=���D�Y��E�X��w��e��"�o:���lF�1�l����D����Uz���/&��&֗�����.�a-��Mt��^����]��[&���7�jF�p^Л�Jd�0��1�5%����6��f�����tYm[�a����1���>78�c!ɱ���q�`M���f��p�h�u�����F�U�aȅ@���""����lC~���(�m@UW�[���������B�D�+�Q%��{���n�É}9���}�r�uTPq6��Gc�����l�逨�@!��j.s�+���-ʗ
��Ͷ��4�}��UT��QXT���6����~p��?��D�`R��B�P�K�	���lP����(JJ� �_�Pl7^BX���?�� A}М�^��/m���A]Us'��tm+�29d6�*�My��6�+���ip�.PqƐE���Y
n�m��E����s��,�+�~��I�t�Xf�8-�ZU�1Hʣ'5 g;��k�_���и�sdr����uo�!���͍�e�9[�0H#�{�r��Pn�ӻ���]���#�͡�B?�##�\n����וR"�0bϛ����s����ɸ�Y!���µ��3��Xf{�<��V�q��<���q٦8��)x܄�8�����-w|�Mܡ۟Cs���Yj�C켫��N[UՕ��W�w�(��|R���o����0�XbI�h�Q}��\� �9�}�*�!�}��?:�i���a�s�[G���h_~O�F�I��kM�_�Po[^-���+�u�Eoo���{���?�ӹ�>�M��7�џ?2�M����� A�	�ӌ�@5�1*�W�����(~��M��׈�8�hM���7>#���c�p��5��ј�J���/��3Z��n��<?����3�@�)��Rt��zPrp�`�'�R���:��?���n�_J'Dj4�p��#��jw�A��9���`�"Pa����(�x�t��x���.��.�1�✶^t��ܹ�,?Gm�x��A�"�7��W�>?]Lc�!�L��Pc�Sܤv��cd8_ٗV�3�]�P5�ۇ|qx)GG2W],�ܹlH6K՛��?Sq�}��ܦv���D�&qHd<�Ș�Hni�����W6�r��D��-kyf��mKG�����[=w%�j�p�s�����Z1c�б4�t{*��@l���P����M�vJ�E�R)�F�y���@�=A�i�uZ�F�$���X�+��Ni�����c|`r���|�����ׁ�Z� ܌P�ɧ��pb�z&�����7�*�bv�������DV��,됒n˧{f�05e;� ��#���[l��x�X\�k�xRG��T�0��qF���kHb3����&�y���0���F�L�����Kl�7㋐ɫ������j��?)�A�� �R09��i�DG�����_��j����Շ[��TX).�����.���3*�b���J]q�k���/H��
��J��;6aPl�*�-��*Y��y�.i�A��Ϻ��>���J�4���0y����I�ʦ�f2lu���N�e[?�N�X"/�R�O{��x��zt�r ��d�T]<�RZr�o;z�I/�KmM����� w&S=��A�Ψ�C��Tc�{��� �Dz)o|�����nq����j^��n�6�1�T�خ|Uj��&�`j�l9�|��
��i'8��1ڠ�NN�1���m��$Y���X���r��Yؒx�R7U�a��G��Po�i��L?j��h�A��v�y�]��:�g�y�^�$�-�;���W�s�m��_�遳��3���Ce8����[}��+����V����r迥 ���w�H�6�QB�~-��2J�Tg�%�g4|wp4�d���x���Y�1:�;���<ʣl�(�2�Q�QNN��֡	,�����lp'�rˎ�o��ɉ��R����=l(�����1�;4�G�h����f�� �ȭ6j��|���(��N.��ľ�'�M/�����b�<��~.�|Ƿ7��������+���A�h���_Cr�+윜1�[э��b
<8�@��+tݿ�#�`>�U��P3��vM�?�ղ_��ep��X���SLg�of�=R1&�GٕBhJ	_z$�8�;ź�F�QnA�j��t�8��m6��Cl#�.��#���nާ�z����v�z����gst1��u���5��>{ݺ]<$�����r���,��x�R����o�� �!`� N�j�J���ܠ}8`=d�x�JV1�0Q���+Y�E�Ԏ�z��\�`�����l >�AG�Lq���8�J � �MA�&Ho ��pI���V��짐�;%���d(�$�!��l9���-ύ��t�����J�@�n�d�w.C�p���c������9��9}	��2�q�鿛��B�Qd�q_W,�b�]��%���t]o|KΨ�!����i�>yx��.��0֖��9tՙ2$lD��thGP�s��k���٥��'�p���&ů�����»BiWF�6)6��`&�#��z�M��Ce������Ӯ4E����A��O���n�֓�����p�Of�a�?����4�Q&%��I&�l��4j�8���0�LZ�B�rΏ�Qws�)�EjeLJW�Hܤqd�M�6M|:���$E<�\�ó�`��~�@��z<��vvx�#��j�ѧ}�36�St��d뇥c>'7���+)�~���N&�g�O���(�I�=`ˤ��tJ`�֪��E���r�ڙt�ih�Gq��f���iϜq*p���j�sz�90U��h+M��� Vu�q��������뾴     