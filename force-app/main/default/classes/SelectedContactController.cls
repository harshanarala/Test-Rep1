public with sharing class SelectedContactController 
{
    public string Contact{set;get;}
    Public id recId {set;get;}
    
    Public List<SelectOption> getContacts()
    {
    List<Contact> Conlist=[select id,LastName from Contact];
    List<selectoption> Contacts= new List<selectoption>();
    for(Contact con : Conlist)
        {
            Contacts.add(new selectoption (con.id,con.lastname));
        }
    return Contacts;
    }
    
    public pageReference changeRec()
    {
        if(Contact!=null&&Contact!='')
        {
          recId = Contact;  
        }
        else recId = null;
        return null;
    }
    
}