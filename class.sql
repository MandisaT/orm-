CREATE TABLE users(   
user_id serial PRIMARY KEY,  
 fname varchar(50), 
  lname varchar(50),
   email_id varchar(12), 
   login varchar(20),
    password varchar(25), 
   premium boolean,
   card_id integer ,
 dateCreated timestamp DEFAULT current_timestamp );


 
CREATE TABLE cardinfo(   
 card_id serial PRIMARY KEY, 
  exp_date date,
   pin integer , 
   user_id integer, 
 dateCreated timestamp DEFAULT current_timestamp );

CREATE TABLE user_address(     
 user_adress_id serial PRIMARY KEY, 
  user_id integer ,
   address_id integer, 
 dateCreated timestamp DEFAULT current_timestamp );

CREATE TABLE address(    
 user_id integer, 
  address_id serial PRIMARY KEY,
   email varchar(12), 
   age integer, 
   premium boolean,
 dateCreated timestamp DEFAULT current_timestamp );

CREATE TABLE product(   
product_id serial PRIMARY KEY,  
price integer, 
 quantity integer,
  card_id integer, 
 dateCreated timestamp DEFAULT current_timestamp );

CREATE TABLE email(   
email_id serial PRIMARY KEY,  
user_id integer, 
 contact varchar(500), 
 dateCreated timestamp DEFAULT current_timestamp );