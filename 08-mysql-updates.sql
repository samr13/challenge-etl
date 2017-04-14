INSERT INTO `hackathon`.`term_enrolment` (id, person_id, term_id, grade, time_create, time_update) VALUES
  (0000000001, 0000000000, 0000000022, 0, '2017-04-14 01:34:51', '2017-04-14 01:34:51')
, (0000000002, 0000000000, 0000000023, 0, '2017-04-13 17:34:51', '2017-04-13 17:34:51');

update `hackathon`.`person` set age = 40 time_update = '2017-04-14 01:34:51' where id = 2;