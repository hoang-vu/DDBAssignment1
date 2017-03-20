-- SQL to drop all tables in the correct order (child tables then parents)
-- Comment out any tables to be kept
drop table payment purge;
drop table room_booking purge;
drop table guest_booking purge;
drop table booking purge;
drop table reward purge;
drop table customer purge;
drop table guest purge;
drop table person purge;
drop table membership purge;
drop table room_facility purge;
drop table facility purge;
drop table room purge;
drop table hotel purge;