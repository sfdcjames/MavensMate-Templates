/**
* @author James Ellis, Forcemobile
* @date 2016
*
* @group 
* @group-content 
*
* @description {{ api_name }} - This class holds methods for use with {{ object_name }}Trigger
*
*/


public class {{ api_name }} 
{
	//these variables store trigger.oldmap and trigger.newmap and trigger.new (list)
	Map<Id, {{ object_name }}> old{{ object_variable_name}};
	Map<Id, {{ object_name }}> new{{ object_variable_name}};
	List<{{ object_name }}> {{ object_variable_name}}List;

	public {{ api_name }}
	(
		Map<Id, {{ object_name }}> oldTrigger{{ object_variable_name}},
		Map<Id, {{ object_name }}> newTrigger{{ object_variable_name}},
		List<{{ object_name }}> tNewList
	)
	{

		old{{ object_variable_name}} = oldTrigger{{ object_variable_name}};
		new{{ object_variable_name}} = newTrigger{{ object_variable_name}};
		{{ object_variable_name}}List = tNewList;

	}

//insert trigger methods here....

	public void SetFieldDefaults()
	{
		for({{ object_name }} {{ object_variable_name}}:{{ object_variable_name}}List)
		{
			if(Trigger.isInsert)
			{

			}
		}

	}


}//end of class