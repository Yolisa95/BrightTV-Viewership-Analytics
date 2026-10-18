# 📺 BrightTV Viewership Analytics

### Understanding Customer Behaviour Through Data

**Project Type:** Data Analytics & Business Intelligence  
**Tools:** Databricks | SQL | Microsoft Excel | PowerPoint  
**Prepared by:** Yolisa Velebayi

---

## 📌 Project Overview

BrightTV is a television content provider aiming to grow its subscription base and improve customer engagement.

In this project, I analysed customer demographics and viewing behaviour to understand who watches BrightTV, which content attracts viewers, and when customers are most active.

I used SQL in Databricks to clean, transform and combine customer profiles with viewing records. I then analysed the prepared data using Excel and presented the findings through visualisations and business recommendations.

## 🎯 Business Objectives

The analysis addresses four key questions:

1. What are the main user and viewing trends?
2. Which factors are associated with content consumption?
3. What content could increase viewing on low-consumption days?
4. What initiatives could help BrightTV grow its subscription base?

## 🛠️ Tools and Technologies

| Tool | Application |
|---|---|
| Databricks | SQL development and data preparation |
| SQL | Data cleaning, transformation and joining datasets |
| Microsoft Excel | Data analysis and PivotTables |
| PowerPoint | Data visualisation and business presentation |
| GitHub | Project documentation and version control |

## 📊 Dataset Overview

The analysis covers viewing activity from January to March 2016.

| Metric | Value |
|---|---:|
| Viewing Sessions | 10,000 |
| Unique Viewers | 4,386 |
| Reporting Period | 3 months |
| Sessions per Viewer | 2.28 |

The dataset contains customer demographics, viewing dates, television channels and viewing durations.

## 🔄 Data Preparation and Transformation

### 1. User Profile Analysis

I used SQL to explore and prepare customer demographic information.

The transformations included:

- Handling missing province values
- Creating age groups
- Standardising gender and ethnicity values
- Identifying email and social media availability
- Preparing customer profiles for segmentation

### 2. Viewership Analysis

I analysed viewing session records to understand content consumption.

The transformations included:

- Standardising channel names
- Extracting viewing dates and times
- Identifying weekdays and weekends
- Creating time-of-day categories
- Converting viewing duration into seconds, minutes and hours
- Categorising viewing sessions by duration

### 3. Combining the Datasets

I used Common Table Expressions (CTEs) and SQL joins to combine customer demographic information with viewing records.

This created a prepared dataset for analysing customer behaviour across different demographic groups and viewing periods.

## 🔍 Key Findings

### Customer Demographics

**Age Distribution**

Youth aged 20–35 represented the largest audience group, with 2,424 unique viewers.

This suggests that young adults are an important audience for BrightTV's customer engagement initiatives.

**Geographic Distribution**

Gauteng recorded the highest number of unique viewers, followed by the Western Cape and KwaZulu-Natal.

This information can help guide regional marketing initiatives.

**Gender and Ethnicity**

The analysis also examined gender and ethnicity distribution to provide a broader understanding of BrightTV's audience composition.

### Viewing Trends

**Monthly Consumption**

Viewing activity increased between January and March 2016, with March recording the highest number of viewing sessions.

**Day-of-Week Analysis**

Monday recorded the lowest number of viewing sessions, while Saturday recorded the highest.

This suggests an opportunity to investigate targeted content promotions on lower-activity days.

**Content Preferences**

Sports and music-related channels attracted considerable viewing activity.

These preferences can help guide content promotion and recommendations.

## 💡 Business Recommendations

Based on the analysis, I recommend that BrightTV:

1. Introduce targeted content promotions on lower-consumption days.
2. Improve personalised recommendations based on viewing history.
3. Promote popular sports and music content to relevant audiences.
4. Develop customer engagement campaigns for less active viewers.
5. Use demographic and regional insights to guide marketing initiatives.
6. Monitor viewing activity to evaluate the effectiveness of engagement strategies.

## 📁 Project Files

| File | Description |
|---|---|
| `1. BrightTV_Case_Study.pdf` | Business case study and project requirements |
| `2. Bright_TV_Raw_Data.xlsx` | Original dataset |
| `3. Userprofiles_analysis.sql` | SQL analysis and preparation of customer profiles |
| `4. Viewership_analysis.sql` | SQL analysis of viewing records |
| `5. CTE (combining userprofiles and viewership)...` | Combined SQL transformation |
| `6. Bright_TV_Pivot_Analysis.csv` | Exported analytical results |
| `7. BrightTV presentation.pptx` | Final presentation containing charts, insights and recommendations |

## 📈 Presentation

The PowerPoint presentation contains visualisations covering:

- Customer age distribution
- Gender demographics
- Ethnicity distribution
- Geographic distribution
- Monthly viewing trends
- Weekday consumption
- Popular television channels
- Viewing times
- Customer engagement levels

**[View BrightTV Presentation](7.%20BrightTV%20presentation.pptx)**

## ⚠️ Data Limitations

The dataset contains viewing sessions rather than a complete subscription history. Therefore, the analysis identifies opportunities for subscriber growth but does not measure actual subscription acquisition or churn.

Missing demographic values and the source data's UTC timestamps must also be considered when interpreting the findings.

## 🎓 Skills Demonstrated

- SQL querying
- Data cleaning and transformation
- Common Table Expressions (CTEs)
- SQL joins
- Data integration
- Customer segmentation
- Exploratory data analysis
- Excel PivotTables
- Data visualisation
- Business intelligence
- Data storytelling
- Business recommendations

## 🏁 Conclusion

This project demonstrates my ability to transform raw customer and viewing data into meaningful business insights.

By combining SQL data preparation, Excel analysis and business-focused visualisations, I identified viewing trends and opportunities for BrightTV to improve customer engagement and support subscriber growth.

The project strengthened my practical skills in data analytics and communicating technical findings to business stakeholders.

---

**Yolisa Velebayi**  
Data Analytics | Data Engineering | Business Intelligence

[GitHub Profile](https://github.com/Yolisa95)
