//Here when a Account Phone is updated all the related Contact records phone number should change to Account phone  number
trigger UpdateContactPhone on Account (after update) 
{
    Account Acc = Trigger.New[0];
    List<Contact> ConList = [Select Phone from contact where AccountID=:Acc.id ];
    System.debug(Conlist);
    List<Contact> UpdateConList = New List<Contact>(); 
    for(Contact Con:ConList)
    {
    con.Phone=acc.Phone;
    UpdateConList.add(Con);
    }
update UpdateConList ;
}