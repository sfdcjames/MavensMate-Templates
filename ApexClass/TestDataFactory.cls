/**
* @author James Ellis, Forcemobile
* @date 2016
*
* @group 
* @group-content 
*
* @description {{ api_name }} - Used as a single place to create test data. if data models change can just update this class
*
*/
@isTest
public class {{ api_name }} 
{
	

	public static List<Lead> createLeads(Integer howMany)
	{
		List<Lead> leads = new List<Lead>();
			for(Integer i=0; i<howMany;i++)
			{
				Lead l = new Lead(
					LastName = 'Test lName '+i,
					Company = 'Test Company '+i,
					LeadSource = 'Web',
				//	Contact_Status__c = 'Known',
					Email = 'thisisAnother'+i+'@test.com',
		        	Phone = '923874234234' +i
					);
				leads.add(l);
			}

			insert leads;
			return leads;
	}


	public static List<Contact> createAccountsAndContacts(Integer howManyAccs, Integer contactsPerAcc)
	{
		List<Account> al = new List<Account>();
		List<Contact> cl = new List<Contact>();

			for(Integer i=0; i<howManyAccs;i++)
			{
				Account a = new Account(
					Name = 'Test accName '+i,
					Phone = '01234567899' +i
					);
				al.add(a);
			}
			insert al;
			for(Account ac:al)
			{
				for(Integer i=0; i<contactsPerAcc;i++)
				{
					Contact c = new Contact(
						AccountId = ac.Id,
						LastName = 'Test cLName '+i,
						LeadSource = 'Web',
					//	Contact_Status__c = 'Recycle',
						Phone = '033434234234' +i,
			            MobilePhone = '123213123213' +i,
			            Email = 'thisIs'+i+'@Test.com'
						);
					cl.add(c);
				}
			}
			insert cl;
			return cl;
	}



}