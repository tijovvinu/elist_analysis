
# 🛒 Customer Purchase Pattern Analysis

This project explores customer purchasing behavior using transactional data from an e-commerce retailer. By analyzing over 100,000 rows of transaction-level records, the goal is to uncover valuable insights into product sales, purchasing patterns, and customer segmentation.

---

## 📁 Dataset Overview

The dataset contains historical sales data, including:
- **Transaction ID**
- **Customer ID**
- **Product Description**
- **Country**
- **Quantity**
- **Unit Price**
- **Invoice Date**

---

## 📊 Key Business Questions

1. What are the most popular products, and in which countries?
2. Are there seasonal or time-based trends in purchasing behavior?
3. Which customers contribute the most to revenue?
4. How can we segment customers based on purchasing frequency and value?

---

## 🔧 Tools Used

- **Python** for data manipulation and analysis
- **Pandas** for data wrangling
- **Matplotlib & Seaborn** for data visualization
- **Jupyter Notebook** as the development environment

---

## 📈 Visual Insights

| Metric | Sample Output |
|--------|----------------|
| Top 10 Products | ![Top Products](https://github.com/tijovvinu/elist-purchase-analysis/blob/main/plots/top_products.png?raw=true) |
| Top 10 Countries | ![Top Countries](https://github.com/tijovvinu/elist-purchase-analysis/blob/main/plots/top_countries.png?raw=true) |
| Monthly Sales | ![Monthly Sales](https://github.com/tijovvinu/elist-purchase-analysis/blob/main/plots/monthly_sales.png?raw=true) |
| RFM Segmentation | ![RFM](https://github.com/tijovvinu/elist-purchase-analysis/blob/main/plots/rfm_score.png?raw=true) |

---

## 🧠 Noteworthy Findings

- **United Kingdom** accounts for the majority of purchases.
- A small percentage of customers contribute disproportionately to revenue.
- Several products show strong seasonal demand trends.
- RFM (Recency-Frequency-Monetary) analysis helped identify top-tier customers for marketing targeting.

---

## 📌 Key Python Snippets

### Sample: RFM Segmentation
```python
snapshot_date = df['InvoiceDate'].max() + dt.timedelta(days=1)
rfm = df.groupby('CustomerID').agg({
    'InvoiceDate': lambda x: (snapshot_date - x.max()).days,
    'InvoiceNo': 'count',
    'TotalSum': 'sum'
})
rfm.rename(columns={'InvoiceDate': 'Recency', 'InvoiceNo': 'Frequency', 'TotalSum': 'MonetaryValue'}, inplace=True)
```

---

## ✅ Outcomes

This analysis lays the foundation for:
- Data-driven marketing campaigns
- Product demand forecasting
- Customer lifetime value modeling
- Targeted promotions and loyalty programs

---

## 📚 Future Work

- Predictive modeling for customer churn
- Product recommendation system using collaborative filtering
- Price sensitivity analysis
