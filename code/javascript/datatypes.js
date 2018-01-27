// datatype methods
// global: datatypes as JSON
function init()
{
	//declare global
	//load files properties
}
//------------------------------------------------------------------------------
function valid(value,datatype){
   //value is a valid occurrence of datatype;
   //RETURN: boolean;
   var value_valid=false;
   if(datatypes[datatype]!==undefined)
     if(datatypes[datatype]["ValidPattern"]!==undefined)
     {
   	    var validator= new RegExp("^"+datatypes[datatype]["ValidPattern"]+"$");
	      value_valid= validator.test(value);
     } else
     if(datatypes[datatype]["ValidEnum"]!==undefined)
     {
	   // value in valid enum?
     } else
     if(datatypes[datatype]["ValidNode"]!==undefined)
     {
	   // query node in neo4j with code=value
     }
     // datatype not found
   return value_valid;
}
//------------------------------------------------------------------------------
function token(value, datatype){
  // RETURN: properties[]
  var tokens="";
  if(datatypes[datatype]!==undefined)
  	if(datatypes[datatype]["TokenPattern"]!==undefined)
  	{
	  	tokens=value.split(datatypes[datatype]["TokenPattern"]);
	  }
  return tokens;
}
//------------------------------------------------------------------------------
function normalize(value, datatype){
//
// RETURN: value
	var normalized=value;
  if(datatypes[datatype]!==undefined)
  	if(datatypes[datatype]["NormalizeExpression"]!==undefined)
	  {
		  normalized=eval("value."+datatypes[datatype]["NormalizeExpression"]);
	  }
	return normalized;
}
//------------------------------------------------------------------------------
function decompose(value, datatype){
  // RETURN: properties[]
  var groups={};
  if(datatypes[datatype]!==undefined)
  	if(datatypes[datatype]["DecomposePattern"]!==undefined)
	  {
//      Alert(datatype + " fields:" + datatypes[datatype]["DecomposeFields"]);
//      Alert(datatype + " pattern:" + datatypes[datatype]["DecomposePattern"]);
      var fields=datatypes[datatype]["DecomposeFields"].split(",");
      var decomposer= new RegExp(datatypes[datatype]["DecomposePattern"]);
      var token=decomposer.exec(value);
      if(token !== null)
      {
      	token.forEach(
            function generate(field,index,array)
            {
              if(index>0)
      		      groups[fields[index-1]]=field;
            }
        )
      }
	  }
  return JSON.stringify(groups);
}
//------------------------------------------------------------------------------
function extract(text, datatype){
  // dado un texto, extraer las ocurrencias de valores de un datatype
  // RETURN: values[]
}
//------------------------------------------------------------------------------
function scrap(text){
  // dado un texto, extraer todas las ocurrencias de valores de todos los
  // datatypes
  // RETURN: properties[]
}
//------------------------------------------------------------------------------
function getDatatype(value){
	// test value, find what datatype could be
  // RETURN: datatypes[]
  // loop datatypes
  // apply validator
  // if valid, add datatype to array
  var validated=[];
  for(var datatype in datatypes)
  {
    if(valid(value,datatype) && datatype!="text" && datatype!="word")
      validated.push(datatype);
  }
  return validated;
}
