
--
-- Name: cor1440_gen_actividad; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cor1440_gen_actividad (
    id integer NOT NULL,
    minutos integer,
    nombre character varying(500),
    objetivo character varying(500),
    proyecto character varying(500),
    resultado character varying(500),
    fecha date,
    observaciones character varying(5000),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    regionsjr_id integer NOT NULL,
    rangoedadac_id integer
);


--
-- Name: cor1440_gen_actividad_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cor1440_gen_actividad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cor1440_gen_actividad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cor1440_gen_actividad_id_seq OWNED BY cor1440_gen_actividad.id;


--
-- Name: cor1440_gen_actividad_rangoedadac; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cor1440_gen_actividad_rangoedadac (
    id integer NOT NULL,
    actividad_id integer,
    rangoedadac_id integer,
    ml integer,
    mr integer,
    fl integer,
    fr integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: cor1440_gen_actividad_rangoedadac_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cor1440_gen_actividad_rangoedadac_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cor1440_gen_actividad_rangoedadac_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cor1440_gen_actividad_rangoedadac_id_seq OWNED BY cor1440_gen_actividad_rangoedadac.id;


--
-- Name: cor1440_gen_actividadarea; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cor1440_gen_actividadarea (
    id integer NOT NULL,
    nombre character varying(500),
    observaciones character varying(5000),
    fechacreacion date DEFAULT ('now'::text)::date,
    fechadeshabilitacion date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: cor1440_gen_actividadarea_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cor1440_gen_actividadarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cor1440_gen_actividadarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cor1440_gen_actividadarea_id_seq OWNED BY cor1440_gen_actividadarea.id;


--
-- Name: cor1440_gen_actividadareas_actividad; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cor1440_gen_actividadareas_actividad (
    id integer NOT NULL,
    actividad_id integer,
    actividadarea_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: cor1440_gen_actividadareas_actividad_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cor1440_gen_actividadareas_actividad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cor1440_gen_actividadareas_actividad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cor1440_gen_actividadareas_actividad_id_seq OWNED BY cor1440_gen_actividadareas_actividad.id;



--
-- Name: cor1440_gen_rangoedadac; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cor1440_gen_rangoedadac (
    id integer NOT NULL,
    nombre character varying(255),
    limiteinferior integer,
    limitesuperior integer,
    fechacreacion date,
    fechadeshabilitacion date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: cor1440_gen_rangoedadac_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cor1440_gen_rangoedadac_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cor1440_gen_rangoedadac_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cor1440_gen_rangoedadac_id_seq OWNED BY cor1440_gen_rangoedadac.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY cor1440_gen_actividad ALTER COLUMN id SET DEFAULT nextval('cor1440_gen_actividad_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY cor1440_gen_actividad_rangoedadac ALTER COLUMN id SET DEFAULT nextval('cor1440_gen_actividad_rangoedadac_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY cor1440_gen_actividadarea ALTER COLUMN id SET DEFAULT nextval('cor1440_gen_actividadarea_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY cor1440_gen_actividadareas_actividad ALTER COLUMN id SET DEFAULT nextval('cor1440_gen_actividadareas_actividad_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY cor1440_gen_rangoedadac ALTER COLUMN id SET DEFAULT nextval('cor1440_gen_rangoedadac_id_seq'::regclass);


--
-- Name: actividad_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cor1440_gen_actividad
    ADD CONSTRAINT actividad_pkey PRIMARY KEY (id);


--
-- Name: actividad_rangoedadac_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cor1440_gen_actividad_rangoedadac
    ADD CONSTRAINT actividad_rangoedadac_pkey PRIMARY KEY (id);


--
-- Name: actividadarea_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cor1440_gen_actividadarea
    ADD CONSTRAINT actividadarea_pkey PRIMARY KEY (id);


--
-- Name: actividadareas_actividad_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cor1440_gen_actividadareas_actividad
    ADD CONSTRAINT actividadareas_actividad_pkey PRIMARY KEY (id);



--
-- Name: rangoedadac_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cor1440_gen_rangoedadac
    ADD CONSTRAINT rangoedadac_pkey PRIMARY KEY (id);



--
-- Name: index_cor1440_gen_actividad_on_rangoedadac_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_cor1440_gen_actividad_on_rangoedadac_id ON cor1440_gen_actividad USING btree (rangoedadac_id);


--
-- Name: index_cor1440_gen_actividad_rangoedadac_on_actividad_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_cor1440_gen_actividad_rangoedadac_on_actividad_id ON cor1440_gen_actividad_rangoedadac USING btree (actividad_id);


--
-- Name: index_cor1440_gen_actividad_rangoedadac_on_rangoedadac_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_cor1440_gen_actividad_rangoedadac_on_rangoedadac_id ON cor1440_gen_actividad_rangoedadac USING btree (rangoedadac_id);


--
-- Name: index_cor1440_gen_anexoactividad_on_actividad_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_cor1440_gen_anexoactividad_on_actividad_id ON cor1440_gen_anexoactividad USING btree (actividad_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);



--
-- Name: actividad_regionsjr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cor1440_gen_actividad
    ADD CONSTRAINT actividad_regionsjr_id_fkey FOREIGN KEY (regionsjr_id) REFERENCES cor1440_gen_regionsjr(id);


--
-- PostgreSQL database dump complete
--


