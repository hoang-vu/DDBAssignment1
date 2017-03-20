CREATE TABLE membership (
   membership_id     Number(8)    NOT NULL,
   membership_tier   Varchar2(10) NOT NULL,
   tier_credits      Number(8)    NOT NULL,
   discount          Number(3,1)  NOT NULL,
   CONSTRAINT pk_membership PRIMARY KEY (membership_id),
   CONSTRAINT uk_membership UNIQUE (membership_tier)
);


CREATE TABLE reward (
   reward_id            Number(8)     NOT NULL,
   membership_id        Number(8)     NOT NULL,
   reward_name          Varchar2(30)  NOT NULL,
   reward_description   Varchar2(255) NOT NULL,
   CONSTRAINT pk_reward PRIMARY KEY (reward_id),
   CONSTRAINT fk_membership_reward FOREIGN KEY (membership_id) REFERENCES membership(membership_id)
);

CREATE INDEX fk_membership_reward ON reward(membership_id);   


-- Create the foreign key on customer to membership 
ALTER TABLE customer ADD CONSTRAINT fk_membership_customer
   FOREIGN KEY (membership_id) REFERENCES membership(membership_id);