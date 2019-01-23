public with sharing class ConAccOppController 
{

    public ConAccOppController(ApexPages.StandardSetController controller) 
    {
     Conlist=[select id,FirstName,LastName,Phone,AccountId from Contact] ;
     //Acc=New account();
    }


 Public List<contact> ConList {set;get;}
 Public account Acc{set;get;}
 Public List<Opportunity > OppList{set;get;}
 Public String GetAccId{set;get;}
 Public String GetConId{set;get;}
 //----Constructor---- 
 Public ConAccOppController ()
 {
 Conlist=[select id,FirstName,LastName,Phone,AccountId from Contact] ;
 Acc=New account();
 }
  
 Public pagereference SelectCon()
 {
     if(GetAccId!=Null)
     {
     System.debug('Acc Id'+GetAccId);
     Acc=[select id,Name,AccountNumber,Phone,Fax from Account where id=:GetAccId];
     System.debug(Acc);
     System.debug('Acc Id'+GetAccId);
     System.debug('Con Id'+GetConId);
     return Null;
     }
     else
     {
     system.debug('From Else');
     pagereference p = apexpages.currentpage();
     return p;
     }     
 }
 
}