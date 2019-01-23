Trigger Add10Contact on Account (After Insert)
{
    Account Acc = Trigger.New[0];
    List<Contact> ConList= New List<Contact>();
    for(integer i=0;i<=10;i++)
    {
    Contact Con = New Contact(LastName=Acc.Name + i,Phone=Acc.Phone,AccountID=Acc.id);
    ConList.Add(Con);
    }
    Insert ConList;
}