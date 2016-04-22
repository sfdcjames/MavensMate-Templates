/****************************************************************************************
{{ api_name }}
Purpose - this class is used as a plug-in in process builder/flow builder
Author - James Ellis
Version - 1.0
ChangeLog - 

*****************************************************************************************/

global class  {{ api_name }}
{
  @InvocableMethod(label='myPlugin' description='what my plugin does')
  global static List<List<myObject>> {{ api_name }}(List<myDataType> myVar) 
  {
    List<myObject> myObjects = new List<myObject>();
    List<List<myObject>> myObjectList = new List<List<myObject>>();
    myObjects = [SELECT Id
    							FROM myObject 
    							WHERE Id IN :myVar];
    myObjectList.add(myObjects);

   
    return myObjects;
  }
}