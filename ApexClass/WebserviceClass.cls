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
global class {{ api_name }} {

	webservice String parameter { get; set; }

	public {{ api_name }}() {
		this.parameter = 'value';
	}

	webservice static String serviceName(){
		return '';
	}
}