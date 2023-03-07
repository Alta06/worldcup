--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (115, 2018, 'Final', 754, 755, 4, 2);
INSERT INTO public.games VALUES (116, 2018, 'Third Place', 756, 757, 2, 0);
INSERT INTO public.games VALUES (117, 2018, 'Semi-Final', 755, 757, 2, 1);
INSERT INTO public.games VALUES (118, 2018, 'Semi-Final', 754, 756, 1, 0);
INSERT INTO public.games VALUES (119, 2018, 'Quarter-Final', 755, 758, 3, 2);
INSERT INTO public.games VALUES (120, 2018, 'Quarter-Final', 757, 759, 2, 0);
INSERT INTO public.games VALUES (121, 2018, 'Quarter-Final', 756, 760, 2, 1);
INSERT INTO public.games VALUES (122, 2018, 'Quarter-Final', 754, 761, 2, 0);
INSERT INTO public.games VALUES (123, 2018, 'Eighth-Final', 757, 762, 2, 1);
INSERT INTO public.games VALUES (124, 2018, 'Eighth-Final', 759, 763, 1, 0);
INSERT INTO public.games VALUES (125, 2018, 'Eighth-Final', 756, 764, 3, 2);
INSERT INTO public.games VALUES (126, 2018, 'Eighth-Final', 760, 765, 2, 0);
INSERT INTO public.games VALUES (127, 2018, 'Eighth-Final', 755, 766, 2, 1);
INSERT INTO public.games VALUES (128, 2018, 'Eighth-Final', 758, 767, 2, 1);
INSERT INTO public.games VALUES (129, 2018, 'Eighth-Final', 761, 768, 2, 1);
INSERT INTO public.games VALUES (130, 2018, 'Eighth-Final', 754, 769, 4, 3);
INSERT INTO public.games VALUES (131, 2014, 'Final', 770, 769, 1, 0);
INSERT INTO public.games VALUES (132, 2014, 'Third Place', 771, 760, 3, 0);
INSERT INTO public.games VALUES (133, 2014, 'Semi-Final', 769, 771, 1, 0);
INSERT INTO public.games VALUES (134, 2014, 'Semi-Final', 770, 760, 7, 1);
INSERT INTO public.games VALUES (135, 2014, 'Quarter-Final', 771, 772, 1, 0);
INSERT INTO public.games VALUES (136, 2014, 'Quarter-Final', 769, 756, 1, 0);
INSERT INTO public.games VALUES (137, 2014, 'Quarter-Final', 760, 762, 2, 1);
INSERT INTO public.games VALUES (138, 2014, 'Quarter-Final', 770, 754, 1, 0);
INSERT INTO public.games VALUES (139, 2014, 'Eighth-Final', 760, 773, 2, 1);
INSERT INTO public.games VALUES (140, 2014, 'Eighth-Final', 762, 761, 2, 0);
INSERT INTO public.games VALUES (141, 2014, 'Eighth-Final', 754, 774, 2, 0);
INSERT INTO public.games VALUES (142, 2014, 'Eighth-Final', 770, 775, 2, 1);
INSERT INTO public.games VALUES (143, 2014, 'Eighth-Final', 771, 765, 2, 1);
INSERT INTO public.games VALUES (144, 2014, 'Eighth-Final', 772, 776, 2, 1);
INSERT INTO public.games VALUES (145, 2014, 'Eighth-Final', 769, 763, 1, 0);
INSERT INTO public.games VALUES (146, 2014, 'Eighth-Final', 756, 777, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (754, 'France');
INSERT INTO public.teams VALUES (755, 'Croatia');
INSERT INTO public.teams VALUES (756, 'Belgium');
INSERT INTO public.teams VALUES (757, 'England');
INSERT INTO public.teams VALUES (758, 'Russia');
INSERT INTO public.teams VALUES (759, 'Sweden');
INSERT INTO public.teams VALUES (760, 'Brazil');
INSERT INTO public.teams VALUES (761, 'Uruguay');
INSERT INTO public.teams VALUES (762, 'Colombia');
INSERT INTO public.teams VALUES (763, 'Switzerland');
INSERT INTO public.teams VALUES (764, 'Japan');
INSERT INTO public.teams VALUES (765, 'Mexico');
INSERT INTO public.teams VALUES (766, 'Denmark');
INSERT INTO public.teams VALUES (767, 'Spain');
INSERT INTO public.teams VALUES (768, 'Portugal');
INSERT INTO public.teams VALUES (769, 'Argentina');
INSERT INTO public.teams VALUES (770, 'Germany');
INSERT INTO public.teams VALUES (771, 'Netherlands');
INSERT INTO public.teams VALUES (772, 'Costa Rica');
INSERT INTO public.teams VALUES (773, 'Chile');
INSERT INTO public.teams VALUES (774, 'Nigeria');
INSERT INTO public.teams VALUES (775, 'Algeria');
INSERT INTO public.teams VALUES (776, 'Greece');
INSERT INTO public.teams VALUES (777, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 146, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 777, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

