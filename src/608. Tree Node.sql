SELECT id, 'Root' Type FROM tree
WHERE p_ID IS NULL
UNION
SELECT id, 'Inner' from tree
WHERE id IN (SELECT P_ID FROM tree
            WHERE p_id IS NOT NULL)
AND P_ID IS NOT NULL
UNION
SELECT id, 'Leaf' FROM Tree
WHERE ID NOT IN (SELECT P_ID FROM tree
                WHERE P_ID IS NOT NULL)
AND P_ID IS NOT NULL