select FIRST_NAME ,LAST_NAME,sum(total_amount)
from CUSTOMERS
inner join  ORDERS on CUSTOMERS.CUSTOMER_ID = orders.CUSTOMER_ID
group by customers.CUSTOMER_ID  
having sum(TOTAL_AMOUNT) > 100000;