-- 코드를 입력하세요
SELECT A.CART_ID
FROM (
SELECT ID, CART_ID, NAME, PRICE
FROM CART_PRODUCTS
WHERE NAME = 'Milk') A,
(SELECT ID, CART_ID, NAME, PRICE
FROM CART_PRODUCTS
WHERE NAME = 'Yogurt') B
WHERE A.CART_ID = B.CART_ID
ORDER BY CART_ID;