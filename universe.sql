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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_years integer,
    has_life boolean,
    galaxy_id integer NOT NULL,
    number_of_planet numeric
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
    name character varying(30),
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_years integer,
    has_life boolean,
    moon_id integer NOT NULL,
    number_of_moon numeric,
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
-- Name: physical_properties; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.physical_properties (
    physical_properties_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric NOT NULL
);


ALTER TABLE public.physical_properties OWNER TO freecodecamp;

--
-- Name: physical_properties_property_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.physical_properties_property_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.physical_properties_property_id_seq OWNER TO freecodecamp;

--
-- Name: physical_properties_property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.physical_properties_property_id_seq OWNED BY public.physical_properties.physical_properties_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_years integer,
    has_life boolean,
    planet_id integer NOT NULL,
    number_of_moon numeric,
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
    name character varying(30),
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_years integer,
    has_life boolean,
    star_id integer NOT NULL,
    number_of_planet numeric,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: physical_properties physical_properties_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.physical_properties ALTER COLUMN physical_properties_id SET DEFAULT nextval('public.physical_properties_property_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'galaxy', 10, 10, false, 1, 40);
INSERT INTO public.galaxy VALUES ('Messier 82', 'galaxy', 20, 15, false, 2, 20);
INSERT INTO public.galaxy VALUES ('Andromeda', 'galaxy', 25, 20, false, 3, 23);
INSERT INTO public.galaxy VALUES ('Sombrero', 'galaxy', 90, 10, false, 4, 20);
INSERT INTO public.galaxy VALUES ('Black Eye', 'galaxy', 40, 150, false, 5, 20);
INSERT INTO public.galaxy VALUES ('Whirpool', 'galaxy', 20, 10, false, 6, 28);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Ganymede', 'moon', 1, 1, false, 1, 1, 4);
INSERT INTO public.moon VALUES ('Callisto', 'moon', 1, 1, false, 2, 1, 4);
INSERT INTO public.moon VALUES ('Amalthea', 'moon', 1, 1, false, 3, 1, 4);
INSERT INTO public.moon VALUES ('Himalia', 'moon', 1, 1, false, 4, 1, 4);
INSERT INTO public.moon VALUES ('Elara', 'moon', 1, 1, false, 5, 1, 4);
INSERT INTO public.moon VALUES ('Pasiphae', 'moon', 1, 1, false, 6, 1, 4);
INSERT INTO public.moon VALUES ('Sinope', 'moon', 1, 1, false, 7, 1, 4);
INSERT INTO public.moon VALUES ('Carme', 'moon', 1, 1, false, 8, 1, 4);
INSERT INTO public.moon VALUES ('Ananke', 'moon', 1, 1, false, 9, 1, 4);
INSERT INTO public.moon VALUES ('Thebe', 'moon', 1, 1, false, 10, 1, 4);
INSERT INTO public.moon VALUES ('Titan', 'moon', 2, 2, false, 11, 1, 7);
INSERT INTO public.moon VALUES ('Rhea', 'moon', 2, 2, false, 12, 1, 7);
INSERT INTO public.moon VALUES ('Phoebe', 'moon', 2, 2, false, 13, 1, 7);
INSERT INTO public.moon VALUES ('Helene', 'moon', 2, 2, false, 14, 1, 7);
INSERT INTO public.moon VALUES ('Callypso', 'moon', 2, 2, false, 15, 1, 7);
INSERT INTO public.moon VALUES ('Atlas', 'moon', 2, 2, false, 16, 1, 7);
INSERT INTO public.moon VALUES ('Pandora', 'moon', 2, 2, false, 17, 1, 7);
INSERT INTO public.moon VALUES ('Tarvos', 'moon', 2, 2, false, 18, 1, 7);
INSERT INTO public.moon VALUES ('Ijiraq', 'moon', 2, 2, false, 19, 1, 7);
INSERT INTO public.moon VALUES ('Narvi', 'moon', 2, 2, false, 20, 1, 7);


--
-- Data for Name: physical_properties; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.physical_properties VALUES (1, 'iso', 8);
INSERT INTO public.physical_properties VALUES (2, 'iso', 9);
INSERT INTO public.physical_properties VALUES (3, 'iso', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Venus', 'planet', 3, 4, false, 1, 4, 6);
INSERT INTO public.planet VALUES ('Mars', 'planet', 3, 4, false, 2, 4, 6);
INSERT INTO public.planet VALUES ('Mercury', 'planet', 3, 4, false, 3, 4, 6);
INSERT INTO public.planet VALUES ('Jupiter', 'planet', 3, 4, false, 4, 4, 6);
INSERT INTO public.planet VALUES ('Neptune', 'planet', 3, 4, false, 5, 6, 6);
INSERT INTO public.planet VALUES ('Uranus', 'planet', 3, 4, false, 6, 6, 6);
INSERT INTO public.planet VALUES ('Tulia', 'planet', 10, 80, false, 7, 10, 3);
INSERT INTO public.planet VALUES ('Zexeda', 'planet', 100, 9, false, 8, 9, 1);
INSERT INTO public.planet VALUES ('Udarvis', 'planet', 90, 17, false, 9, 20, 2);
INSERT INTO public.planet VALUES ('Estrada', 'planet', 17, 27, false, 10, 3, 4);
INSERT INTO public.planet VALUES ('Igolla', 'planet', 39, 10, false, 11, 5, 5);
INSERT INTO public.planet VALUES ('Ibreon', 'planet', 10, 28, false, 12, 9, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Polaris', 'star', 10, 20, false, 1, 5, 2);
INSERT INTO public.star VALUES ('Castor', 'star', 10, 20, false, 2, 5, 3);
INSERT INTO public.star VALUES ('Pollux', 'star', 10, 20, false, 3, 5, 6);
INSERT INTO public.star VALUES ('Orion', 'start', 10, 20, false, 4, 9, 5);
INSERT INTO public.star VALUES ('Sirius', 'start', 10, 20, false, 5, 17, 3);
INSERT INTO public.star VALUES ('Sun', 'star', 10, 20, true, 6, 9, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: physical_properties_property_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.physical_properties_property_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: physical_properties physical_properties_physical_properties_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.physical_properties
    ADD CONSTRAINT physical_properties_physical_properties_id_key UNIQUE (physical_properties_id);


--
-- Name: physical_properties physical_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.physical_properties
    ADD CONSTRAINT physical_properties_pkey PRIMARY KEY (physical_properties_id);


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

