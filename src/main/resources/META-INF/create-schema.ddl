create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (Cassette_id int8 not null, rentals_id int4 not null)
create table Employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (Rental_id int4 not null, cassettes_id int8 not null)
create table Review (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FK62m91kin97fsb3rod6nlrpcdx foreign key (Cassette_id) references cassettes
alter table Employees add constraint FKl5y8l48xfot7x01e3mvgkh5ew foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FKshtk3pyaf765hbp0urusr78mg foreign key (user_id) references users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKqrlixcrdqljh4w566ai9a6qh7 foreign key (Rental_id) references Rental
alter table Review add constraint FKjtaamahntddjln0bo9r6aqfxu foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (Cassette_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (Rental_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FK62m91kin97fsb3rod6nlrpcdx foreign key (Cassette_id) references cassettes
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FKshtk3pyaf765hbp0urusr78mg foreign key (user_id) references users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKqrlixcrdqljh4w566ai9a6qh7 foreign key (Rental_id) references Rental
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (Cassette_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (Rental_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FK62m91kin97fsb3rod6nlrpcdx foreign key (Cassette_id) references cassettes
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FKshtk3pyaf765hbp0urusr78mg foreign key (user_id) references users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKqrlixcrdqljh4w566ai9a6qh7 foreign key (Rental_id) references Rental
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (Cassette_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (Rental_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FK62m91kin97fsb3rod6nlrpcdx foreign key (Cassette_id) references cassettes
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FKshtk3pyaf765hbp0urusr78mg foreign key (user_id) references users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKqrlixcrdqljh4w566ai9a6qh7 foreign key (Rental_id) references Rental
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (Cassette_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (Rental_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FK62m91kin97fsb3rod6nlrpcdx foreign key (Cassette_id) references cassettes
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FKshtk3pyaf765hbp0urusr78mg foreign key (user_id) references users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKqrlixcrdqljh4w566ai9a6qh7 foreign key (Rental_id) references Rental
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FKshtk3pyaf765hbp0urusr78mg foreign key (user_id) references users
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_rentals (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_rentals add constraint FKrm2l6lugqblilq3ysoe8639s1 foreign key (rentals_id) references rentals
alter table cassettes_rentals add constraint FKafh3vg06wi10wrdaqdwq9nwgs foreign key (cassettes_id) references cassettes
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table rentals add constraint FKtnhd1objf2mlb6ag6k726u269 foreign key (user_id) references users
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_rentals (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_rentals add constraint FKrm2l6lugqblilq3ysoe8639s1 foreign key (rentals_id) references rentals
alter table cassettes_rentals add constraint FKafh3vg06wi10wrdaqdwq9nwgs foreign key (cassettes_id) references cassettes
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table rentals add constraint FKtnhd1objf2mlb6ag6k726u269 foreign key (user_id) references users
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_rentals (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_rentals add constraint FKrm2l6lugqblilq3ysoe8639s1 foreign key (rentals_id) references rentals
alter table cassettes_rentals add constraint FKafh3vg06wi10wrdaqdwq9nwgs foreign key (cassettes_id) references cassettes
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table rentals add constraint FKtnhd1objf2mlb6ag6k726u269 foreign key (user_id) references users
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, user_id int4, rental_id int4 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table rentals add constraint FKtnhd1objf2mlb6ag6k726u269 foreign key (user_id) references users
alter table rentals add constraint FK21xxjh2nbka7oytwh8n2pfxla foreign key (rental_id) references rentals
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, user_id int4, rental_id int4 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table rentals add constraint FKtnhd1objf2mlb6ag6k726u269 foreign key (user_id) references users
alter table rentals add constraint FK21xxjh2nbka7oytwh8n2pfxla foreign key (rental_id) references rentals
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table rentals_cassettes (cassette_id int8 not null, rental_id int4 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table rentals add constraint FKtnhd1objf2mlb6ag6k726u269 foreign key (user_id) references users
alter table rentals_cassettes add constraint FK464wnhj3vylep6pmerggcv36w foreign key (rental_id) references rentals
alter table rentals_cassettes add constraint FKgnpogret1m9rlf5s2pepts3ur foreign key (cassette_id) references cassettes
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table rentals add constraint FKtnhd1objf2mlb6ag6k726u269 foreign key (user_id) references users
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table rentals add constraint FKtnhd1objf2mlb6ag6k726u269 foreign key (user_id) references users
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  serial not null, from int8 not null, to int8 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int8 not null, to int8 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int8 not null, to int8 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int8, to int8, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int8 not null, to int8 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int8 not null, to int8 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int8 not null, to int8 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, name varchar(255), primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int8 not null, to int8 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int4 not null, to int4 not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, isRented boolean not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, isRented boolean not null, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int4, to int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, from int4, to int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int8, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table rentals (id  bigserial not null, fromDate int4, toDate int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int8, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table users (id  bigserial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FK69x3vjuy1t5p18a5llb8h2fjx foreign key (user_id) references users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table reviews add constraint FKj9l8tknojxvfkajmki9hrcer7 foreign key (owner_id) references users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (Cassette_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (Rental_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FK62m91kin97fsb3rod6nlrpcdx foreign key (Cassette_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKqrlixcrdqljh4w566ai9a6qh7 foreign key (Rental_id) references Rental
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (Cassette_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (Rental_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FK62m91kin97fsb3rod6nlrpcdx foreign key (Cassette_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKqrlixcrdqljh4w566ai9a6qh7 foreign key (Rental_id) references Rental
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, from timestamp, specialPrice float4 not null, to timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, price int4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price int4 not null, rating float4 not null, releaseDate int4 not null, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null)
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes_Rental (cassettes_id int8 not null, rentals_id int4 not null, primary key (cassettes_id, rentals_id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table cassettes_Rental add constraint FKag3ms55jascejep4fifklplu5 foreign key (rentals_id) references Rental
alter table cassettes_Rental add constraint FKcb2a05urv4btodphlghjr2fju foreign key (cassettes_id) references cassettes
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null, primary key (rentals_id, cassettes_id))
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
create table cassettes (id  bigserial not null, age int4, isRented boolean not null, purchaseDate timestamp, movie_id int4, primary key (id))
create table employees (id  serial not null, accessRight varchar(255), salary int4 not null, user_id int4, primary key (id))
create table Movie_tags (Movie_id int4 not null, tags int4)
create table Movies (id  serial not null, description varchar(255), price float4 not null, rating float4 not null, releaseDate timestamp, title varchar(255), primary key (id))
create table Rental (id  serial not null, fromDate int8 not null, toDate int8 not null, user_id int4, primary key (id))
create table Rental_cassettes (rentals_id int4 not null, cassettes_id int8 not null)
create table reviews (id  serial not null, moderated boolean not null, rating int4 not null, reviewText varchar(255), timestamp int8 not null, movie_id int4, owner_id int4, primary key (id))
create table special_offers (id  bigserial not null, fromDate timestamp, specialPrice float4 not null, toDate timestamp, movie_id int4, primary key (id))
create table Users (id  serial not null, email varchar(255), name varchar(255), pwd varchar(255), primary key (id))
alter table cassettes add constraint FKtnwpn4s97d1urvce9iujlhv86 foreign key (movie_id) references Movies
alter table employees add constraint FKhj9fe6747jhe3ychvwt5q1p48 foreign key (user_id) references Users
alter table Movie_tags add constraint FK6xssq5ame6kw4guiaoi64ea8d foreign key (Movie_id) references Movies
alter table Rental add constraint FK62m7xl5o3uv771ar4ttinnpcf foreign key (user_id) references Users
alter table Rental_cassettes add constraint FK4fcemedg55b322ls9pqq17pjk foreign key (cassettes_id) references cassettes
alter table Rental_cassettes add constraint FKq8kitli6g7pfsi3wkl1pbiysd foreign key (rentals_id) references Rental
alter table reviews add constraint FKej96n97s0r1jckcbao42pglun foreign key (movie_id) references Movies
alter table reviews add constraint FK6vg7p3yfcik4v74ebqo45duku foreign key (owner_id) references Users
alter table special_offers add constraint FKabjtc4mdxc9elsrs54ecxkb6f foreign key (movie_id) references Movies
