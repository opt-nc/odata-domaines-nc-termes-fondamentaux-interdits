# ❔ A propos

Termes [fondamentaux interdits](https://www.domaine.nc/intd) pour les noms de domaines en Nouvelle-Calédonie.

# Charger les données dans DuckDB

```shell
gh repo clone opt-nc/odata-domaines-nc-termes-fondamentaux-interdits
cd odata-domaines-nc-termes-fondamentaux-interdits

```


```shell
rm forbidden_terms.duckdb 2> /dev/null || true
duckdb forbidden_terms.duckdb
.read load.sql
-- export to a parquet file
EXPORT DATABASE 'target' (FORMAT PARQUET, COMPRESSION ZSTD, ROW_GROUP_SIZE 100000);
.exit
```

Then see what we get:

```shell
tree
ls -la target
file target/forbidden_terms.parquet
```
