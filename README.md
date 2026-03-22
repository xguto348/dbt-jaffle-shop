# 📊 dbt Jaffle Shop Project

This project was developed as part of the **dbt Fundamentals (dbt Labs)** course, with the goal of practicing Analytics Engineering concepts using dbt and Snowflake.

---

## 🧠 Objective

Build a data transformation pipeline following best practices in layered data modeling:

- **Staging** → data cleaning and standardization  
- **Intermediate** → transformation logic  
- **Marts** → analytics-ready data  

---

## 🛠️ Technologies

- dbt (data build tool)  
- Snowflake  
- Git / GitHub  

---

## ⚙️ What was implemented

- dbt models using `ref()`  
- Source configuration using `source()`  
- Data quality tests:
  - `not_null`  
  - `unique`  
  - `relationships`  
  - `accepted_values`  
- Layered architecture (staging → marts)  

---

## ✅ Example Model

SQL:
with 
source as (
    select * from {{ source('jaffle_shop', 'customers') }}
),

renamed as (
    select
        id as customer_id,
        first_name,
        last_name
    from source
)

select * from renamed

## 📌 Key Learnings
- Analytics-oriented data modeling
- dbt best practices
- Data quality testing
- Integration with Snowflake 

💡 Note

This project is part of my journey to grow as a Data / Analytics Engineer, applying modern data tools and best practices in real-world scenarios.
