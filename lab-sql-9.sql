USE sakila;

# 1. Create a table rentals_may to store the data from rental table with information for the month of May.
SELECT *
FROM rental;

CREATE TABLE rentals_may (
	`rental_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `rental_date` DATETIME,
	`inventory_id` smallint(5) unsigned NOT NULL,
    `customer_id` smallint(5) unsigned NOT NULL,
    `return_date` DATETIME,
    `staff_id` smallint(5) unsigned NOT NULL,
    `last_update` DATETIME
    );
	 
	# CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
	#) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8; 
 
# 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO rentals_may (`rental_id`, `rental_date`, `inventory_id`, `customer_id`, `return_date`, `staff_id`, `last_update`)
SELECT *
FROM rental
WHERE MONTH(rental_date) = 05;

SELECT *
FROM rentals_may;


# 3. Create a table rentals_june to store the data from rental table with information for the month of June.

CREATE TABLE rentals_june (
	`rental_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `rental_date` DATETIME,
	`inventory_id` smallint(5) unsigned NOT NULL,
    `customer_id` smallint(5) unsigned NOT NULL,
    `return_date` DATETIME,
    `staff_id` smallint(5) unsigned NOT NULL,
    `last_update` DATETIME
    );
    
# 4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

INSERT INTO rentals_june (`rental_id`, `rental_date`, `inventory_id`, `customer_id`, `return_date`, `staff_id`, `last_update`)
SELECT *
FROM rental
WHERE MONTH(rental_date) = 06;

SELECT *
FROM rentals_june;

# 5. Check the number of rentals for each customer for May.
SELECT *
FROM rentals_may;

SELECT customer_id, COUNT(rental_id) AS num_rentals_may
FROM rentals_may
GROUP BY customer_id
ORDER BY num_rentals_may ASC;


# 6. Check the number of rentals for each customer for June.
SELECT customer_id, COUNT(rental_id) AS num_rentals_june
FROM rentals_june
GROUP BY customer_id
ORDER BY num_rentals_june ASC;

# Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:



# Check the number of rentals for each customer for May

# Check the number of rentals for each customer for June

# Hint: You can store the results from the two queries in two separate dataframes.

# Write a function that checks if customer borrowed more or less films in the month of June as compared to May.

# Hint: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes. Here is a link to the documentation for the merge function.



