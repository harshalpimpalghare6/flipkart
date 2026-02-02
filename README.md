# 📱 Flipkart Mobiles Data Analysis (SQL)

## 📌 Project Overview
This project utilizes **Structured Query Language (SQL)** to analyze a dataset of mobile phones listed on Flipkart. The goal is to derive actionable insights regarding pricing strategies, brand performance, customer preferences, and discount trends within the Indian mobile market.

The SQL scripts perform various data extraction and aggregation tasks, ranging from price segmentation to identifying top-rated products.

## 📂 Repository Structure
- **`SQL 16 FLIPKART (PROJECT).sql`**: The main SQL script containing all queries for database creation, usage, and data analysis.

## 🛠️ Technology Stack
- **Database:** MySQL (compatible with most RDBMS supporting standard SQL syntax)
- **Language:** SQL

## 📊 Key Analysis & Insights
The project addresses the following analytical questions:

### 1. Market Segmentation
- **Price Range Categorization**: Segments mobile devices into four key price brackets to understand brand positioning:
  - Budget (< ₹10k)
  - Mid-range (₹10k - ₹20k)
  - Premium (₹20k - ₹40k)
  - Flagship (> ₹40k)

### 2. Brand Performance
- **Top Rated Brands**: Identifies the top 5 brands based on average customer ratings.
- **Most Reviewed Brands**: Determines market popularity by calculating the top 5 brands by total review count.
- **Brand-wise Metrics**: Aggregates average ratings and total reviews for every distinct brand.

### 3. Discount & Pricing Strategy
- **Maximum Discount Analysis**: Finds the brand offering the highest monetary discount (MRP - MSP).
- **High Discount Products**: Filters products offering a discount greater than 40%.
- **Top Deals**: Lists the top 5 products with the highest discount percentages.

### 4. Quality Filtering
- **Premium Products**: extracts a list of high-quality devices with customer ratings exceeding 4.5 stars.

## 💾 Database Schema
The analysis assumes a table named `mobiles` with the following key columns:

| Column Name | Description |
| :--- | :--- |
| `Brand` | The manufacturer of the mobile phone |
| `MRP` | Maximum Retail Price |
| `MSP` | Selling Price (used to calculate discount value) |
| `Ratings` | Average customer rating (out of 5) |
| `No_of_Reviews`| Total number of customer reviews |
| `Discount` | Discount percentage offered |

## 🚀 How to Run
1. **Clone the Repository**:
   ```bash
   git clone [https://github.com/yourusername/flipkart-mobile-analysis.git](https://github.com/yourusername/flipkart-mobile-analysis.git)
