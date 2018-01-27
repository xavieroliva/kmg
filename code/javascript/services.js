function Execute(agent,record)
{
//services
//agents
  //service:
  //parameters:
  //record
  switch(agent.service)
  {
    case "token":
      // si agent.filename es nulo
      //   if(agent.metastring es nulo)
      //     que hacemos??
      //   else
      //     metastring=agent.metastring
      // else
      //   metastring=loadFile(filename)

      var metastring=agent.parameters.metastring;
      var properties=record.value;
      var token_start=agent.parameters.token_start;
      var token_end=agent.parameters.token_end;

      var result=token_string(metastring,properties,token_start,token_end);

      var publisher;
      publisher.key=record.key;
      publisher.value=properties_add(record.value,"token",result);
      publisher.topic=agent.publisher;

      break;
    case "extract":
      break;
    case "map":
      break;
    case "mapnode":
      break;
    case "maprelationship":
      break;
    case "filter":
      break;
    case "csv":
      break;
    case "fileload":
      break;
  }

}
