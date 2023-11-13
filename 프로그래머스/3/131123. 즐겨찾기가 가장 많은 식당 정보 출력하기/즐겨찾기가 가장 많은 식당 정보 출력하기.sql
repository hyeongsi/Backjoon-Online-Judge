-- 코드를 입력하세요

-- SELECT *
-- FROM REST_INFO;

SELECT I.FOOD_TYPE, REST_ID, REST_NAME, I.FAVORITES
FROM (SELECT FOOD_TYPE, MAX(FAVORITES) FAVORITES
    FROM REST_INFO
    GROUP BY FOOD_TYPE) F
LEFT JOIN REST_INFO I
ON F.FOOD_TYPE = I.FOOD_TYPE AND F.FAVORITES = I.FAVORITES
ORDER BY I.FOOD_TYPE DESC;

