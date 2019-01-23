public with sharing class CustomPickList17_1Controller 
{
    public String C { get; set; }
    Public string ID{Set;get;}
    Public string Conlist{set;get;}
    
    Public List<SelectOption> getContacts()
    {
    List<Contact> Cons = [Select id,LastName from Contact];
    List<SelectOption> ConIn = new List<SelectOption>();
      for(Contact c:Cons)
      {
      ConIn.Add(new selectoption(c.LastName, c.LastName) );
      }
    return ConIn;
    }
}