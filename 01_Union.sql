-- 테이블 합치기 = union
-- 컬럼 만들기 = 값 AS 컬럼명
-- 컬럼 번호 = 컬럼은 SELECT된 순으로 번호를 가진다.

SELECT TO_CHAR(SALES_DATE,'YYYY-MM-DD'), PRODUCT_ID , USER_ID, SALES_AMOUNT
FROM ONLINE_SALE 
WHERE TO_CHAR(SALES_DATE,'MM') = '03'
-- 조건문은 SELECT마다 붙여주어야한다.
 UNION ALL -- UNION은 SELECT 와 SELECT 사이에 적어준다.
SELECT TO_CHAR(SALES_DATE,'YYYY-MM-DD'), PRODUCT_ID ,NULL AS USER_ID , SALES_AMOUNT
FROM OFFLINE_SALE 
WHERE TO_CHAR(SALES_DATE,'MM') = '03'
ORDER BY 1,2,3; -- 컬럼 순으로 1,2,3이 자동으로 부여되는데 이걸 정렬에 사용하면 코드가 깨끗해진다.