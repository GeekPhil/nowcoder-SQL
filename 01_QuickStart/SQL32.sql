-- 此题考察字符串函数的使用，用`substring_index`截取所需位置的字符串
-- solution
SELECT
    substring_index(substring_index(profile, ',', 3), ',', -1) AS age,
    count(device_id) AS number
FROM
    user_submit
GROUP BY
    age;