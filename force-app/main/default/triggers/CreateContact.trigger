trigger CreateContact on Account (After insert) 
{
    Account Acc=trigger.new[0];
    Contact con=New Contact(LastName=Acc.Name,Phone=Acc.Phone,AccountId=Acc.id);
    Insert Con;
    System.debug(Con);
}