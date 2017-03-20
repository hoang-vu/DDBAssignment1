CREATE TABLE facility (
   facility_id          Number(8) NOT NULL,
   facility_name        Varchar2(30) NOT NULL,
   facility_description Varchar2(256),
   CONSTRAINT pk_facility PRIMARY KEY (facility_id),
   CONSTRAINT uk_facility UNIQUE (facility_name)
);

   
CREATE TABLE room_facility (
   room_id       Number(8) NOT NULL,
   facility_id   Number(8) NOT NULL,
   CONSTRAINT pk_room_facility PRIMARY KEY (room_id, facility_id),
   CONSTRAINT fk_room_room_facility FOREIGN KEY (room_id) REFERENCES room(room_id),
   CONSTRAINT fk_facility_room_facility FOREIGN KEY (facility_id) REFERENCES facility(facility_id)
);

CREATE INDEX fk_room_room_facility ON room_facility(room_id);

CREATE INDEX fk_facility_room_facility ON room_facility(facility_id);   