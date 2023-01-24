-- 查出指定字段数据并对多个字段排序
-- solution
SELECT
    quantity,
    item_price
FROM
    OrderItems
ORDER BY
    quantity DESC,
    item_price DESC;