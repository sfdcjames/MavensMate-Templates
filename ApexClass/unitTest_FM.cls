/**
* @author James Ellis, Forcemobile
* @date 2016
*
* @group 
* @group-content 
*
* @description {{ api_name }} - This is a test class to cover code in {{ covered_class }}
*
*/
@isTest
private class {{ api_name }} {
	
	static testMethod void TestThis() 
	{
		//create test data
		//List<Contact> contacts = TestDataFactory.createAccountsAndContacts(1,1); //one acc with Test in name with one contact

		Test.startTest();

		Test.stopTest();

		System.assert(myExpression, 'fail message');//+ve assertion
		System.assert(myExpression, 'fail message');//-ve assertion

	}
}
