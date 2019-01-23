trigger VijayTest on Account (after Insert) 
{
Account acc= trigger.new[0];

Account accQ= [select Name, Phone from Account where id =: trigger.new[0].id]; 
accQ.phone='00000000000';
update accQ;
contact con=new contact();
con.Accountid=acc.id;
con.Lastname=acc.Name;
con.Phone=acc.Phone;
insert con;
}