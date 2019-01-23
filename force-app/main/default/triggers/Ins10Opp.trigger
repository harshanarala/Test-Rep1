trigger Ins10Opp on Account(after insert)
{
    Account Acc= Trigger.new[0];
    for(integer i=0;i<10;i++)
    {
        Opportunity op=new Opportunity(Name=acc.Name+' '+i,CloseDate=system.today(),StageName='Prospecting',AccountId=acc.id);
        insert op;
    }
}    
   
   /* 
    list<Opportunity> opplst= new list<Opportunity>();
    for(Account acc:trigger.new)
    {
        for(integer i=1;i<10;i++)
    {
        Opportunity op=new Opportunity(Name=acc.Name+' '+i,CloseDate=system.today(),StageName='Prospecting',AccountId=acc.id);
        opplst.add(op);
    }
    }
    insert opplst; 
    }*/