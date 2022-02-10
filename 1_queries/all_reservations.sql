SELECT properties.*, reservations.start_date, reservations.end_date
FROM properties
JOIN reservations ON properties.guest_id = reservations_guest_id
WHERE reservations.guest_id = 1
ORDER BY reservations.start_date
LIMIT 10;