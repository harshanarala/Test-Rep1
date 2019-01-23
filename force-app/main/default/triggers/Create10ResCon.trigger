Trigger Create10ResCon on Account (After Insert)
{
    //List<Account> AccList = Trigger.new;
    List<Contact> ConList = New List<Contact>(); 
    for(Account Acc:Trigger.new)
    {
    for(integer i=0;i<=10;i++)
    {
    Contact Con=new Contact(LastName=Acc.Name+' '+i,AccountId=Acc.id);
    ConList.add(Con);
    }
    }
    insert ConList;
}