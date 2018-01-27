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
  return JSON.stringify(context);
}
