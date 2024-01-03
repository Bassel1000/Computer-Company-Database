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
Note: ER-Model , Relational Model , Tables are made with [Lucid Chart](https://www.lucidchart.com/pages/landing?utm_source=bing&utm_medium=cpc&utm_campaign=_chart_en_tier3_mixed_search_brand_exact_&km_CPC_CampaignId=369684520&km_CPC_AdGroupID=1225955648609265&km_CPC_Keyword=lucidchart&km_CPC_MatchType=e&km_CPC_ExtensionID={extensionid}&km_CPC_Network=o&km_CPC_AdPosition=&km_CPC_Creative=&km_CPC_TargetID=kwd-76622376819042:aud-813470443:loc-187&km_CPC_Country=143029&km_CPC_Device=c&km_CPC_placement=&km_CPC_target=&mkt_query=lucidchart&msclkid=869fa0b8ce3e185424dac52db7f964c6)
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




