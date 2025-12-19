# DBT-Snowflake-Airflow-Movie-dataset
DBT Code : dbt-dag/dags/movie
This repository demonstrates a **data engineering workflow** using **dbt**, **Snowflake**, and **Airflow**, applied to the **Movie dataset**.

---
💼 **Business Problem**  
Analysts and data engineers often need reliable pipelines to transform raw datasets into **analysis-ready tables**. This Movie Streaming dataset project automates data ingestion, ensures data quality, and enable insights without manual intervention. This project addresses the end-to-end workflow from **raw data in Snowflake** to **analysis-ready tables** via dbt models orchestrated with Airflow.

⚙️ **Methodology**  

1. **Data Ingestion & Loading**  
   - Loaded Movie CSV datasets into Snowflake  
   - Configured dbt seeds for small reference tables
   - Used Airflow DAGs to automate dbt runs on a schedule

2. **Data Transformation with dbt**  
   - Created **dimension (`dim`) tables**: movies, users, tags.  
   - Created **fact (`fct`) tables**: ratings, genome scores.  
  - **Snapshots**: tracked historical changes in source data to manage slowly changing dimensions.  
  - **dbt Model Types**:  
    - **Table**: full materialization for core tables.  
    - **View**: lightweight transformations for analysis.  
    - **Incremental**: processed only new or updated records to optimize large datasets.  
    - **Ephemeral**: temporary models for reusable in-memory transformations.  
    - **Seed**: preloaded static reference datasets.  
    - **Analysis**: queries for exploration and insights.  
   - Applied dbt tests to ensure data quality.  

3. **Workflow Orchestration with Airflow**  
   - Scheduled dbt runs daily via Airflow DAGs.  

🧠 **Skills & Tech Stack**  
- **Languages & Libraries**: SQL
- **Tools**: dbt (models, seeds, tests), Airflow DAGs, Snowflake (warehouse, database, schemas)  
- **Concepts**: ELT pipelines, data modeling, orchestration

📈 **Results**
- Developed a fully automated **ELT pipeline** producing **Snowflake analytics tables** for analysis.

💼 **Business Recommendation**  
- Snowflake + dbt pipelines allow analysts to **quickly explore data and generate insights**. 
- Automated pipelines reduce errors and ensure reproducible metrics for decision-making.  

🚀 **Outcome**  
- Hands-on experience with **modern data engineering tools**.  
- Delivered a **production-ready data pipeline** with automated scheduling, testing, and analytics.  
- Developed skills in **ELT design, Snowflake optimization, dbt modeling, and Airflow orchestration**.
