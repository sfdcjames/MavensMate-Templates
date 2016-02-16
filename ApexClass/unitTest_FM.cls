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

		String userProfileName = 'Reward Health Partner';

		/************ CREATE A PARTNER USER *************/
		Account ac = new Account(Name ='User Account'); 
        insert ac;  
        Contact con1 = new Contact(LastName ='Test User Contact',AccountId = ac.Id);
        insert con1;
        Id p = [SELECT Id FROM Profile WHERE Name = :userProfileName].Id;

		User partnerUser =  new User(Email='test123@noemail.com',
			Alias = 'tstPrt',
			EmailEncodingKey='UTF-8',
			LastName='Consultant',
			LanguageLocaleKey='en_US',
			LocalesIdKey='en_GB',
			ProfileId = p,
			Country='United Kingdom',
			IsActive =true,
			ContactId = con1.Id,
			TimezonesIdKey='Europe/London',
			Username='tester@noemail.com'
		);
		insert partnerUser;
		/************ ********************* *************/

	}

	

}
