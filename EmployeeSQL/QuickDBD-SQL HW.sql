-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/MLbIyk
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "employees" (
    "employee_id" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "emp_title_id" string   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" string   NOT NULL,
    "last_name" string   NOT NULL,
    "sex" string   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "departments_id" int   NOT NULL,
    "dept_name" string   NOT NULL,
    "dept_no" int   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "departments_id"
     )
);

CREATE TABLE "dept_emp" (
    "dept_emp_id" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "dept_no" string   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "dept_emp_id"
     )
);

CREATE TABLE "dept_manager" (
    "dept_manager_id" int   NOT NULL,
    "emp_no" string   NOT NULL,
    "dept_no" string   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_manager_id"
     )
);

CREATE TABLE "salaries" (
    "salaries_id" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "salaries_id"
     )
);

CREATE TABLE "titles" (
    "titles_id" int   NOT NULL,
    "title_id" string   NOT NULL,
    "title" string   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "titles_id"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_manager" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

