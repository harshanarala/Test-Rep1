trigger MultiCon on Contact (before insert) 
{
Contact conNew= trigger.New[0];
    if(TriggerStopClass.StopTriggerFlag==False)
    {
    List<Contact> CLst=New List<Contact>();
    for(integer i=0;i<3;i++)
            {
            Contact Con= New Contact(LastName = conNew.LastName + i);
            CLst.add(Con);
            }
        TriggerStopClass.StopTriggerFlag=True;
    
        insert CLst;
    
    }
}