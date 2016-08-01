/**
* @author James Ellis, Forcemobile
* @date 2016
*
* @group 
* @group-content 
*
* @description {{ api_name }} - 
*
*/
global class  {{ api_name }}
{
  @InvocableMethod(label='myPlugin' description='what my plugin does')
  global static List<List<String>> {{ api_name }}(List<Id> myId) 
  {
    List<String> strings = new List<String>();
    List<List<String>> stringList = new List<List<String>>();
    //strings = [SELECT Id
    //							FROM sObject 
    //							WHERE Id IN :myVar];
    stringList.add(strings);

   
    return stringList;
  }
}