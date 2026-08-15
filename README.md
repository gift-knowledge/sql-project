# 📊 Project: Sales Analysis SQL (Day 1)

โปรเจกต์วิเคราะห์ข้อมูลยอดขายจำลองเพื่อตอบโจทย์ธุรกิจ 5 ข้อ โดยใช้ภาษา SQL ร่วมกับฐานข้อมูล SQLite

## 💾 1. ตารางข้อมูลจำลอง (Input Data)

| order_id | customer | product | category | quantity | price |
|----------|----------|---------|----------|----------|-------|
| 1        | Alice    | Laptop  | Electronics | 1        | 25000 |
| 2        | Bob      | Mouse   | Electronics | 2        | 500   |
| 3        | Alice    | Keyboard| Electronics | 1        | 1500  |
| 4        | John     | Chair   | Furniture| 2        | 3000  |
| 5        | Bob      | Desk    | Furniture| 1        | 5000  |

## 🎯 2. สรุปผลลัพธ์ตอบโจทย์ธุรกิจ 5 ข้อ (Business Insights)

*   **Task 1 (จำนวนออเดอร์ทั้งหมด):** 5 รายการ
*   **Task 2 (รายได้รวมของร้านค้า):** 38,500 บาท
*   **Task 3 (ยอดซื้อของลูกค้าแต่ละคน):** Alice = 26,500 บาท, Bob = 6,000 บาท, John = 6,000 บาท
*   **Task 4 (ยอดขายตามหมวดหมู่สินค้า):** Electronics = 27,500 บาท, Furniture = 11,000 บาท
*   **Task 5 (สินค้าที่ทำรายได้สูงสุด):** Laptop (ทำรายได้รวม 25,000 บาท)


## ❓ Business Questions
1. Which orders have a price above 3,000 THB?
2. Which products have the highest prices?
3. Which customer generates the most revenue?
4. What is the average product price by category?
5. How many orders are in each category?

## 🛠️ Key Skills
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- COUNT
- SUM
- AVG




DAY 4
### Explanation

- **SELECT**: Retrieves the `product` and `price` columns from the table.
- **CASE**: Starts a conditional expression, similar to an "if" statement.
- **WHEN price >= 5000 THEN 'High'**: If the price is 5000 or higher, the value is set to `'High'`.
- **WHEN price >= 3000 THEN 'Medium'**: If the price is 3000 or higher but less than 5000, the value is set to `'Medium'`.
- **ELSE 'Low'**: If none of the above conditions are met, the value is set to `'Low'`.
- **END AS price_level**: Ends the conditional expression and assigns the result to the `price_level` column.
- **FROM orders**: Specifies that the data is retrieved from the `orders` table.


This query categorizes products into three price tiers.
We use CASE to classify products based on their prices.
The price levels are High, Medium, and Low.