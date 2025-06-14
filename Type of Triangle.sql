-- identify the type of each record
SELECT
    CASE
        -- Not A Triangle: The given values of A, B, and C don't form a triangle.
        WHEN A + B <= C OR B + C <= A OR C + A <= B THEN 'Not A Triangle'
        -- Equilateral: It's a triangle with  sides of equal length.
        WHEN A = B AND B = C THEN 'Equilateral'
        -- Isosceles: It's a triangle with  sides of equal length.
        WHEN A = B OR B = C OR C = A THEN 'Isosceles'
        -- Scalene: It's a triangle with  sides of differing lengths.
        ELSE 'Scalene'
    END
FROM TRIANGLES;
