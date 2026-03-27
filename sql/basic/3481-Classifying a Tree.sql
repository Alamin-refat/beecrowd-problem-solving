/*Given the following balanced binary tree stored in the nodes table, classify each node with types LEAF, INNER, and ROOT. Present the result ordered by the value of the node identifier.*/

SELECT 
    n.node_id,
    CASE
        WHEN n.node_id NOT IN (
            SELECT pointer 
            FROM nodes 
            WHERE pointer IS NOT NULL
        ) THEN 'ROOT'
        WHEN n.node_id IN (
            SELECT node_id 
            FROM nodes 
            WHERE pointer IS NOT NULL
        ) THEN 'INNER'
        ELSE 'LEAF'
    END AS type
FROM (
    SELECT DISTINCT node_id
    FROM nodes
) n
ORDER BY n.node_id;
