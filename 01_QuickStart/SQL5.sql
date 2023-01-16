-- 此题要求对字段重命名，用`as`关键字实现，`as`可省略
-- solution 1
SELECT
    device_id AS user_infos_example
FROM
    user_profile
LIMIT
    0, 2;

-- solution 1
SELECT
    device_id user_infos_example
FROM
    user_profile
LIMIT
    0, 2;