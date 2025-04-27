/*
https://platform.stratascratch.com/coding/2119-most-lucrative-products?code_type=2
You have been asked to find the 5 most lucrative products in terms of total revenue for the first half of 2022 (from January to June inclusive).
*/

import pandas as pd
import datetime as dt 
online_orders['date_sold'] = pd.to_datetime(online_orders['date_sold'])

online_orders['month'] = online_orders['date_sold'].dt.month

half_yearly_sales =  online_orders[(online_orders['month'] >= 1) & (online_orders['month'] <= 6)]

half_yearly_sales['revenue'] = (half_yearly_sales['cost_in_dollars'] * 
    half_yearly_sales['units_sold']) 
    
products = half_yearly_sales.groupby('product_id')['revenue'].sum().reset_index()

products["ranking"] = products["revenue"].rank(method="min", ascending=False)

result = products[products["ranking"] <= 5][["product_id", "revenue"]].sort_values("revenue", ascending=False)
