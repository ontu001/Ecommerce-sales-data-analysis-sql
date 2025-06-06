# 🛍️ E-Commerce Sales Data Analysis using SQL

This project involves an in-depth analysis of an e-commerce sales dataset using SQL. The objective was to uncover key business insights related to product performance, category trends, pricing, customer ratings, and more.
![Daily Total Sales Summary](https://github.com/ontu001/Ecommerce-sales-data-analysis-sql/blob/main/total_sales%20on%20summary%20date.png)

## 📂 Dataset Description

The dataset used in this analysis includes the following columns:

- `ProductID`: Unique identifier for each product
- `ProductName`: Name of the product
- `Category`: Category the product belongs to
- `Price`: Price of the product
- `Rating`: Average customer rating
- `NumReviews`: Number of customer reviews
- `Discount`: Discount applied to the product
- `Sales`: Number of units sold
- `DateAdded`: Date when the product was introduced
- `City`: City where the product is sold
- `StockQuantity`: Inventory count for each product

## 📊 Key Analyses Performed

- Count of total and unique products
- Top 10 most expensive products
- Number and list of product categories
- Product distribution across categories
- Average rating and total sales per category
- Top 5 categories based on rating and sales
- Best-selling product in each category
- City-wise discount analysis
- Products recently added to the store
- High-performing products compared to average rating
- View creation for product overview with dynamic revenue and stock status
- Automated daily summary using SQL stored procedure

## ⚙️ Automation

A stored procedure (`run_daily_product_summary`) has been created to generate a daily summary that includes:
- Total sales
- Average price
- Average rating
- Top-performing product by category

## 🧠 Tools Used

- PostgreSQL (or compatible SQL engine)
- SQL (Window Functions, CTEs, Aggregations, Views, Procedures)

## 📁 Outputs

- `vw_product_overview`: A view with enriched product-level insights
- `DailyProductSummary`: A table for daily category-wise performance snapshot

## 🧾 How to Use

1. Clone the repository.
2. Import or create the `sales` table using your database.
3. Run the SQL scripts to generate views and procedures.
4. Call the procedure daily to populate the summary table.

---

## 📬 Contact

**Rohanur Rahman**  
🔗 [LinkedIn](https://www.linkedin.com/in/rohanur-rahman-ontu/)  
✉️ playwithdatawithontu@gmail.com
