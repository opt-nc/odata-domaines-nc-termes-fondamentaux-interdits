-- create table
drop table if exists forbidden_terms;
create table forbidden_terms (
    cat  VARCHAR(25),
    name VARCHAR(30)
);

-- put unique constraint
CREATE UNIQUE INDEX unique_forbidden_termes
ON forbidden_terms (cat, name);



-- load data
insert into forbidden_terms (name, cat)
    select nom_interdit,
        categorie
    from read_csv_auto('data/termes.csv', HEADER=TRUE);

-- make a first report
select cat as "Category",
    count(*) as "Nb. Cats"
from forbidden_terms
    group by cat
    order by count(*) desc;
