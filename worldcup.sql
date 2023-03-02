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

INSERT INTO public.games VALUES (83, 2018, 'Final', 690, 691, 4, 2);
INSERT INTO public.games VALUES (84, 2018, 'Third Place', 692, 693, 2, 0);
INSERT INTO public.games VALUES (85, 2018, 'Semi-Final', 691, 693, 2, 1);
INSERT INTO public.games VALUES (86, 2018, 'Semi-Final', 690, 692, 1, 0);
INSERT INTO public.games VALUES (87, 2018, 'Quarter-Final', 691, 694, 3, 2);
INSERT INTO public.games VALUES (88, 2018, 'Quarter-Final', 693, 695, 2, 0);
INSERT INTO public.games VALUES (89, 2018, 'Quarter-Final', 692, 696, 2, 1);
INSERT INTO public.games VALUES (90, 2018, 'Quarter-Final', 690, 697, 2, 0);
INSERT INTO public.games VALUES (91, 2018, 'Eighth-Final', 693, 698, 2, 1);
INSERT INTO public.games VALUES (92, 2018, 'Eighth-Final', 695, 699, 1, 0);
INSERT INTO public.games VALUES (93, 2018, 'Eighth-Final', 692, 700, 3, 2);
INSERT INTO public.games VALUES (94, 2018, 'Eighth-Final', 696, 701, 2, 0);
INSERT INTO public.games VALUES (95, 2018, 'Eighth-Final', 691, 702, 2, 1);
INSERT INTO public.games VALUES (96, 2018, 'Eighth-Final', 694, 703, 2, 1);
INSERT INTO public.games VALUES (97, 2018, 'Eighth-Final', 697, 704, 2, 1);
INSERT INTO public.games VALUES (98, 2018, 'Eighth-Final', 690, 705, 4, 3);
INSERT INTO public.games VALUES (99, 2014, 'Final', 706, 705, 1, 0);
INSERT INTO public.games VALUES (100, 2014, 'Third Place', 707, 696, 3, 0);
INSERT INTO public.games VALUES (101, 2014, 'Semi-Final', 705, 707, 1, 0);
INSERT INTO public.games VALUES (102, 2014, 'Semi-Final', 706, 696, 7, 1);
INSERT INTO public.games VALUES (103, 2014, 'Quarter-Final', 707, 708, 1, 0);
INSERT INTO public.games VALUES (104, 2014, 'Quarter-Final', 705, 692, 1, 0);
INSERT INTO public.games VALUES (105, 2014, 'Quarter-Final', 696, 698, 2, 1);
INSERT INTO public.games VALUES (106, 2014, 'Quarter-Final', 706, 690, 1, 0);
INSERT INTO public.games VALUES (107, 2014, 'Eighth-Final', 696, 709, 2, 1);
INSERT INTO public.games VALUES (108, 2014, 'Eighth-Final', 698, 697, 2, 0);
INSERT INTO public.games VALUES (109, 2014, 'Eighth-Final', 690, 710, 2, 0);
INSERT INTO public.games VALUES (110, 2014, 'Eighth-Final', 706, 711, 2, 1);
INSERT INTO public.games VALUES (111, 2014, 'Eighth-Final', 707, 701, 2, 1);
INSERT INTO public.games VALUES (112, 2014, 'Eighth-Final', 708, 712, 2, 1);
INSERT INTO public.games VALUES (113, 2014, 'Eighth-Final', 705, 699, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Eighth-Final', 692, 713, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (690, 'France');
INSERT INTO public.teams VALUES (691, 'Croatia');
INSERT INTO public.teams VALUES (692, 'Belgium');
INSERT INTO public.teams VALUES (693, 'England');
INSERT INTO public.teams VALUES (694, 'Russia');
INSERT INTO public.teams VALUES (695, 'Sweden');
INSERT INTO public.teams VALUES (696, 'Brazil');
INSERT INTO public.teams VALUES (697, 'Uruguay');
INSERT INTO public.teams VALUES (698, 'Colombia');
INSERT INTO public.teams VALUES (699, 'Switzerland');
INSERT INTO public.teams VALUES (700, 'Japan');
INSERT INTO public.teams VALUES (701, 'Mexico');
INSERT INTO public.teams VALUES (702, 'Denmark');
INSERT INTO public.teams VALUES (703, 'Spain');
INSERT INTO public.teams VALUES (704, 'Portugal');
INSERT INTO public.teams VALUES (705, 'Argentina');
INSERT INTO public.teams VALUES (706, 'Germany');
INSERT INTO public.teams VALUES (707, 'Netherlands');
INSERT INTO public.teams VALUES (708, 'Costa Rica');
INSERT INTO public.teams VALUES (709, 'Chile');
INSERT INTO public.teams VALUES (710, 'Nigeria');
INSERT INTO public.teams VALUES (711, 'Algeria');
INSERT INTO public.teams VALUES (712, 'Greece');
INSERT INTO public.teams VALUES (713, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 114, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 713, true);


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

