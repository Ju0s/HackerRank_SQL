SELECT 
    DISTINCT b1.N,
    -- node type of Binary Tree ordered by the value of the node
    CASE
        -- Root: If node is root node
        WHEN b1.P IS NULL THEN 'Root'
        -- Leaf: If node is leaf node
        WHEN b2.N IS NULL THEN 'Leaf'
        -- Inner: If node is neither root nor leaf node
        ELSE 'Inner'
    END AS node_type
FROM BST b1
LEFT JOIN BST b2 ON b1.N = b2.P
ORDER BY N;
