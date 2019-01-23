trigger addDrToFN on Account (before insert) 
{
list <Account> triggerList =trigger.new;

list<Account> NewListToInsert = New list<Account>();

for(Account a:trigger.new)
    {
    a.Name='Dr.'+a.Name;
    //insert a;
    //NewListToInsert.add(a);
    }
//insert NewListToInsert;
list<account> ListtoNotUpdated =[select id,name from account where NOT name LIKE 'DR.%'];
for (Account Acc: ListtoNotUpdated )
    {
    Acc.name='Dr.'+Acc.Name;
    }
    update ListtoNotUpdated;
}