-- 코드를 입력하세요
SELECT  USER_ID
    ,   NICKNAME
    ,   CITY||' '||STREET_ADDRESS1||' '||STREET_ADDRESS2 전체주소
    ,   SUBSTRB(TLNO,1,3)||'-'||SUBSTRB(TLNO,4,4)||'-'||SUBSTRB(TLNO,8,4) 전화번호
FROM    USED_GOODS_USER
WHERE   1=1
        AND USER_ID IN  (
                        SELECT      WRITER_ID
                        FROM        USED_GOODS_BOARD
                        GROUP BY    WRITER_ID
                        HAVING      COUNT(BOARD_ID) >= 3
                        )
ORDER BY USER_ID DESC