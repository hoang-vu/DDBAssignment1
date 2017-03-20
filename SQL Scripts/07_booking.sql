CREATE TABLE booking (
   booking_id        Number(8)     NOT NULL,
   customer_id       Number(8)     NOT NULL,
   checkin_date      Date          NOT NULL,
   checkout_date     Date          NOT NULL,
   number_of_guests  Number(4)     NOT NULL,
   contact_person    Varchar2(100) NOT NULL,
   contact_email     Varchar2(30)  NOT NULL,
   total_amount      Number(10,2)  NOT NULL,
   payment_status    Varchar2(10)  NOT NULL
      CONSTRAINT chk_payment_status
	  CHECK (payment_status in ('NONE', 'PARTIAL', 'FULL')),
   CONSTRAINT pk_booking PRIMARY KEY (booking_id),
   CONSTRAINT fk_customer_booking FOREIGN KEY (customer_id) REFERENCES customer(customer_id)   
);

CREATE INDEX fk_customer_booking ON booking(customer_id); 	  
   
  
CREATE TABLE room_booking (
   booking_id   Number NOT NULL,
   room_id      Number NOT NULL,
   CONSTRAINT pk_room_booking PRIMARY KEY (booking_id, room_id),
   CONSTRAINT fk_booking_room_booking FOREIGN KEY (booking_id) REFERENCES booking(booking_id),
   CONSTRAINT fk_room_room_booking FOREIGN KEY (room_id) REFERENCES room(room_id)
);  

CREATE INDEX fk_booking_room_booking ON room_booking(booking_id);

CREATE INDEX fk_room_room_booking ON room_booking(room_id); 
   
  
CREATE TABLE guest_booking (
   booking_id   Number NOT NULL,
   guest_id     Number NOT NULL,
   CONSTRAINT pk_guest_booking PRIMARY KEY (booking_id, guest_id),
   CONSTRAINT fk_booking_guest_booking FOREIGN KEY (booking_id) REFERENCES booking(booking_id),
   CONSTRAINT fk_guest_guest_booking FOREIGN KEY (guest_id) REFERENCES guest(guest_id)
);

CREATE INDEX fk_booking_guest_booking ON guest_booking(booking_id);

CREATE INDEX fk_guest_guest_booking ON guest_booking(guest_id); 