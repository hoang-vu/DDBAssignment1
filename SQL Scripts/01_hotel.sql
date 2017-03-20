CREATE TABLE hotel (
   hotel_id          Number(8)     NOT NULL,
   hotel_name        Varchar2(100) NOT NULL,
   hotel_type        Varchar2(10)  NOT NULL
      CONSTRAINT chk_hotel_type
      CHECK (hotel_type in ('5-Star', '4-Star', '3-Star', 'Boutique')),
   construction_year Integer
      CONSTRAINT chk_construction_year
      CHECK (construction_year between 1800 and 2017),
   country           Varchar2(100) NOT NULL, 
   city              Varchar2(100) NOT NULL,
   address	     Varchar2(100) NOT NULL,
   contact_number    Varchar2(30)  NOT NULL,
   email_address     Varchar2(30)  NOT NULL,
   CONSTRAINT pk_hotel PRIMARY KEY (hotel_id)		
);

