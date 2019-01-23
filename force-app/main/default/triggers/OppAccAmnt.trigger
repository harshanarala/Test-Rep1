trigger OppAccAmnt on Opportunity (after insert,after Update,after delete,after undelete) 
{
if(trigger.isInsert)
    {
    Opportunity  OppNew = trigger.new[0];
    Opportunity  OppQuery =[Select id,AccountId,Amount from Opportunity where id=:OppNew.id];
    
    Account Acc = [select id,Name,TotalOppAmount__c,Count__c from Account Where Id=:OppQuery.Accountid];
    //Making null value to number
    if (Acc.TotalOppAmount__c == null)
        {
        Acc.TotalOppAmount__c = 0;
        update Acc;
        }
    //For Amount
    Acc.TotalOppAmount__c= Acc.TotalOppAmount__c+ OppNew.Amount;
    //For Count
    List<Opportunity> OppLstAccount=[Select id,AccountId,Amount from Opportunity where Accountid=:OppQuery.AccountId]; 
    Acc.Count__c=OppLstAccount.size();
    update Acc;
    }
if (trigger.isUpdate)
    {
    Opportunity  OppNew = trigger.new[0];
    Opportunity  OppOld = trigger.Old[0];
    Opportunity  OppQuery =[Select id,AccountId,Amount from Opportunity where id=:Oppold.id];
    
    Account Acc = [select id,Name,TotalOppAmount__c,Count__c from Account Where Id=:OppQuery.Accountid];
    //Making null value to number
    if (Acc.TotalOppAmount__c == null)
        {
        Acc.TotalOppAmount__c = 0;
        update Acc;
        }
    //For Amount
    Acc.TotalOppAmount__c= Acc.TotalOppAmount__c - OppOld.Amount;
    Acc.TotalOppAmount__c= Acc.TotalOppAmount__c + OppNew.Amount;
    //For Count
    List<Opportunity> OppLstAccount=[Select id,AccountId,Amount from Opportunity where Accountid=:OppQuery.AccountId]; 
    Acc.Count__c=OppLstAccount.size();
    update Acc;
    }
if(trigger.isDelete)
    {
    Opportunity  OppOld = trigger.Old[0];
    
    Account Acc = [select id,Name,TotalOppAmount__c,Count__c from Account Where Id=:OppOld .Accountid];
    //Making null value to number
    if (Acc.TotalOppAmount__c == null)
        {
        Acc.TotalOppAmount__c = 0;
        update Acc;
        }
    //For Amount
    Acc.TotalOppAmount__c= Acc.TotalOppAmount__c - OppOld.Amount;
    //For Count
    List<Opportunity> OppLstAccount=[Select id,AccountId,Amount from Opportunity where Accountid=:OppOld .AccountId]; 
    Acc.Count__c=OppLstAccount.size();
    update Acc;
    }
if(trigger.isundelete)
    {
    Opportunity  OppNew = trigger.new[0];
    system.debug(OppNew);
    Opportunity  OppQuery =[Select id,AccountId,Amount from Opportunity where id=:Oppnew.id];
    System.debug(OppQuery.AccountId);
    Account Acc = [select id,Name,TotalOppAmount__c,Count__c from Account Where Id=:OppQuery.Accountid];
    //Making null value to number
    if (Acc.TotalOppAmount__c == null)
        {
        Acc.TotalOppAmount__c = 0;
        update Acc;
        }
    //For Amount
    Acc.TotalOppAmount__c= Acc.TotalOppAmount__c + OppNew.Amount;
    System.debug(Acc);
    //For Count
    List<Opportunity> OppLstAccount=[Select id,AccountId,Amount from Opportunity where Accountid=:OppNew .AccountId]; 
    Acc.Count__c=OppLstAccount.size();
    update Acc;
    }

}