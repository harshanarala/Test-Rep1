trigger duplicate on Contact (before insert) 
{
set<string> emailset=new set<string>();

for(contact con: trigger.new)
{
//if(emailset.contains(con.email))
//con.Email.adderror('Duplicate Email id found in csv file');
//Else
emailset.add(con.email);
}

list<contact> dupconlist=[select email from contact where email in:emailset];

set<string> dupemailids=new set<string>();

for(contact con:dupconlist)
{
dupemailids.add(con.email);
}
for(contact con:trigger.new)
{
if(dupemailids.contains(con.email))

con.email.adderror('Record already exists with the same Email Ids');
}


}