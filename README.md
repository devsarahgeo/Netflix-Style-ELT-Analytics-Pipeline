# Netflix style ELT Analytics Pipeline
---
💼 **Executive Summary** 
This Netflix style project replicates a real-world enterprise data workflow, transforming raw data into clean, modeled, and validated analytical outputs to support data-driven decision-making.This project addresses the end-to-end workflow from **raw data in Snowflake** to **analysis-ready tables** via **dbt**models orchestrated with **Airflow**.

--- 

💼 **Business Problem** 
Enterprises face the challenge of turning raw data into structured, trustworthy, and reusable analytical outputs. Without automated pipelines, data analysts and product teams spend excessive time cleaning, validating, and modeling data manually, risking errors and delays. This project addresses that challenge by implementing an end-to-end ELT workflow, ensuring clean, consistent, and actionable datasets ready for analytics and BI.

---

## ❓ Analysis Questions 

#### User Behavior Analysis

Which users are the most active based on ratings or reviews?

Are there patterns in user activity by time of day or day of week?

How do user ratings vary by genre or movie release year?

2️⃣ Content Insights

Which genres are most popular overall and by user segment?

What is the distribution of ratings per movie? Are there highly polarized movies?

Identify movies with high engagement but low ratings – potential for improvement or recommendation tuning.

3️⃣ Recommendation Engine Prep

Which users have similar rating patterns? (clustering / collaborative filtering)

Identify movies with strong co-rating patterns (for “Users also liked…” features).

Are there gaps in content coverage for specific genres or user segments?

4️⃣ Temporal Trends

How have movie ratings evolved over time?

Are there seasonal trends in user engagement or ratings?

Identify periods with unusually high or low activity – could link to new content releases or events.

5️⃣ System/Operational Metrics

Are there missing or incomplete data points that affect analysis?

How consistent are ratings across different users and movies?

Which tables or transformations consume the most processing time (dbt/Snowflake optimization insight)?

6️⃣ Business-Oriented Questions

What movies would you recommend promoting based on engagement and ratings?

Which genres or movies are underrepresented but show potential for growth?

Can you segment users for targeted content recommendations?
---

⚙️ **SYSTEM DESIGN**  
<img width="1418" height="919" alt="DBT Architecture drawio" src="https://github.com/user-attachments/assets/4fb98f47-54c0-4494-af79-ad74ccaa78fa" />

⚙️ **Methodology**  

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
