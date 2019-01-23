// If we update a contact Phone number automatically its related parent Account record Phone value should change to Contact phone number.
/*
//For Single
trigger UpdateAccPhoneSingle on Contact (after update)


{
    Contact Con = Trigger.New[0];
    Account Acc=[Select Phone from Account where id=:Con.AccountId];
    Acc.Phone=Con.Phone;
    update Acc;
}

*/
// For Bulk
Trigger UpdateAccPhoneBulk on Contact (after update)
{
   
    List<Account> AccList= new List<Account>();
   
    for(Contact Con: Trigger.New)
    {
        Account acc=New account();
        Acc.Phone=Con.Phone;
        acc.id=Con.AccountId;
        AccList.add(acc);
        
    }
    update AccList ;
}