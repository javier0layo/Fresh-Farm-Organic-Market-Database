/**CUSTOMER**/
CREATE TABLE CUSTOMER (
 	CustomerID 		INT 				NOT NULL, 
FirstName 		CHAR (25 BYTE) 		NOT NULL, 
LastName 		CHAR (25 BYTE) 		NOT NULL, 
Email			CHAR (50 BYTE) 		NOT NULL, 
PhoneNumber 	CHAR (15 BYTE) 		NOT NULL, 
Street 			CHAR (25 BYTE) 		NOT NULL, 
City 			CHAR (25 BYTE) 		NOT NULL, 
State 			CHAR (2 BYTE)		NOT NULL, 
PostalCode 		CHAR (5 BYTE)	 	NOT NULL, 
CONSTRAINT 	cuPK 				PRIMARY KEY (CustomerID)
);

/**CATEGORY**/
CREATE TABLE CATEGORY (
CategoryID 		INT 				NOT NULL,
CategoryName 	CHAR (100) 			NOT NULL,
Description 		CHAR (4000) 			NOT NULL, 
ActiveStatus 		NUMBER (1) 			NULL
**// Represent TRUE (1) and FALSE (0)//**
CONSTRAINT	CategoryPK 	PRIMARY KEY (CategoryID)
);

/**SUPPLIER**/
CREATE TABLE SUPPLIER (
SupplierID 			INT 				NOT NULL,
    	Name 				CHAR (25 BYTE) 		NOT NULL,
    	Email 				CHAR (25 BYTE) 		NOT NULL,
    	PhoneNumber		 	CHAR (15BYTE)		 NOT NULL,   
    	LeadTime 			INT 				NULL,                  
  	CONSTRAINT 		SupplierPK 			PRIMARY KEY(SupplierID)
);

/**PRODUCT**/
CREATE TABLE PRODUCT (
   	 ProductID 			INT 				NOT NULL,
    	CategoryID			 INT 				NOT NULL,
    	SupplierID 			INT 				NOT NULL,
    	Name 				CHAR (100) 			NOT NULL,                     
   	 SKU 				CHAR (50)			NOT NULL,                         
    	PricePerUnit			DECIMAL (10, 2) 		NOT NULL,             
   	 UnitOfMeasurement		 CHAR (50) 			NULL,               
   	 HarvestDate 			DATE 				NULL,                            
   	 ShelfLife 			INT 				NOT NULL,                           
    	AvailabilityStatus 		CHAR (50) 			NOT NULL,          
    	ReorderThreshold		INT 				NOT NULL,                    
    	CONSTRAINT 		ProductPK 			PRIMARY KEY(ProductID),
	CONSTRAINT		ProductCategoryFK	           FOREIGN KEY(CategoryID)
					REFERENCES		CATEGORY(CategoryID),
CONSTRAINT 	ProductSupplierFK 		FOREIGN KEY(SupplierID) 
                                       REFERENCES                       SUPPLIER(SupplierID)
);

/**SALES_ORDER**/
CREATE TABLE SALES_ORDER (
    	SalesOrderID 			INT				 NOT NULL,
    	CustomerID 			INT 				NOT NULL,
   	OrderDate 			DATE 				NOT NULL,
    	OrderStatus			CHAR (50 BYTE) 		NOT NULL,
   	DeliveryDate 			DATE 				NULL,
    	Total 				DECIMAL (10, 2) 		NULL,
    	Tax 				DECIMAL (10, 2) 		NULL,
    	Subtotal 			DECIMAL (10, 2) 		NULL,
    	PaymentMethod 		CHAR (50 BYTE) 		NOT NULL,
    	CONSTRAINT 		Sales_OrderPK	      PRIMARY KEY(SalesOrderID),
	CONSTRAINT		Sales_OrderCustomerFK FOREIGN KEY(CustomerID)
					REFRENCES		     CUSTOMER(CustomerID),    	
CONSTRAINT 		chk_PaymentMethod
CHECK (PaymentMethod IN ('CARD', 'CASH', 'REFUND')),
CONSTRAINT 		chk_TotalCalculation
CHECK (Subtotal = Total + Tax)
);

/**ORDER_ITEM**/
CREATE TABLE ORDER_ITEM (
    	OrderItemID 		INT		 		NOT NULL,
    	SalesOrderID 		INT 				NOT NULL,
  	ProductID 		INT 				NOT NULL,
   	Quantity 		INT				NOT NULL,
    	UnitPrice 		DECIMAL (10, 2)		 NOT NULL,  
    	Discount		DECIMAL (10, 2)		 NULL,       
    	Total 			DECIMAL (10, 2)		 NOT NULL,      
   	 CONSTRAINT 	OrderItemPK 			PRIMARY KEY (OrderItemID),
    	CONSTRAINT 	OrderItemSalesOrderFK 	FOREIGN KEY (SalesOrderID)
        				REFERENCES		 Sales_Order(SalesOrderID),
   	 CONSTRAINT 	OrderItemProductFK 		FOREIGN KEY (ProductID)
       				 REFERENCES 		PRODUCT(ProductID),
CONSTRAINT 	chk_QUANTITY		 CHECK (Quantity > 0),
CONSTRAINT 	chk_UNITPRICE 		CHECK (UNITPRICE >= 0),
CONSTRAINT 	chk_DISCOUNT 		CHECK (Discount >= 0),
CONSTRAINT 	chk_TOTAL 			CHECK (Total >= 0),
CONSTRAINT 	chk_T	CHECK (Total = (Quantity * UnitPrice) - DISCOUNT)
);

/**LOYALTY_PROGRAM**/
CREATE TABLE LOYALTY_PROGRAM (
 	LoyaltyProgramID		 INT 			NOT NULL, 
CustomerID 			INT 			NOT NULL, 
LoyaltyPointsUsed		 INT 			NULL,
 	LoyaltyPoints 			INT 			NULL,
 	LoyaltyLevel 			CHAR (50) 		NULL, 
CONSTRAINT	 Loyalty_ProgramPK	PRIMARY KEY(LoyaltyProgramID), 
CONSTRAINT 	Loyalty_ProgramCustomerFK FOREIGN KEY (CustomerID) REFERENCES 		CUSTOMER(CustomerID),
CONSTRAINT 	chk_LoyaltyPoints CHECK (LoyaltyPointsUsed <= LoyaltyPoints)
);


