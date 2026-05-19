# 311 Data Analysis

This workspace contains analysis assets, transformation logic, and dashboard outputs for working with 311-style service data.

## Repository Layout

- `data/` — source and sample datasets
- `dbt/` — dbt models and tests
  - `models/staging/` — raw-to-staging transformations
  - `models/marts/` — curated analytical models
  - `tests/` — dbt tests
- `sql/` — SQL scripts for data cleaning, validation, KPI logic, and reporting
  - `cleaning/`
  - `validation/`
  - `kpis/`
  - `reporting/`
- `python/` — Python workflows for data generation and forecasting
  - `data_generation/`
  - `forecasting/`
- `dashboards/` — BI assets and screenshots
  - `powerbi/`
  - `looker/`
  - `qlik/`
- `docs/` — project documentation

## Getting Started

1. Add raw or sample data to `data/`.
2. Build transformation models in `dbt/models/`.
3. Use `sql/` for analysis queries, validation checks, and reporting extracts.
4. Put Python scripts in `python/` for reusable data prep or forecasting logic.
5. Store dashboard screenshots and supporting assets in `dashboards/`.

## Notes

- Keep generated outputs separate from source logic when possible.
- Add new documentation in `docs/` as the project grows.
