create or replace view kmg.process_events as
SELECT 
  e.id,
  e.process,
  e.task,
  e.state,
  e.data,
  e.properties,
  t.function,
  t.parameters
FROM kmg.events e
  JOIN kmg.tasks t ON e.process=t.process AND e.task=t.task
WHERE e.state="pending";