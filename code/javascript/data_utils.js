//------------------------------------------------------------------------------
function csv(value,fields,separator)
{
  var result={};
  if(value.length!=0)
  {
    var values = value.split(separator);
    var keys   = fields.split(",");

    values.forEach
    (
      function generate(field,index,array)
      {
        var key=keys[index];
        if(key===undefined)
          key="field"+("0"+index).slice(-2);
        result[key]=field;
      }
    )
  }
  return JSON.stringify(result);
}
//------------------------------------------------------------------------------
function contentcsv(content,header,fields,separator,filter)
{
  var rows=content.split("\n");
  var result=[];
  var keys;
  for(var i=0;i<rows.length;i++){
    if(rows[i].slice(filter.length)!=filter){
      if(keys==undefined){
        if(header=="Y")
          keys=rows[i].replace(separator,",");
        else
          keys=fields;
      }
      // normalize keys
      else {
        var object=csv(rows[i],keys,separator,filter);
        result.push(JSON.parse(object));
      }
    }
  }
  return JSON.stringify(result);
}
//------------------------------------------------------------------------------
function contentrow(content)
{

}
//------------------------------------------------------------------------------
function extractone(value,pattern,fields)
{
  var extractor = new RegExp(pattern,"g");
  var result    = JSON.parse("{}");
  var keys      = fields.split(",");
  var token     = extractor.exec(value);
  if(token!==null){
  	token.forEach(
      function generate(field,index,array){
        if(index>0){
          var key=keys[index-1];
          if(key=="")
            key="field_"+("0"+index).slice(-2);
          result[key]=token[index];
        }
      }
    )
  }
  return JSON.stringify(result);
}
//------------------------------------------------------------------------------
function extractall(value,pattern,fields)
{
  var extractor = new RegExp(pattern,"g");
  var result    = [];
  var keys      = fields.split(",");
  var token;
  var i = 0;
  while((token = extractor.exec(value))!== null){
    var find=JSON.parse("{}");;
    token.forEach(
      function generate(field,index,array){
        if(index>0){
          var key=keys[index-1];
          if(key=="")
            key="field_"+("0"+index).slice(-2);
          find[key]=token[index];
        }
      }
    )
    result.push(find);
    i++;
  }
  return JSON.stringify(result);
}
//------------------------------------------------------------------------------
function token_string(metastring,properties,token_start,token_end)
{
  var values=JSON.parse(properties);
  var result=metastring;
  for(var key in values)
  {
    var value = values[key];
    var metakey = token_start+key+token_end;
    result = result.replace(metakey,value);
  }
  return result;
}
//------------------------------------------------------------------------------
function token_file(file,properties,token_start,token_end)
{
  return token_string(fileread(file),properties,token_start,token_end)
}
//------------------------------------------------------------------------------
function map(properties,maps)
{
  var parameters=JSON.parse(properties);
  var arguments=JSON.parse(maps);
  var result=JSON.parse("{}");
  var getField = new RegExp("\\[(.+)\\]");
  for(var argument in arguments)
  {
    var key;
    if((key=getField.exec(argument))!==null)
      result[key[1]]=getValue(arguments[argument],parameters);
  }
  return JSON.stringify(result);
}
//------------------------------------------------------------------------------
function filter(properties,operand_left,operator,operand_right)
{
  var expression=false;
  var left=getValue(operand_left,properties);
  var right=getValue(operand_right,properties);

  switch(operator)
  {
    case "EQUAL":
      expression=(left==right);
      break;
    case "REGEX":
      var pattern= new RegExp(right);
      condition=pattern.test(left);
      break;
    case "LENGTH":
      condition = (left.length == right);
    default:
        condition = false;
  }
}
//------------------------------------------------------------------------------
function fileread(filename)
{
  var content="";
  if(fileExists(filename))
  {
     content=loadFileContent(filename);
  }
  return content;
}
//------------------------------------------------------------------------------
function filewrite(filename,content)
{
  if(fileExists(filename))
  {
    deleteFile(filename);
  }
  appendToFile(filename,content);
}
//------------------------------------------------------------------------------
function cmd(command)
{
  return execProcess(command);
}
//------------------------------------------------------------------------------
function httpclient(method,url)
{
  var httpclient = new Packages.org.apache.commons.httpclient.HttpClient();
  switch(method)
  {
    case "GET":
      var method = new Packages.org.apache.commons.httpclient.methods.GetMethod(url);
      break;
  }
  // method.addRequestHeader("Your Header Name","Your Header Value");
  var http_status_code = httpclient.executeMethod( method );
  var http_status_text = method.getStatusText();
  var http_response = method.getResponseBodyAsString();
  method.releaseConnection();
  return http_response;
}
//------------------------------------------------------------------------------
function queryDB(connection,sql)
{
//    var connection="mysql";
//    var cypher='SELECT code,label FROM kmg.words WHERE word="'+value+'"';
    var result=fireToDB(connection,sql);
// build json
    if(result[0]!==undefined)
      return result[0][0];
    else
      return "";
}
//------------------------------------------------------------------------------
function pathmaker(value,separator)
{
  // c:\folder1\folder2\file.txt
  // code: "c:" parent: "" name: "\"
  // code: "c:\folder1"  parent: "c:" name: "folder1"
  // code: "c:\folder1\folder2" parent: "c:\folder1" name: "folder2"
  // code: "c:\folder1\folder2\file.txt" parent: name:
}
//------------------------------------------------------------------------------
function getContext()
{
  var context="{}";
  context=properties_add(context,"time",Date());
  context=properties_add(context,"user",getEnvironmentVar("user.name"));
  context=properties_add(context,"timezone",getEnvironmentVar("user.timezone"));
  context=properties_add(context,"country",getEnvironmentVar("user.country"));
  context=properties_add(context,"language",getEnvironmentVar("user.language"));
  context=properties_add(context,"os",getEnvironmentVar("os.name"));
  context=properties_add(context,"home",getEnvironmentVar("folder_kmg"));
  return context;
}
