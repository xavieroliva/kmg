function Execute(agent,record)
{
//services
//agents
  //service:
  //parameters:
  //record
  var agent_object=agents[agent];
  if(agent_object === undefined)
    Alert(agent + " undefined");

  if(record==null)
    record="{}";
  var record_object=JSON.parse(record);

  var publisher={};
  switch(agent_object.service)
  {
    case "token":
      // si agent.filename es nulo
      //   if(agent.metastring es nulo)
      //     que hacemos??
      //   else
      //     metastring=agent.metastring
      // else
      //   metastring=loadFile(filename)

      var metastring=agent_object.parameters.metastring;
//      var properties=record_object.value;
      var token_start=agent_object.parameters.token_start;
      var token_end=agent_object.parameters.token_end;

      var result=token_string(metastring,record,token_start,token_end);

      publisher.key=record_object.key;  //no tiene el valor
      publisher.value=properties_add(record,"token",result);
      break;
    case "folder":
      break;
    case "filecsv":
      // value
      // headers
      // separator
      // field
      // filter
      break;
    case "filerow":
      // value
      // headers
      // separator
      // field
      // filter
      break;
    case "mysqltable":
      // schema
      // table
      break;
    case "mysqlsql":
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
    case "context":
      publisher.key="context";
      publisher.value=getContext();
      publisher.topic=agent_object.publisher;
      break;
    case "fileload":
      // filename:
      var filename=calculateConfig(getArgument(agent_object.parameters.filename, record),agent);
      publisher.key=filename;
//      publisher.value=properties_add(map(record,agent_object.parameters),"content",fileread(filename));
      publisher.value=properties_add(record,"content",fileread(filename));
      break;
  }
  return publisher;
}
//------------------------------------------------------------------------------
function calculateFile(metafile,agent){
  if (metafile==undefined)
    return "";
  else
    if(metafile.charAt(0)=="."){
     if(metafile.charAt(1)==".")
       return kmg+"\\data"+agent.replace(/\\[^\\]+\\[^\\]+$/, '') + metafile.slice(2);
     else
       return kmg+"\\data"+agent.replace(/\\[^\\]+$/, '') + metafile.slice(1);
    }
    else
  	  return metafile;
}
//------------------------------------------------------------------------------
function calculateConfig(metafile,agent){
  if (metafile==undefined)
    return "";
  else
    if(metafile.charAt(0)=="."){
     if(metafile.charAt(1)==".")
       return kmg+"\\topics"+agent.replace(/\\[^\\]+\\[^\\]+$/, '') + metafile.slice(2);
     else
       return kmg+"\\topics"+agent.replace(/\\[^\\]+$/, '') + metafile.slice(1);
    }
    else
  	  return metafile;
}
//------------------------------------------------------------------------------
function calculateFilePattern(extension,pattern){
  if(extension!=""){
    return ".+\."+extension;
  } else {
    return pattern;
  }
}
