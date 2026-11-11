# 🏦 Bank Customer Churn Prediction

Predicting which bank customers are likely to leave, using EDA and a neural network (TensorFlow/Keras).

## 📌 Objective
Identify customers at risk of churning so the bank can take retention action early.

## 🛠️ Tech Stack
Python · Pandas · NumPy · Matplotlib · Seaborn · Scikit-learn · TensorFlow/Keras · Jupyter Notebook

## 🔄 Workflow
1. **Data Cleaning**: checked duplicates, null values and data types; standardised column names (lowercase, underscores)
2. **Feature Engineering**
   - Created `age_group` (quartile-based) from age
   - Renamed `tenure` to `years_of_service`
   - Dropped `customer_id` and `age`
3. **EDA (6 visuals)**: churn count, churn by country, age distribution, credit score vs churn, churn by age group, correlation heatmap
4. **Preprocessing**
   - Encoded `country`, `gender`, `age_group`
   - Scaled `balance` and `estimated_salary` with MinMaxScaler
5. **Modeling**
   - 80/20 train-test split
   - Neural network: Dense(10, ReLU) → Dense(1, Sigmoid)
   - Adam optimizer, binary cross-entropy, 50 epochs
6. **Evaluation**: accuracy, classification report, confusion matrix, churn probability per customer

## 📊 Results
- Test accuracy: **XX%**
- Precision / Recall / F1 (churn class): **XX / XX / XX**

*(Add your values from `model.evaluate` and `classification_report`.)*

## 💡 Key Insights
- Churn rate differs by country and age group
- Older customers show higher churn
- *(Add your own findings from the charts.)*

## 📁 Project Structure
