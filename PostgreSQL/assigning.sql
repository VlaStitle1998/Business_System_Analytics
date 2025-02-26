SELECT 
    c.client_id, 
    c.client_fullname, 
    l.lawyer_id, 
    l.lawyer_fullname 
FROM 
    client c 
JOIN 
    lawyer l 
ON 
    c.client_id = l.lawyer_id
ORDER BY 
    c.client_id;  
