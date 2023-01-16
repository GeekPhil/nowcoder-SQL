-- 此题要求查出非“复旦大学”的用户，可用`<>`或`!=`或`not in`限定条件
-- solution 1
SELECT
    device_id,
    gender,
    age,
    university
FROM
    user_profile
WHERE
    university != '复旦大学';

-- solution 2
SELECT
    device_id,
    gender,
    age,
    university
FROM
    user_profile
WHERE
    university NOT IN ('复旦大学');