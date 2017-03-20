-- Extra table PERSON so common details are only stored once if a customer is also a guest
CREATE TABLE person (
   person_id           Number(8)     NOT NULL,
   title               Varchar2(10)  NOT NULL,
   first_name          Varchar2(100) NOT NULL,
   last_name           Varchar2(100) NOT NULL,
   date_of_birth       Date,
   country             Varchar2(30), 
   city                Varchar2(30),
   street	       Varchar2(30),
   postal_code         Varchar2(10),
   phone_number        Varchar2(30),
   email_address       Varchar2(30),
   CONSTRAINT pk_person PRIMARY KEY (person_id)		
);


CREATE TABLE customer (
   customer_id         Number(8)    NOT NULL,
--  Allow for customer "numbers" containing letters e.g. AA123456
   customer_number     Varchar2(20) NOT NULL,
   membership_id       Number(8),
   membership_credits  Number(8)    DEFAULT 0 NOT NULL,
   CONSTRAINT pk_customer PRIMARY KEY (customer_id),
   CONSTRAINT uk_customer UNIQUE (customer_number),
   CONSTRAINT fk_person_customer FOREIGN KEY (customer_id) REFERENCES person(person_id)
-- Membership table hasn't been created yet - can't create this foreign key yet
--   CONSTRAINT fk_membership_customer FOREIGN KEY (membership_id) REFERENCES membership(membership_id) 		
);

CREATE INDEX fk_membership_customer ON customer(membership_id);
