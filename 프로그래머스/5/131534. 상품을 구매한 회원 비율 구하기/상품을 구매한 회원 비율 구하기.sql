SELECT TO_CHAR(B.SALES_DATE, 'YYYY') AS YEAR, 
       TO_NUMBER(TO_CHAR(B.SALES_DATE, 'MM')) AS MONTH, 
       COUNT(DISTINCT A.USER_ID) AS PUCHASED_USERS,
       ROUND(COUNT(DISTINCT A.USER_ID) / (SELECT COUNT(USER_ID)
                                            FROM USER_INFO
                                           WHERE TO_CHAR(JOINED, 'YYYY') = '2021'), 1) AS PUCHASED_RATIO
  FROM USER_INFO A
  JOIN ONLINE_SALE B ON A.USER_ID = B.USER_ID
 WHERE TO_CHAR(A.JOINED, 'YYYY') = '2021'
 GROUP BY TO_CHAR(B.SALES_DATE, 'YYYY'), TO_NUMBER(TO_CHAR(B.SALES_DATE, 'MM'))
 ORDER BY YEAR, MONTH