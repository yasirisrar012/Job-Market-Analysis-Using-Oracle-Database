CREATE TABLE company_dim
(
company_id NUMBER(38) PRIMARY KEY,
name VARCHAR2(4000),
link VARCHAR2(4000),
link_google VARCHAR2(4000),
thumbnail VARCHAR2(4000)
);

CREATE TABLE skill_dim
(
skill_id NUMBER(38) PRIMARY KEY,
skills VARCHAR2(26),
type VARCHAR2(26)
);

CREATE TABLE job_fact
(
job_id NUMBER(38) PRIMARY KEY,
company_id NUMBER(38),
job_title_short VARCHAR2(4000),
job_location VARCHAR2(4000),
job_via VARCHAR2 (4000),
job_schedule_type VARCHAR2(4000),
job_work_from_home NUMBER(38),
search_location VARCHAR2 (4000),
job_posted_date DATE,
job_no_degree_mention NUMBER(38),
job_health_insurance NUMBER(38),
job_country VARCHAR2(4000),
salary_rate VARCHAR2(26),
salary_year_avg NUMBER(38,4),
salary_hour_avg NUMBER(38,8),
FOREIGN KEY (company_id) REFERENCES company_dim(company_id)
);

CREATE TABLE skill_job_dim
(
job_id NUMBER(38),
skill_id NUMBER(38),
FOREIGN KEY (job_id) REFERENCES job_fact(job_id),
FOREIGN KEY (skill_id) REFERENCES skill_dim(skill_id)
);




