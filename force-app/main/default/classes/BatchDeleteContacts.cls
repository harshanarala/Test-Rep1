global class BatchDeleteContacts implements Database.Batchable<sObject>
{
    global Database.querylocator start(Database.BatchableContext bc)
    {
        String qry='select id,lastname from contact';
        return database.getQueryLocator(qry);
    }
    global void Execute (Database.BatchableContext bc,List<Contact> Scope)
    {
         delete scope;
    }
    global void Finish(Database.BatchableContext bc)
    {
    }
}