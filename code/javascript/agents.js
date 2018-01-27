function getAgent(filename)
{
  / filename: agent encontrado en el filesystem
  var agents_path = getEnvironmentVar("kmg")+"\\topics";

  // ID
  var agent_id = filename.slice(agents_path.length).slice(0,-"agent".length-1);

  // NAME
  var agent_name = agent_id.substr(agent_id.lastIndexOf("\\")+1);

  // SERVICE
  var service= agent_name.split("_")[0];
  var file_service=getEnvironmentVar("kmg")+"\\services\\"+service+"\.properties";

  // PROPERTIES
  var agent_properties=fileproperties_to_json(filename, file_service);

  // TOPICS
  var publisher=calculateTopic(properties_get(agent_properties,"publisher"),agent_id);
  var subscriber=calculateTopic(properties_get(agent_properties,"subscriber"),agent_id);

  // TOPICS FOLDERS
  if(!isFolder(agents_path+publisher))
  {
    createFolder(agents_path+publisher);
    Alert("Created: "+object_path+publisher);
  }
  agent_parameters=properties_delete(agent_parameters,"publisher");
  
  if(!isFolder(agents_path+subscriber))
  {
    createFolder(agents_path+subscriber);
    Alert("Created: "+object_path+subscriber);
  }
  agent_parameters=properties_delete(agent_parameters,"subscriber");
}
