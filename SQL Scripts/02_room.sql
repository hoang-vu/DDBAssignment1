CREATE TABLE room (
   room_id           Number(8) NOT NULL,
   hotel_id          Number(8) NOT NULL,
   room_number       Number(5) NOT NULL,
   room_type         Varchar2(10) NOT NULL
      CONSTRAINT chk_room_type
	  CHECK (room_type in ('Single', 'Double', 'Queen', 'King', 'Studio', 'Suite')),
   room_price        Number(8,2) NOT NULL,
   room_occupancy   Number(1) NOT NULL,
   room_description  Varchar2(255),
   CONSTRAINT pk_room PRIMARY KEY (room_id),
   CONSTRAINT uk_room UNIQUE (hotel_id, room_number),
-- will be replaced by trigger as hotel is on FIT5148B
   CONSTRAINT fk_hotel_room FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);   

CREATE INDEX fk_hotel_room ON room(hotel_id);
