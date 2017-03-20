CREATE TABLE guest (
   guest_id            Number(8)     NOT NULL,
   guest_number        Varchar2(20)  NOT NULL,
   CONSTRAINT pk_guest PRIMARY KEY (guest_id),
   CONSTRAINT uk_guest UNIQUE (guest_number),
   CONSTRAINT fk_person_guest FOREIGN KEY (guest_id) REFERENCES person(person_id)		
);