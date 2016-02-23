/**************************************
One trigger to rule them ALL
Purpose
This trigger seperates trigger logic from the trigger.
Call the classes and their methods from the relevant if statements below

Author = James Ellis
Version = 1.0
Change Log:-

***************************************/

trigger {{ api_name }} on {{ object_name }} (before insert, 
	before update, before delete, after insert, after update, after delete, after undelete) {


      if (Trigger.isBefore) {

          if (Trigger.isInsert) {

          // {{ api_name }}_Helper a = 
          //new {{ api_name }}_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //a.

          } 
          if (Trigger.isUpdate) {

          //{{ api_name }}_Helper b = 
          //  new {{ api_name }}_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //b.

          }
          if (Trigger.isDelete) {
          // Call class logic here!
          // {{ api_name }}_Helper c = 
          //  new {{ api_name }}_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //c.

          }
      }


      if (Trigger.IsAfter) {
          if (Trigger.isInsert) {

          // {{ api_name }}_Helper d = 
          //   new {{ api_name }}_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //d.  

          } 
          if (Trigger.isUpdate) {

          // {{ api_name }}_Helper e = 
          //  new {{ api_name }}_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //e.

          }
          if (Trigger.isDelete) {

          // {{ api_name }}_Helper f = 
          //  new {{ api_name }}_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //f.

          }
      }
}