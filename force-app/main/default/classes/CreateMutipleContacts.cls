public with sharing class CreateMutipleContacts 
  {
    public List<Contact> conList{Set;get;} 
    public String accname{set;get;}
    public CreateMutipleContacts()
      {
       String accId=ApexPages.currentpage().getparameters().get('accId');
       // accname=[Select Name from Account where id=:accId].Name;
        conList=new List<Contact>();
        conList.add(new Contact());
      }
  }