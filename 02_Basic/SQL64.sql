-- 查出指定字段数据并对多个字段排序
-- solution
SELECT
    cust_id,
    order_num
FROM
    Orders
ORDER BY
    cust_id ASC,
    order_date DESC;