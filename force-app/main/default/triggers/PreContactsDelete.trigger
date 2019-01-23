Trigger PreContactsDelete on Contact (before insert)
{
Contact Con= trigger.new[0];
List<Contact> OldConsList = [select Accountid from Contact where AccountId =: Con.AccountId];
If(OldConsList .size()>0)
{
Delete OldConsList ;
}
}