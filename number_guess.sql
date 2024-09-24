--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    games_id integer NOT NULL,
    user_id integer NOT NULL,
    secret_number integer NOT NULL,
    is_finished boolean DEFAULT false,
    try_number integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.games_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games games_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN games_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 909, false, 0);
INSERT INTO public.games VALUES (2, 5, 488, false, 0);
INSERT INTO public.games VALUES (3, 4, 795, false, 0);
INSERT INTO public.games VALUES (4, 4, 767, false, 0);
INSERT INTO public.games VALUES (5, 4, 792, false, 0);
INSERT INTO public.games VALUES (6, 6, 886, false, 0);
INSERT INTO public.games VALUES (7, 6, 706, false, 0);
INSERT INTO public.games VALUES (8, 7, 832, false, 0);
INSERT INTO public.games VALUES (9, 7, 558, false, 0);
INSERT INTO public.games VALUES (10, 6, 740, false, 0);
INSERT INTO public.games VALUES (11, 6, 102, false, 0);
INSERT INTO public.games VALUES (12, 6, 800, false, 0);
INSERT INTO public.games VALUES (13, 1, 375, false, 0);
INSERT INTO public.games VALUES (14, 8, 988, false, 0);
INSERT INTO public.games VALUES (15, 8, 651, false, 0);
INSERT INTO public.games VALUES (16, 9, 930, false, 0);
INSERT INTO public.games VALUES (17, 9, 390, false, 0);
INSERT INTO public.games VALUES (18, 8, 707, false, 0);
INSERT INTO public.games VALUES (19, 8, 217, false, 0);
INSERT INTO public.games VALUES (20, 8, 708, false, 0);
INSERT INTO public.games VALUES (21, 1, 912, false, 0);
INSERT INTO public.games VALUES (22, 1, 430, false, 0);
INSERT INTO public.games VALUES (23, 1, 686, false, 0);
INSERT INTO public.games VALUES (24, 1, 377, false, 0);
INSERT INTO public.games VALUES (25, 10, 226, false, 0);
INSERT INTO public.games VALUES (26, 10, 776, false, 0);
INSERT INTO public.games VALUES (27, 11, 964, false, 0);
INSERT INTO public.games VALUES (28, 11, 532, false, 0);
INSERT INTO public.games VALUES (29, 12, 31, false, 0);
INSERT INTO public.games VALUES (30, 12, 397, false, 0);
INSERT INTO public.games VALUES (31, 13, 253, false, 0);
INSERT INTO public.games VALUES (32, 13, 284, false, 0);
INSERT INTO public.games VALUES (33, 12, 164, false, 0);
INSERT INTO public.games VALUES (34, 12, 233, false, 0);
INSERT INTO public.games VALUES (35, 12, 973, false, 0);
INSERT INTO public.games VALUES (36, 1, 724, false, 0);
INSERT INTO public.games VALUES (37, 14, 235, false, 0);
INSERT INTO public.games VALUES (38, 14, 238, false, 0);
INSERT INTO public.games VALUES (39, 15, 997, false, 0);
INSERT INTO public.games VALUES (40, 1, 340, false, 0);
INSERT INTO public.games VALUES (41, 15, 206, false, 0);
INSERT INTO public.games VALUES (42, 14, 418, false, 0);
INSERT INTO public.games VALUES (43, 14, 436, false, 0);
INSERT INTO public.games VALUES (44, 14, 577, false, 0);
INSERT INTO public.games VALUES (45, 16, 359, false, 0);
INSERT INTO public.games VALUES (46, 16, 780, false, 0);
INSERT INTO public.games VALUES (47, 17, 999, false, 0);
INSERT INTO public.games VALUES (48, 17, 518, false, 0);
INSERT INTO public.games VALUES (49, 16, 385, false, 0);
INSERT INTO public.games VALUES (50, 16, 168, false, 0);
INSERT INTO public.games VALUES (51, 16, 51, false, 0);
INSERT INTO public.games VALUES (52, 1, 418, false, 0);
INSERT INTO public.games VALUES (53, 1, 946, false, 0);
INSERT INTO public.games VALUES (54, 1, 114, false, 0);
INSERT INTO public.games VALUES (55, 1, 516, false, 6);
INSERT INTO public.games VALUES (68, 22, 309, false, 11);
INSERT INTO public.games VALUES (74, 22, 266, false, 1);
INSERT INTO public.games VALUES (59, 19, 345, false, 346);
INSERT INTO public.games VALUES (56, 18, 109, false, 110);
INSERT INTO public.games VALUES (61, 18, 274, false, 276);
INSERT INTO public.games VALUES (62, 18, 55, false, 56);
INSERT INTO public.games VALUES (58, 19, 806, false, 862);
INSERT INTO public.games VALUES (78, 23, 56, false, 57);
INSERT INTO public.games VALUES (75, 24, 129, false, 343);
INSERT INTO public.games VALUES (72, 23, 178, false, 585);
INSERT INTO public.games VALUES (69, 20, 91, false, 93);
INSERT INTO public.games VALUES (76, 23, 239, false, 251);
INSERT INTO public.games VALUES (77, 23, 644, false, 142);
INSERT INTO public.games VALUES (73, 24, 189, false, 446);
INSERT INTO public.games VALUES (71, 23, 425, false, 783);
INSERT INTO public.games VALUES (64, 20, 221, false, 222);
INSERT INTO public.games VALUES (63, 20, 29, false, 30);
INSERT INTO public.games VALUES (79, 22, 35, false, 9);
INSERT INTO public.games VALUES (57, 18, 52, false, 53);
INSERT INTO public.games VALUES (66, 21, 986, false, 662);
INSERT INTO public.games VALUES (60, 18, 190, false, 193);
INSERT INTO public.games VALUES (67, 20, 459, false, 457);
INSERT INTO public.games VALUES (65, 21, 787, false, 885);
INSERT INTO public.games VALUES (70, 20, 882, false, 166);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Gatto');
INSERT INTO public.users VALUES (2, 'user_1727104001847');
INSERT INTO public.users VALUES (3, 'user_1727104001846');
INSERT INTO public.users VALUES (4, 'user_1727104186672');
INSERT INTO public.users VALUES (5, 'user_1727104186671');
INSERT INTO public.users VALUES (6, 'user_1727105573558');
INSERT INTO public.users VALUES (7, 'user_1727105573557');
INSERT INTO public.users VALUES (8, 'user_1727105682389');
INSERT INTO public.users VALUES (9, 'user_1727105682388');
INSERT INTO public.users VALUES (10, 'user_1727106203984');
INSERT INTO public.users VALUES (11, 'user_1727106203983');
INSERT INTO public.users VALUES (12, 'user_1727106247712');
INSERT INTO public.users VALUES (13, 'user_1727106247711');
INSERT INTO public.users VALUES (14, 'user_1727106351551');
INSERT INTO public.users VALUES (15, 'user_1727106351550');
INSERT INTO public.users VALUES (16, 'user_1727106409424');
INSERT INTO public.users VALUES (17, 'user_1727106409423');
INSERT INTO public.users VALUES (18, 'user_1727106851090');
INSERT INTO public.users VALUES (19, 'user_1727106851089');
INSERT INTO public.users VALUES (20, 'user_1727106975310');
INSERT INTO public.users VALUES (21, 'user_1727106975309');
INSERT INTO public.users VALUES (22, 'Jack');
INSERT INTO public.users VALUES (23, 'user_1727107085138');
INSERT INTO public.users VALUES (24, 'user_1727107085137');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 79, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


--
-- Name: users unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_name UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

