public with sharing class ApexClassPickListController {
    Public string SeleApex{set;get;}
    Public id recId {set;get;}
    Public string ClassFinal{set;get;}
    public ApexClassPickListController (){
        String SendOption;
    }
    
    public List<selectOption> getApex(){
        
        List<ApexClass> LstA=[select id,Name,Body from ApexClass];
        List<selectOption> SendOption = new List<selectOption>();
        SendOption.add(new selectoption('0','None'));
        for(ApexClass ac:LstA)
        {
            SendOption.add(new selectoption(ac.id,ac.Name));
        }
    return SendOption;
    }
    
    Public pagereference retriveClass(){
        if(SeleApex!=null&&SeleApex!='')
        {
            recId = SeleApex;
            ApexClass Acls=[select id,name,body from ApexClass where id=:recId];
            system.debug(Acls.body);
            ClassFinal=Acls.body;
        }
        else recId = null;
        return null;
    }
}