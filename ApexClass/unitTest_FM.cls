/***********************************
{{ api_name }}
Purpose:- This is a test class to cover code in {{ covered_class }}
Author:- James Ellis
Version:- 1.0
Change log:- 

************************************/
@isTest
private class {{ api_name }} {
	
	@isTest static void Test() 
	{

		Integer noOfTestAcc = 201;
		Integer noOfOppsPerAcc = 1;
		Integer noOfContactsPerAcc = 1;
		Integer noOfLeadsToTest = 201;
		String testUserProfileName = 'System Administrator';

		/************ CREATE A Test USER *************/
        List<Profile> profiles = new List<Profile>([SELECT Id FROM Profile WHERE Name ='System Administrator']);
        if(profiles!=null)
        {
        	Id p = profiles.Id;
        	User tUser =  new User(Email='test123@noemail.com',
			Alias = 'test',
			EmailEncodingKey='UTF-8',
			LastName='User',
			LanguageLocaleKey='en_US',
			LocalesIdKey='en_GB',
			ProfileId = p,
			Country='United Kingdom',
			IsActive =true,
			TimezonesIdKey='Europe/London',
			Username='tester@noemail.com'
			);
			insert tUser;
		}
		/************ ********************* *************/

		Test.startTest();

		Test.stopTest();

	}
}
