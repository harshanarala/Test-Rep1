public with sharing class ContactNewPageController 
{
    Contact Con;
    public ContactNewPageController(ApexPages.StandardController controller) //here we can give our name also
    {
    con =(Contact)controller.getRecord();
    }
    
    Public Pagereference save()
    {
    insert con;
    pagereference p = New Pagereference ('/00190000014GyvO');
    return p;
    }

}