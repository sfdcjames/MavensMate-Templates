/***********************************
{{ api_name }}
Purpose:- Holds trigger logic in methods to be called from the single trigger on the object
Author:- James Ellis
Version:- 1.0
Change log:- 

************************************/

public class {{ api_name }} {

//these variables store trigger.oldmap and trigger.newmap and trigger.new (list)
Map<Id, {{ object_name }}> old{{ object_variable_name}};
Map<Id, {{ object_name }}> new{{ object_variable_name}};
List<{{ object_name }}> {{ object_variable_name}}List;

//this is the constructor
//a map of the old and new records is expected as inputs
public {{ api_name }}(


Map<Id, {{ object_name }}> oldTrigger{{ object_variable_name}},
Map<Id, {{ object_name }}> newTrigger{{ object_variable_name}},
List<{{ object_name }}> tNewList){

	old{{ object_variable_name}} = oldTrigger{{ object_variable_name}};
	new{{ object_variable_name}} = newTrigger{{ object_variable_name}};
	{{ object_variable_name}}List = tNewList;

}//end of constructor

//insert methods here

	public void SetFieldDefaults()
	{
		for({{ object_name }} {{ object_variable_name}}:{{ object_variable_name}}List)
		{
			if(Trigger.isInsert)
			{

			}
			if(Trigger.isUpdate)
			{
				
			}
		}

	}


}//end of class