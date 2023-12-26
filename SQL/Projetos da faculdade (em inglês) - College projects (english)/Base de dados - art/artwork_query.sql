USE v_art;

SELECT 
    *
FROM
    artwork;


SELECT 
    title
FROM artwork
	JOIN artwork_keyword
	ON artwork.artwork_id = artwork_keyword.artwork_id
	JOIN keyword 
	ON artwork_keyword.keyword_id = keyword.keyword_id
WHERE
    keyword = 'water';

USE bike;
SELECT 
    first_name, last_name, store.store_id
FROM staff
	JOIN store
	ON staff.store_id = store.store_id
WHERE
    staff.store_id = 3;
