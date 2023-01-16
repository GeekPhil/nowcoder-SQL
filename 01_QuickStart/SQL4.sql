-- 此题要查前两个用户的设备ID，查出所有用户按每页2个用户分页，返回第一页
-- solution
SELECT
    device_id
FROM
    user_profile
LIMIT
    0, 2;