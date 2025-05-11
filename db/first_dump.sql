--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Debian 17.5-1.pgdg120+1)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1+b1)

-- Started on 2025-05-12 01:23:20 MSK

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16483)
-- Name: cities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    region_id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 16468)
-- Name: districts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.districts (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 16473)
-- Name: regions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.regions (
    id integer NOT NULL,
    district_id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 16521)
-- Name: universities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.universities (
    id integer NOT NULL,
    city_id integer,
    name character varying(255)
);


--
-- TOC entry 220 (class 1259 OID 16520)
-- Name: universities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.universities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 220
-- Name: universities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.universities_id_seq OWNED BY public.universities.id;


--
-- TOC entry 3222 (class 2604 OID 16524)
-- Name: universities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.universities ALTER COLUMN id SET DEFAULT nextval('public.universities_id_seq'::regclass);


--
-- TOC entry 3381 (class 0 OID 16483)
-- Dependencies: 219
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cities VALUES (1, 2, 'Майкоп');
INSERT INTO public.cities VALUES (2, 3, 'Горно-Алтайск');
INSERT INTO public.cities VALUES (3, 4, 'Барнаул');
INSERT INTO public.cities VALUES (4, 4, 'Бийск');
INSERT INTO public.cities VALUES (5, 4, 'Рубцовск');
INSERT INTO public.cities VALUES (6, 4, 'Новоалтайск');
INSERT INTO public.cities VALUES (7, 4, 'Заринск');
INSERT INTO public.cities VALUES (8, 5, 'Благовещенск (Амурская область)');
INSERT INTO public.cities VALUES (9, 5, 'Белогорск (Амурская область)');
INSERT INTO public.cities VALUES (10, 5, 'Свободный');
INSERT INTO public.cities VALUES (11, 6, 'Архангельск');
INSERT INTO public.cities VALUES (12, 6, 'Северодвинск');
INSERT INTO public.cities VALUES (13, 6, 'Котлас');
INSERT INTO public.cities VALUES (14, 7, 'Астрахань');
INSERT INTO public.cities VALUES (15, 7, 'Ахтубинск');
INSERT INTO public.cities VALUES (16, 7, 'Знаменск');
INSERT INTO public.cities VALUES (17, 8, 'Уфа');
INSERT INTO public.cities VALUES (18, 8, 'Стерлитамак');
INSERT INTO public.cities VALUES (19, 8, 'Салават');
INSERT INTO public.cities VALUES (20, 8, 'Нефтекамск');
INSERT INTO public.cities VALUES (21, 8, 'Октябрьский');
INSERT INTO public.cities VALUES (22, 8, 'Белорецк');
INSERT INTO public.cities VALUES (23, 8, 'Благовещенск (Башкортостан)');
INSERT INTO public.cities VALUES (24, 9, 'Белгород');
INSERT INTO public.cities VALUES (25, 9, 'Старый Оскол');
INSERT INTO public.cities VALUES (26, 9, 'Губкин');
INSERT INTO public.cities VALUES (27, 9, 'Шебекино');
INSERT INTO public.cities VALUES (28, 9, 'Новый Оскол');
INSERT INTO public.cities VALUES (29, 10, 'Брянск');
INSERT INTO public.cities VALUES (30, 10, 'Клинцы');
INSERT INTO public.cities VALUES (31, 11, 'Улан-Удэ');
INSERT INTO public.cities VALUES (32, 11, 'Северобайкальск');
INSERT INTO public.cities VALUES (33, 12, 'Владимир');
INSERT INTO public.cities VALUES (34, 12, 'Ковров');
INSERT INTO public.cities VALUES (35, 12, 'Муром');
INSERT INTO public.cities VALUES (36, 12, 'Александров');
INSERT INTO public.cities VALUES (37, 12, 'Гусь-Хрустальный');
INSERT INTO public.cities VALUES (38, 12, 'Киржач');
INSERT INTO public.cities VALUES (39, 13, 'Волгоград');
INSERT INTO public.cities VALUES (40, 13, 'Волжский');
INSERT INTO public.cities VALUES (41, 13, 'Камышин');
INSERT INTO public.cities VALUES (42, 13, 'Калач-на-Дону');
INSERT INTO public.cities VALUES (43, 14, 'Череповец');
INSERT INTO public.cities VALUES (44, 14, 'Вологда');
INSERT INTO public.cities VALUES (45, 14, 'Сокол');
INSERT INTO public.cities VALUES (46, 15, 'Воронеж');
INSERT INTO public.cities VALUES (47, 15, 'Борисоглебск');
INSERT INTO public.cities VALUES (48, 15, 'Россошь');
INSERT INTO public.cities VALUES (49, 15, 'Лиски');
INSERT INTO public.cities VALUES (50, 15, 'Павловск');
INSERT INTO public.cities VALUES (51, 16, 'Махачкала');
INSERT INTO public.cities VALUES (52, 16, 'Хасавюрт');
INSERT INTO public.cities VALUES (53, 16, 'Дербент');
INSERT INTO public.cities VALUES (54, 17, 'Биробиджан');
INSERT INTO public.cities VALUES (55, 18, 'Чита');
INSERT INTO public.cities VALUES (56, 18, 'Краснокаменск');
INSERT INTO public.cities VALUES (57, 19, 'Иваново');
INSERT INTO public.cities VALUES (58, 19, 'Кинешма');
INSERT INTO public.cities VALUES (59, 19, 'Шуя');
INSERT INTO public.cities VALUES (60, 20, 'Назрань');
INSERT INTO public.cities VALUES (61, 21, 'Иркутск');
INSERT INTO public.cities VALUES (62, 21, 'Братск');
INSERT INTO public.cities VALUES (63, 21, 'Ангарск');
INSERT INTO public.cities VALUES (64, 21, 'Усть-Илимск');
INSERT INTO public.cities VALUES (65, 22, 'Нальчик');
INSERT INTO public.cities VALUES (66, 22, 'Прохладный');
INSERT INTO public.cities VALUES (67, 23, 'Калининград');
INSERT INTO public.cities VALUES (68, 23, 'Советск (Калининградская область)');
INSERT INTO public.cities VALUES (69, 24, 'Элиста');
INSERT INTO public.cities VALUES (70, 25, 'Калуга');
INSERT INTO public.cities VALUES (71, 25, 'Обнинск');
INSERT INTO public.cities VALUES (72, 26, 'Петропавловск-Камчатский');
INSERT INTO public.cities VALUES (73, 26, 'Елизово');
INSERT INTO public.cities VALUES (74, 26, 'Вилючинск');
INSERT INTO public.cities VALUES (75, 27, 'Черкесск');
INSERT INTO public.cities VALUES (76, 28, 'Петрозаводск');
INSERT INTO public.cities VALUES (77, 28, 'Кондопога');
INSERT INTO public.cities VALUES (78, 29, 'Новокузнецк');
INSERT INTO public.cities VALUES (79, 29, 'Кемерово');
INSERT INTO public.cities VALUES (80, 29, 'Прокопьевск');
INSERT INTO public.cities VALUES (81, 29, 'Ленинск-Кузнецкий');
INSERT INTO public.cities VALUES (82, 29, 'Междуреченск');
INSERT INTO public.cities VALUES (83, 29, 'Киселёвск');
INSERT INTO public.cities VALUES (84, 29, 'Юрга');
INSERT INTO public.cities VALUES (85, 30, 'Киров (Кировская область)');
INSERT INTO public.cities VALUES (86, 30, 'Кирово-Чепецк');
INSERT INTO public.cities VALUES (87, 31, 'Сыктывкар');
INSERT INTO public.cities VALUES (88, 31, 'Ухта');
INSERT INTO public.cities VALUES (89, 31, 'Воркута');
INSERT INTO public.cities VALUES (90, 31, 'Печора');
INSERT INTO public.cities VALUES (91, 32, 'Кострома');
INSERT INTO public.cities VALUES (92, 33, 'Краснодар');
INSERT INTO public.cities VALUES (93, 33, 'Сочи');
INSERT INTO public.cities VALUES (94, 33, 'Новороссийск');
INSERT INTO public.cities VALUES (95, 33, 'Армавир');
INSERT INTO public.cities VALUES (96, 33, 'Ейск');
INSERT INTO public.cities VALUES (97, 33, 'Кропоткин');
INSERT INTO public.cities VALUES (98, 33, 'Туапсе');
INSERT INTO public.cities VALUES (99, 33, 'Тихорецк');
INSERT INTO public.cities VALUES (100, 33, 'Анапа');
INSERT INTO public.cities VALUES (101, 33, 'Белореченск');
INSERT INTO public.cities VALUES (102, 33, 'Геленджик');
INSERT INTO public.cities VALUES (103, 34, 'Красноярск');
INSERT INTO public.cities VALUES (104, 34, 'Норильск');
INSERT INTO public.cities VALUES (105, 34, 'Ачинск');
INSERT INTO public.cities VALUES (106, 34, 'Канск');
INSERT INTO public.cities VALUES (107, 34, 'Железногорск (Красноярский край)');
INSERT INTO public.cities VALUES (108, 34, 'Зеленогорск');
INSERT INTO public.cities VALUES (109, 35, 'Курган');
INSERT INTO public.cities VALUES (110, 35, 'Шадринск');
INSERT INTO public.cities VALUES (111, 36, 'Курск');
INSERT INTO public.cities VALUES (112, 36, 'Железногорск (Курская область)');
INSERT INTO public.cities VALUES (113, 36, 'Курчатов');
INSERT INTO public.cities VALUES (114, 37, 'Гатчина');
INSERT INTO public.cities VALUES (115, 37, 'Выборг');
INSERT INTO public.cities VALUES (116, 37, 'Сосновый Бор');
INSERT INTO public.cities VALUES (117, 37, 'Тихвин');
INSERT INTO public.cities VALUES (118, 37, 'Кириши');
INSERT INTO public.cities VALUES (119, 37, 'Кингисепп');
INSERT INTO public.cities VALUES (120, 37, 'Всеволожск');
INSERT INTO public.cities VALUES (121, 37, 'Волхов');
INSERT INTO public.cities VALUES (122, 37, 'Сертолово');
INSERT INTO public.cities VALUES (123, 37, 'Луга');
INSERT INTO public.cities VALUES (124, 37, 'Тосно');
INSERT INTO public.cities VALUES (125, 37, 'Сланцы');
INSERT INTO public.cities VALUES (126, 37, 'Кировск (Ленинградская область)');
INSERT INTO public.cities VALUES (127, 37, 'Лодейное Поле');
INSERT INTO public.cities VALUES (128, 37, 'Пикалёво');
INSERT INTO public.cities VALUES (129, 37, 'Отрадное');
INSERT INTO public.cities VALUES (130, 37, 'Подпорожье');
INSERT INTO public.cities VALUES (131, 37, 'Коммунар');
INSERT INTO public.cities VALUES (132, 37, 'Приозерск');
INSERT INTO public.cities VALUES (133, 37, 'Никольское');
INSERT INTO public.cities VALUES (134, 37, 'Бокситогорск');
INSERT INTO public.cities VALUES (135, 37, 'Светогорск');
INSERT INTO public.cities VALUES (136, 37, 'Сясьстрой');
INSERT INTO public.cities VALUES (137, 37, 'Шлиссельбург');
INSERT INTO public.cities VALUES (138, 37, 'Сиверский');
INSERT INTO public.cities VALUES (139, 37, 'Волосово');
INSERT INTO public.cities VALUES (140, 37, 'Ивангород');
INSERT INTO public.cities VALUES (141, 37, 'Вырица');
INSERT INTO public.cities VALUES (142, 37, 'Поселок им. Морозова');
INSERT INTO public.cities VALUES (143, 38, 'Липецк');
INSERT INTO public.cities VALUES (144, 38, 'Елец');
INSERT INTO public.cities VALUES (145, 39, 'Магадан');
INSERT INTO public.cities VALUES (146, 40, 'Йошкар-Ола');
INSERT INTO public.cities VALUES (147, 40, 'Волжск');
INSERT INTO public.cities VALUES (148, 41, 'Саранск');
INSERT INTO public.cities VALUES (149, 41, 'Рузаевка');
INSERT INTO public.cities VALUES (150, 43, 'Балашиха');
INSERT INTO public.cities VALUES (151, 43, 'Химки');
INSERT INTO public.cities VALUES (152, 43, 'Подольск');
INSERT INTO public.cities VALUES (153, 43, 'Королёв');
INSERT INTO public.cities VALUES (154, 43, 'Мытищи');
INSERT INTO public.cities VALUES (155, 43, 'Люберцы');
INSERT INTO public.cities VALUES (156, 43, 'Коломна');
INSERT INTO public.cities VALUES (157, 43, 'Электросталь');
INSERT INTO public.cities VALUES (158, 43, 'Одинцово');
INSERT INTO public.cities VALUES (159, 43, 'Железнодорожный (Балашиха)');
INSERT INTO public.cities VALUES (160, 43, 'Серпухов');
INSERT INTO public.cities VALUES (161, 43, 'Орехово-Зуево');
INSERT INTO public.cities VALUES (162, 43, 'Ногинск');
INSERT INTO public.cities VALUES (163, 43, 'Щёлково');
INSERT INTO public.cities VALUES (164, 43, 'Сергиев Посад');
INSERT INTO public.cities VALUES (165, 43, 'Жуковский');
INSERT INTO public.cities VALUES (166, 43, 'Красногорск');
INSERT INTO public.cities VALUES (167, 43, 'Пушкино');
INSERT INTO public.cities VALUES (168, 43, 'Воскресенск');
INSERT INTO public.cities VALUES (169, 43, 'Домодедово');
INSERT INTO public.cities VALUES (170, 43, 'Раменское');
INSERT INTO public.cities VALUES (171, 43, 'Реутов');
INSERT INTO public.cities VALUES (172, 43, 'Долгопрудный');
INSERT INTO public.cities VALUES (173, 43, 'Клин');
INSERT INTO public.cities VALUES (174, 43, 'Чехов');
INSERT INTO public.cities VALUES (175, 43, 'Наро-Фоминск');
INSERT INTO public.cities VALUES (176, 43, 'Лобня');
INSERT INTO public.cities VALUES (177, 43, 'Егорьевск');
INSERT INTO public.cities VALUES (178, 43, 'Ступино');
INSERT INTO public.cities VALUES (179, 43, 'Дмитров');
INSERT INTO public.cities VALUES (180, 43, 'Дубна');
INSERT INTO public.cities VALUES (181, 43, 'Павловский Посад');
INSERT INTO public.cities VALUES (182, 43, 'Солнечногорск');
INSERT INTO public.cities VALUES (183, 43, 'Ивантеевка');
INSERT INTO public.cities VALUES (184, 42, 'Климовск (Москва)');
INSERT INTO public.cities VALUES (185, 43, 'Видное');
INSERT INTO public.cities VALUES (186, 43, 'Фрязино');
INSERT INTO public.cities VALUES (187, 43, 'Лыткарино');
INSERT INTO public.cities VALUES (188, 43, 'Дзержинский');
INSERT INTO public.cities VALUES (189, 43, 'Кашира');
INSERT INTO public.cities VALUES (190, 43, 'Протвино');
INSERT INTO public.cities VALUES (191, 42, 'Троицк (Москва)');
INSERT INTO public.cities VALUES (192, 42, 'Юбилейный (Москва)');
INSERT INTO public.cities VALUES (193, 43, 'Истра');
INSERT INTO public.cities VALUES (194, 43, 'Нахабино');
INSERT INTO public.cities VALUES (195, 43, 'Краснознаменск (Московская область)');
INSERT INTO public.cities VALUES (196, 43, 'Луховицы');
INSERT INTO public.cities VALUES (197, 42, 'Щербинка (Москва)');
INSERT INTO public.cities VALUES (198, 43, 'Шатура');
INSERT INTO public.cities VALUES (199, 43, 'Ликино-Дулёво');
INSERT INTO public.cities VALUES (200, 43, 'Можайск');
INSERT INTO public.cities VALUES (201, 43, 'Томилино');
INSERT INTO public.cities VALUES (202, 43, 'Дедовск');
INSERT INTO public.cities VALUES (203, 43, 'Красноармейск (Московская область)');
INSERT INTO public.cities VALUES (204, 43, 'Кубинка');
INSERT INTO public.cities VALUES (205, 43, 'Озёры');
INSERT INTO public.cities VALUES (206, 43, 'Зарайск');
INSERT INTO public.cities VALUES (207, 43, 'Калининец');
INSERT INTO public.cities VALUES (208, 43, 'Волоколамск');
INSERT INTO public.cities VALUES (209, 43, 'Лосино-Петровский');
INSERT INTO public.cities VALUES (210, 43, 'Старая Купавна');
INSERT INTO public.cities VALUES (211, 43, 'Рошаль');
INSERT INTO public.cities VALUES (212, 43, 'Электрогорск');
INSERT INTO public.cities VALUES (213, 43, 'Электроугли');
INSERT INTO public.cities VALUES (214, 43, 'Черноголовка');
INSERT INTO public.cities VALUES (215, 43, 'Котельники');
INSERT INTO public.cities VALUES (216, 43, 'Пущино');
INSERT INTO public.cities VALUES (217, 43, 'Красково');
INSERT INTO public.cities VALUES (218, 44, 'Мурманск');
INSERT INTO public.cities VALUES (219, 44, 'Апатиты');
INSERT INTO public.cities VALUES (220, 44, 'Североморск');
INSERT INTO public.cities VALUES (221, 45, 'Нарьян-Мар');
INSERT INTO public.cities VALUES (222, 46, 'Нижний Новгород');
INSERT INTO public.cities VALUES (223, 46, 'Дзержинск');
INSERT INTO public.cities VALUES (224, 46, 'Арзамас');
INSERT INTO public.cities VALUES (225, 46, 'Саров');
INSERT INTO public.cities VALUES (226, 46, 'Бор');
INSERT INTO public.cities VALUES (227, 46, 'Кстово');
INSERT INTO public.cities VALUES (228, 46, 'Павлово');
INSERT INTO public.cities VALUES (229, 46, 'Выкса');
INSERT INTO public.cities VALUES (230, 46, 'Балахна');
INSERT INTO public.cities VALUES (231, 47, 'Великий Новгород');
INSERT INTO public.cities VALUES (232, 47, 'Боровичи');
INSERT INTO public.cities VALUES (233, 47, 'Старая Русса');
INSERT INTO public.cities VALUES (234, 48, 'Новосибирск');
INSERT INTO public.cities VALUES (235, 48, 'Бердск');
INSERT INTO public.cities VALUES (236, 48, 'Куйбышев');
INSERT INTO public.cities VALUES (237, 49, 'Омск');
INSERT INTO public.cities VALUES (238, 50, 'Оренбург');
INSERT INTO public.cities VALUES (239, 50, 'Орск');
INSERT INTO public.cities VALUES (240, 50, 'Новотроицк');
INSERT INTO public.cities VALUES (241, 50, 'Бузулук');
INSERT INTO public.cities VALUES (242, 51, 'Орёл');
INSERT INTO public.cities VALUES (243, 51, 'Ливны');
INSERT INTO public.cities VALUES (244, 51, 'Мценск');
INSERT INTO public.cities VALUES (245, 52, 'Пенза');
INSERT INTO public.cities VALUES (246, 52, 'Кузнецк');
INSERT INTO public.cities VALUES (247, 52, 'Заречный (Пензенская область)');
INSERT INTO public.cities VALUES (248, 52, 'Каменка');
INSERT INTO public.cities VALUES (249, 53, 'Пермь');
INSERT INTO public.cities VALUES (250, 53, 'Березники');
INSERT INTO public.cities VALUES (251, 53, 'Соликамск');
INSERT INTO public.cities VALUES (252, 53, 'Чайковский');
INSERT INTO public.cities VALUES (253, 53, 'Лысьва');
INSERT INTO public.cities VALUES (254, 53, 'Кунгур');
INSERT INTO public.cities VALUES (255, 53, 'Краснокамск');
INSERT INTO public.cities VALUES (256, 54, 'Владивосток');
INSERT INTO public.cities VALUES (257, 54, 'Находка');
INSERT INTO public.cities VALUES (258, 54, 'Уссурийск');
INSERT INTO public.cities VALUES (259, 54, 'Артём');
INSERT INTO public.cities VALUES (260, 55, 'Псков');
INSERT INTO public.cities VALUES (261, 55, 'Великие Луки');
INSERT INTO public.cities VALUES (262, 56, 'Ростов-на-Дону');
INSERT INTO public.cities VALUES (263, 56, 'Таганрог');
INSERT INTO public.cities VALUES (264, 56, 'Шахты');
INSERT INTO public.cities VALUES (265, 56, 'Новочеркасск');
INSERT INTO public.cities VALUES (266, 56, 'Волгодонск');
INSERT INTO public.cities VALUES (267, 56, 'Новошахтинск');
INSERT INTO public.cities VALUES (268, 56, 'Батайск');
INSERT INTO public.cities VALUES (269, 56, 'Каменск-Шахтинский');
INSERT INTO public.cities VALUES (270, 56, 'Азов');
INSERT INTO public.cities VALUES (271, 56, 'Гуково');
INSERT INTO public.cities VALUES (272, 56, 'Сальск');
INSERT INTO public.cities VALUES (273, 56, 'Донецк');
INSERT INTO public.cities VALUES (274, 56, 'Белая Калитва');
INSERT INTO public.cities VALUES (275, 57, 'Рязань');
INSERT INTO public.cities VALUES (276, 57, 'Касимов');
INSERT INTO public.cities VALUES (277, 58, 'Самара');
INSERT INTO public.cities VALUES (278, 58, 'Тольятти');
INSERT INTO public.cities VALUES (279, 58, 'Сызрань');
INSERT INTO public.cities VALUES (280, 58, 'Новокуйбышевск');
INSERT INTO public.cities VALUES (281, 58, 'Чапаевск');
INSERT INTO public.cities VALUES (282, 58, 'Жигулёвск');
INSERT INTO public.cities VALUES (283, 60, 'Саратов');
INSERT INTO public.cities VALUES (284, 60, 'Энгельс');
INSERT INTO public.cities VALUES (285, 60, 'Балаково');
INSERT INTO public.cities VALUES (286, 60, 'Балашов');
INSERT INTO public.cities VALUES (287, 60, 'Вольск');
INSERT INTO public.cities VALUES (288, 61, 'Якутск');
INSERT INTO public.cities VALUES (289, 61, 'Нерюнгри');
INSERT INTO public.cities VALUES (290, 61, 'Мирный');
INSERT INTO public.cities VALUES (291, 62, 'Южно-Сахалинск');
INSERT INTO public.cities VALUES (292, 63, 'Екатеринбург');
INSERT INTO public.cities VALUES (293, 63, 'Нижний Тагил');
INSERT INTO public.cities VALUES (294, 63, 'Каменск-Уральский');
INSERT INTO public.cities VALUES (295, 63, 'Первоуральск');
INSERT INTO public.cities VALUES (296, 63, 'Серов');
INSERT INTO public.cities VALUES (297, 63, 'Новоуральск');
INSERT INTO public.cities VALUES (298, 63, 'Асбест');
INSERT INTO public.cities VALUES (299, 63, 'Полевской');
INSERT INTO public.cities VALUES (300, 63, 'Ревда');
INSERT INTO public.cities VALUES (301, 63, 'Краснотурьинск');
INSERT INTO public.cities VALUES (302, 64, 'Владикавказ');
INSERT INTO public.cities VALUES (303, 64, 'Моздок');
INSERT INTO public.cities VALUES (304, 65, 'Смоленск');
INSERT INTO public.cities VALUES (305, 65, 'Вязьма');
INSERT INTO public.cities VALUES (306, 66, 'Ставрополь');
INSERT INTO public.cities VALUES (307, 66, 'Пятигорск');
INSERT INTO public.cities VALUES (308, 66, 'Кисловодск');
INSERT INTO public.cities VALUES (309, 66, 'Ессентуки');
INSERT INTO public.cities VALUES (310, 66, 'Минеральные Воды');
INSERT INTO public.cities VALUES (311, 66, 'Будённовск');
INSERT INTO public.cities VALUES (312, 67, 'Тамбов');
INSERT INTO public.cities VALUES (313, 67, 'Мичуринск');
INSERT INTO public.cities VALUES (314, 68, 'Казань');
INSERT INTO public.cities VALUES (315, 68, 'Набережные Челны');
INSERT INTO public.cities VALUES (316, 68, 'Нижнекамск');
INSERT INTO public.cities VALUES (317, 68, 'Альметьевск');
INSERT INTO public.cities VALUES (318, 68, 'Зеленодольск');
INSERT INTO public.cities VALUES (319, 68, 'Бугульма');
INSERT INTO public.cities VALUES (320, 69, 'Тверь');
INSERT INTO public.cities VALUES (321, 69, 'Ржев');
INSERT INTO public.cities VALUES (322, 70, 'Томск');
INSERT INTO public.cities VALUES (323, 70, 'Северск');
INSERT INTO public.cities VALUES (324, 71, 'Тула');
INSERT INTO public.cities VALUES (325, 71, 'Новомосковск');
INSERT INTO public.cities VALUES (327, 71, 'Узловая');
INSERT INTO public.cities VALUES (328, 72, 'Кызыл');
INSERT INTO public.cities VALUES (329, 73, 'Тюмень');
INSERT INTO public.cities VALUES (330, 73, 'Тобольск');
INSERT INTO public.cities VALUES (331, 74, 'Ижевск');
INSERT INTO public.cities VALUES (332, 74, 'Сарапул');
INSERT INTO public.cities VALUES (333, 74, 'Глазов');
INSERT INTO public.cities VALUES (334, 74, 'Воткинск');
INSERT INTO public.cities VALUES (335, 75, 'Ульяновск');
INSERT INTO public.cities VALUES (336, 75, 'Димитровград');
INSERT INTO public.cities VALUES (337, 76, 'Хабаровск');
INSERT INTO public.cities VALUES (338, 76, 'Комсомольск-на-Амуре');
INSERT INTO public.cities VALUES (339, 76, 'Амурск');
INSERT INTO public.cities VALUES (340, 77, 'Абакан');
INSERT INTO public.cities VALUES (341, 77, 'Черногорск');
INSERT INTO public.cities VALUES (342, 78, 'Сургут');
INSERT INTO public.cities VALUES (343, 78, 'Нижневартовск');
INSERT INTO public.cities VALUES (344, 78, 'Нефтеюганск');
INSERT INTO public.cities VALUES (345, 78, 'Ханты-Мансийск');
INSERT INTO public.cities VALUES (346, 79, 'Челябинск');
INSERT INTO public.cities VALUES (347, 79, 'Магнитогорск');
INSERT INTO public.cities VALUES (348, 79, 'Златоуст');
INSERT INTO public.cities VALUES (349, 79, 'Миасс');
INSERT INTO public.cities VALUES (350, 79, 'Копейск');
INSERT INTO public.cities VALUES (351, 79, 'Озёрск');
INSERT INTO public.cities VALUES (352, 79, 'Троицк');
INSERT INTO public.cities VALUES (353, 79, 'Снежинск');
INSERT INTO public.cities VALUES (354, 79, 'Сатка');
INSERT INTO public.cities VALUES (355, 80, 'Грозный');
INSERT INTO public.cities VALUES (356, 80, 'Урус-Мартан');
INSERT INTO public.cities VALUES (357, 81, 'Чебоксары');
INSERT INTO public.cities VALUES (358, 81, 'Новочебоксарск');
INSERT INTO public.cities VALUES (360, 83, 'Новый Уренгой');
INSERT INTO public.cities VALUES (361, 83, 'Ноябрьск');
INSERT INTO public.cities VALUES (362, 84, 'Ярославль');
INSERT INTO public.cities VALUES (363, 84, 'Рыбинск');
INSERT INTO public.cities VALUES (364, 84, 'Переславль-Залесский');
INSERT INTO public.cities VALUES (365, 42, 'Москва');
INSERT INTO public.cities VALUES (366, 59, 'Санкт-Петербург');
INSERT INTO public.cities VALUES (367, 77, 'Абаза');
INSERT INTO public.cities VALUES (369, 50, 'Абдулино');
INSERT INTO public.cities VALUES (370, 33, 'Абинск');
INSERT INTO public.cities VALUES (371, 8, 'Агидель');
INSERT INTO public.cities VALUES (372, 68, 'Агрыз');
INSERT INTO public.cities VALUES (373, 2, 'Адыгейск');
INSERT INTO public.cities VALUES (374, 68, 'Азнакаево');
INSERT INTO public.cities VALUES (376, 72, 'Ак-Довурак');
INSERT INTO public.cities VALUES (377, 56, 'Аксай');
INSERT INTO public.cities VALUES (378, 64, 'Алагир');
INSERT INTO public.cities VALUES (379, 63, 'Алапаевск');
INSERT INTO public.cities VALUES (380, 81, 'Алатырь');
INSERT INTO public.cities VALUES (381, 61, 'Алдан');
INSERT INTO public.cities VALUES (382, 4, 'Алейск');
INSERT INTO public.cities VALUES (384, 53, 'Александровск');
INSERT INTO public.cities VALUES (385, 62, 'Александровск-Сахалинский');
INSERT INTO public.cities VALUES (386, 9, 'Алексеевка');
INSERT INTO public.cities VALUES (387, 71, 'Алексин');
INSERT INTO public.cities VALUES (388, 21, 'Алзамай');
INSERT INTO public.cities VALUES (391, 82, 'Анадырь');
INSERT INTO public.cities VALUES (394, 69, 'Андреаполь');
INSERT INTO public.cities VALUES (395, 29, 'Анжеро-Судженск');
INSERT INTO public.cities VALUES (396, 62, 'Анива');
INSERT INTO public.cities VALUES (398, 43, 'Апрелевка');
INSERT INTO public.cities VALUES (399, 33, 'Апшеронск');
INSERT INTO public.cities VALUES (400, 63, 'Арамиль');
INSERT INTO public.cities VALUES (401, 80, 'Аргун');
INSERT INTO public.cities VALUES (402, 41, 'Ардатов');
INSERT INTO public.cities VALUES (403, 64, 'Ардон');
INSERT INTO public.cities VALUES (405, 60, 'Аркадак');
INSERT INTO public.cities VALUES (407, 54, 'Арсеньев');
INSERT INTO public.cities VALUES (408, 68, 'Арск');
INSERT INTO public.cities VALUES (410, 34, 'Артёмовск');
INSERT INTO public.cities VALUES (411, 63, 'Артёмовский');
INSERT INTO public.cities VALUES (414, 70, 'Асино');
INSERT INTO public.cities VALUES (416, 60, 'Аткарск');
INSERT INTO public.cities VALUES (419, 79, 'Аша');
INSERT INTO public.cities VALUES (420, 14, 'Бабаево');
INSERT INTO public.cities VALUES (421, 11, 'Бабушкин');
INSERT INTO public.cities VALUES (422, 68, 'Бавлы');
INSERT INTO public.cities VALUES (423, 23, 'Багратионовск');
INSERT INTO public.cities VALUES (424, 21, 'Байкальск');
INSERT INTO public.cities VALUES (425, 8, 'Баймак');
INSERT INTO public.cities VALUES (426, 79, 'Бакал');
INSERT INTO public.cities VALUES (427, 22, 'Баксан');
INSERT INTO public.cities VALUES (428, 25, 'Балабаново');
INSERT INTO public.cities VALUES (433, 18, 'Балей');
INSERT INTO public.cities VALUES (434, 23, 'Балтийск');
INSERT INTO public.cities VALUES (435, 48, 'Барабинск');
INSERT INTO public.cities VALUES (437, 75, 'Барыш');
INSERT INTO public.cities VALUES (439, 69, 'Бежецк');
INSERT INTO public.cities VALUES (440, 71, 'Белёв');
INSERT INTO public.cities VALUES (442, 30, 'Белая Холуница');
INSERT INTO public.cities VALUES (444, 8, 'Белебей');
INSERT INTO public.cities VALUES (445, 52, 'Белинский');
INSERT INTO public.cities VALUES (446, 29, 'Белово');
INSERT INTO public.cities VALUES (448, 14, 'Белозерск');
INSERT INTO public.cities VALUES (449, 4, 'Белокуриха');
INSERT INTO public.cities VALUES (450, 28, 'Беломорск');
INSERT INTO public.cities VALUES (453, 25, 'Белоусово');
INSERT INTO public.cities VALUES (454, 78, 'Белоярский');
INSERT INTO public.cities VALUES (455, 69, 'Белый');
INSERT INTO public.cities VALUES (456, 29, 'Березовский (Кемеровская область)');
INSERT INTO public.cities VALUES (457, 63, 'Березовский (Свердловская область)');
INSERT INTO public.cities VALUES (460, 64, 'Беслан');
INSERT INTO public.cities VALUES (462, 76, 'Бикин');
INSERT INTO public.cities VALUES (463, 82, 'Билибино');
INSERT INTO public.cities VALUES (465, 8, 'Бирск');
INSERT INTO public.cities VALUES (466, 21, 'Бирюсинск');
INSERT INTO public.cities VALUES (467, 9, 'Бирюч');
INSERT INTO public.cities VALUES (470, 66, 'Благодарный');
INSERT INTO public.cities VALUES (471, 15, 'Бобров');
INSERT INTO public.cities VALUES (472, 63, 'Богданович');
INSERT INTO public.cities VALUES (473, 71, 'Богородицк');
INSERT INTO public.cities VALUES (474, 46, 'Богородск');
INSERT INTO public.cities VALUES (475, 34, 'Боготол');
INSERT INTO public.cities VALUES (476, 15, 'Богучар');
INSERT INTO public.cities VALUES (477, 21, 'Бодайбо');
INSERT INTO public.cities VALUES (479, 68, 'Болгар');
INSERT INTO public.cities VALUES (480, 69, 'Бологое');
INSERT INTO public.cities VALUES (481, 48, 'Болотное');
INSERT INTO public.cities VALUES (482, 71, 'Болохово');
INSERT INTO public.cities VALUES (483, 51, 'Болхов');
INSERT INTO public.cities VALUES (484, 54, 'Большой Камень');
INSERT INTO public.cities VALUES (486, 18, 'Борзя');
INSERT INTO public.cities VALUES (489, 25, 'Боровск');
INSERT INTO public.cities VALUES (490, 34, 'Бородино');
INSERT INTO public.cities VALUES (492, 43, 'Бронницы');
INSERT INTO public.cities VALUES (495, 50, 'Бугуруслан');
INSERT INTO public.cities VALUES (498, 68, 'Буинск');
INSERT INTO public.cities VALUES (499, 32, 'Буй');
INSERT INTO public.cities VALUES (500, 16, 'Буйнакск');
INSERT INTO public.cities VALUES (501, 15, 'Бутурлиновка');
INSERT INTO public.cities VALUES (502, 47, 'Валдай');
INSERT INTO public.cities VALUES (503, 9, 'Валуйки');
INSERT INTO public.cities VALUES (504, 65, 'Велиж');
INSERT INTO public.cities VALUES (507, 14, 'Великий Устюг');
INSERT INTO public.cities VALUES (508, 6, 'Вельск');
INSERT INTO public.cities VALUES (509, 71, 'Венёв');
INSERT INTO public.cities VALUES (510, 53, 'Верещагино');
INSERT INTO public.cities VALUES (511, 43, 'Верея');
INSERT INTO public.cities VALUES (512, 79, 'Верхнеуральск');
INSERT INTO public.cities VALUES (513, 63, 'Верхний Тагил');
INSERT INTO public.cities VALUES (514, 79, 'Верхний Уфалей');
INSERT INTO public.cities VALUES (515, 63, 'Верхняя Пышма');
INSERT INTO public.cities VALUES (516, 63, 'Верхняя Салда');
INSERT INTO public.cities VALUES (517, 63, 'Верхняя Тура');
INSERT INTO public.cities VALUES (518, 63, 'Верхотурье');
INSERT INTO public.cities VALUES (519, 61, 'Верхоянск');
INSERT INTO public.cities VALUES (520, 69, 'Весьегонск');
INSERT INTO public.cities VALUES (521, 46, 'Ветлуга');
INSERT INTO public.cities VALUES (523, 61, 'Вилюйск');
INSERT INTO public.cities VALUES (525, 21, 'Вихоревка');
INSERT INTO public.cities VALUES (526, 19, 'Вичуга');
INSERT INTO public.cities VALUES (532, 32, 'Волгореченск');
INSERT INTO public.cities VALUES (536, 46, 'Володарск');
INSERT INTO public.cities VALUES (540, 63, 'Волчанск');
INSERT INTO public.cities VALUES (544, 46, 'Ворсма');
INSERT INTO public.cities VALUES (548, 31, 'Вуктыл');
INSERT INTO public.cities VALUES (551, 43, 'Высоковск');
INSERT INTO public.cities VALUES (552, 37, 'Высоцк');
INSERT INTO public.cities VALUES (553, 14, 'Вытегра');
INSERT INTO public.cities VALUES (554, 69, 'Вышний Волочёк');
INSERT INTO public.cities VALUES (555, 76, 'Вяземский');
INSERT INTO public.cities VALUES (556, 12, 'Вязники');
INSERT INTO public.cities VALUES (558, 30, 'Вятские Поляны');
INSERT INTO public.cities VALUES (559, 19, 'Гаврилов Посад');
INSERT INTO public.cities VALUES (560, 84, 'Гаврилов-Ям');
INSERT INTO public.cities VALUES (561, 65, 'Гагарин');
INSERT INTO public.cities VALUES (562, 44, 'Гаджиево');
INSERT INTO public.cities VALUES (563, 50, 'Гай');
INSERT INTO public.cities VALUES (564, 32, 'Галич');
INSERT INTO public.cities VALUES (566, 23, 'Гвардейск');
INSERT INTO public.cities VALUES (567, 55, 'Гдов');
INSERT INTO public.cities VALUES (569, 66, 'Георгиевск');
INSERT INTO public.cities VALUES (571, 43, 'Голицыно');
INSERT INTO public.cities VALUES (572, 46, 'Горбатов');
INSERT INTO public.cities VALUES (574, 53, 'Горнозаводск');
INSERT INTO public.cities VALUES (575, 4, 'Горняк');
INSERT INTO public.cities VALUES (576, 46, 'Городец');
INSERT INTO public.cities VALUES (577, 52, 'Городище');
INSERT INTO public.cities VALUES (578, 24, 'Городовиковск');
INSERT INTO public.cities VALUES (579, 12, 'Гороховец');
INSERT INTO public.cities VALUES (580, 33, 'Горячий Ключ');
INSERT INTO public.cities VALUES (581, 9, 'Грайворон');
INSERT INTO public.cities VALUES (582, 53, 'Гремячинск');
INSERT INTO public.cities VALUES (584, 38, 'Грязи');
INSERT INTO public.cities VALUES (585, 14, 'Грязовец');
INSERT INTO public.cities VALUES (586, 53, 'Губаха');
INSERT INTO public.cities VALUES (588, 83, 'Губкинский');
INSERT INTO public.cities VALUES (589, 80, 'Гудермес');
INSERT INTO public.cities VALUES (591, 33, 'Гулькевичи');
INSERT INTO public.cities VALUES (592, 23, 'Гурьевск (Калининградская область)');
INSERT INTO public.cities VALUES (593, 29, 'Гурьевск (Кемеровская область)');
INSERT INTO public.cities VALUES (594, 23, 'Гусев');
INSERT INTO public.cities VALUES (595, 11, 'Гусиноозёрск');
INSERT INTO public.cities VALUES (597, 8, 'Давлеканово');
INSERT INTO public.cities VALUES (598, 16, 'Дагестанские Огни');
INSERT INTO public.cities VALUES (599, 35, 'Далматово');
INSERT INTO public.cities VALUES (600, 54, 'Дальнегорск');
INSERT INTO public.cities VALUES (601, 54, 'Дальнереченск');
INSERT INTO public.cities VALUES (602, 84, 'Данилов');
INSERT INTO public.cities VALUES (603, 38, 'Данков');
INSERT INTO public.cities VALUES (604, 63, 'Дегтярск');
INSERT INTO public.cities VALUES (606, 65, 'Демидов');
INSERT INTO public.cities VALUES (608, 65, 'Десногорск');
INSERT INTO public.cities VALUES (611, 34, 'Дивногорск');
INSERT INTO public.cities VALUES (612, 64, 'Дигора');
INSERT INTO public.cities VALUES (614, 36, 'Дмитриев');
INSERT INTO public.cities VALUES (616, 51, 'Дмитровск');
INSERT INTO public.cities VALUES (617, 55, 'Дно');
INSERT INTO public.cities VALUES (618, 53, 'Добрянка');
INSERT INTO public.cities VALUES (620, 62, 'Долинск');
INSERT INTO public.cities VALUES (623, 71, 'Донской');
INSERT INTO public.cities VALUES (624, 65, 'Дорогобуж');
INSERT INTO public.cities VALUES (625, 43, 'Дрезна');
INSERT INTO public.cities VALUES (627, 13, 'Дубовка');
INSERT INTO public.cities VALUES (628, 34, 'Дудинка');
INSERT INTO public.cities VALUES (629, 65, 'Духовщина');
INSERT INTO public.cities VALUES (630, 8, 'Дюртюли');
INSERT INTO public.cities VALUES (631, 10, 'Дятьково');
INSERT INTO public.cities VALUES (635, 68, 'Елабуга');
INSERT INTO public.cities VALUES (638, 65, 'Ельня');
INSERT INTO public.cities VALUES (639, 79, 'Еманжелинск');
INSERT INTO public.cities VALUES (640, 31, 'Емва');
INSERT INTO public.cities VALUES (641, 34, 'Енисейск');
INSERT INTO public.cities VALUES (642, 25, 'Ермолино');
INSERT INTO public.cities VALUES (643, 60, 'Ершов');
INSERT INTO public.cities VALUES (645, 71, 'Ефремов');
INSERT INTO public.cities VALUES (646, 66, 'Железноводск');
INSERT INTO public.cities VALUES (649, 21, 'Железногорск-Илимский');
INSERT INTO public.cities VALUES (651, 67, 'Жердевка');
INSERT INTO public.cities VALUES (653, 25, 'Жиздра');
INSERT INTO public.cities VALUES (654, 13, 'Жирновск');
INSERT INTO public.cities VALUES (655, 25, 'Жуков');
INSERT INTO public.cities VALUES (656, 10, 'Жуковка');
INSERT INTO public.cities VALUES (658, 5, 'Завитинск');
INSERT INTO public.cities VALUES (659, 73, 'Заводоуковск');
INSERT INTO public.cities VALUES (660, 19, 'Заволжск');
INSERT INTO public.cities VALUES (661, 46, 'Заволжье');
INSERT INTO public.cities VALUES (662, 38, 'Задонск');
INSERT INTO public.cities VALUES (663, 68, 'Заинск');
INSERT INTO public.cities VALUES (664, 11, 'Закаменск');
INSERT INTO public.cities VALUES (665, 34, 'Заозёрный');
INSERT INTO public.cities VALUES (666, 44, 'Заозёрск');
INSERT INTO public.cities VALUES (667, 69, 'Западная Двина');
INSERT INTO public.cities VALUES (668, 44, 'Заполярный');
INSERT INTO public.cities VALUES (671, 63, 'Заречный (Свердловская область)');
INSERT INTO public.cities VALUES (673, 40, 'Звенигово');
INSERT INTO public.cities VALUES (674, 43, 'Звенигород');
INSERT INTO public.cities VALUES (675, 56, 'Зверево');
INSERT INTO public.cities VALUES (677, 23, 'Зеленоградск');
INSERT INTO public.cities VALUES (679, 66, 'Зеленокумск');
INSERT INTO public.cities VALUES (680, 56, 'Зерноград');
INSERT INTO public.cities VALUES (681, 5, 'Зея');
INSERT INTO public.cities VALUES (682, 21, 'Зима');
INSERT INTO public.cities VALUES (684, 10, 'Злынка');
INSERT INTO public.cities VALUES (685, 4, 'Змеиногорск');
INSERT INTO public.cities VALUES (687, 69, 'Зубцов');
INSERT INTO public.cities VALUES (688, 30, 'Зуевка');
INSERT INTO public.cities VALUES (692, 63, 'Ивдель');
INSERT INTO public.cities VALUES (693, 34, 'Игарка');
INSERT INTO public.cities VALUES (695, 16, 'Избербаш');
INSERT INTO public.cities VALUES (696, 66, 'Изобильный');
INSERT INTO public.cities VALUES (697, 34, 'Иланский');
INSERT INTO public.cities VALUES (698, 75, 'Инза');
INSERT INTO public.cities VALUES (699, 41, 'Инсар');
INSERT INTO public.cities VALUES (700, 31, 'Инта');
INSERT INTO public.cities VALUES (701, 66, 'Ипатово');
INSERT INTO public.cities VALUES (702, 63, 'Ирбит');
INSERT INTO public.cities VALUES (704, 49, 'Исилькуль');
INSERT INTO public.cities VALUES (705, 48, 'Искитим');
INSERT INTO public.cities VALUES (707, 73, 'Ишим');
INSERT INTO public.cities VALUES (708, 8, 'Ишимбай');
INSERT INTO public.cities VALUES (710, 14, 'Кадников');
INSERT INTO public.cities VALUES (712, 15, 'Калач');
INSERT INTO public.cities VALUES (714, 49, 'Калачинск');
INSERT INTO public.cities VALUES (716, 60, 'Калининск');
INSERT INTO public.cities VALUES (717, 29, 'Калтан');
INSERT INTO public.cities VALUES (719, 69, 'Калязин');
INSERT INTO public.cities VALUES (720, 74, 'Камбарка');
INSERT INTO public.cities VALUES (722, 37, 'Каменногорск');
INSERT INTO public.cities VALUES (725, 4, 'Камень-на-Оби');
INSERT INTO public.cities VALUES (726, 12, 'Камешково');
INSERT INTO public.cities VALUES (727, 7, 'Камызяк');
INSERT INTO public.cities VALUES (729, 63, 'Камышлов');
INSERT INTO public.cities VALUES (730, 81, 'Канаш');
INSERT INTO public.cities VALUES (731, 44, 'Кандалакша');
INSERT INTO public.cities VALUES (733, 12, 'Карабаново');
INSERT INTO public.cities VALUES (734, 79, 'Карабаш');
INSERT INTO public.cities VALUES (735, 20, 'Карабулак');
INSERT INTO public.cities VALUES (736, 48, 'Карасук');
INSERT INTO public.cities VALUES (737, 27, 'Карачаевск');
INSERT INTO public.cities VALUES (738, 10, 'Карачев');
INSERT INTO public.cities VALUES (739, 48, 'Каргат');
INSERT INTO public.cities VALUES (740, 6, 'Каргополь');
INSERT INTO public.cities VALUES (741, 63, 'Карпинск');
INSERT INTO public.cities VALUES (742, 79, 'Карталы');
INSERT INTO public.cities VALUES (744, 79, 'Касли');
INSERT INTO public.cities VALUES (745, 16, 'Каспийск');
INSERT INTO public.cities VALUES (746, 79, 'Катав-Ивановск');
INSERT INTO public.cities VALUES (747, 35, 'Катайск');
INSERT INTO public.cities VALUES (748, 63, 'Качканар');
INSERT INTO public.cities VALUES (749, 69, 'Кашин');
INSERT INTO public.cities VALUES (751, 70, 'Кедровый');
INSERT INTO public.cities VALUES (753, 28, 'Кемь');
INSERT INTO public.cities VALUES (754, 53, 'Кизел');
INSERT INTO public.cities VALUES (755, 16, 'Кизилюрт');
INSERT INTO public.cities VALUES (756, 16, 'Кизляр');
INSERT INTO public.cities VALUES (757, 71, 'Кимовск');
INSERT INTO public.cities VALUES (758, 69, 'Кимры');
INSERT INTO public.cities VALUES (760, 58, 'Кинель');
INSERT INTO public.cities VALUES (762, 71, 'Киреевск');
INSERT INTO public.cities VALUES (763, 21, 'Киренск');
INSERT INTO public.cities VALUES (765, 14, 'Кириллов');
INSERT INTO public.cities VALUES (768, 25, 'Киров (Калужская область)');
INSERT INTO public.cities VALUES (769, 63, 'Кировград');
INSERT INTO public.cities VALUES (772, 44, 'Кировск (Мурманская область)');
INSERT INTO public.cities VALUES (773, 30, 'Кирс');
INSERT INTO public.cities VALUES (774, 67, 'Кирсанов');
INSERT INTO public.cities VALUES (780, 46, 'Княгинино');
INSERT INTO public.cities VALUES (781, 44, 'Ковдор');
INSERT INTO public.cities VALUES (783, 41, 'Ковылкино');
INSERT INTO public.cities VALUES (784, 78, 'Когалым');
INSERT INTO public.cities VALUES (785, 34, 'Кодинск');
INSERT INTO public.cities VALUES (786, 25, 'Козельск');
INSERT INTO public.cities VALUES (787, 81, 'Козловка');
INSERT INTO public.cities VALUES (788, 40, 'Козьмодемьянск');
INSERT INTO public.cities VALUES (789, 44, 'Кола');
INSERT INTO public.cities VALUES (790, 32, 'Кологрив');
INSERT INTO public.cities VALUES (792, 70, 'Колпашево');
INSERT INTO public.cities VALUES (793, 12, 'Кольчугино');
INSERT INTO public.cities VALUES (795, 19, 'Комсомольск');
INSERT INTO public.cities VALUES (797, 69, 'Конаково');
INSERT INTO public.cities VALUES (799, 25, 'Кондрово');
INSERT INTO public.cities VALUES (800, 56, 'Константиновск');
INSERT INTO public.cities VALUES (802, 57, 'Кораблино');
INSERT INTO public.cities VALUES (803, 33, 'Кореновск');
INSERT INTO public.cities VALUES (804, 79, 'Коркино');
INSERT INTO public.cities VALUES (806, 9, 'Короча');
INSERT INTO public.cities VALUES (807, 62, 'Корсаков');
INSERT INTO public.cities VALUES (808, 6, 'Коряжма');
INSERT INTO public.cities VALUES (809, 12, 'Костерёво');
INSERT INTO public.cities VALUES (810, 28, 'Костомукша');
INSERT INTO public.cities VALUES (813, 13, 'Котельниково');
INSERT INTO public.cities VALUES (814, 30, 'Котельнич');
INSERT INTO public.cities VALUES (816, 13, 'Котово');
INSERT INTO public.cities VALUES (817, 67, 'Котовск');
INSERT INTO public.cities VALUES (818, 19, 'Кохма');
INSERT INTO public.cities VALUES (819, 14, 'Красавино');
INSERT INTO public.cities VALUES (821, 60, 'Красноармейск (Саратовская область)');
INSERT INTO public.cities VALUES (822, 53, 'Красновишерск');
INSERT INTO public.cities VALUES (825, 43, 'Краснозаводск');
INSERT INTO public.cities VALUES (830, 13, 'Краснослободск (Волгоградская область)\r\n');
INSERT INTO public.cities VALUES (831, 41, 'Краснослободск (Мордовия)');
INSERT INTO public.cities VALUES (833, 63, 'Красноуральск');
INSERT INTO public.cities VALUES (834, 63, 'Красноуфимск');
INSERT INTO public.cities VALUES (836, 60, 'Красный Кут');
INSERT INTO public.cities VALUES (837, 56, 'Красный Сулин');
INSERT INTO public.cities VALUES (838, 69, 'Красный Холм');
INSERT INTO public.cities VALUES (839, 25, 'Кремёнки');
INSERT INTO public.cities VALUES (841, 33, 'Крымск');
INSERT INTO public.cities VALUES (844, 50, 'Кувандык');
INSERT INTO public.cities VALUES (845, 69, 'Кувшиново');
INSERT INTO public.cities VALUES (846, 53, 'Кудымкар');
INSERT INTO public.cities VALUES (849, 46, 'Кулебаки');
INSERT INTO public.cities VALUES (850, 8, 'Кумертау');
INSERT INTO public.cities VALUES (852, 48, 'Купино');
INSERT INTO public.cities VALUES (854, 33, 'Курганинск');
INSERT INTO public.cities VALUES (855, 62, 'Курильск');
INSERT INTO public.cities VALUES (856, 12, 'Курлово');
INSERT INTO public.cities VALUES (857, 43, 'Куровское');
INSERT INTO public.cities VALUES (859, 35, 'Куртамыш');
INSERT INTO public.cities VALUES (861, 79, 'Куса');
INSERT INTO public.cities VALUES (862, 63, 'Кушва');
INSERT INTO public.cities VALUES (864, 79, 'Кыштым');
INSERT INTO public.cities VALUES (865, 11, 'Кяхта');
INSERT INTO public.cities VALUES (866, 33, 'Лабинск');
INSERT INTO public.cities VALUES (867, 83, 'Лабытнанги');
INSERT INTO public.cities VALUES (868, 24, 'Лагань');
INSERT INTO public.cities VALUES (869, 23, 'Ладушкин');
INSERT INTO public.cities VALUES (870, 68, 'Лаишево');
INSERT INTO public.cities VALUES (871, 12, 'Лакинск');
INSERT INTO public.cities VALUES (872, 78, 'Лангепас');
INSERT INTO public.cities VALUES (873, 28, 'Лахденпохья');
INSERT INTO public.cities VALUES (874, 38, 'Лебедянь');
INSERT INTO public.cities VALUES (875, 68, 'Лениногорск');
INSERT INTO public.cities VALUES (876, 13, 'Ленинск');
INSERT INTO public.cities VALUES (878, 61, 'Ленск');
INSERT INTO public.cities VALUES (879, 66, 'Лермонтов');
INSERT INTO public.cities VALUES (880, 63, 'Лесной');
INSERT INTO public.cities VALUES (881, 54, 'Лесозаводск');
INSERT INTO public.cities VALUES (882, 34, 'Лесосибирск');
INSERT INTO public.cities VALUES (886, 71, 'Липки');
INSERT INTO public.cities VALUES (888, 69, 'Лихославль');
INSERT INTO public.cities VALUES (893, 30, 'Луза');
INSERT INTO public.cities VALUES (894, 46, 'Лукоянов');
INSERT INTO public.cities VALUES (896, 46, 'Лысково');
INSERT INTO public.cities VALUES (899, 36, 'Льгов');
INSERT INTO public.cities VALUES (900, 37, 'Любань');
INSERT INTO public.cities VALUES (902, 84, 'Любим');
INSERT INTO public.cities VALUES (903, 25, 'Людиново');
INSERT INTO public.cities VALUES (904, 78, 'Лянтор');
INSERT INTO public.cities VALUES (906, 20, 'Магас');
INSERT INTO public.cities VALUES (909, 22, 'Майский');
INSERT INTO public.cities VALUES (910, 62, 'Макаров');
INSERT INTO public.cities VALUES (911, 32, 'Макарьев');
INSERT INTO public.cities VALUES (912, 35, 'Макушино');
INSERT INTO public.cities VALUES (913, 47, 'Малая Вишера');
INSERT INTO public.cities VALUES (914, 20, 'Малгобек');
INSERT INTO public.cities VALUES (915, 30, 'Малмыж');
INSERT INTO public.cities VALUES (916, 51, 'Малоархангельск');
INSERT INTO public.cities VALUES (917, 25, 'Малоярославец');
INSERT INTO public.cities VALUES (918, 68, 'Мамадыш');
INSERT INTO public.cities VALUES (919, 23, 'Мамоново');
INSERT INTO public.cities VALUES (920, 32, 'Мантурово');
INSERT INTO public.cities VALUES (921, 29, 'Мариинск');
INSERT INTO public.cities VALUES (922, 81, 'Мариинский Посад');
INSERT INTO public.cities VALUES (923, 60, 'Маркс');
INSERT INTO public.cities VALUES (925, 10, 'Мглин');
INSERT INTO public.cities VALUES (926, 78, 'Мегион');
INSERT INTO public.cities VALUES (927, 28, 'Медвежьегорск');
INSERT INTO public.cities VALUES (928, 50, 'Медногорск');
INSERT INTO public.cities VALUES (929, 25, 'Медынь');
INSERT INTO public.cities VALUES (930, 8, 'Межгорье');
INSERT INTO public.cities VALUES (932, 6, 'Мезень');
INSERT INTO public.cities VALUES (933, 12, 'Меленки');
INSERT INTO public.cities VALUES (934, 8, 'Мелеуз');
INSERT INTO public.cities VALUES (935, 68, 'Менделеевск');
INSERT INTO public.cities VALUES (936, 68, 'Мензелинск');
INSERT INTO public.cities VALUES (937, 25, 'Мещовск');
INSERT INTO public.cities VALUES (939, 31, 'Микунь');
INSERT INTO public.cities VALUES (940, 56, 'Миллерово');
INSERT INTO public.cities VALUES (942, 34, 'Минусинск');
INSERT INTO public.cities VALUES (943, 79, 'Миньяр');
INSERT INTO public.cities VALUES (946, 57, 'Михайлов');
INSERT INTO public.cities VALUES (947, 13, 'Михайловка');
INSERT INTO public.cities VALUES (948, 63, 'Михайловск (Свердловская область)');
INSERT INTO public.cities VALUES (949, 66, 'Михайловск (Ставропольский край)');
INSERT INTO public.cities VALUES (951, 18, 'Могоча');
INSERT INTO public.cities VALUES (953, 74, 'Можга');
INSERT INTO public.cities VALUES (955, 44, 'Мончегорск');
INSERT INTO public.cities VALUES (956, 56, 'Морозовск');
INSERT INTO public.cities VALUES (957, 67, 'Моршанск');
INSERT INTO public.cities VALUES (958, 25, 'Мосальск');
INSERT INTO public.cities VALUES (960, 83, 'Муравленко');
INSERT INTO public.cities VALUES (961, 30, 'Мураши');
INSERT INTO public.cities VALUES (965, 29, 'Мыски');
INSERT INTO public.cities VALUES (967, 84, 'Мышкин');
INSERT INTO public.cities VALUES (969, 46, 'Навашино');
INSERT INTO public.cities VALUES (970, 19, 'Наволоки');
INSERT INTO public.cities VALUES (971, 83, 'Надым');
INSERT INTO public.cities VALUES (972, 34, 'Назарово');
INSERT INTO public.cities VALUES (974, 49, 'Называевск');
INSERT INTO public.cities VALUES (976, 7, 'Нариманов');
INSERT INTO public.cities VALUES (978, 22, 'Нарткала');
INSERT INTO public.cities VALUES (981, 55, 'Невель');
INSERT INTO public.cities VALUES (982, 62, 'Невельск');
INSERT INTO public.cities VALUES (983, 66, 'Невинномысск');
INSERT INTO public.cities VALUES (984, 63, 'Невьянск');
INSERT INTO public.cities VALUES (985, 69, 'Нелидово');
INSERT INTO public.cities VALUES (986, 23, 'Неман');
INSERT INTO public.cities VALUES (987, 32, 'Нерехта');
INSERT INTO public.cities VALUES (988, 18, 'Нерчинск');
INSERT INTO public.cities VALUES (990, 23, 'Нестеров');
INSERT INTO public.cities VALUES (991, 58, 'Нефтегорск');
INSERT INTO public.cities VALUES (993, 66, 'Нефтекумск');
INSERT INTO public.cities VALUES (995, 32, 'Нея');
INSERT INTO public.cities VALUES (998, 21, 'Нижнеудинск');
INSERT INTO public.cities VALUES (999, 63, 'Нижние Серги');
INSERT INTO public.cities VALUES (1000, 52, 'Нижний Ломов');
INSERT INTO public.cities VALUES (1003, 63, 'Нижняя Салда');
INSERT INTO public.cities VALUES (1004, 63, 'Нижняя Тура');
INSERT INTO public.cities VALUES (1005, 13, 'Николаевск');
INSERT INTO public.cities VALUES (1006, 76, 'Николаевск-на-Амуре');
INSERT INTO public.cities VALUES (1007, 14, 'Никольск (Вологодская область)');
INSERT INTO public.cities VALUES (1008, 52, 'Никольск (Пензенская область)');
INSERT INTO public.cities VALUES (1010, 37, 'Новая Ладога');
INSERT INTO public.cities VALUES (1011, 63, 'Новая Ляля');
INSERT INTO public.cities VALUES (1012, 66, 'Новоалександровск');
INSERT INTO public.cities VALUES (1014, 13, 'Новоаннинский');
INSERT INTO public.cities VALUES (1015, 15, 'Нововоронеж');
INSERT INTO public.cities VALUES (1016, 6, 'Новодвинск');
INSERT INTO public.cities VALUES (1017, 10, 'Новозыбков');
INSERT INTO public.cities VALUES (1018, 33, 'Новокубанск');
INSERT INTO public.cities VALUES (1021, 57, 'Новомичуринск');
INSERT INTO public.cities VALUES (1023, 66, 'Новопавловск');
INSERT INTO public.cities VALUES (1024, 55, 'Новоржев');
INSERT INTO public.cities VALUES (1027, 51, 'Новосиль');
INSERT INTO public.cities VALUES (1028, 55, 'Новосокольники');
INSERT INTO public.cities VALUES (1030, 60, 'Новоузенск');
INSERT INTO public.cities VALUES (1031, 75, 'Новоульяновск');
INSERT INTO public.cities VALUES (1033, 15, 'Новохопёрск');
INSERT INTO public.cities VALUES (1040, 30, 'Нолинск');
INSERT INTO public.cities VALUES (1043, 68, 'Нурлат');
INSERT INTO public.cities VALUES (1044, 53, 'Нытва');
INSERT INTO public.cities VALUES (1045, 61, 'Нюрба');
INSERT INTO public.cities VALUES (1046, 78, 'Нягань');
INSERT INTO public.cities VALUES (1047, 79, 'Нязепетровск');
INSERT INTO public.cities VALUES (1048, 6, 'Няндома');
INSERT INTO public.cities VALUES (1049, 17, 'Облучье');
INSERT INTO public.cities VALUES (1051, 36, 'Обоянь');
INSERT INTO public.cities VALUES (1052, 48, 'Обь');
INSERT INTO public.cities VALUES (1054, 43, 'Ожерелье');
INSERT INTO public.cities VALUES (1058, 58, 'Октябрьск');
INSERT INTO public.cities VALUES (1060, 47, 'Окуловка');
INSERT INTO public.cities VALUES (1061, 61, 'Олёкминск');
INSERT INTO public.cities VALUES (1062, 44, 'Оленегорск');
INSERT INTO public.cities VALUES (1063, 28, 'Олонец');
INSERT INTO public.cities VALUES (1065, 30, 'Омутнинск');
INSERT INTO public.cities VALUES (1066, 6, 'Онега');
INSERT INTO public.cities VALUES (1067, 55, 'Опочка');
INSERT INTO public.cities VALUES (1071, 30, 'Орлов');
INSERT INTO public.cities VALUES (1073, 53, 'Оса');
INSERT INTO public.cities VALUES (1074, 29, 'Осинники');
INSERT INTO public.cities VALUES (1075, 69, 'Осташков');
INSERT INTO public.cities VALUES (1076, 55, 'Остров');
INSERT INTO public.cities VALUES (1077, 44, 'Островной');
INSERT INTO public.cities VALUES (1078, 15, 'Острогожск');
INSERT INTO public.cities VALUES (1080, 58, 'Отрадный');
INSERT INTO public.cities VALUES (1081, 62, 'Оха');
INSERT INTO public.cities VALUES (1082, 53, 'Оханск');
INSERT INTO public.cities VALUES (1083, 53, 'Очёр');
INSERT INTO public.cities VALUES (1087, 13, 'Палласовка');
INSERT INTO public.cities VALUES (1088, 54, 'Партизанск');
INSERT INTO public.cities VALUES (1089, 82, 'Певек');
INSERT INTO public.cities VALUES (1091, 46, 'Первомайск');
INSERT INTO public.cities VALUES (1093, 46, 'Перевоз');
INSERT INTO public.cities VALUES (1094, 43, 'Пересвет');
INSERT INTO public.cities VALUES (1097, 47, 'Пестово');
INSERT INTO public.cities VALUES (1098, 13, 'Петров Вал');
INSERT INTO public.cities VALUES (1099, 60, 'Петровск');
INSERT INTO public.cities VALUES (1100, 18, 'Петровск-Забайкальский');
INSERT INTO public.cities VALUES (1103, 35, 'Петухово');
INSERT INTO public.cities VALUES (1104, 12, 'Петушки');
INSERT INTO public.cities VALUES (1106, 55, 'Печоры');
INSERT INTO public.cities VALUES (1108, 23, 'Пионерский');
INSERT INTO public.cities VALUES (1109, 28, 'Питкяранта');
INSERT INTO public.cities VALUES (1110, 19, 'Плёс');
INSERT INTO public.cities VALUES (1111, 71, 'Плавск');
INSERT INTO public.cities VALUES (1112, 79, 'Пласт');
INSERT INTO public.cities VALUES (1113, 15, 'Поворино');
INSERT INTO public.cities VALUES (1116, 78, 'Покачи');
INSERT INTO public.cities VALUES (1117, 12, 'Покров');
INSERT INTO public.cities VALUES (1118, 61, 'Покровск');
INSERT INTO public.cities VALUES (1120, 23, 'Полесск');
INSERT INTO public.cities VALUES (1121, 29, 'Полысаево');
INSERT INTO public.cities VALUES (1122, 44, 'Полярные Зори');
INSERT INTO public.cities VALUES (1123, 44, 'Полярный');
INSERT INTO public.cities VALUES (1124, 62, 'Поронайск');
INSERT INTO public.cities VALUES (1125, 55, 'Порхов');
INSERT INTO public.cities VALUES (1126, 58, 'Похвистнево');
INSERT INTO public.cities VALUES (1127, 10, 'Почеп');
INSERT INTO public.cities VALUES (1128, 65, 'Починок');
INSERT INTO public.cities VALUES (1129, 84, 'Пошехонье');
INSERT INTO public.cities VALUES (1130, 23, 'Правдинск');
INSERT INTO public.cities VALUES (1131, 19, 'Приволжск');
INSERT INTO public.cities VALUES (1132, 23, 'Приморск (Калининградская область)');
INSERT INTO public.cities VALUES (1133, 37, 'Приморск (Ленинградская область)');
INSERT INTO public.cities VALUES (1134, 33, 'Приморско-Ахтарск');
INSERT INTO public.cities VALUES (1137, 56, 'Пролетарск');
INSERT INTO public.cities VALUES (1141, 60, 'Пугачёв');
INSERT INTO public.cities VALUES (1142, 28, 'Пудож');
INSERT INTO public.cities VALUES (1143, 55, 'Пустошка');
INSERT INTO public.cities VALUES (1144, 19, 'Пучеж');
INSERT INTO public.cities VALUES (1147, 55, 'Пыталово');
INSERT INTO public.cities VALUES (1148, 78, 'Пыть-Ях');
INSERT INTO public.cities VALUES (1150, 12, 'Радужный (Владимирская область)');
INSERT INTO public.cities VALUES (1151, 78, 'Радужный (Ханты-Мансийский АО - Югра)');
INSERT INTO public.cities VALUES (1152, 5, 'Райчихинск');
INSERT INTO public.cities VALUES (1154, 67, 'Рассказово');
INSERT INTO public.cities VALUES (1156, 63, 'Реж');
INSERT INTO public.cities VALUES (1159, 19, 'Родники');
INSERT INTO public.cities VALUES (1160, 65, 'Рославль');
INSERT INTO public.cities VALUES (1162, 84, 'Ростов');
INSERT INTO public.cities VALUES (1165, 60, 'Ртищево');
INSERT INTO public.cities VALUES (1167, 65, 'Рудня');
INSERT INTO public.cities VALUES (1168, 43, 'Руза');
INSERT INTO public.cities VALUES (1171, 57, 'Рыбное');
INSERT INTO public.cities VALUES (1172, 36, 'Рыльск');
INSERT INTO public.cities VALUES (1173, 57, 'Ряжск');
INSERT INTO public.cities VALUES (1176, 29, 'Салаир');
INSERT INTO public.cities VALUES (1177, 83, 'Салехард');
INSERT INTO public.cities VALUES (1185, 57, 'Сасово');
INSERT INTO public.cities VALUES (1187, 65, 'Сафоново');
INSERT INTO public.cities VALUES (1188, 77, 'Саяногорск');
INSERT INTO public.cities VALUES (1189, 21, 'Саянск');
INSERT INTO public.cities VALUES (1190, 23, 'Светлогорск');
INSERT INTO public.cities VALUES (1191, 66, 'Светлоград');
INSERT INTO public.cities VALUES (1192, 23, 'Светлый');
INSERT INTO public.cities VALUES (1194, 21, 'Свирск');
INSERT INTO public.cities VALUES (1196, 55, 'Себеж');
INSERT INTO public.cities VALUES (1197, 62, 'Северо-Курильск');
INSERT INTO public.cities VALUES (1201, 63, 'Североуральск');
INSERT INTO public.cities VALUES (1203, 10, 'Севск');
INSERT INTO public.cities VALUES (1204, 28, 'Сегежа');
INSERT INTO public.cities VALUES (1205, 10, 'Сельцо');
INSERT INTO public.cities VALUES (1206, 46, 'Семёнов');
INSERT INTO public.cities VALUES (1207, 56, 'Семикаракорск');
INSERT INTO public.cities VALUES (1208, 15, 'Семилуки');
INSERT INTO public.cities VALUES (1209, 75, 'Сенгилей');
INSERT INTO public.cities VALUES (1210, 13, 'Серафимович');
INSERT INTO public.cities VALUES (1211, 46, 'Сергач');
INSERT INTO public.cities VALUES (1213, 52, 'Сердобск');
INSERT INTO public.cities VALUES (1217, 8, 'Сибай');
INSERT INTO public.cities VALUES (1218, 79, 'Сим');
INSERT INTO public.cities VALUES (1219, 5, 'Сковородино');
INSERT INTO public.cities VALUES (1220, 57, 'Скопин');
INSERT INTO public.cities VALUES (1221, 4, 'Славгород');
INSERT INTO public.cities VALUES (1222, 23, 'Славск');
INSERT INTO public.cities VALUES (1223, 33, 'Славянск-на-Кубани');
INSERT INTO public.cities VALUES (1225, 30, 'Слободской');
INSERT INTO public.cities VALUES (1226, 21, 'Слюдянка');
INSERT INTO public.cities VALUES (1229, 44, 'Снежногорск');
INSERT INTO public.cities VALUES (1230, 12, 'Собинка');
INSERT INTO public.cities VALUES (1232, 30, 'Советск (Кировская область)');
INSERT INTO public.cities VALUES (1233, 71, 'Советск (Тульская область)');
INSERT INTO public.cities VALUES (1234, 76, 'Советская Гавань');
INSERT INTO public.cities VALUES (1235, 78, 'Советский');
INSERT INTO public.cities VALUES (1237, 32, 'Солигалич');
INSERT INTO public.cities VALUES (1240, 50, 'Соль-Илецк');
INSERT INTO public.cities VALUES (1241, 6, 'Сольвычегодск');
INSERT INTO public.cities VALUES (1242, 47, 'Сольцы');
INSERT INTO public.cities VALUES (1243, 50, 'Сорочинск');
INSERT INTO public.cities VALUES (1244, 77, 'Сорск');
INSERT INTO public.cities VALUES (1245, 28, 'Сортавала');
INSERT INTO public.cities VALUES (1246, 25, 'Сосенский');
INSERT INTO public.cities VALUES (1247, 30, 'Сосновка');
INSERT INTO public.cities VALUES (1248, 34, 'Сосновоборск');
INSERT INTO public.cities VALUES (1250, 31, 'Сосногорск');
INSERT INTO public.cities VALUES (1252, 25, 'Спас-Деменск');
INSERT INTO public.cities VALUES (1253, 57, 'Спас-Клепики');
INSERT INTO public.cities VALUES (1254, 52, 'Спасск');
INSERT INTO public.cities VALUES (1255, 54, 'Спасск-Дальний');
INSERT INTO public.cities VALUES (1256, 57, 'Спасск-Рязанский');
INSERT INTO public.cities VALUES (1257, 61, 'Среднеколымск');
INSERT INTO public.cities VALUES (1258, 63, 'Среднеуральск');
INSERT INTO public.cities VALUES (1259, 18, 'Сретенск');
INSERT INTO public.cities VALUES (1263, 69, 'Старица');
INSERT INTO public.cities VALUES (1264, 10, 'Стародуб');
INSERT INTO public.cities VALUES (1267, 70, 'Стрежевой');
INSERT INTO public.cities VALUES (1268, 9, 'Строитель');
INSERT INTO public.cities VALUES (1269, 12, 'Струнино');
INSERT INTO public.cities VALUES (1271, 71, 'Суворов');
INSERT INTO public.cities VALUES (1272, 36, 'Суджа');
INSERT INTO public.cities VALUES (1273, 12, 'Судогда');
INSERT INTO public.cities VALUES (1274, 12, 'Суздаль');
INSERT INTO public.cities VALUES (1275, 28, 'Суоярви');
INSERT INTO public.cities VALUES (1276, 10, 'Сураж');
INSERT INTO public.cities VALUES (1278, 13, 'Суровикино');
INSERT INTO public.cities VALUES (1279, 52, 'Сурск');
INSERT INTO public.cities VALUES (1280, 39, 'Сусуман');
INSERT INTO public.cities VALUES (1281, 25, 'Сухиничи');
INSERT INTO public.cities VALUES (1282, 63, 'Сухой Лог');
INSERT INTO public.cities VALUES (1285, 63, 'Сысерть');
INSERT INTO public.cities VALUES (1286, 65, 'Сычёвка');
INSERT INTO public.cities VALUES (1288, 63, 'Тавда');
INSERT INTO public.cities VALUES (1290, 29, 'Тайга');
INSERT INTO public.cities VALUES (1291, 21, 'Тайшет');
INSERT INTO public.cities VALUES (1292, 43, 'Талдом');
INSERT INTO public.cities VALUES (1293, 63, 'Талица');
INSERT INTO public.cities VALUES (1295, 49, 'Тара');
INSERT INTO public.cities VALUES (1296, 83, 'Тарко-Сале');
INSERT INTO public.cities VALUES (1297, 25, 'Таруса');
INSERT INTO public.cities VALUES (1298, 48, 'Татарск');
INSERT INTO public.cities VALUES (1299, 29, 'Таштагол');
INSERT INTO public.cities VALUES (1301, 27, 'Теберда');
INSERT INTO public.cities VALUES (1302, 19, 'Тейково');
INSERT INTO public.cities VALUES (1303, 41, 'Темников');
INSERT INTO public.cities VALUES (1304, 33, 'Темрюк');
INSERT INTO public.cities VALUES (1305, 22, 'Терек');
INSERT INTO public.cities VALUES (1306, 68, 'Тетюши');
INSERT INTO public.cities VALUES (1307, 33, 'Тимашевск');
INSERT INTO public.cities VALUES (1311, 48, 'Тогучин');
INSERT INTO public.cities VALUES (1313, 62, 'Томари');
INSERT INTO public.cities VALUES (1314, 61, 'Томмот');
INSERT INTO public.cities VALUES (1316, 29, 'Топки');
INSERT INTO public.cities VALUES (1317, 69, 'Торжок');
INSERT INTO public.cities VALUES (1318, 69, 'Торопец');
INSERT INTO public.cities VALUES (1320, 14, 'Тотьма');
INSERT INTO public.cities VALUES (1321, 79, 'Трёхгорный');
INSERT INTO public.cities VALUES (1323, 10, 'Трубчевск');
INSERT INTO public.cities VALUES (1325, 8, 'Туймазы');
INSERT INTO public.cities VALUES (1327, 21, 'Тулун');
INSERT INTO public.cities VALUES (1328, 72, 'Туран');
INSERT INTO public.cities VALUES (1329, 63, 'Туринск');
INSERT INTO public.cities VALUES (1330, 84, 'Тутаев');
INSERT INTO public.cities VALUES (1331, 5, 'Тында');
INSERT INTO public.cities VALUES (1332, 22, 'Тырныауз');
INSERT INTO public.cities VALUES (1333, 49, 'Тюкалинск');
INSERT INTO public.cities VALUES (1335, 67, 'Уварово');
INSERT INTO public.cities VALUES (1336, 62, 'Углегорск');
INSERT INTO public.cities VALUES (1337, 84, 'Углич');
INSERT INTO public.cities VALUES (1338, 61, 'Удачный');
INSERT INTO public.cities VALUES (1339, 69, 'Удомля');
INSERT INTO public.cities VALUES (1340, 34, 'Ужур');
INSERT INTO public.cities VALUES (1344, 10, 'Унеча');
INSERT INTO public.cities VALUES (1345, 78, 'Урай');
INSERT INTO public.cities VALUES (1346, 46, 'Урень');
INSERT INTO public.cities VALUES (1347, 30, 'Уржум');
INSERT INTO public.cities VALUES (1349, 13, 'Урюпинск');
INSERT INTO public.cities VALUES (1350, 31, 'Усинск');
INSERT INTO public.cities VALUES (1351, 38, 'Усмань');
INSERT INTO public.cities VALUES (1352, 53, 'Усолье');
INSERT INTO public.cities VALUES (1353, 21, 'Усолье-Сибирское');
INSERT INTO public.cities VALUES (1355, 27, 'Усть-Джегута');
INSERT INTO public.cities VALUES (1357, 79, 'Усть-Катав');
INSERT INTO public.cities VALUES (1358, 21, 'Усть-Кут');
INSERT INTO public.cities VALUES (1359, 33, 'Усть-Лабинск');
INSERT INTO public.cities VALUES (1360, 14, 'Устюжна');
INSERT INTO public.cities VALUES (1363, 8, 'Учалы');
INSERT INTO public.cities VALUES (1364, 34, 'Уяр');
INSERT INTO public.cities VALUES (1365, 36, 'Фатеж');
INSERT INTO public.cities VALUES (1366, 10, 'Фокино (Брянская область)');
INSERT INTO public.cities VALUES (1367, 54, 'Фокино (Приморский край)\n');
INSERT INTO public.cities VALUES (1368, 13, 'Фролово');
INSERT INTO public.cities VALUES (1370, 19, 'Фурманов');
INSERT INTO public.cities VALUES (1372, 33, 'Хадыженск');
INSERT INTO public.cities VALUES (1374, 7, 'Харабали');
INSERT INTO public.cities VALUES (1375, 14, 'Харовск');
INSERT INTO public.cities VALUES (1377, 60, 'Хвалынск');
INSERT INTO public.cities VALUES (1378, 18, 'Хилок');
INSERT INTO public.cities VALUES (1380, 47, 'Холм');
INSERT INTO public.cities VALUES (1381, 62, 'Холмск');
INSERT INTO public.cities VALUES (1382, 43, 'Хотьково');
INSERT INTO public.cities VALUES (1383, 81, 'Цивильск');
INSERT INTO public.cities VALUES (1384, 56, 'Цимлянск');
INSERT INTO public.cities VALUES (1385, 53, 'Чёрмоз');
INSERT INTO public.cities VALUES (1386, 72, 'Чадан');
INSERT INTO public.cities VALUES (1389, 38, 'Чаплыгин');
INSERT INTO public.cities VALUES (1390, 79, 'Чебаркуль');
INSERT INTO public.cities VALUES (1392, 22, 'Чегем');
INSERT INTO public.cities VALUES (1393, 71, 'Чекалин');
INSERT INTO public.cities VALUES (1395, 53, 'Чердынь');
INSERT INTO public.cities VALUES (1396, 21, 'Черемхово');
INSERT INTO public.cities VALUES (1397, 48, 'Черепаново');
INSERT INTO public.cities VALUES (1402, 53, 'Чернушка');
INSERT INTO public.cities VALUES (1403, 23, 'Черняховск');
INSERT INTO public.cities VALUES (1405, 68, 'Чистополь');
INSERT INTO public.cities VALUES (1407, 46, 'Чкаловск');
INSERT INTO public.cities VALUES (1408, 47, 'Чудово');
INSERT INTO public.cities VALUES (1409, 48, 'Чулым');
INSERT INTO public.cities VALUES (1410, 53, 'Чусовой');
INSERT INTO public.cities VALUES (1411, 32, 'Чухлома');
INSERT INTO public.cities VALUES (1412, 72, 'Шагонар');
INSERT INTO public.cities VALUES (1414, 80, 'Шали');
INSERT INTO public.cities VALUES (1415, 34, 'Шарыпово');
INSERT INTO public.cities VALUES (1416, 32, 'Шарья');
INSERT INTO public.cities VALUES (1418, 62, 'Шахтёрск');
INSERT INTO public.cities VALUES (1420, 46, 'Шахунья');
INSERT INTO public.cities VALUES (1421, 57, 'Шацк');
INSERT INTO public.cities VALUES (1423, 21, 'Шелехов');
INSERT INTO public.cities VALUES (1424, 6, 'Шенкурск');
INSERT INTO public.cities VALUES (1425, 18, 'Шилка');
INSERT INTO public.cities VALUES (1426, 5, 'Шимановск');
INSERT INTO public.cities VALUES (1427, 60, 'Шиханы');
INSERT INTO public.cities VALUES (1429, 81, 'Шумерля');
INSERT INTO public.cities VALUES (1430, 35, 'Шумиха');
INSERT INTO public.cities VALUES (1432, 71, 'Щёкино');
INSERT INTO public.cities VALUES (1434, 36, 'Щигры');
INSERT INTO public.cities VALUES (1435, 35, 'Щучье');
INSERT INTO public.cities VALUES (1441, 15, 'Эртиль');
INSERT INTO public.cities VALUES (1443, 78, 'Югорск');
INSERT INTO public.cities VALUES (1444, 19, 'Южа');
INSERT INTO public.cities VALUES (1446, 16, 'Южно-Сухокумск');
INSERT INTO public.cities VALUES (1447, 79, 'Южноуральск');
INSERT INTO public.cities VALUES (1449, 12, 'Юрьев-Польский');
INSERT INTO public.cities VALUES (1450, 19, 'Юрьевец');
INSERT INTO public.cities VALUES (1451, 79, 'Юрюзань');
INSERT INTO public.cities VALUES (1452, 25, 'Юхнов');
INSERT INTO public.cities VALUES (1453, 81, 'Ядрин');
INSERT INTO public.cities VALUES (1455, 73, 'Ялуторовск');
INSERT INTO public.cities VALUES (1456, 8, 'Янаул');
INSERT INTO public.cities VALUES (1457, 30, 'Яранск');
INSERT INTO public.cities VALUES (1458, 4, 'Яровое');
INSERT INTO public.cities VALUES (1460, 65, 'Ярцево');
INSERT INTO public.cities VALUES (1461, 71, 'Ясногорск');
INSERT INTO public.cities VALUES (1462, 50, 'Ясный');
INSERT INTO public.cities VALUES (1463, 43, 'Яхрома');
INSERT INTO public.cities VALUES (1467, 86, 'Алупка');
INSERT INTO public.cities VALUES (1468, 86, 'Алушта');
INSERT INTO public.cities VALUES (1469, 86, 'Армянск\r\n');
INSERT INTO public.cities VALUES (1470, 86, 'Бахчисарай');
INSERT INTO public.cities VALUES (1471, 86, 'Белогорск (Крым)');
INSERT INTO public.cities VALUES (1472, 86, 'Джанкой');
INSERT INTO public.cities VALUES (1473, 86, 'Евпатория');
INSERT INTO public.cities VALUES (1474, 87, 'Инкерман');
INSERT INTO public.cities VALUES (1475, 68, 'Иннополис');
INSERT INTO public.cities VALUES (1476, 86, 'Керчь');
INSERT INTO public.cities VALUES (1477, 23, 'Краснознаменск (Калининградская область)');
INSERT INTO public.cities VALUES (1478, 86, 'Красноперекопск');
INSERT INTO public.cities VALUES (1479, 6, 'Мирный (Архангельская область)');
INSERT INTO public.cities VALUES (1480, 23, 'Озерск (Калининградская область)');
INSERT INTO public.cities VALUES (1481, 86, 'Саки');
INSERT INTO public.cities VALUES (1482, 87, 'Севастополь');
INSERT INTO public.cities VALUES (1483, 86, 'Симферополь');
INSERT INTO public.cities VALUES (1484, 86, 'Старый Крым');
INSERT INTO public.cities VALUES (1485, 86, 'Судак');
INSERT INTO public.cities VALUES (1486, 5, 'Циолковский');
INSERT INTO public.cities VALUES (1487, 86, 'Феодосия');
INSERT INTO public.cities VALUES (1488, 86, 'Щелкино');
INSERT INTO public.cities VALUES (1489, 86, 'Ялта');


--
-- TOC entry 3379 (class 0 OID 16468)
-- Dependencies: 217
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.districts VALUES (2, 'Центральный федеральный округ');
INSERT INTO public.districts VALUES (3, 'Южный федеральный округ');
INSERT INTO public.districts VALUES (4, 'Северо-западный федеральный округ');
INSERT INTO public.districts VALUES (5, 'Дальневосточный федеральный округ');
INSERT INTO public.districts VALUES (6, 'Сибирский федеральный округ');
INSERT INTO public.districts VALUES (7, 'Уральский федеральный округ');
INSERT INTO public.districts VALUES (8, 'Приволжский федеральный округ');
INSERT INTO public.districts VALUES (9, 'Северо-Кавказский федеральный округ');


--
-- TOC entry 3380 (class 0 OID 16473)
-- Dependencies: 218
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.regions VALUES (2, 3, 'Адыгея');
INSERT INTO public.regions VALUES (3, 6, 'Алтай');
INSERT INTO public.regions VALUES (4, 6, 'Алтайский край');
INSERT INTO public.regions VALUES (5, 5, 'Амурская область');
INSERT INTO public.regions VALUES (6, 4, 'Архангельская область');
INSERT INTO public.regions VALUES (7, 3, 'Астраханская область');
INSERT INTO public.regions VALUES (8, 8, 'Башкортостан');
INSERT INTO public.regions VALUES (9, 2, 'Белгородская область');
INSERT INTO public.regions VALUES (10, 2, 'Брянская область');
INSERT INTO public.regions VALUES (11, 6, 'Бурятия');
INSERT INTO public.regions VALUES (12, 2, 'Владимирская область');
INSERT INTO public.regions VALUES (13, 3, 'Волгоградская область');
INSERT INTO public.regions VALUES (14, 4, 'Вологодская область');
INSERT INTO public.regions VALUES (15, 2, 'Воронежская область');
INSERT INTO public.regions VALUES (16, 9, 'Дагестан');
INSERT INTO public.regions VALUES (17, 5, 'Еврейская АО');
INSERT INTO public.regions VALUES (18, 6, 'Забайкальский край');
INSERT INTO public.regions VALUES (19, 2, 'Ивановская область');
INSERT INTO public.regions VALUES (20, 9, 'Ингушетия');
INSERT INTO public.regions VALUES (21, 6, 'Иркутская область');
INSERT INTO public.regions VALUES (22, 9, 'Кабардино-Балкария');
INSERT INTO public.regions VALUES (23, 4, 'Калининградская область');
INSERT INTO public.regions VALUES (24, 3, 'Калмыкия');
INSERT INTO public.regions VALUES (25, 2, 'Калужская область');
INSERT INTO public.regions VALUES (26, 5, 'Камчатский край');
INSERT INTO public.regions VALUES (27, 9, 'Карачаево-Черкессия');
INSERT INTO public.regions VALUES (28, 4, 'Карелия');
INSERT INTO public.regions VALUES (29, 6, 'Кемеровская область');
INSERT INTO public.regions VALUES (30, 8, 'Кировская область');
INSERT INTO public.regions VALUES (31, 4, 'Коми');
INSERT INTO public.regions VALUES (32, 2, 'Костромская область');
INSERT INTO public.regions VALUES (33, 3, 'Краснодарский край');
INSERT INTO public.regions VALUES (34, 6, 'Красноярский край');
INSERT INTO public.regions VALUES (35, 7, 'Курганская область');
INSERT INTO public.regions VALUES (36, 2, 'Курская область');
INSERT INTO public.regions VALUES (37, 4, 'Ленинградская область');
INSERT INTO public.regions VALUES (38, 2, 'Липецкая область');
INSERT INTO public.regions VALUES (39, 5, 'Магаданская область');
INSERT INTO public.regions VALUES (40, 8, 'Марий Эл');
INSERT INTO public.regions VALUES (41, 8, 'Мордовия');
INSERT INTO public.regions VALUES (42, 2, 'Москва');
INSERT INTO public.regions VALUES (43, 2, 'Московская область');
INSERT INTO public.regions VALUES (44, 4, 'Мурманская область');
INSERT INTO public.regions VALUES (45, 4, 'Ненецкий АО');
INSERT INTO public.regions VALUES (46, 8, 'Нижегородская область');
INSERT INTO public.regions VALUES (47, 4, 'Новгородская область');
INSERT INTO public.regions VALUES (48, 6, 'Новосибирская область');
INSERT INTO public.regions VALUES (49, 6, 'Омская область');
INSERT INTO public.regions VALUES (50, 8, 'Оренбургская область');
INSERT INTO public.regions VALUES (51, 2, 'Орловская область');
INSERT INTO public.regions VALUES (52, 8, 'Пензенская область');
INSERT INTO public.regions VALUES (53, 8, 'Пермский край');
INSERT INTO public.regions VALUES (54, 5, 'Приморский край');
INSERT INTO public.regions VALUES (55, 4, 'Псковская область');
INSERT INTO public.regions VALUES (56, 3, 'Ростовская область');
INSERT INTO public.regions VALUES (57, 2, 'Рязанская область');
INSERT INTO public.regions VALUES (58, 8, 'Самарская область');
INSERT INTO public.regions VALUES (59, 4, 'Санкт-Петербург');
INSERT INTO public.regions VALUES (60, 8, 'Саратовская область');
INSERT INTO public.regions VALUES (61, 5, 'Саха (Якутия)');
INSERT INTO public.regions VALUES (62, 5, 'Сахалинская область');
INSERT INTO public.regions VALUES (63, 7, 'Свердловская область');
INSERT INTO public.regions VALUES (64, 9, 'Северная Осетия - Алания');
INSERT INTO public.regions VALUES (65, 2, 'Смоленская область');
INSERT INTO public.regions VALUES (66, 9, 'Ставропольский край');
INSERT INTO public.regions VALUES (67, 2, 'Тамбовская область');
INSERT INTO public.regions VALUES (68, 8, 'Татарстан');
INSERT INTO public.regions VALUES (69, 2, 'Тверская область');
INSERT INTO public.regions VALUES (70, 6, 'Томская область');
INSERT INTO public.regions VALUES (71, 2, 'Тульская область');
INSERT INTO public.regions VALUES (72, 6, 'Тыва');
INSERT INTO public.regions VALUES (73, 7, 'Тюменская область');
INSERT INTO public.regions VALUES (74, 8, 'Удмуртия');
INSERT INTO public.regions VALUES (75, 8, 'Ульяновская область');
INSERT INTO public.regions VALUES (76, 5, 'Хабаровский край');
INSERT INTO public.regions VALUES (77, 6, 'Хакасия');
INSERT INTO public.regions VALUES (78, 7, 'Ханты-Мансийский АО - Югра');
INSERT INTO public.regions VALUES (79, 7, 'Челябинская область');
INSERT INTO public.regions VALUES (80, 9, 'Чеченская республика');
INSERT INTO public.regions VALUES (81, 8, 'Чувашская республика');
INSERT INTO public.regions VALUES (82, 5, 'Чукотский АО');
INSERT INTO public.regions VALUES (83, 7, 'Ямало-Ненецкий АО');
INSERT INTO public.regions VALUES (84, 2, 'Ярославская область');
INSERT INTO public.regions VALUES (86, 3, 'Крым');
INSERT INTO public.regions VALUES (87, 3, 'Севастополь');


--
-- TOC entry 3383 (class 0 OID 16521)
-- Dependencies: 221
-- Data for Name: universities; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.universities VALUES (24, 46, 'Воронежский государственный университет');
INSERT INTO public.universities VALUES (238, 283, 'Саратовский государственный университет генетики, биотехнологии и инженерии имени Н. И. Вавилова');
INSERT INTO public.universities VALUES (2, 3, 'Алтайский государственный технический университет им. И.И. Ползунова');
INSERT INTO public.universities VALUES (1, 1, 'Адыгейский государственный университет');
INSERT INTO public.universities VALUES (3, 3, 'Алтайский государственный университет');
INSERT INTO public.universities VALUES (6, 14, 'Астраханский государственный университет имени В.Н.Татищева');
INSERT INTO public.universities VALUES (7, 61, 'Байкальский государственный университет');
INSERT INTO public.universities VALUES (8, 366, 'ВОЕНМЕХ');
INSERT INTO public.universities VALUES (10, 24, 'Белгородский государственный национальный исследовательский университет');
INSERT INTO public.universities VALUES (11, 62, 'Братский государственный университет');
INSERT INTO public.universities VALUES (14, 29, 'Брянский государственный университет имени академика И.Г. Петровского');
INSERT INTO public.universities VALUES (15, 31, 'Бурятский государственный университет имени Доржи Банзарова');
INSERT INTO public.universities VALUES (16, 256, 'Владивостокский государственный университет');
INSERT INTO public.universities VALUES (17, 33, 'Владимирский государственный университет имени Александра Григорьевича и Николая Григорьевича Столетовых');
INSERT INTO public.universities VALUES (157, 87, 'Сыктывкарский государственный университет имени Питирима Сорокина');
INSERT INTO public.universities VALUES (159, 312, 'Тамбовский государственный университет имени Г.Р. Державина');
INSERT INTO public.universities VALUES (166, 322, 'Томский государственный университет систем управления и радиоэлектроники');
INSERT INTO public.universities VALUES (170, 329, 'Тюменский индустриальный университет');
INSERT INTO public.universities VALUES (176, 292, 'Уральский государственный юридический университет имени В.Ф. Яковлева');
INSERT INTO public.universities VALUES (180, 292, 'Уральский государственный экономический университет');
INSERT INTO public.universities VALUES (80, 365, 'Московский государственный гуманитарно-экономический университет');
INSERT INTO public.universities VALUES (82, 365, 'Московский государственный технический университет имени Н.Э.Баумана (национальный исследовательский университет)');
INSERT INTO public.universities VALUES (84, 365, 'Московский государственный университет геодезии и картографии');
INSERT INTO public.universities VALUES (86, 365, 'Российский биотехнологический университет (РОСБИОТЕХ)');
INSERT INTO public.universities VALUES (87, 365, 'Московский государственный университет технологий и управления имени К.Г. Разумовского (Первый казачий университет)');
INSERT INTO public.universities VALUES (88, 365, 'Российский государственный художественно-промышленный университет им. С.Г. Строганова');
INSERT INTO public.universities VALUES (94, 222, 'Нижегородский  государственный технический университет им. Р.Е. Алексеева');
INSERT INTO public.universities VALUES (183, 340, 'Хакасский государственный университет им. Н.Ф. Катанова');
INSERT INTO public.universities VALUES (184, 346, 'Челябинский государственный университет');
INSERT INTO public.universities VALUES (186, 355, 'Чеченский государственный университет имени Ахмата Абдулхамидовича Кадырова');
INSERT INTO public.universities VALUES (187, 55, 'Забайкальский государственный университет');
INSERT INTO public.universities VALUES (18, 39, 'Волгоградский государственный технический университет');
INSERT INTO public.universities VALUES (13, 29, 'Брянский государственный технический университет');
INSERT INTO public.universities VALUES (33, 365, 'Государственный университет управления');
INSERT INTO public.universities VALUES (35, 51, 'Дагестанский государственный технический университет');
INSERT INTO public.universities VALUES (36, 51, 'Дагестанский государственный университет');
INSERT INTO public.universities VALUES (37, 54, 'Приамурский государственный университет имени Шолом-Алейхема');
INSERT INTO public.universities VALUES (40, 57, 'Ивановский государственный университет');
INSERT INTO public.universities VALUES (41, 57, 'Ивановский государственный химико-технологический университет');
INSERT INTO public.universities VALUES (46, 61, 'Иркутский государственный университет');
INSERT INTO public.universities VALUES (47, 65, 'Кабардино-Балкарский государственный университет им. Х.М. Бербекова');
INSERT INTO public.universities VALUES (48, 314, 'Казанский государственный архитектурно-строительный университет');
INSERT INTO public.universities VALUES (118, 365, 'Российский государственный гуманитарный университет');
INSERT INTO public.universities VALUES (53, 70, 'Калужский государственный университет им. К.Э. Циолковского');
INSERT INTO public.universities VALUES (54, 72, 'Камчатский государственный университет имени Витуса Беринга');
INSERT INTO public.universities VALUES (32, 365, 'МИСИС');
INSERT INTO public.universities VALUES (188, 357, 'Чувашский государственный университет имени И.Н. Ульянова');
INSERT INTO public.universities VALUES (191, 346, 'Южно-Уральский государственный университет (национальный исследовательский университет)');
INSERT INTO public.universities VALUES (192, 262, 'Южный федеральный университет');
INSERT INTO public.universities VALUES (193, 362, 'Ярославский государственный технический университет');
INSERT INTO public.universities VALUES (194, 362, 'Ярославский государственный университет им. П.Г. Демидова');
INSERT INTO public.universities VALUES (195, 103, 'Сибирский федеральный университет');
INSERT INTO public.universities VALUES (109, 245, 'Пензенский государственный университет архитектуры и строительства');
INSERT INTO public.universities VALUES (112, 76, 'Петрозаводский государственный университет');
INSERT INTO public.universities VALUES (113, 278, 'Поволжский государственный университет сервиса');
INSERT INTO public.universities VALUES (114, 307, 'Пятигорский государственный университет');
INSERT INTO public.universities VALUES (115, 365, 'Российский экономический университет имени Г.В. Плеханова');
INSERT INTO public.universities VALUES (116, 365, 'Российский государственный геологоразведочный университет имени Серго Орджоникидзе');
INSERT INTO public.universities VALUES (117, 366, 'Российский государственный гидрометеорологический университет');
INSERT INTO public.universities VALUES (122, 365, 'Российский государственный университет туризма и сервиса');
INSERT INTO public.universities VALUES (119, 365, 'Российский государственный социальный университет');
INSERT INTO public.universities VALUES (123, 365, 'Российский университет дружбы народов имени Патриса Лумумбы');
INSERT INTO public.universities VALUES (131, 366, 'Национальный исследовательский университет ИТМО');
INSERT INTO public.universities VALUES (134, 366, 'Санкт-Петербургский государственный морской технический университет');
INSERT INTO public.universities VALUES (135, 366, 'Санкт-Петербургский политехнический университет Петра Великого');
INSERT INTO public.universities VALUES (55, 75, 'Северо-Кавказская государственная академия');
INSERT INTO public.universities VALUES (60, 91, 'Костромской государственный университет');
INSERT INTO public.universities VALUES (61, 92, 'Кубанский государственный технологический университет');
INSERT INTO public.universities VALUES (64, 109, 'Курганский государственный университет');
INSERT INTO public.universities VALUES (65, 111, 'Юго-Западный государственный университет');
INSERT INTO public.universities VALUES (66, 111, 'Курский государственный университет');
INSERT INTO public.universities VALUES (67, 143, 'Липецкий государственный технический университет');
INSERT INTO public.universities VALUES (68, 347, 'Магнитогорский государственный технический университет им. Г.И. Носова');
INSERT INTO public.universities VALUES (25, 31, 'Восточно-Сибирский государственный университет технологий и управления');
INSERT INTO public.universities VALUES (26, 366, 'Высшая школа народных искусств (академия)');
INSERT INTO public.universities VALUES (29, 2, 'Горно-Алтайский государственный университет');
INSERT INTO public.universities VALUES (30, 365, 'Государственный академический университет гуманитарных наук');
INSERT INTO public.universities VALUES (31, 365, 'Государственный институт русского языка им. А.С. Пушкина');
INSERT INTO public.universities VALUES (34, 355, 'Грозненский государственный нефтяной технический университет имени академика М.Д. Миллионщикова');
INSERT INTO public.universities VALUES (38, 262, 'Донской государственный технический университет');
INSERT INTO public.universities VALUES (39, 144, 'Елецкий государственный университет им. И.А. Бунина');
INSERT INTO public.universities VALUES (136, 366, 'Санкт-Петербургский государственный технологический институт (технический университет)');
INSERT INTO public.universities VALUES (137, 366, 'Санкт-Петербургский государственный университет аэрокосмического приборостроения');
INSERT INTO public.universities VALUES (138, 366, 'Санкт-Петербургский государственный университет промышленных технологий и дизайна');
INSERT INTO public.universities VALUES (139, 366, 'ЛЭТИ');
INSERT INTO public.universities VALUES (156, 93, 'СГУ');
INSERT INTO public.universities VALUES (140, 277, 'Самарский национальный исследовательский университет имени академика С.П. Королева');
INSERT INTO public.universities VALUES (161, 320, 'Тверской государственный университет');
INSERT INTO public.universities VALUES (144, 283, 'Саратовский государственный технический университет имени Гагарина Ю.А.');
INSERT INTO public.universities VALUES (145, 283, 'Саратовский национальный исследовательский государственный университет имени Н.Г. Чернышевского');
INSERT INTO public.universities VALUES (148, 302, 'Северо-Кавказский горно-металлургический институт (государственный технологический университет)');
INSERT INTO public.universities VALUES (149, 306, 'Северо-Кавказский федеральный университет');
INSERT INTO public.universities VALUES (150, 302, 'Северо-Осетинский государственный университет имени Коста Левановича Хетагурова');
INSERT INTO public.universities VALUES (152, 234, 'Сибирский государственный университет геосистем и технологий');
INSERT INTO public.universities VALUES (153, 103, 'Сибирский государственный университет науки и технологий имени академика М.Ф. Решетнева');
INSERT INTO public.universities VALUES (155, 304, 'Смоленский государственный университет');
INSERT INTO public.universities VALUES (158, 312, 'Тамбовский государственный технический университет');
INSERT INTO public.universities VALUES (160, 320, 'Тверской государственный технический университет');
INSERT INTO public.universities VALUES (22, 46, 'Воронежский государственный университет инженерных технологий');
INSERT INTO public.universities VALUES (23, 46, 'Воронежский государственный технический университет');
INSERT INTO public.universities VALUES (42, 57, 'Ивановский государственный энергетический университет имени В.И. Ленина');
INSERT INTO public.universities VALUES (43, 331, 'Ижевский государственный технический университет имени М.Т. Калашникова');
INSERT INTO public.universities VALUES (44, 60, 'Ингушский государственный университет');
INSERT INTO public.universities VALUES (45, 61, 'Иркутский национальный исследовательский технический университет');
INSERT INTO public.universities VALUES (70, 146, 'Поволжский государственный технологический университет');
INSERT INTO public.universities VALUES (74, 365, 'Московский авиационный институт (национальный исследовательский университет)');
INSERT INTO public.universities VALUES (75, 365, 'Московский автомобильно-дорожный государственный технический университет (МАДИ)');
INSERT INTO public.universities VALUES (9, 24, 'Белгородский государственный технологический университет им. В.Г. Шухова');
INSERT INTO public.universities VALUES (76, 365, 'Московский архитектурный институт (государственная академия)');
INSERT INTO public.universities VALUES (78, 365, 'Московский институт электронной техники');
INSERT INTO public.universities VALUES (79, 365, 'Московский государственный лингвистический университет');
INSERT INTO public.universities VALUES (81, 365, 'Национальный исследовательский Московский государственный строительный университет');
INSERT INTO public.universities VALUES (83, 365, 'СТАНКИН');
INSERT INTO public.universities VALUES (73, 365, 'Московский государственный юридический университет имени О.Е. Кутафина (МГЮА)');
INSERT INTO public.universities VALUES (77, 365, 'МИРЭА - Российский технологический университет');
INSERT INTO public.universities VALUES (90, 365, 'МЭИ');
INSERT INTO public.universities VALUES (162, 337, 'Тихоокеанский государственный университет');
INSERT INTO public.universities VALUES (163, 278, 'Тольяттинский государственный университет');
INSERT INTO public.universities VALUES (164, 322, 'Томский государственный архитектурно-строительный университет');
INSERT INTO public.universities VALUES (165, 322, 'Национальный исследовательский Томский государственный университет');
INSERT INTO public.universities VALUES (167, 322, 'Национальный исследовательский Томский политехнический университет');
INSERT INTO public.universities VALUES (168, 324, 'Тульский государственный университет');
INSERT INTO public.universities VALUES (169, 328, 'Тувинский государственный университет');
INSERT INTO public.universities VALUES (171, 329, 'Тюменский государственный университет');
INSERT INTO public.universities VALUES (172, 331, 'Удмуртский государственный университет');
INSERT INTO public.universities VALUES (173, 335, 'Ульяновский государственный технический университет');
INSERT INTO public.universities VALUES (174, 335, 'Ульяновский государственный университет');
INSERT INTO public.universities VALUES (175, 292, 'Уральский государственный архитектурно-художественный университет имени Н.С. Алфёрова');
INSERT INTO public.universities VALUES (96, 231, 'Новгородский государственный университет имени Ярослава Мудрого');
INSERT INTO public.universities VALUES (111, 249, 'федеральное государственное автономное образовательное учреждение высшего образования «Пермский государственный национальный исследовательский университет"');
INSERT INTO public.universities VALUES (85, 365, 'Российский государственный университет им. А.Н. Косыгина (Технологии. Дизайн. Искусство)');
INSERT INTO public.universities VALUES (89, 172, 'Московский физико-технический институт (национальный исследовательский университет)');
INSERT INTO public.universities VALUES (97, 234, 'Новосибирский государственный университет архитектуры, дизайна и искусств имени А.Д. Крячкова');
INSERT INTO public.universities VALUES (98, 234, 'Новосибирский государственный архитектурно-строительный университет (Сибстрин)');
INSERT INTO public.universities VALUES (102, 104, 'Заполярный государственный университет им. Н.М. Федоровского');
INSERT INTO public.universities VALUES (103, 237, 'Омский государственный технический университет');
INSERT INTO public.universities VALUES (105, 238, 'Оренбургский государственный университет');
INSERT INTO public.universities VALUES (107, 245, 'Пензенский государственный технологический университет');
INSERT INTO public.universities VALUES (110, 249, 'Пермский национальный исследовательский политехнический университет');
INSERT INTO public.universities VALUES (120, 67, 'Балтийский федеральный университет имени Иммануила Канта');
INSERT INTO public.universities VALUES (125, 262, 'Ростовский государственный экономический университет (РИНХ)');
INSERT INTO public.universities VALUES (126, 363, 'Рыбинский государственный авиационный технический университет имени П.А. Соловьева');
INSERT INTO public.universities VALUES (127, 275, 'Рязанский государственный радиотехнический университет имени В.Ф. Уткина');
INSERT INTO public.universities VALUES (128, 275, 'Рязанский государственный университет имени С.А. Есенина');
INSERT INTO public.universities VALUES (129, 366, 'Санкт-Петербургский государственный лесотехнический университет имени С.М. Кирова');
INSERT INTO public.universities VALUES (142, 277, 'Самарский государственный экономический университет');
INSERT INTO public.universities VALUES (143, 283, 'Саратовская государственная юридическая академия');
INSERT INTO public.universities VALUES (146, 291, 'Сахалинский государственный университет');
INSERT INTO public.universities VALUES (147, 145, 'Северо-Восточный государственный университет');
INSERT INTO public.universities VALUES (151, 237, 'Сибирский государственный автомобильно-дорожный университет (СибАДИ)');
INSERT INTO public.universities VALUES (154, 78, 'Сибирский государственный индустриальный университет');
INSERT INTO public.universities VALUES (91, 365, 'МИФИ');
INSERT INTO public.universities VALUES (196, 314, 'Казанский (Приволжский) федеральный университет');
INSERT INTO public.universities VALUES (199, 260, 'Псковский государственный университет');
INSERT INTO public.universities VALUES (201, 218, 'Мурманский арктический университет');
INSERT INTO public.universities VALUES (204, 362, 'Ярославский государственный аграрный университет');
INSERT INTO public.universities VALUES (207, 258, 'Приморский государственный аграрно-технологический университет');
INSERT INTO public.universities VALUES (209, 329, 'Государственный аграрный университет Северного Зауралья');
INSERT INTO public.universities VALUES (222, 17, 'Уфимский университет науки и технологий');
INSERT INTO public.universities VALUES (19, 39, 'Волгоградский государственный университет');
INSERT INTO public.universities VALUES (20, 44, 'Вологодский государственный университет');
INSERT INTO public.universities VALUES (223, 273, 'Донецкий государственный университет');
INSERT INTO public.universities VALUES (12, 29, 'Брянский государственный инженерно-технологический университет');
INSERT INTO public.universities VALUES (108, 245, 'Пензенский государственный университет');
INSERT INTO public.universities VALUES (99, 234, 'Новосибирский государственный технический университет');
INSERT INTO public.universities VALUES (100, 234, 'Новосибирский национальный исследовательский государственный университет');
INSERT INTO public.universities VALUES (101, 234, 'НИНХ');
INSERT INTO public.universities VALUES (104, 237, 'Омский государственный университет им. Ф.М. Достоевского');
INSERT INTO public.universities VALUES (95, 222, 'Национальный исследовательский Нижегородский государственный университет им. Н.И. Лобачевского');
INSERT INTO public.universities VALUES (121, 365, 'Российский государственный университет нефти и газа (национальный исследовательский университет) имени И.М. Губкина');
INSERT INTO public.universities VALUES (62, 92, 'Кубанский государственный университет');
INSERT INTO public.universities VALUES (5, 63, 'Ангарский государственный технический университет');
INSERT INTO public.universities VALUES (49, 314, 'Казанский национальный исследовательский технический университет им. А.Н.Туполева-КАИ');
INSERT INTO public.universities VALUES (50, 314, 'Казанский национальный исследовательский технологический университет');
INSERT INTO public.universities VALUES (51, 314, 'Казанский государственный энергетический университет');
INSERT INTO public.universities VALUES (52, 69, 'Калмыцкий государственный университет имени Б.Б. Городовикова');
INSERT INTO public.universities VALUES (56, 737, 'Карачаево-Черкесский государственный университет имени У.Д. Алиева');
INSERT INTO public.universities VALUES (57, 79, 'Кемеровский государственный университет');
INSERT INTO public.universities VALUES (58, 34, 'Ковровская государственная технологическая академия имени В.А. Дегтярева');
INSERT INTO public.universities VALUES (59, 338, 'Комсомольский-на-Амуре государственный университет');
INSERT INTO public.universities VALUES (63, 79, 'Кузбасский государственный технический университет имени Т.Ф. Горбачева');
INSERT INTO public.universities VALUES (69, 1, 'Майкопский государственный технологический университет');
INSERT INTO public.universities VALUES (71, 146, 'Марийский государственный университет');
INSERT INTO public.universities VALUES (72, 148, 'Национальный исследовательский Мордовский государственный университет им. Н.П.Огарева');
INSERT INTO public.universities VALUES (124, 365, 'Российский химико-технологический университет имени Д.И.Менделеева');
INSERT INTO public.universities VALUES (177, 292, 'Уральский государственный горный университет');
INSERT INTO public.universities VALUES (178, 292, 'Уральский государственный лесотехнический университет');
INSERT INTO public.universities VALUES (179, 292, 'Уральский федеральный университет имени первого Президента России Б.Н. Ельцина');
INSERT INTO public.universities VALUES (181, 17, 'Уфимский государственный нефтяной технический университет');
INSERT INTO public.universities VALUES (182, 88, 'Ухтинский государственный технический университет');
INSERT INTO public.universities VALUES (185, 43, 'Череповецкий государственный университет');
INSERT INTO public.universities VALUES (189, 345, 'Югорский государственный университет');
INSERT INTO public.universities VALUES (205, 57, 'Верхневолжский ГАУ');
INSERT INTO public.universities VALUES (190, 265, 'Южно-Российский государственный политехнический университет (НПИ) имени М.И. Платова');
INSERT INTO public.universities VALUES (197, 256, 'Дальневосточный федеральный университет');
INSERT INTO public.universities VALUES (198, 288, 'Северо-Восточный федеральный университет имени М.К. Аммосова');
INSERT INTO public.universities VALUES (200, 11, 'Северный (Арктический) федеральный университет имени М. В. Ломоносова');
INSERT INTO public.universities VALUES (202, 234, 'Новосибирский государственный аграрный университет');
INSERT INTO public.universities VALUES (203, 249, 'Пермский государственный аграрно-технологический университет имени академика Д.Н. Прянишникова');
INSERT INTO public.universities VALUES (206, 288, 'Арктический государственный институт культуры и искусств');
INSERT INTO public.universities VALUES (208, 39, 'Волгоградский государственный аграрный университет');
INSERT INTO public.universities VALUES (210, 313, 'Мичуринский государственный аграрный университет');
INSERT INTO public.universities VALUES (213, 343, 'Нижневартовский государственный университет');
INSERT INTO public.universities VALUES (221, 365, 'Московский политехнический университет');
INSERT INTO public.universities VALUES (224, 273, 'Донецкий национальный технический университет');
INSERT INTO public.universities VALUES (226, 273, 'Донецкая академия управления и государственной службы');
INSERT INTO public.universities VALUES (227, 273, 'Донецкий национальный университет экономики и торговли имени Михаила Туган-Барановского');
INSERT INTO public.universities VALUES (217, 180, 'Дубна');
INSERT INTO public.universities VALUES (214, 366, 'Санкт-Петербургский национальный исследовательский Академический университет имени Ж.И. Алферова Российской академии наук');
INSERT INTO public.universities VALUES (215, 57, 'Ивановский государственный политехнический университет');
INSERT INTO public.universities VALUES (216, 366, 'Санкт-Петербургский государственный экономический университет');
INSERT INTO public.universities VALUES (219, 1483, 'Крымский федеральный университет имени В.И.Вернадского');
INSERT INTO public.universities VALUES (220, 1482, 'Севастопольский государственный университет');
INSERT INTO public.universities VALUES (92, 222, 'Нижегородский государственный архитектурно-строительный университет');
INSERT INTO public.universities VALUES (93, 222, 'Нижегородский государственный лингвистический университет им. Н.А. Добролюбова');
INSERT INTO public.universities VALUES (21, 46, 'Воронежский государственный лесотехнический университет имени Г.Ф. Морозова');
INSERT INTO public.universities VALUES (212, 222, 'Нижегородский государственный агротехнологический университет');
INSERT INTO public.universities VALUES (130, 366, 'Санкт-Петербургская государственная художественно-промышленная академия имени А.Л. Штиглица');
INSERT INTO public.universities VALUES (132, 366, 'Санкт-Петербургский государственный архитектурно-строительный университет');
INSERT INTO public.universities VALUES (133, 366, 'Санкт-Петербургский горный университет императрицы Екатерины II');
INSERT INTO public.universities VALUES (141, 277, 'Самарский государственный технический университет');


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 220
-- Name: universities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.universities_id_seq', 238, true);


--
-- TOC entry 3228 (class 2606 OID 16487)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 16472)
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16477)
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 16528)
-- Name: universities universities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.universities
    ADD CONSTRAINT universities_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 16488)
-- Name: cities cities_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.regions(id);


--
-- TOC entry 3233 (class 2606 OID 16535)
-- Name: universities fk_city; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.universities
    ADD CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES public.cities(id) ON DELETE SET NULL;


--
-- TOC entry 3231 (class 2606 OID 16478)
-- Name: regions regions_district_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_district_id_fkey FOREIGN KEY (district_id) REFERENCES public.districts(id);


-- Completed on 2025-05-12 01:23:20 MSK

--
-- PostgreSQL database dump complete
--

