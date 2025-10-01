**Building-Generative-AI-Applications**

**Overview**

This repository houses building of Gen AI Applications in Jaseci Ecosystem, featuring an AI-powered Personal Budget Assistant that provides intelligent financial analysis and recommendations.

**What is Jaseci Ecosystem?**

Jaseci serves as the implementation stack for the Jac programming language, and is packaged as a simple Python library. This runtime stack enables Jac code to execute with its enhanced features while maintaining the seamless Python interoperability that makes the language particularly accessible to Python developers.

**What is Jac?**

Jac is a new kind of programming language. It's built on top of Python, so you can still use Python code and tools with it. But Jac adds some new features that make programming easier and smarter, especially for modern tasks like AI development.

**It helps you:**

Avoid complex code by hiding the hard parts.

Build software faster by automating things you usually have to code by hand.

Work smoothly with Python, so you don't have to start from scratch.

Jac allows you to easily use large language models (like Gemini) in your code by replacing complicated code with a call to the LLM. This simplifies the process, eliminating the need for detailed prompt creation or using extra libraries to make the LLM work.

**Week 2: AI-Powered Personal Budget Assistant in Jac**

**Budget Assistant**

**About**
I have developed an AI-powered personal budget assistant using Jac. The program prompts the user to enter monthly income, budgeted expenses across various categories, and actual spending data. It models financial data and generates comprehensive budget analysis along with personalized financial recommendations using a large language model (LLM). Here is the code.

**Program Structure**

**Nodes:**

BudgetAccount (parent node)

MonthlyBudget (child of BudgetAccount) - stores budgeted amounts

ActualSpending (child of BudgetAccount) - stores actual spending

BudgetAnalysis - handles report generation

**Walker:**

BudgetTracker — collects information from the nodes, calls an LLM model, and generates variance analysis, spending insights, and personalized financial recommendations.

The system uses Gemini LLM (via the byLLM plugin) to process the financial data and provide intelligent budget analysis.

Note: The financial advice is for educational purposes only and is not a substitute for professional financial advice.

**Features**
Advanced Budget Tracking - Monitor income and expenses across multiple categories

AI-Powered Insights - Get intelligent financial analysis using Gemini AI

Personalized Recommendations - Receive tailored savings and spending advice

Variance Analysis - Compare budgeted vs actual spending with percentage calculations

Goal Tracking - Set and monitor savings targets

Real-time Analysis - Instant budget health assessment

**How to Run**
Install the byLLM plugin and dependencies:

**bash**

```pip install -r requirements.txt```

Set your Gemini API key as an environment variable:

**bash**

```export GEMINI_API_KEY="YOUR_API_KEY_HERE"```

**Run the Jac Program:**


**bash**

```jac run budget.jac```

**Example Output**

ADVANCED BUDGET TRACKER
==================================================

 MONTHLY BUDGET
-------------------------
Monthly income (Kshs): 20000
Rent/Mortgage budget (Kshs): 1000
Groceries budget (Kshs): 1000
Dining out budget (Kshs): 1000
Transportation budget (Kshs): 1000
Utilities budget (Kshs): 1000
Entertainment budget (Kshs): 1000
Shopping budget (Kshs): 1000
Monthly savings target (Kshs): 5000

 ACTUAL SPENDING THIS MONTH
-------------------------
Actual rent spent (Kshs): 2000
Actual groceries spent (Kshs): 500
Actual dining spent (Kshs): 1000
Actual transportation spent (Kshs): 900
Actual utilities spent (Kshs): 900
Actual entertainment spent (Kshs): 900
Actual shopping spent (Kshs): 900

📊 Generating budget analysis...
 
==================================================
📈 BUDGET TRACKING REPORT
==================================================

 BUDGET VARIANCE ANALYSIS:
------------------------------
```
Budget Variance Analysis:

Total Budgeted: Kshs8000.0
Total Actual: Kshs7100.0
Total Variance: Kshs900.0 (11.25%)

Category Variances:
Rent: Kshs-1000.0 (-100.00%)
Groceries: Kshs500.0 (50.00%)
Dining: Kshs0.0 (0.00%)
Transportation: Kshs100.0 (10.00%)
Utilities: Kshs100.0 (10.00%)
Entertainment: Kshs100.0 (10.00%)
Shopping: Kshs100.0 (10.00%)

Over-Budget Categories:
Rent

Under-Budget Categories:
Groceries, Transportation, Utilities, Entertainment, Shopping

Actual Savings Achieved: Kshs900.0
```

 SPENDING INSIGHTS:
------------------------------
```
Spending Insights:

- Income: Kshs20000.0
- Total budgeted expenses: Kshs8000.0
- Total actual expenses: Kshs7100.0
- Savings target: Kshs5000.0

Analysis:
1. Spending patterns and trends: Spending is generally below budget across most categories except for rent, which is significantly over budget.
2. Most accurate budget categories: Dining is the most accurate, with no variance between budgeted and actual spending.
3. Most volatile categories: Rent is the most volatile, with actual spending 100% over budget.
4. Overall budget adherence: Overall, spending is within budget, with a total variance of Kshs900.0 (11.25%) under budget.
5. Savings rate achievement: The actual savings achieved is Kshs900.0. The target savings rate was not achieved.
```

 NEXT MONTH RECOMMENDATIONS:
------------------------------
## Budget Adjustments Recommendation for Next Month:

Based on this month's variances and patterns, here are some suggested budget adjustments:

**1. Specific Budget Increases/Decreases:**

*   **Rent:** Increase the budget to Kshs2000.0 to reflect actual spending.
*   **Groceries:** Decrease the budget to Kshs500.0, aligning with actual spending.
*   **Transportation:** Decrease the budget to Kshs900.0.
*   **Utilities:** Decrease the budget to Kshs900.0.
*   **Entertainment:** Decrease the budget to Kshs900.0.
*   **Shopping:** Decrease the budget to Kshs900.0.

**2. New Category Limits:**

*   Consider setting sub-limits within categories (e.g., "Eating Out" within "Dining") to better control spending.

**3. Spending Habit Changes:**

*   **Rent:** Negotiate with your landlord.
*   **Groceries:** Plan meals ahead of time, create a shopping list, and stick to it.
*   **All Categories:** Track your spending daily to stay aware of where your money is going. Implement a "waiting period" (e.g., 24 hours) before making non-essential purchases.

**4. Ways to Improve Budget Accuracy:**

*   **Track all expenses:** Use a budgeting app or spreadsheet to record every transaction.
*   **Review regularly:** At the end of each week, compare your actual spending to your budget and make adjustments as needed.
*   **Be realistic:** Don't underestimate your spending. It's better to overestimate and have money left over than to run out.
*   **Adjust for irregular expenses:** Factor in occasional expenses like gifts, travel, or car maintenance.
*   **Savings:** Savings target was not achieved. Prioritize and consider increasing savings contributions from under-spent categories to meet the Kshs5000.0 goal.


==================================================
 Track consistently for better financial control!


**Program Files**

budget.jac - Main AI-powered budget assistant with Gemini integration

requirements.txt - Python dependencies

**Financial Categories Tracked**

 Rent/Mortgage

 Groceries

 Dining Out

 Transportation

 Utilities

 Entertainment

 Shopping

 Savings Goals

**AI-Powered Features**

Smart Analysis: AI identifies spending patterns and financial anomalies

Personalized Tips: Tailored recommendations based on your specific financial situation

Goal Optimization: AI suggests ways to reach savings targets faster

Risk Assessment: Identifies potential financial risks in your spending habits

Pattern Recognition: Detects recurring spending behaviors across categories

**Disclaimer**

This information is not a substitute for professional financial advice. Always consult with a qualified financial advisor for personalized financial planning.

**Technical Requirements**

```Python 3.8+```

```Jac Language Runtime```

```Gemini API Key (for AI features)```

```Internet connection (for AI model access)```
