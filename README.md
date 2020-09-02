# ETL Project

Data Science and Visualization Boot Camp (Northwestern University)

![GitHub top language](https://img.shields.io/github/languages/top/zsvorenova/ETL-project/tree/oleg)
[![made-with-Markdown](https://img.shields.io/badge/Made%20with-Markdown-1f425f.svg)](http://commonmark.org)
[![HitCount](http://hits.dwyl.com/OlegRyzhkov2020/sql-challenge.svg)](https://github.com/zsvorenova/ETL-project/tree/oleg)
![GitHub watchers](https://img.shields.io/github/watchers/OlegRyzhkov2020/sql-challenge?label=Watch&style=social)
![GitHub followers](https://img.shields.io/github/followers/OlegRyzhkov2020?label=Follow&style=social)

## Database ERD

![erd_slide](etl_erd.png)

## Granting Access

```sql
--Create User

CREATE USER group_user WITH LOGIN NOSUPERUSER NOCREATEDB  NOCREATEROLE INHERIT NOREPLICATION   CONNECTION LIMIT -1 PASSWORD 'BootCamp';

-- Grant connect to my data base

GRANT CONNECT ON DATABASE etl_project TO group_user;

-- Grant usage the schema

GRANT USAGE ON SCHEMA public TO group_user ;

-- Grant all table for SELECT, INSERT, UPDATE, DELETE

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA  public TO group_user;

```
