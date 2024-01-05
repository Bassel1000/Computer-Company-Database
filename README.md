# Computer-Company-Database
This project is about how to make a sample computer company database we took (Asus as an example for our dataset)
# Introduction
We got inspiration for this project from our personal interest and curiosity in Technology and especially computer hardware. We took **ASUS** as our role model considering it one of the leading companies in the field. <br>
<br>
This project will contain : <br>
1- ER Model <br>
2- Relational Model <br>
3- Tables <br>
4- Relational Alegbra <br>
5- SQL <br>
Note: ER-Model , Relational Model , Tables are made with [Lucid Chart](https://www.lucidchart.com/pages/landing?utm_source=bing&utm_medium=cpc&utm_campaign=_chart_en_tier3_mixed_search_brand_exact_&km_CPC_CampaignId=369684520&km_CPC_AdGroupID=1225955648609265&km_CPC_Keyword=lucidchart&km_CPC_MatchType=e&km_CPC_ExtensionID={extensionid}&km_CPC_Network=o&km_CPC_AdPosition=&km_CPC_Creative=&km_CPC_TargetID=kwd-76622376819042:aud-813470443:loc-187&km_CPC_Country=143029&km_CPC_Device=c&km_CPC_placement=&km_CPC_target=&mkt_query=lucidchart&msclkid=869fa0b8ce3e185424dac52db7f964c6) <br>
SQL was made on [MySQL](https://www.mysql.com/)
## 1-ER Model
### Designing ER-Model 
**Entity**: An entity is an object or a thing that can be identified and distinguished from others. For example, a computer, a customer, or a product. An entity is represented by a rectangle with the entity name inside. <br>
 <br>
**Attribute**: An attribute is a property or a characteristic of an entity. For example, a computer has attributes like model, price, or color. An attribute is represented by an ellipse with the attribute name inside, and connected to the entity by a line. <br>
 <br>
**Relationship**: A relationship is an association or a connection between two or more entities. For example, a customer buys a product, or a product belongs to a category. A relationship is represented by a diamond with the relationship name inside, and connected to the entities by lines. <br>
 <br>
**Cardinality**: Cardinality is the number of instances of one entity that can be associated with one instance of another entity. For example, one customer can buy many products, but one product can be bought by only one customer. Cardinality is represented by symbols or numbers on the lines that connect the entities and the relationship. There are different types of cardinality, such as one-to-one, one-to-many, many-to-one, or many-to-many <br>
 <br>
**Here is our full design** ![image](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/602cb47f-7164-4c5c-80c2-976a498ac62d) 
**Contents of the design:** <br>
 <br>
**Entities:** **Customer**, **Order_Details**, **Product:** it is enhanced into (**Monitors**, **Laptops**, **Desktops**) with role name category, **Department**, **Employee**, **Payment** <br>
 <br>
**Attributes:** <br>
<br>
For **Customer** entity: Primary Key(**Username**), Composite attribute (**Name**) split into **First_Name** and **Last_Name**, Phone, Email_Address <br>
<br>
For **Order_Details** entity: Primary key(**Order_no**), **O_Date**, **O_Status** <br> 
<br>
For **Product** entity: Primary Key(**P_ID**), **Price**, **P_Name** <br>
<br>
For **Monitors** entitty: **Refresh_Rate**, **Resolution**, **Screen_Size** <br>
<br>
For **Laptops** entity: **Size**, **Weight**, **Battery_Life** <br>
<br>
For **Desktops** entity: **Hard_Disk**, **RAM**, Composite attribute(**Processing_Unit**) split into **CPU** and **GPU** <br>
<br>
For **Depatment** entity: **Name**, Primary key(**Dnumber**), **Mgr_ID** <br>
<br>
For **Employee** entity: Primary key(**ID**), Composite attribute(**Name**) split into **First_Name** and **Last_Name**, **Salary**, **Dnumber** <br>
<br>
For **Payment** entity: Primarykey(**Transaction_no**), **Installment**, **P_Type** <br>
<br>
**Relationship and Cadinality:** <br>
<br>
1- **Places** one-to-many between **Customer** and **Order_Details** <br>
2- **Pays** one-to-one between **Payment**, **Customer** and **Order_Details** <br>
3- **O_Contains** many-to-many between **Order_Details** and **Product** <br>
4- **Develops** many-to-many between **Department** and **Product** <br>
5- **Works_in** many-to-one between **Employee** and **Department** <br>
6- **Manages** one-to-one between **Employee** and **Department** <br>
## 3-Tables <br>
Dataset in tables are AI generated and doesn't represent real data <br>
**Customer Table:** <br>
![Screenshot 2024-01-03 220223](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/9293fe80-8456-470e-b9c2-50daf394829a) <br>
**Order_Details Table:** <br>
![Screenshot 2024-01-03 220303](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/6231a06b-590d-411f-a90b-8321e2d1b860) <br>
**Product Table:** <br>
![Product Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/18d89703-36da-4f01-9f2c-17b43d59cb6d) <br>
**Department Table:** <br>
![Department Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/5684b5a9-e4fe-4ad4-8e6a-0e34102f8731) <br>
**Employee Table:** <br>
![Employee Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/75fe1a4b-2ae8-4510-b02d-e4cf30333ca5) <br>
**Laptop Table:** <br>
![Laptop Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/afde2d5d-ca8e-43f3-84fe-a4e12edbd370) <br>
**Monitor Table:** <br>
![Monitor Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/f5f82c69-53d8-419d-aae0-be23c991bb7c) <br>
**Desktop Table:** <br>
![Desktop Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/c117d17c-8b90-4e7b-8af6-488b8be189ff) <br>
**Payment Table:** <br>
![Payment Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/9ece4efe-7f35-48e3-a20c-9f26a4371c08) <br>
**O_Contains Table:** <br>
![O_Contains Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/bfd5ea35-aa6b-4b8a-874d-8d3850ecf936) <br>
**Pays Table:** <br>
![Pays Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/24fcfd68-13e6-493a-aff8-3b21c41cdaf4) <br>
**Develops Table:** <br>
![Develops Table](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/14c2cea8-eb1e-41b0-91ab-c3b07f1508fa) <br>
## 4- Relational Algebra <br>

**Purpose of Relational Algebra:** <br>
<br>
A formal language for operating on tables and extracting desired information. <br>
<br>
Provides a foundation for understanding query languages like SQL. <br>

**Building Blocks:** <br>

**Basic Operations:** <br>
<br>
Projection (π): Selects specific columns from a table. <br>
<br>
Selection (σ): Restricts rows based on conditions. <br>
<br>
Union (∪): Combines rows from two tables, removing duplicates. <br>
<br>
Difference (-): Subtracts rows from one table that are also in another. <br>
<br>
Cartesian Product (×): Combines every row from one table with every row from another. <br>
<br>
**Join Operations:** <br>
<br>
Natural Join (⋈): Combines rows from two tables based on common attributes. <br>
<br>
Theta Join (⋈θ): Combines rows based on a specified condition. <br>
<br>
Outer Joins (⟕, ⟖): Include unmatched rows from one or both tables. <br>
<br>
**Query Construction:** <br>
<br>
Combine operations using parentheses to specify order of execution. <br>
<br>
**Importance:** <br>
<br>
Understanding relational algebra is essential for: <br>
<br>
Optimizing query performance. <br>
<br>
Troubleshooting query errors. <br>
<br>
Designing complex database applications. <br>
**Here is the queries we made:**
![Relational_Algebra_1](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/5e968a10-17ca-4558-902d-1703348226dd) <br>
![Relational_Algebra_2](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/da29fc57-3ded-4a1e-9b3a-c70873b9f944) <br>
![Relational_Algebra_3](https://github.com/Bassel1000/Computer-Company-Database/assets/94708469/f1aec2ac-ffb0-4b4a-8273-be3ef5c5aa09) <br>
# 5-SQL <br>
You will find the SQL code in **Project.sql** file it has all tables created and Data. <br>
It contains all relational algebra queries answers wriiten in SQL.












