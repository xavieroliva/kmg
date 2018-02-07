//------------------------------------------------------------------------------
// properties_read
function fileproperties_to_json(file,file_default){
  var json=JSON.parse('{}');
  var extractor = new RegExp("(.+)=(.*)","g");
  var extracted;

  if(file_default!==undefined)
    if(fileExists(file_default))
    {
      var file_content=loadFileContent(file_default);
      while((extracted = extractor.exec(file_content))!== null)
      {
        json[extracted[1]]=extracted[2];
      }
    }
  if(fileExists(file))
  {
    var file_content=loadFileContent(file);
    while((extracted = extractor.exec(file_content))!== null)
    {
      json[extracted[1]]=extracted[2];
    }
  }
  return JSON.stringify(json);
}
//------------------------------------------------------------------------------
function properties_add(json,key,value){
  var p=JSON.parse(json);
  p[key]=value;
  return JSON.stringify(p);
}
//------------------------------------------------------------------------------
function properties_get(json,key){
  var p=JSON.parse(json);
  if(p[key]!==undefined)
    return p[key];
  else
    return null;
}
//------------------------------------------------------------------------------
function properties_delete(json,key){
  var p=JSON.parse(json);
  delete p[key];
  return JSON.stringify(p);
}
//------------------------------------------------------------------------------
// value=""
// value=key
// value=<> - datatype
// value=() - context
function getValue(value,source){
  var pattern = new RegExp('^"(.*)"$',"g");
  var extracted;
  var argument;
  if((extracted=pattern.exec(value))===null)
  {
    argument=source[value];
  }
  else
    argument=extracted[1];
  return argument;
}
//------------------------------------------------------------------------------
function getArgument(value,source){
//  var pattern_property = new RegExp("^\[(\w+)\]$","g");
  var pattern_property = new RegExp(/^\[(.+)\]$/g);
  var pattern_context = new RegExp("^%(\w+)$","g");
  var extracted;
  var source_object=JSON.parse(source);
  var argument;
  if((extracted=pattern_property.exec(value))!==null)
  {
    argument=source_object[extracted[1]];
  }
  else{
    if((extracted=pattern_context.exec(value))!==null)
      argument=context[extracted[1]];
    else
    {  argument=value; }
  }
  return argument;
}
