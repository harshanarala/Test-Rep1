public with sharing class MyVFListController 
{

Public String VFpage{set;get;}

public MyVFListController()
{
String VFpage;
system.debug(VFpage);
}

public List<selectOption> getVFpgs()
    {
    list<ApexPage> VFlist =[select id,Name from ApexPage Order by CreatedDate];
    // list<ApexPage> VFlist =[select id,Name from ApexPage Order by Name ASC]; 
    
    List<SelectOption> VFIn = new List<SelectOption>();
    VFIn.add(new selectoption('0','None'));
      for(ApexPage ApexPg : VFlist)
      {
      VFIn.Add(new selectoption(ApexPg.Name,ApexPg.Name) );
      }
      
    return VFIn;
    }
}