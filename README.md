# Bank Customer Churn Insights

## Overview

The project investigates customer churn in a bank to understand the factors behind account closures. By evaluating customer demographics, account activity, credit card ownership, and financial behavior, it identifies patterns and trends associated with churn.


## Objective
- Analyze customer churn rate and identify key factors driving attrition, including demographics, tenure, and complaints.
- Measure customer engagement by evaluating activity levels, credit card ownership, and post-complaint churn.
- Explore overall satisfaction levels and identify trends in product usage across the customer base.
- Present insights using dashboards to support business decision-making.

## Data Description
- Source : [Kaggle](https://www.kaggle.com/datasets/radheshyamkollipara/bank-customer-churn/data)
- Rows : 10,000
- Columns : CustomerId, Surname, CreditScore, Geography, Gender, Age, Tenure, Balance, NumOfProducts, HasCrCard, IsActiveMember, EstimatedSalary, Exited, Complain, Satisfaction Score, Card Type, Point Earned


## Tools Used
- **Mysql Workbench** - Data analysis.
- **MS Excel** - Data visualization using pivot tables and charts.

## Dashboard Preview
![Bank Customer Churn Dashboard 1](https://github.com/BalajiRamGanesh/Bank-Customer-Churn-Insights/blob/main/Images/Customer%20Churn%20Dashboard1.png?raw=true)

![Bank Customer Churn Dashboard 2](https://github.com/BalajiRamGanesh/Bank-Customer-Churn-Insights/blob/main/Images/Customer%20Churn%20Dashboard2.png?raw=true)

## Key Insights

- The churn rate is 20%, indicating that one out of five customers is leaving the bank.
- Most customers who filed complaints ended up leaving the bank, showing a strong correlation between complaints and churn.
- Nearly half of the customers are inactive, with over 96% purchasing only one or two products.
- 70% of customers own a credit card, highlighting a high adoption rate of this product. Additionally, 20% of customers have filed complaints, suggesting potential service or product issues.
- Germany has the highest churn rate at 32.5%, nearly double that of France (16.2%) and significantly higher than Spain (13.7%).
- Female customers have a higher churn rate (25.1%) compared to male customers (16.5%). Females make up 45.4% of the total customer base.
- Customer churn is highest in the age group 38–47, whereas the highest number of customers are middle-aged
- 60% of customers left after filing complaint with the bank.
- The overall customer satisfaction rating is 2.8, with ratings nearly evenly distributed across the customer base, indicating varied experiences with the bank’s services.

## Recommendations
- **Prioritize customer service improvements** by gathering feedback and analyzing the reasons for complaints to boost the overall satisfaction rating.
- **Encourage active engagement** by offering better reward programs, cashback, and personalized deals to increase the number of active customers.  
- **Improve retention strategies for female customers** by investigating the reasons for their higher churn rate and offering targeted loyalty programs.  
- **Focus retention efforts in Germany** by understanding the reasons behind customer churn and improving engagement strategies for that region  
- **Implement a faster, more efficient complaint resolution system** by identifying common complaint categories and ensuring they are addressed quickly, ideally within 24-48 hours. A dedicated team to handle complaints can help resolve customer concerns before they escalate to churn.




