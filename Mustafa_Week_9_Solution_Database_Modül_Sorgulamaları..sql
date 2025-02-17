1)İlk isminde Nick, Ed ve Jennifer adları bulunan aktörlerin adını ve soyadını gösterin.

SELECT first_name, last_name FROM actor
WHERE first_name LIKE 'Jennifer%' OR first_name LIKE 'Ed%' OR first_name LIKE 'Nick%'



2)İlk isminde adları Ed, Nick ve Jennifer olan aktörün sadece soyadını gösterin.

SELECT last_name FROM actor
WHERE first_name LIKE 'Jennifer%' OR first_name LIKE 'Ed%' OR first_name LIKE 'Nick%'



3)Adres tablosunun bütün ayrıntılarını gösterin.

SELECT * FROM address



4)Adres tablosunda ilçe ve telefonu (district & phone) azalan sırada gösterin.

SELECT district, phone FROM address
ORDER BY  district DESC,
	  phone DESC


5)Film ve envanter tablosundaki film_id’yi kullanarak, Film tablosundan film_id’yi, title’ i ve Envanter tablosundan envanter_id'sini gösterin.

SELECT film.film_id, film.title, inventory.inventory_id FROM film
JOIN inventory ON film.film_id =inventory.film_id



6)Envanter tablosu ve rental tablosundan oluşan ilk 5 satırı gösterin.

SELECT * FROM inventory
LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
ORDER BY rental.rental_id ASC
LIMIT 5;


7)Rental ve Payment tablolarından oluşan amount a göre azalan olarak sıralanmış rental_id, rental_date, payment_id ‘den oluşan ilk 10 satırı gösterin.

SELECT rental.rental_id, rental. rental_date, payment_id, payment.amount FROM payment
JOIN rental ON rental.rental_id = payment.rental_id
ORDER BY amount DESC
LIMIT 10;


8)Actor tablosunda actor_id 'nin boş olduğu satırların diğer detaylarını gösteriniz.

SELECT * FROM actor
WHERE actor_id IS NULL;



9)Actor tablosunda actor_id 'nin boş olmadığı satırların diğer detaylarını gösteriniz.
SELECT * FROM actor
WHERE actor_id IS NOT NULL;





10)Film tablosunda boş olmayan satırların sayısını bulunuz.

SELECT COUNT(*)
FROM film
WHERE film_id IS NULL OR title IS NULL OR description IS NULL OR release_year IS NULL
			  OR language_id IS NULL OR rental_duration IS NULL OR rental_rate IS NULL OR length IS NULL 
			  OR replacement_cost IS NULL OR rating IS NULL OR last_update IS NULL OR special_features IS NULL 
			  OR fulltext IS NULL;


11)Payment tablosundan amount’un toplamını çıktı başlığı sum_amt olarak gösteriniz.

SELECT SUM(amount) AS sum_amt FROM payment;
		 


12)Payment tablosundan maximum ve minimum amount ‘u gösteriniz.

SELECT max(amount) AS max_amt, MIN(amount) AS min_amt FROM payment;
