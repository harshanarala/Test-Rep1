trigger MultiBy1Insert on Account (before insert)
{
Account acc = trigger.new[0];
if(TriggerStopClass.StopTriggerFlag==False)
    {
    List<Account> Aclist= new List<account>();
    for(integer i=0;i<3;i++)
        {
        Account acc1= New Account(Name=acc.name + i);
        Aclist.add(acc1);
        }
    TriggerStopClass.StopTriggerFlag=True;
    
    insert Aclist;
    
    }
}