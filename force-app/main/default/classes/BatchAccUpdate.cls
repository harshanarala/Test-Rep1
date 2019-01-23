global class BatchAccUpdate implements Database.Batchable<sObject>
{
    global Database.querylocator start(Database.BatchableContext bc)
    {
        String qry='select id,name from Account';
        return database.getQueryLocator(qry);
    }
    global void Execute (Database.BatchableContext bc,List<Account> Scope)
    {
         List<Account> AccList = New List<Account>();
         for(Account Acc:Scope)
         {
              Acc.name=Acc.Name+' Harsha';
              AccList.add(Acc);
         }
         update Acclist;
    }
    global void Finish(Database.BatchableContext bc)
    {
    }
}