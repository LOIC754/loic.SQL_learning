
------NETOYAGE DES DONNES 

SELECT
  -- Add 0s to ensure violation_location is 4 characters in length
  LPAD ('violation_location', 4, '0') AS violation_location,
  -- Replace 'P-U' with 'TRK' in vehicle_body_type column
  REPLACE (vehicle_body_type, 'P-U', 'TRK') AS vehicle_body_type,
  -- Ensure only first letter capitalized in street_name
  INITCAP (street_name) AS street_name
FROM
  parking_violation;



  ---utilisation de pattern 

  SELECT 
	summons_number,
	-- Replace uppercase letters in plate_id with dash
	REGEXP_REPLACE(plate_id, '[A-Z]' , '_', 'g') 
FROM 
	parking_violation;


	------------------------

	SELECT 
	summons_number, 
    CASE WHEN 
    	summons_number IN (
          SELECT 
  			violation_time 
  		  FROM 
  			parking_violation 
  		  WHERE 
            -- Match violation_time for morning values
  			violation_time SIMILAR TO '\d\d\d\dA'
    	)
        -- Value when pattern matched
        THEN 1 
        -- Value when pattern not matched
        ELSE 0 
    END AS morning 
FROM 
	parking_violation;