public with sharing class ContactSaveAndNewController {
    Public Contact Con;
    
    public ContactSaveAndNewController(ApexPages.StandardController controller) 
    {
    con=(Contact)controller.getRecord();
    }
    Public pagereference save()
    {
    insert con;
    pagereference p= New pagereference('/'+con.AccountId); 
    return p;
    }
    Public pagereference SaveAndNew()
    {
    insert con;
    pagereference p=ApexPages.currentPage();
    p.setRedirect(true); 
    return p;
    }
}