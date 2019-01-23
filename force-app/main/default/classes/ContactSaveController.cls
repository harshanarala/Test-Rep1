public with sharing class ContactSaveController 
{
    Public Contact con;
    public ContactSaveController(ApexPages.StandardController controller) 
    {
        con = (Contact)controller.getrecord(); 
    }
    public Pagereference save()
    {
    insert con;
    Pagereference P = new Pagereference('/'+con.AccountId);
    return P;
    }
    public Pagereference SaveNew()
    {
    insert con;
    Pagereference P = apexpages.currentpage();//This will redirect us to the same page
    P.setRedirect(True);//This is to remove the old data in the fields
    return P;
    }
    
}