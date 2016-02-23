/**************************************
One trigger to rule them ALL
Purpose
This trigger seperates trigger logic from the trigger.
Call the classes and their methods from the relevant if statements below

Author = James Ellis
Version = 1.0
Change Log:-

***************************************/

trigger {{ api_name }} on {{ object_API_name }} (before insert, 
	before update, before delete, after insert, after update, after delete, after undelete) {


      if (Trigger.isBefore) {

          if (Trigger.isInsert) {

          // {{ object_short_name }}Trigger_Helper a = 
          //new {{ object_short_name }}Trigger_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //a.

          } 
          if (Trigger.isUpdate) {

          //{{ object_short_name }}Trigger_Helper b = 
          //  new {{ object_short_name }}Trigger_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //b.

          }
          if (Trigger.isDelete) {
          // Call class logic here!
          // {{ object_short_name }}Trigger_Helper c = 
          //  new {{ object_short_name }}Trigger_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //c.

          }
      }


      if (Trigger.IsAfter) {
          if (Trigger.isInsert) {

          // {{ object_short_name }}Trigger_Helper d = 
          //   new {{ object_short_name }}Trigger_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //d.  

          } 
          if (Trigger.isUpdate) {

          // {{ object_short_name }}Trigger_Helper e = 
          //  new {{ object_short_name }}Trigger_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //e.

          }
          if (Trigger.isDelete) {

          // {{ object_short_name }}Trigger_Helper f = 
          //  new {{ object_short_name }}Trigger_Helper(Trigger.oldMap, Trigger.newMap, trigger.new);
          //f.

          }
      }
}