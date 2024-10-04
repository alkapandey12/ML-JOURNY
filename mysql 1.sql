create database skila;
select * from  sakila.actor;
select * from sakila.customer;

select * from sakila.film;
use sakila;
select * from sakila.film;
select title, release_year from sakila.film
where title like 'love%';

select title, release_year, length from sakila.film

order by length desc;
SELECT * FROM sakila.rental
where rental_date between '2006-02-01 00:00:00' and '2006-02-14 23:59:59'
order by rental_date desc;

