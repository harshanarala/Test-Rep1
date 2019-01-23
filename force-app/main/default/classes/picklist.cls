public with sharing class picklist {
//public list<contact> conlist{set;get;}
public string selected{set;get;}
public list<selectoption>contact{set;get;}

    public picklist(ApexPages.StandardController controller) 
    {
    contact=new list<selectoption>();
    list<contact>conlist=[select lastname from contact];
    for(contact c :conlist)
    {
     contact.add(new selectoption(c.lastname,c.lastname));
    }
   }
}