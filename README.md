# Fresh-Farm-Organic-Market-Database
COURSE: Database Systems

DATE: 9/24 - 12/24

Contributor(s): Andrew Fuller, Talha Ikram, Nelson Rodriguez

**Executive Summary:**
Our business, Fresh Farm Organic Market, was established to cater to health-conscious consumers seeking high-quality, organic products. However, the Covid-19 pandemic posed significant challenges, as lockdowns and reduced foot traffic led to a substantial loss of revenue. The company faced the risk of bankruptcy due to its reliance on a brick-and-mortar model.

Recognizing the need for adaptation, we pivoted to an e-commerce-focused business strategy. This transition revealed the limitations of the existing database, which was designed solely for physical store operations. The database was incapable of efficiently supporting online transactions, tracking customer trends, or optimizing inventory for delivery services.

A complete database redesign was implemented to address these challenges. The new database facilitated:
•	Improved customer trend analysis, enabling more accurate forecasting and tailored marketing campaigns.
•	Streamlined inventory management, reducing spoilage and ensuring availability of high-demand products.
•	Enhanced support for the e-commerce model, providing better insights into online consumer behavior.
As a result, the company experienced a significant increase in revenue, regained financial stability, and improved its ability to meet customer needs. This success has encouraged the business to explore further expansion through new distribution centers, solidifying its position in the competitive organic market.

**Business Description**
Name of Business
         Fresh Farm Organic Market 
Purpose of Business
Fresh Farm Organic Market serves health-conscious consumers with various organic and locally sourced products. The business strives to promote sustainable farming and healthy living by offering fresh, high-quality vegetables.
Summary of Business Activities
Fresh Farm Organic Market is a retail business that sources organic produce from local farmers and suppliers. The market operates on an online platform, allowing customers to purchase products through subscriptions. The business offers seasonal boxes, customer orders, and delivery services.
Problems, Opportunities, and Objectives

**Problems**
Fresh Farm faces challenges that affect the efficiency and profitability of the company. Fresh Farm struggles to track its customers’ preferences/ buying habits, which makes it challenging to encourage customer retention. The manual inventory management system leads to stock shortages and/or overstocking, resulting in lost sales or wasted inventory that cannot be sold in time. Thus, customers are more likely to turn to competitors when products are unavailable or expired. Without streamlined communication and forecasting tools, the company experiences restocking delays and other issues affecting inventory management.

**Opportunities**
Fresh Farm has the opportunity to expand its e-commerce business by applying new concepts to better understand its customers. By partnering with local farms and growing their product range, Fresh Farm will be able to reach new customers looking for a variety of products. The database will allow Fresh Farm to identify the products that customers are most likely to purchase and thus create a tailored experience for them, including a loyalty program. The database will provide information on customer relations and increase profitability through expansion. 

**Objectives**
The new database will accurately represent inventory, increase profitability, provide an understanding of customer relations, and improve the supplier management system. The tables will minimize stock shortages and overages by automating inventory updates and restocking alerts. Valuable customer data will be captured to tailor marketing and loyalty programs. The database will track purchase history, lead times, and stock levels to improve supplier relationships and allow for more effective supply chain management.
Business case
The primary goal of implementing a new database system at Fresh Farm Organic market is to address the current inefficiencies in inventory control, customer tracking, and supplier management. This will lead to a significant improvement in the market's operations and overall performance.
The SQL Database will provide new opportunities to enhance customer experience, create effective supply chain management, and increase profitability prospects. 

**Information and Data Requirement**
Fresh Farm Organic Markey needs data in several categories for effective management. Customer data, such as customers’ preferences and order history will allow us to understand purchasing habits and create marketing strategies. 
Inventory data, such as inventory stock level, stock status, and restocking alerts, will allow us to track inventory status and anticipate demand. The information gathered from the data will allow our company to make decisions without wasting resources. 
Product data, such as product inventory, product categories, pricing, SKU, and product availability, is necessary for understanding each item for sale and the operational processes. Our database is required to make sure we are aware of products that are low in stock and are expiring soon, so that customers are well serviced. 
Supplier data will keep track of lead time, delivery dates, and contact information, this data will allow us to make sure we have direct contact with suppliers, in case of any issues with vendor management. 
Order data, like quantity, price, date, and shipping status, should track order timelines to ensure on-time delivery and ensure customer satisfaction. 

**List of identities**
-	CUSTOMER (CustomerID, FirstName, LastName Email, PhoneNumber, Street, City, State, PostalCode)
-	PRODUCT (ProductID, Name, SKU, CategoryID, SupplierID, PricePerUnit, UnitOfMeasurment, HarvestDate, ShelfLife, AvailabilityStatus, ReorderThreshold)
-	SUPPLIER (SupplierID, Name, Email, PhoneNumber, LeadTime)
-	SALES_ORDER (SalesOrderID, CustomerID, OrderDate, OrderStatus, DeliveryDate, Subtotal, Tax, Total, PaymentMethod, OrderNotes)
-	ORDER_ITEM (OrderItemID, SalesOrderID, ProductID, Quantity, UnitPrice, Discount, TotalPrice) 
-	CATEGORY (CategoryID, CategoryName, Description, ActiveStatus)
-	LOYALTY_PROGRAM (LoyaltyProgramID, CustomerID, LoyaltyPointsUsed, LoyaltyPoints, LoyaltyLevel)

**E-R Model into Relationship Model**
-	![image](https://github.com/user-attachments/assets/2067d6bd-ab89-43ed-a675-8ef73b650b9e)

**Relationship View**
-	![image](https://github.com/user-attachments/assets/b87ae5e6-9c5f-4747-bcbe-ea727d9b1bad)

**Insert Tables**
Customer Data
![image](https://github.com/user-attachments/assets/ab68fd28-2b1a-434f-8560-1d00f06f1892)

Supplier Data
![image](https://github.com/user-attachments/assets/9b9aaf53-de89-4606-8cae-e7e1173bcaee)

Category Data
![image](https://github.com/user-attachments/assets/7b4e2cf4-472b-4bb1-8a87-636eb2278a1f)

Product Data
![image](https://github.com/user-attachments/assets/5c77e68e-3b15-405f-ac90-1e8535d08a2e)

Sales Order Data
![image](https://github.com/user-attachments/assets/46f1b70a-01cc-4f3b-ab2d-0b07fe6f58b2)

Order Item Data
![image](https://github.com/user-attachments/assets/69acf4ae-576e-4493-926c-83e820c6454c)

Loyalty Program Data
![image](https://github.com/user-attachments/assets/80298b6c-33ea-41fb-b52b-deffb6ef2b8f)



 

