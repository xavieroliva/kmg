//------------------------------------------------------------------------------
function calculateTopic(metatopic,agent){
  if (metatopic==undefined)
    return "";
  else
    if(metatopic.charAt(0)==".")
    {
     if(metatopic.charAt(1)==".")
       return agent.replace(/\\[^\\]+\\[^\\]+$/, '') + metatopic.slice(2);
     else
       return agent.replace(/\\[^\\]+$/, '') + metatopic.slice(1);
    }
	else
	  return metatopic
}
//------------------------------------------------------------------------------
function publish(topic,key,value)
{
  // segun el tipo de contenido del topics
  // unique keys: one key only
  // stream:
  // version: keep n versions of records with same key
  // time: delete all records older than time
  // syncro: topic content detects differences and sincronizes
  var sql="INSERT INTO kmge.records (topic,key,value) VALUES ('" + topic + "','" + key + "','" + value + "')";
  var connection="mysql";
  var result=fireToDB(connection,sql);
  if (result.length>0)
    return true;
  else
    return false;
  // INSERT INTO kmge.records (topic,key,value) VALUES ("","","")
}
