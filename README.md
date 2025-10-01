#Building-Generative-AI-Applications
#Overview
This repository houses building of Gen AI Applications in Jaseci Ecosystem, featuring an AI-powered Personal Budget Assistant that provides intelligent financial analysis and recommendations.

#What is Jaseci Ecosystem?
Jaseci serves as the implementation stack for the Jac programming language, and is packaged as a simple Python library. This runtime stack enables Jac code to execute with its enhanced features while maintaining the seamless Python interoperability that makes the language particularly accessible to Python developers.

#What is Jac?
Jac is a new kind of programming language. It's built on top of Python, so you can still use Python code and tools with it. But Jac adds some new features that make programming easier and smarter, especially for modern tasks like AI development.

#It helps you:

Avoid complex code by hiding the hard parts.

Build software faster by automating things you usually have to code by hand.

Work smoothly with Python, so you don't have to start from scratch.

Jac allows you to easily use large language models (like Gemini) in your code by replacing complicated code with a call to the LLM. This simplifies the process, eliminating the need for detailed prompt creation or using extra libraries to make the LLM work.

#Week 2: AI-Powered Personal Budget Assistant in Jac
#Budget Assistant 🤖💰
#About
I have developed an AI-powered personal budget assistant using Jac. The program prompts the user to enter monthly income, budgeted expenses across various categories, and actual spending data. It models financial data and generates comprehensive budget analysis along with personalized financial recommendations using a large language model (LLM). Here is the code.

#Program Structure
Nodes:

BudgetAccount (parent node)

MonthlyBudget (child of BudgetAccount) - stores budgeted amounts

ActualSpending (child of BudgetAccount) - stores actual spending

BudgetAnalysis - handles report generation

#Walker:

BudgetTracker — collects information from the nodes, calls an LLM model, and generates variance analysis, spending insights, and personalized financial recommendations.

The system uses Gemini LLM (via the byLLM plugin) to process the financial data and provide intelligent budget analysis.

Note: The financial advice is for educational purposes only and is not a substitute for professional financial advice.

#Features
Advanced Budget Tracking - Monitor income and expenses across multiple categories

AI-Powered Insights - Get intelligent financial analysis using Gemini AI

Personalized Recommendations - Receive tailored savings and spending advice

Variance Analysis - Compare budgeted vs actual spending with percentage calculations

Goal Tracking - Set and monitor savings targets

Real-time Analysis - Instant budget health assessment

#How to Run
Install the byLLM plugin and dependencies:

#bash
pip install -r requirements.txt
Set your Gemini API key as an environment variable:

#bash
export GEMINI_API_KEY="YOUR_API_KEY_HERE"
Run the Jac Program:


jac run budget.jac

bash
jac run budget.jac
#Example Output
text
📊 Generating budget analysis...

==================================================
📈 BUDGET TRACKING REPORT
==================================================

📋 BUDGET VARIANCE ANALYSIS:
------------------------------
```
Budget Variance Analysis:

Budgeted vs Actual:
- Rent: $2000.00 vs $2500.00
- Groceries: $1000.00 vs $900.00
- Dining: $500.00 vs $400.00
- Transportation: $500.00 vs $400.00
- Utilities: $500.00 vs $400.00
- Entertainment: $500.00 vs $400.00
- Shopping: $500.00 vs $400.00

1. Total Budgeted vs Total Actual:
   - Total Budgeted: $5500.00
   - Total Actual: $5400.00

2. Variance for Each Category:
   - Rent: $500.00 (25.00%)
   - Groceries: -$100.00 (-10.00%)
   - Dining: -$100.00 (-20.00%)
   - Transportation: -$100.00 (-20.00%)
   - Utilities: -$100.00 (-20.00%)
   - Entertainment: -$100.00 (-20.00%)
   - Shopping: -$100.00 (-20.00%)

3. Over-Budget Categories:
   - Rent

4. Under-Budget Categories:
   - Groceries
   - Dining
   - Transportation
   - Utilities
   - Entertainment
   - Shopping

5. Actual Savings Achieved:
   - Total Variance (Savings): -$100.00
```

🔍 SPENDING INSIGHTS:
------------------------------
Here's a breakdown of your spending insights:

**1. Spending Patterns and Trends:**

*   **Overspending:** You exceeded your budget in the Rent category.
*   **Underspending:** You spent less than budgeted in Groceries, Dining, Transportation, Utilities, Entertainment, and Shopping.
*   **Overall:** Total actual expenses were slightly lower than the total budgeted expenses.

**2. Most Accurate Budget Categories:**

*   Groceries were the most accurate, with only a 10% difference between budgeted and actual spending.

**3. Most Volatile Categories:**

*   Rent was the most volatile, exceeding the budget by 25%.
*   Dining, Transportation, Utilities, Entertainment, and Shopping had similar volatility, each under budget by 20%.

**4. Overall Budget Adherence:**

*   You demonstrated good budget adherence with total actual expenses only slightly lower than the total budgeted expenses. However, this was achieved by underspending in multiple categories to offset overspending in Rent.

**5. Savings Rate Achievement:**

*   You did not achieve your savings target.
*   You were $100 short of your $500 savings target.



🎯 NEXT MONTH RECOMMENDATIONS:
------------------------------
## Budget Adjustment Recommendations for Next Month:

Based on this month's variances and patterns, and a savings target of $500:

**1. Specific Budget Increases/Decreases:**

*   **Rent:** Increase from $2000 to $2500 to reflect actual spending.
*   **Groceries:** Decrease from $1000 to $900, or maintain at $1000 if anticipating increased need.
*   **Dining:** Decrease from $500 to $400.
*   **Transportation:** Decrease from $500 to $400.
*   **Utilities:** Decrease from $500 to $400.
*   **Entertainment:** Decrease from $500 to $400.
*   **Shopping:** Decrease from $500 to $400.
*   **Savings:** Re-evaluate savings strategy to ensure $500 target is met, potentially by allocating a specific amount immediately after income is received.

**2. New Category Limits:**

*   Consider setting a hard limit on Rent to avoid overspending. Explore options to reduce rent costs if consistently exceeding the budget.

**3. Spending Habit Changes:**

*   **Rent:** Explore options to lower rent costs (negotiate with landlord, find a cheaper place).
*   **Underspent Categories:** Be mindful of underspending. While saving money is good, consistently underspending may indicate an inflated budget. Re-evaluate needs in these areas.
*   **Savings:** Automate savings by setting up a direct transfer to a savings account each month.

**4. Ways to Improve Budget Accuracy:**

*   **Track Spending Closely:** Use a budgeting app or spreadsheet to monitor spending in real-time.
*   **Review Past Spending:** Analyze past spending habits to identify trends and adjust budget categories accordingly.
*   **Adjust Budget Regularly:** Review and adjust the budget monthly to reflect changes in income, expenses, or savings goals.
*   **Categorize Transactions Accurately:** Ensure all transactions are categorized correctly to get an accurate picture of spending.
*   **Account for Irregular Expenses:** Include a category for irregular expenses (e.g., car repairs, gifts) and allocate funds accordingly.


==================================================
💡 Track consistently for better financial control!
Program Files
budget.jac - Main AI-powered budget assistant with Gemini integration

requirements.txt - Python dependencies

#Financial Categories Tracked
 Rent/Mortgage

 Groceries

 Dining Out

 Transportation

 Utilities

 Entertainment

 Shopping

 Savings Goals

#AI-Powered Features
Smart Analysis: AI identifies spending patterns and financial anomalies

Personalized Tips: Tailored recommendations based on your specific financial situation

Goal Optimization: AI suggests ways to reach savings targets faster

Risk Assessment: Identifies potential financial risks in your spending habits

Pattern Recognition: Detects recurring spending behaviors across categories

#Disclaimer
This information is not a substitute for professional financial advice. Always consult with a qualified financial advisor for personalized financial planning.

#Technical Requirements
Python 3.8+

Jac Language Runtime

Gemini API Key (for AI features)

Internet connection (for AI model access)
