public with sharing class ContactNewController 
{
 Contact Con;
 
 Public Account account{set;get;}
 
    public ContactNewController(ApexPages.StandardController controller) 
    {
    con = (Contact)controller.getRecord();
    }
    
    Public Void AccountInfo()
    {
    if(con.AccountId!=null)
        {
        System.debug('---------------'+con.AccountId);
        account=[Select id,Name, BillingStreet, BillingCity, BillingState, BillingCountry from Account where id =:con.AccountId ];
        System.debug('---------------'+account);
        }
    }
}