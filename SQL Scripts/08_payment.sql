CREATE TABLE payment (
   payment_id      Number(8)    NOT NULL,
   booking_id      Number(8)    NOT NULL,
   payment_date    Date         NOT NULL,
   payment_method  Varchar2(10) NOT NULL
      CONSTRAINT chk_payment_method
	  CHECK (payment_method in ('Cash', 'Credit', 'BPay', 'PayPal')),
   payment_amount  Number(10,2) NOT NULL,
   CONSTRAINT pk_payment PRIMARY KEY (payment_id),
   CONSTRAINT fk_booking_payment FOREIGN KEY (booking_id) REFERENCES booking (booking_id)
);

CREATE INDEX fk_booking_payment ON payment(booking_id);  