
Elist Analysis


<img width="500" alt = "image" src= "https://github.com/user-attachments/assets/27bf5260-0b6c-4f33-8e41-70e6cd6c602c">



# Overview

Founded in 2018, Elist is an e-commerce company that sells popular electronics products and has since expanded to a global customer base. Like most e-commerce companies, Elist sells products through their online site as well as through their mobile app. They use a variety of marketing channels to reach customers, including Email campaigns, SEO, and affiliate links. Over the last few years, their more popular products have been products from Apple, Samsung, and ThinkPad. In this portfolio project I have analysed the dataset of elist having more than 100,000 orders from the year 2019 till 2024.

# ERD


<img width="800" alt ="image" src= "https://github.com/user-attachments/assets/4dff2cab-73bd-4198-b442-43e96349d7c3">


# Deep-Dive Insights

**Yearly Trends:**

From 2019 to 2022, the total sales amounted to approximately $28.1 million with over 100,000 orders processed. The year 2020 was the peak, contributing more than 35% of the total sales value with a record-high of $10.1 million. During this period, the average order value (AOV) reached around $300, the highest in the observed years.

However, since 2020, both sales and order volumes have been on a steady decline, with sales decreasing by approximately 10% in 2021 and a significant 46% drop in 2022. Despite these declines, the AOV has remained relatively stable, decreasing by only about 10% each year.

This trend suggests that the exceptional growth seen in 2020 was likely influenced by external factors such as enforced lockdowns and increased stimulus spending, which may have boosted consumer spending during that time. As these factors began to wane in 2021, the sales and order volumes gradually decreased.

![image](https://github.com/user-attachments/assets/7a0e883d-bf5c-4d73-9561-2cac10363378)


**Monthly Trends:**

January: Kicked off the year strong with total sales of $2.56 million, an average order value (AOV) of $257, and nearly 10,000 orders. However, February saw a significant decline in sales by 25%, dropping to $1.91 million, along with a 27% decrease in order count.

March to May: Sales rebounded in March with an 18% increase, bringing in $2.26 million, and continued a steady rise through May. By May, sales reached $2.34 million with a consistent AOV hovering around $256, signaling stable customer spending patterns. Order count remained relatively stable during this period.

June to August: A slight dip occurred in June, with sales falling by 9% to $2.13 million, though July and August recovered with increases of 10% and 3% respectively, bringing sales up to $2.43 million in August. AOV improved in August, reaching $263, the highest for the summer months, and order count remained stable around 9,250.

September to December: September was a strong month with the highest sales of the year at $2.74 million and an AOV of $268. However, October saw another significant decline in sales by 28%, with both AOV and order count dropping as well. The year ended on a positive note with November and December experiencing growth in sales by 18% and 23% respectively, finishing at $2.85 million in December. The order count also saw a substantial rise during these months, particularly in December with a 21% increase.

![image](https://github.com/user-attachments/assets/353eb102-c503-4183-a657-a8b770f2f9e2)


<img width="500" alt ="image" src= "https://github.com/user-attachments/assets/72c13125-a393-41b2-a86a-c127fb6e6ce7">


---

**Trends by region:**

EMEA Region:

Total Sales: $8.2 million over four years.
Peak Year: 2020, with $2.89 million in sales and an AOV of $288.
Trend: Significant growth in 2020 (151% sales growth), followed by a steep decline in 2022 (-51% sales growth). AOV decreased by 6% in 2021 and by 17% in 2022.
Order Count: Peaked in 2021 with 10,398 orders but dropped by 41% in 2022.

LATAM Region:

Total Sales: $1.68 million over four years.
Peak Year: 2022, with $938,055 in sales, driven by a 555% growth compared to 2021.
Trend: Strong growth in 2020 (202% sales growth) followed by a decline in 2021 and a significant rebound in 2022.
Order Count: Noticeable growth in 2022 (375% increase), despite previous declines in 2021.

APAC Region:

Total Sales: $3.65 million over four years.
Peak Year: 2020, with $1.33 million in sales and an AOV of $317.
Trend: 2020 saw a massive 213% growth in sales, but a subsequent decline in 2021 (-4%) and a steep drop in 2022 (-52%).
Order Count: Steady growth from 2019 to 2021, followed by a 44% drop in 2022.

NA Region:

Total Sales: $14.55 million over four years.
Peak Year: 2021, with $4.46 million in sales and an AOV of $244.
Trend: Strong growth in 2020 (155% sales growth), followed by a minor decline in 2021 and a sharper decline in 2022 (-39%).
Order Count: Peaked in 2021 with 18,244 orders but fell by 37% in 2022.

![image](https://github.com/user-attachments/assets/b733b5da-d9fc-433d-8bf5-06765c6ac022)


## Analysis of Loyalty Member Program

![loyalty_nonloyalty1](https://github.com/user-attachments/assets/8539fa4c-d0e8-4c8d-9eea-487dde116b51)


A comparison of monthly order count growth rates between loyalty and non-loyalty customers from 2019-2022 shows notable differences in their purchasing trends.


**Non-loyalty customers:**

* Displayed fluctuating growth rates over the period.
* Experienced significant swings, such as a decline of -40% in October 2022.
* Had occasional peaks, such as a 39% increase in March 2020.

**Loyalty customers:**

* Consistently demonstrated steadier growth.
* Highlighted by positive percentages like 117% in March 2019 and 66% in March 2020, which stood out amidst varying trends.

This comparison underscores the effectiveness of Elist's loyalty programs in maintaining consistent customer engagement and fostering growth, despite occasional downturns observed across both customer segments. By focusing on sustaining and enhancing loyalty initiatives, Elist can mitigate the volatility seen among non-loyalty customers, strengthen customer retention efforts, and optimize overall business performance in the competitive ecommerce environment.

## Recap of Refunds and Returns

![Refund_Charts](https://github.com/user-attachments/assets/d8691cba-9ca4-4e66-8bc4-ff5dddbeb020)

In analyzing refund rates across different product categories between 2019 and 2022, Elist observes notable trends that shed light on customer behavior.

**Refund Trends:**

* Items at higher price points, such as the MacBook Air (17%) and ThinkPad (16%), consistently exhibit higher maximum refund rates.
* Products priced under $100 maintain refund rates consistently below 5% throughout the period, suggesting higher customer commitment despite the higher potential for returns. The Apple iPhone, known for its seasonal updates, displays significant variability in refund rates:

**Apple iPhone Refund Rates**

* In 2019 there was a 14% refund rate, no returns were recorded in June and July, and then in August there was an 18% spike
* In 2019 there were 5 iPhones returned, in 2020 13 were returned, and in 2021 4 were returned Notably, 2022 marks a year without any recorded refunds across all product categories, prompting Elist to investigate this anomaly further. These insights underscore the complexity of customer purchasing decisions and the nuances in refund behaviors across different product lines. By understanding these trends, Elist can better strategize its inventory management, customer service initiatives, and product development efforts to optimize overall customer satisfaction and business performance in the competitive market landscape.

![Refund_Proportion_Share](https://github.com/user-attachments/assets/f661cbac-6e01-486d-9ee2-57b08d436b6c)


**Refunded Apple Products (2019-2021):**

* AirPod headphones consistently represented over 80% of all refunded Apple items.
* iPhones maintained a steady 1% refund rate during this period, indicating consistent quality and high customer satisfaction.
* This highlights a significant share of refunds within Elist's Apple product line, raising concerns about potential issues related to quality control or customer expectations that Elist should investigate.

**Refunded Non-Apple Products (2019-2021):**

* The 27-inch gaming monitor accounted for over 60% of all returns in the non-Apple product line.
* This suggests a notable refund share within Elist's non-Apple product offerings.
* The observation underscores the need for Elist to explore factors such as product quality or evolving consumer preferences that could impact return rates across its entire product range.

These insights emphasize the varying refund dynamics between Apple and non-Apple products within Elist's inventory, prompting strategic considerations for improving product quality, managing customer expectations, and enhancing overall customer satisfaction.

## Identification of Regional Patterns

![Regional_Stacked](https://github.com/user-attachments/assets/86d2d524-6412-4a12-8531-cb49012417f1)

North America (NA) stands out in regional sales distribution, achieving a peak total sales of 5.3 million in 2020, underscoring its pivotal role in Elist's consumer base and strategic focus. Following closely, the European, Middle Eastern, and African region (EMEA) also achieved significant sales of 2.9 million in 2020, highlighting robust shopping activity in these regions. In contrast, Asia-Pacific (APAC) and Latin America (LATAM) collectively accounted for less than 50% of the market share from 2019 to 2022, indicating promising growth prospects for Elist in these burgeoning markets.

Understanding these regional preferences and market dynamics will empower Elist to adeptly tailor its marketing strategies and product offerings. Capitalizing on targeted marketing and aligning product development with emerging trends will be crucial to seizing opportunities and expanding market share in APAC and LATAM.

# Proposed Improvements and Recommendations

Elist faces unique challenges and opportunities reflected in its AOV fluctuations and the effectiveness of its loyalty program. Despite occasional negative AOV growth, Elist can optimize pricing strategies to maximize revenue per transaction while ensuring customer satisfaction. Enhancing the loyalty program with personalized rewards and exclusive incentives based on customer behavior will promote greater engagement and repeat purchases.

Although some product categories, like the recently added Bose Soundsport Headphones, accounted for less than 0.1% of revenue over four years, their potential should be evaluated before making any discontinuation decisions. Addressing high return rates in other key categories is also essential by investigating factors such as product quality issues or shifts in consumer preferences. Tailoring marketing strategies to regional preferences and dynamics, especially in Asia-Pacific and Latin America, presents growth opportunities through localized campaigns and product offerings.

Elist's overarching goal is to achieve a total of $30 million in increased total sales by January 2027. Implementing these strategies will enable Elist to effectively navigate challenges, capitalize on expansion opportunities, and maintain a competitive edge in the dynamic e-commerce landscape.


