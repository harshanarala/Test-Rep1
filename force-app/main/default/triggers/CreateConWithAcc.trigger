trigger CreateConWithAcc on Account (after  insert) {
Account acc=trigger.new[0];
contact con=new contact(LastName= acc.Name, Phone=acc.phone, AccountId=acc.id);
insert con;
}