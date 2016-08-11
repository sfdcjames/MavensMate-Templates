/**
* @author James Ellis, Forcemobile
* @date 2016
*
* @group 
* @group-content 
*
* @description {{ api_name }} - Single custom trigger on {{ object_name }} to separate trigger and 
* @description methods, simplify testing and control order of execution
*
*/
trigger {{ api_name }} on {{ object_name }} (
  before insert, 
	before update, 
  before delete, 
  after insert, 
  after update, 
  after delete, 
  after undelete) 
{
      if (Trigger.isBefore) 
      {

          if (Trigger.isInsert) 
          {
          // {{ api_name }}_Handler a = 
          //new {{ api_name }}_Handler(null, null, trigger.new);
          //a.
          } 
          if (Trigger.isUpdate) 
          {
          //{{ api_name }}_Handler b = 
          //  new {{ api_name }}_Handler(Trigger.oldMap, Trigger.newMap, trigger.new);
          //b.
          }
          if (Trigger.isDelete) 
          {
          // {{ api_name }}_Handler c = 
          //  new {{ api_name }}_Handler(Trigger.oldMap,null, null);
          //c.
          }
      }
      if (Trigger.IsAfter) 
      {
          if (Trigger.isInsert) 
          {
          // {{ api_name }}_Handler d = 
          //   new {{ api_name }}_Handler(null, Trigger.newMap, null);
          //d.  
          } 
          if (Trigger.isUpdate) 
          {
          // {{ api_name }}_Handler e = 
          //  new {{ api_name }}_Handler(Trigger.oldMap, Trigger.newMap, null);
          //e.
          }
          if (Trigger.isDelete) 
          {
          // {{ api_name }}_Handler f = 
          //  new {{ api_name }}_Handler(Trigger.oldMap, null, null);
          //f.
          }
      }
}