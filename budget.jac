# Advanced Budget Tracking System
import from byllm { Model }

glob llm = Model(model_name="gemini/gemini-2.0-flash");

node BudgetAccount{}

node MonthlyBudget(BudgetAccount){
    has income: float;
    has rent: float;
    has groceries: float;
    has dining: float;
    has transportation: float;
    has utilities: float;
    has entertainment: float;
    has shopping: float;
    has savings_target: float;
    can track with BudgetTracker entry {
        visitor.data["income"] = self.income;
        visitor.data["rent"] = self.rent;
        visitor.data["groceries"] = self.groceries;
        visitor.data["dining"] = self.dining;
        visitor.data["transportation"] = self.transportation;
        visitor.data["utilities"] = self.utilities;
        visitor.data["entertainment"] = self.entertainment;
        visitor.data["shopping"] = self.shopping;
        visitor.data["savings_target"] = self.savings_target;
    }
}

node ActualSpending(BudgetAccount){
    has actual_rent: float;
    has actual_groceries: float;
    has actual_dining: float;
    has actual_transportation: float;
    has actual_utilities: float;
    has actual_entertainment: float;
    has actual_shopping: float;
    can track with BudgetTracker entry {
        visitor.data["actual_rent"] = self.actual_rent;
        visitor.data["actual_groceries"] = self.actual_groceries;
        visitor.data["actual_dining"] = self.actual_dining;
        visitor.data["actual_transportation"] = self.actual_transportation;
        visitor.data["actual_utilities"] = self.actual_utilities;
        visitor.data["actual_entertainment"] = self.actual_entertainment;
        visitor.data["actual_shopping"] = self.actual_shopping;
    }
}

node BudgetAnalysis{
    can analyze with BudgetTracker entry {
        visitor.data["variance_report"] = visitor.calculate_variances(visitor.data);
        visitor.data["spending_insights"] = visitor.provide_insights(visitor.data);
        visitor.data["next_month_recommendations"] = visitor.recommend_adjustments(visitor.data);
    }
}

walker BudgetTracker{
    has data: dict = {};
    can start with `root entry {
        visit [-->(`?BudgetAccount)];
        visit [-->(`?BudgetAnalysis)];
    }

    """Calculate budget variances:

    BUDGETED vs ACTUAL:
    - Rent: Kshs{rent} vs Kshs{actual_rent}
    - Groceries: Kshs{groceries} vs Kshs{actual_groceries}
    - Dining: Kshs{dining} vs Kshs{actual_dining}
    - Transportation: Kshs{transportation} vs Kshs{actual_transportation}
    - Utilities: Kshs{utilities} vs Kshs{actual_utilities}
    - Entertainment: Kshs{entertainment} vs Kshs{actual_entertainment}
    - Shopping: Kshs{shopping} vs Kshs{actual_shopping}

    Calculate:
    1. Total budgeted vs total actual
    2. Variance for each category (Kshs and %)
    3. Over-budget categories
    4. Under-budget categories
    5. Actual savings achieved"""
    def calculate_variances(data: dict) -> str by llm();

    """Provide spending insights:

    - Income: Kshs{income}
    - Total budgeted expenses
    - Total actual expenses
    - Savings target: Kshs{savings_target}

    Analyze:
    1. Spending patterns and trends
    2. Most accurate budget categories
    3. Most volatile categories
    4. Overall budget adherence
    5. Savings rate achievement"""
    def provide_insights(data: dict) -> str by llm();

    """Recommend budget adjustments for next month:

    Based on this month's variances and patterns:

    - Categories that consistently over-spent
    - Categories that under-spent
    - Savings target: ${savings_target}

    Suggest:
    1. Specific budget increases/decreases
    2. New category limits
    3. Spending habit changes
    4. Ways to improve budget accuracy"""
    def recommend_adjustments(data: dict) -> str by llm();
}

with entry {
    print(" ADVANCED BUDGET TRACKER");
    print("=" * 50);
    
    # Monthly Budget
    print("\n MONTHLY BUDGET");
    print("-" * 25);
    income = input("Monthly income (Kshs): ");
    rent_budget = input("Rent/Mortgage budget (Kshs): ");
    groceries_budget = input("Groceries budget (Kshs): ");
    dining_budget = input("Dining out budget (Kshs): ");
    transportation_budget = input("Transportation budget (Kshs): ");
    utilities_budget = input("Utilities budget (Kshs): ");
    entertainment_budget = input("Entertainment budget (Kshs): ");
    shopping_budget = input("Shopping budget (Kshs): ");
    savings_target = input("Monthly savings target (Kshs): ");
    
    # Actual Spending
    print("\n ACTUAL SPENDING THIS MONTH");
    print("-" * 25);
    rent_actual = input("Actual rent spent (Kshs): ");
    groceries_actual = input("Actual groceries spent (Kshs): ");
    dining_actual = input("Actual dining spent (Kshs): ");
    transportation_actual = input("Actual transportation spent (Kshs): ");
    utilities_actual = input("Actual utilities spent (Kshs): ");
    entertainment_actual = input("Actual entertainment spent (Kshs): ");
    shopping_actual = input("Actual shopping spent (Kshs): ");

    # Create tracking nodes
    root ++> MonthlyBudget(
        income=float(income),
        rent=float(rent_budget),
        groceries=float(groceries_budget),
        dining=float(dining_budget),
        transportation=float(transportation_budget),
        utilities=float(utilities_budget),
        entertainment=float(entertainment_budget),
        shopping=float(shopping_budget),
        savings_target=float(savings_target)
    );
    
    root ++> ActualSpending(
        actual_rent=float(rent_actual),
        actual_groceries=float(groceries_actual),
        actual_dining=float(dining_actual),
        actual_transportation=float(transportation_actual),
        actual_utilities=float(utilities_actual),
        actual_entertainment=float(entertainment_actual),
        actual_shopping=float(shopping_actual)
    );
    
    root ++> BudgetAnalysis();

    # Generate budget tracking report
    print("\n📊 Generating budget analysis...");
    agent = BudgetTracker() spawn root;
    
    # Display comprehensive report
    print("\n" + "=" * 50);
    print("📈 BUDGET TRACKING REPORT");
    print("=" * 50);
    
    print("\n BUDGET VARIANCE ANALYSIS:");
    print("-" * 30);
    print(agent.data['variance_report']);
    
    print("\n SPENDING INSIGHTS:");
    print("-" * 30);
    print(agent.data['spending_insights']);
    
    print("\n NEXT MONTH RECOMMENDATIONS:");
    print("-" * 30);
    print(agent.data['next_month_recommendations']);
    
    print("\n" + "=" * 50);
    print(" Track consistently for better financial control!");
}