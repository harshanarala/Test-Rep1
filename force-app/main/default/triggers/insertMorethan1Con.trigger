trigger insertMorethan1Con on Account (after insert) 
{
    Account Acc = trigger.new[0];
    List<Contact> ConList = New List<Contact>(); 
    for(Integer i=1;i<=200;i++)
    {
    Contact con=new Contact(LastName=Acc.Name+i,AccountId=Acc.id);
    //insert con;
    //System.debug(con);
    Conlist.add(con);
    }
    Insert ConList; 
}