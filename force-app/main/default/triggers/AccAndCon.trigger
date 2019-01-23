trigger AccAndCon on Account (after insert)
{
//This trigger helps to print all accounts and related childs
List<Account> QueryAccsWithCon = [select id, name,(select id,LastName from contacts) from Account];
    for(Account ForAcc : QueryAccsWithCon )
    {
        system.debug('--Account Name--'+ForAcc.Name);
        for(Contact ForCon : ForAcc.contacts)
            system.debug('--Contact Name--'+ForCon.LastName);
    }
}