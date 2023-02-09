# ❔ A propos

Termes [fondamentaux interdits](https://www.domaine.nc/intd) pour les noms de domaines en Nouvelle-Calédonie.

# Charger les données dans DuckDB


```shell
rm forbidden_terms.duckdb 2> /dev/null || true
duckdb forbidden_terms.duckdb
.read load.sql
.exit
```
