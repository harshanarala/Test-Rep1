public with sharing class CreateMultiContactsController {

public List<Contact> ConList{Set;Get;}

    Public CreateMultiContactsController ()
    {
    ConList = New List<Contact>();
    ConList.add(New Contact());
    }
    public void addRow()
    {
    ConList.add(New Contact ()); 
    }    

}