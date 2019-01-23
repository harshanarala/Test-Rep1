public with sharing class AccountWithContactController {
Public Account Acc;
public Contact contact{set;get;}

    public AccountWithContactController(ApexPages.StandardController controller) 
    {
    acc=(Account)controller.getRecord();
    acc.phone='123';
    contact=new Contact(Phone='345');
    }
    public Pagereference save()
      {
        insert acc;
        contact.AccountId=acc.id;
        insert contact;
        return new Pagereference('/'+ acc.id);
      
      }

    

}