CREATE OR REPLACE VIEW kmg.process_states AS
SELECT 
  process,
  state,
  count(*) as cnt
FROM kmg.events group by 1,2;

SELECT * FROM kmg.process_states;

 where state="01";




update kmg.events set state = "start";