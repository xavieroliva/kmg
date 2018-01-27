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
