# Bank Customer Churn Analysis

## Executive Summary
Analysis of 10,000 bank customers revealed an alarming churn rate of 20.37% — 
well above the healthy industry benchmark of 5–7%. The highest-risk segments 
are mature clients (45+), German customers, and inactive members. Retaining 
existing customers is significantly more cost-effective than acquiring new ones, 
often costing 5–25 times less — making this a high-priority business problem.

## Business Problem
Customer churn directly impacts a bank's revenue, deposit base, and capital 
available for lending. Losing high-balance customers compounds this risk further, 
threatening long-term financial sustainability in a highly competitive market.

## Dataset
**Name:** Bank Customer Churn Prediction  
**Source:** Kaggle  
**Size:** 10,000 records, 14 columns  
**Target variable:** `Exited` — 1 = churned, 0 = retained

## Tools Used
- **Python** — core programming language
- **Pandas** — data cleaning and manipulation
- **Matplotlib & Seaborn** — data visualisation
- **SQL (PostgreSQL)** — exploratory analysis and pattern discovery

## Key Findings
- Overall churn rate is **20.37%** — above healthy industry levels
- Mature clients (45+) churn at **44.28%**, more than double young adults (7.62%)
- Germany has a churn rate of **32.44%** despite having fewer customers than France
- Inactive members churn at **26.85%** vs **14.27%** for active members
- High-balance customers (75k–125k) churn at **24.26%**, above the overall average
- Female customers churn at a higher rate than male despite lower raw numbers

## Business Recommendations

**1. Launch a Germany-specific investigation**  
A 32.44% churn rate in one market is an operational red flag. The bank should 
conduct exit interviews, benchmark against local competitors, and audit customer 
service quality before launching any retention campaign.

**2. Build an inactive member re-engagement programme**  
Inactive members are a leading indicator of churn. A targeted programme offering 
personalised incentives, product recommendations, or proactive outreach could 
convert a significant portion before they exit.

**3. Redesign the value proposition for mature clients**  
Customers aged 45+ churn at 44.28% and typically have the greatest financial 
needs — mortgages, retirement planning, wealth management. A dedicated senior 
segment strategy with tailored products and relationship managers could 
reverse this trend.

**4. Investigate the female customer experience**  
Female customers churn at a higher rate despite representing a smaller share 
of the base. A dedicated audit of products, communication, and service quality 
is warranted.

**5. Fix the tenure curve**  
Churn at both ends of the tenure spectrum points to poor onboarding for new 
customers and a lack of loyalty rewards for long-tenured ones. Structured 
onboarding journeys and tiered loyalty benefits are proven solutions to both.

## Project Structure
```
bank-churn-analysis/
│
├── data/
│   └── Churn_Modelling.csv
├── notebook/
│   └── analysis.ipynb
├── queries/
│   └── SQLanalysis.sql
├── outputs/
└── README.md
```