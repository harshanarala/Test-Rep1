public with sharing class Test1Controller 
{

public student__c st{get;set;}
//public Payment__c pt{get;set;}
id d;

    public Test1Controller(ApexPages.StandardController controller) 
    {
       st=new student__c ();  
       //pt=new Payment__c();
    d=apexpages.currentpage().getparameters().get('id');
    system.debug(d);
    if(d !=null)
      {
      student__c std=[select Name,Last_Name__c,Batch__c from student__c where id =:d];
      st.Name=std.name;
      st.Last_Name__c=std.Last_Name__c;
      st.Batch__c =std.Batch__c ;
      }
    }



    public pagereference save()
    {
    insert st;
    //pt.student__c=st.id;
    //pt.amount__c=2000;
    //insert pt;
    return new pagereference('/'+st.id);
    }
    public pagereference SaveAndNew()
    {
    insert st;
    //pt.student__c=st.id;
    //pt.amount__c=2000;
    //insert pt;
    //st.clear();
    pagereference pg=new pagereference('/apex/Test1');
    pg.setredirect(true);
    return pg;
    }
    public pagereference Cancel()
    {
    return new pagereference(st.id);
    
    
    }
}