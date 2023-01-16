-- 此题要取出所有数据，不考虑查询性能的情况下可使用`*`匹配所有字段
-- solution 1
SELECT
    *
FROM
    user_profile;

-- solution 2
SELECT
    id,
    device_id,
    gender,
    age,
    university,
    province
FROM
    user_profile;