# Netflix style ELT Analytics Pipeline
---
💼 **Executive Summary** 

This Netflix style project replicates a real-world enterprise data workflow, transforming raw data into clean, modeled, and validated analytical outputs to support data-driven decision-making.This project addresses the end-to-end workflow from **raw data in Snowflake** to **analysis-ready tables** via **dbt** models orchestrated with **Airflow**.

--- 

💼 **Business Problem** 

Enterprises face the challenge of turning raw data into structured, trustworthy, and reusable analytical outputs. Without automated pipelines, data analysts and product teams spend excessive time cleaning, validating, and modeling data manually, risking errors and delays. This project addresses that challenge by implementing an end-to-end ELT workflow, ensuring clean, consistent, and actionable datasets ready for analytics and BI.

---

## ❓ Analysis Questions 

#### User Behavior Analysis

Which users are the most active based on ratings or reviews?

Are there patterns in user activity by time of day or day of week?

How do user ratings vary by genre?

####  Content Insights

Which genres are most popular overall and by user segment?


####  Temporal Trends

How have movie ratings evolved over time?

---

## 💻 Git File Structure Explained:

<strong>dbt-dag/dags/netflix</strong> : Main dbt code folder which has the models, tests

<strong>dbt-dag/dags/dbt_dag.py</strong> : This code is DAG definition which will run dbt models in the netflix/ folder against Snowflake.

<strong>final_demo/insights_tableau.pptx</strong> : Final demo/business insights showcase made by using Tableau to visualize.

---

🧠 **Skills & Tech Stack**  
- **Visual Studio Code** : Central development environment
- **Languages**: SQL
- **Tools**: dbt (models, seeds, tests), Airflow DAGs, Snowflake (warehouse, database, schemas)  
- **Concepts**: ELT pipelines, data modeling, orchestration
- **Visualization**: Tableau

---

⚙️ **Methodology**  

<h3>1. Dataset Used:</h3> 
Movielens Dataset - https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce/](https://grouplens.org/datasets/movielens/20m/

<h3>2. System Design:</h3>
<img width="1418" height="919" alt="DBT Architecture drawio" src="https://github.com/user-attachments/assets/4fb98f47-54c0-4494-af79-ad74ccaa78fa" />

<h3>3. S3</h3>
<img width="948" height="762" alt="Screenshot 2026-02-02 at 7 25 26 PM" src="https://github.com/user-attachments/assets/dd3c1338-62f9-40ab-95a0-890a0a0f05cd" />

<h3>4. Data Warehouse - Snowflake:</h3>
<img width="1428" height="755" alt="Screenshot 2026-02-03 at 6 51 17 PM" src="https://github.com/user-attachments/assets/dbc0f444-4bf3-4a47-847d-5828fd520033" />

1. **Data Ingestion & Loading**  
   - Loaded Movie CSV datasets into Snowflake  
   - Configured dbt seeds for small reference tables
   - Used Airflow DAGs to automate dbt runs on a schedule
<img width="1382" height="1010" alt="Screenshot 2025-12-19 at 12 26 53 PM" src="https://github.com/user-attachments/assets/85edcc9f-a784-4941-b083-080c04f8b09e" />

2. **Data Transformation with dbt**  
   - Created **dimension (`dim`) tables**: movies, users, tags.  
   - Created **fact (`fct`) tables**: ratings, genome scores.  
  - **Snapshots**: tracked historical changes in source data to manage slowly changing dimensions.
<img width="1910" height="835" alt="s (snapshot)- 1" src="https://github.com/user-attachments/assets/009db2cc-d5c5-41e2-a560-d894e2370d2d" />

  - **dbt Model Types**:  
    - **Table**: full materialization for core tables.  
    - **View**: lightweight transformations for analysis.  
    - **Incremental**: processed only new or updated records to optimize large datasets.  
    - **Ephemeral**: temporary models for reusable in-memory transformations.  
    - **Seed**: preloaded static reference datasets.  
    - **Analysis**: queries for exploration and insights.
<img width="1823" height="880" alt="s- anlaysis" src="https://github.com/user-attachments/assets/ee61e187-bf51-480f-9eba-5f2a94fcc5b6" />
      
   - Applied dbt tests to ensure data quality.

3. **Workflow Orchestration with Airflow**  
   - Scheduled dbt runs daily via Airflow DAGs.
<img width="965" height="766" alt="Screenshot 2025-12-18 at 10 57 20 PM" src="https://github.com/user-attachments/assets/8a6997eb-e64d-4893-8836-dee1421f7f55" />

 ---

📈 **Results**

PowerBI Report Snapshot:
<img width="1341" height="748" alt="Screenshot 2026-02-03 at 6 48 30 PM" src="https://github.com/user-attachments/assets/83e4235e-1e94-4dc2-bc0a-90be17ca1f60" />

---
## 📊 Business Insights & Recommendations
- Snowflake + dbt pipelines allow analysts to **quickly explore data and generate insights**. 
- Automated pipelines reduce errors and ensure reproducible metrics for decision-making.  

🚀 **Outcome**  
- Hands-on experience with **modern data engineering tools**.  
- Delivered a **production-ready data pipeline** with automated scheduling, testing, and analytics.  
- Developed skills in **ELT design, Snowflake optimization, dbt modeling, and Airflow orchestration**.

## ⚡ Future Scope - Scalable Implementation 
- ML Extensions : Content Recommendation System

  
