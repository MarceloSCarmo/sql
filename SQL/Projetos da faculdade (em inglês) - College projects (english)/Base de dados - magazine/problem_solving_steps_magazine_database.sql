USE magazine;

SELECT 
    magazineName, LEFT(magazineName, LOCATE(' Ma', magazineName)) AS 'Take of "Ma" and on', SUBSTRING(magazineName, LOCATE('Ma', magazineName)) AS 'From "Ma" on'
FROM
    magazine
WHERE magazineName LIKE '%Ma%';

# we want to take from that word on and take if off the magazine name.