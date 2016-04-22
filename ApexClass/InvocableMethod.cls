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
  global static List<List<sObject>> {{ api_name }}(List<Id> myId) 
  {
    List<sObject> sObjects = new List<sObject>();
    List<List<sObject>> sObjectList = new List<List<sObject>>();
    sObjects = [SELECT Id
    							FROM sObject 
    							WHERE Id IN :myVar];
    sObjectList.add(sObjects);

   
    return sObjects;
  }
}