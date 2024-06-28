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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: fith; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fith (
    fith_id integer NOT NULL,
    name character varying(30) NOT NULL,
    third integer
);


ALTER TABLE public.fith OWNER TO freecodecamp;

--
-- Name: fith_fith_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fith_fith_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fith_fith_id_seq OWNER TO freecodecamp;

--
-- Name: fith_fith_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fith_fith_id_seq OWNED BY public.fith.fith_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    galaxy_types character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    distance_from_earth integer,
    temperature numeric(4,2),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fith fith_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fith ALTER COLUMN fith_id SET DEFAULT nextval('public.fith_fith_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fith; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fith VALUES (1, 'f', 1);
INSERT INTO public.fith VALUES (2, 's', 2);
INSERT INTO public.fith VALUES (3, 'th', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'main galaxy', 13, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'second way', 'second galaxy', 14, 'not spiral');
INSERT INTO public.galaxy VALUES (3, 'third way', 'third galaxy', 15, 'mabye spiral');
INSERT INTO public.galaxy VALUES (4, 'fourth way', 'fourth way', 16, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'fith way', 'fith way', 17, 'spiral');
INSERT INTO public.galaxy VALUES (6, 'final way', 'final galaxy', 18, 'not spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'second moon', true, 16, 20, 2);
INSERT INTO public.moon VALUES (2, 'third moon', false, 17, 15, 2);
INSERT INTO public.moon VALUES (3, 'fourth moon', true, 18, 10, 2);
INSERT INTO public.moon VALUES (4, 'fith moon', true, 18, 10, 2);
INSERT INTO public.moon VALUES (5, 'final moon', true, 12, 55, 2);
INSERT INTO public.moon VALUES (6, 'second moon', true, 16, 20, 2);
INSERT INTO public.moon VALUES (7, 'third moon', false, 17, 15, 2);
INSERT INTO public.moon VALUES (8, 'fourth moon', true, 18, 10, 2);
INSERT INTO public.moon VALUES (9, 'fith moon', true, 18, 10, 2);
INSERT INTO public.moon VALUES (10, 'final moon', true, 12, 55, 2);
INSERT INTO public.moon VALUES (11, 'second moon', true, 16, 20, 2);
INSERT INTO public.moon VALUES (12, 'third moon', false, 17, 15, 2);
INSERT INTO public.moon VALUES (13, 'fourth moon', true, 18, 10, 2);
INSERT INTO public.moon VALUES (14, 'fith moon', true, 18, 10, 2);
INSERT INTO public.moon VALUES (15, 'final moon', true, 12, 55, 2);
INSERT INTO public.moon VALUES (16, 'second moon', true, 16, 20, 2);
INSERT INTO public.moon VALUES (17, 'third moon', false, 17, 15, 2);
INSERT INTO public.moon VALUES (18, 'fourth moon', true, 18, 10, 2);
INSERT INTO public.moon VALUES (19, 'fith moon', true, 18, 10, 2);
INSERT INTO public.moon VALUES (20, 'final moon', true, 12, 55, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'first planet', false, 15, 20.11, 1);
INSERT INTO public.planet VALUES (2, 'second planet', true, 16, 20.52, 2);
INSERT INTO public.planet VALUES (3, 'third planet', false, 17, 15.31, 2);
INSERT INTO public.planet VALUES (4, 'fourth planet', true, 18, 10.44, 2);
INSERT INTO public.planet VALUES (5, 'fith planet', true, 18, 10.42, 2);
INSERT INTO public.planet VALUES (6, 'final planet', true, 12, 55.32, 2);
INSERT INTO public.planet VALUES (7, 'second planet', true, 16, 20.52, 2);
INSERT INTO public.planet VALUES (8, 'third planet', false, 17, 15.31, 2);
INSERT INTO public.planet VALUES (9, 'fourth planet', true, 18, 10.44, 2);
INSERT INTO public.planet VALUES (10, 'fith planet', true, 18, 10.42, 2);
INSERT INTO public.planet VALUES (11, 'final planet', true, 12, 55.32, 2);
INSERT INTO public.planet VALUES (12, 'first planet', false, 15, 20.11, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'second star', true, 14, 2, 1);
INSERT INTO public.star VALUES (2, 'third star', false, 15, 20, 1);
INSERT INTO public.star VALUES (3, 'fourth star', true, 16, 200, 2);
INSERT INTO public.star VALUES (4, 'fith star', false, 17, 10, 2);
INSERT INTO public.star VALUES (5, 'final star', true, 18, 100, 2);
INSERT INTO public.star VALUES (6, 'milky star', false, 14, 300, 5);


--
-- Name: fith_fith_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fith_fith_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fith fith_fith_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fith
    ADD CONSTRAINT fith_fith_id_key UNIQUE (fith_id);


--
-- Name: fith fith_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fith
    ADD CONSTRAINT fith_pkey PRIMARY KEY (fith_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

