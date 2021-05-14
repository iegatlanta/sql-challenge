DROP TABLE public.departments;

CREATE TABLE public.departments
(
    dept_name character varying COLLATE pg_catalog."default",
    dept_no character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT departments_pkey PRIMARY KEY (dept_no)
)

TABLESPACE pg_default;

ALTER TABLE public.departments
    OWNER to postgres;
	
DROP TABLE public.dept_emp;

CREATE TABLE public.dept_emp
(
    emp_no character varying COLLATE pg_catalog."default",
    dept_no character varying COLLATE pg_catalog."default",
    CONSTRAINT emp_no FOREIGN KEY (emp_no)
        REFERENCES public.employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.dept_emp
    OWNER to postgres;

DROP TABLE public.dept_manager;

CREATE TABLE public.dept_manager
(
    dept_no character varying COLLATE pg_catalog."default",
    emp_no character varying COLLATE pg_catalog."default",
    CONSTRAINT "Employee number" FOREIGN KEY (emp_no)
        REFERENCES public.employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.dept_manager
    OWNER to postgres;

DROP TABLE public.employees;

CREATE TABLE public.employees
(
    emp_no character varying COLLATE pg_catalog."default" NOT NULL,
    emp_title_id character varying COLLATE pg_catalog."default" DEFAULT nextval('employees_emp_title_id_seq'::regclass),
    birth_date date,
    first_name character varying COLLATE pg_catalog."default",
    last_name character varying COLLATE pg_catalog."default",
    sex character varying(2) COLLATE pg_catalog."default",
    hire_date date,
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE public.employees
    OWNER to postgres;
	
DROP TABLE public.salaries;

CREATE TABLE public.salaries
(
    emp_no character varying COLLATE pg_catalog."default" NOT NULL,
    salary integer,
    CONSTRAINT salaries_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE public.salaries
    OWNER to postgres;
	
DROP TABLE public.titles;

CREATE TABLE public.titles
(
    title_id character varying COLLATE pg_catalog."default" NOT NULL,
    title character varying COLLATE pg_catalog."default",
    CONSTRAINT titles_pkey PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE public.titles
    OWNER to postgres;