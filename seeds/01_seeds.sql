INSERT INTO 
  users (name, email, password)
VALUES
  ('Strong Bad', 'strong_bad@homestarrunner.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Strong Mad', 'strong_mad@homestarrunner.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Strong Sad', 'strong_sad@homestarrunner.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO 
  properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES
  (1, 'The Stick', 'Lovely stick in the field beside Bubs Consession', 'http://www.hrwiki.org/w/images/thumb/2/23/TheStick.png/220px-TheStick.png', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1pRENr04P5R9E6aqlN1fY4TDzuiTcdQYNP-9fiQ0jdF844j8FCbAVby9sVgGao8EcCV8&usqp=CAU', 77, 0, 0, 0, 'Free Country USA', '123 Main st', 'toronto', 'ON', 'M2Z 4X7'),
  (2, 'Mom Basement', 'Mom wont mind as long as you keep quiet and clean up', 'http://www.hrwiki.org/w/images/thumb/5/53/The_couch.PNG/300px-The_couch.PNG','http://sbemails4ever.com/downloads/backgrounds/bads-basemenet-desktop.png', 100, 0, 1, 1, 'Strongbadia', '1 Cheezeit ave', 'toronto', 'ON', 'K24 1M5'),
  (3, 'Strong Sad Room', 'Dont break my Sloshy records', 'http://www.hrwiki.org/w/images/thumb/6/6b/sbemail6.PNG/220px-sbemail6.PNG', 'http://www.hrwiki.org/w/images/thumb/9/92/StrongSadRoom.png/800px-StrongSadRoom.png', 10, 0, 1, 1, 'Strongbadia', '1 Cheezeit ave', 'toronto', 'ON', 'K24 1M5' );

INSERT INTO
  reservations (start_date, end_date, property_id, guest_id)
VALUES
  ('2022-09-12', '2022-09-13', 1, 2),
  ('2022-10-02', '2022-10-05', 2, 1),
  ('2022-01-01', '2023-01-01', 3, 3);

INSERT INTO
  property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES
  (2, 1, 1, 5, 'I LOVE THE STICK'),
  (1, 2, 2, 4, 'Smelled like rotten eggs, but I did find my egg'),
  (3, 3, 3, 5, 'Glad I could stay in my own room, I hate traveling');