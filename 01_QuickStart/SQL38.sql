-- 此题考察多个字段的降序排序，`desc`限定排序方式为降序，不可省略
-- solution
SELECT
    device_id,
    gpa,
    age
FROM
    user_profile
ORDER BY
    gpa DESC,
    age DESC;