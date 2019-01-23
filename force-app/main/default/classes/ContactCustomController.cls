public with sharing class ContactCustomController {
Public Contact contact{set;get;}
    Public ContactCustomController ()
    {
    contact = New Contact();
    }
    public pagereference save()
    {
    insert contact;
    /*pagereference p = New pagereference ('/'+contact.id);
    return p;*/
    return new pagereference ('/'+contact.id);
    }
    public pagereference SaveAndNew()
    {
    insert contact;
    pagereference p = ApexPages.currentPage();
    p.setRedirect(true);
    return p;
    }
    public pagereference cancel()
    {
    pagereference p = new pagereference('/003/o');
    return p;
    }
}