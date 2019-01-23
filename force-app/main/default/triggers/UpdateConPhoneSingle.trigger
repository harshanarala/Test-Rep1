//Here when a Account Phone is updated all the related Contact records phone number should change to Account phone  number
//Best Practice for single record related, that here fires only when the Phone field is modified and saved
//          i.e. trigger fires when old phone number != new phone number 

Trigger UpdateConPhoneSingle on Account (after Update)
{
Account Acc = Trigger.new[0];
if(acc.phone!=Trigger.old[0].phone)
{
    List<Contact> ConList = [Select phone from Contact where Accountid=:acc.id];
    List<Contact> UpdateConList =New List<Contact>();
    for(Contact con:ConList)
        {
        con.phone=Acc.phone;
        UpdateConList.add(con);
        }
Update UpdateConList;
}
}

/*
//Best Practice for single record related, that here fires Every time when ever the record fields are modified and saved
trigger UpdateConPhoneSingle on Account (after update) 
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
*/