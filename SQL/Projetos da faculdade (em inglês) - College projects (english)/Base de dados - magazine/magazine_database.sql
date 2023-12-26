USE magazine;

SELECT 
    *
FROM
    magazine;
    
# First Querry

SELECT 
    magazineName,
    ROUND(magazinePrice - ((magazinePrice * 3) / 100),
            2) AS '3% Off'
FROM
    magazine;
    
# Second Querry

SELECT 
    subscriberKey,
    round(DATEDIFF('2020-12-20', subscriptionStartDate) / 365) AS 'Years since subscription'
FROM
    subscription;

# Third Querry

SELECT 
    subscriptionStartDate,
    subscriptionLength,
    DATE_FORMAT(DATE_ADD(subscriptionStartDate,
                INTERVAL 12 MONTH),
            '%M %e, %Y') AS 'subscriptionEnd'
FROM
    subscription;