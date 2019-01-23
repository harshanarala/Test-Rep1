trigger DuplicateCheckEmail on Contact (Before Insert) 
{
Set<String> NewEmailSet = New set<String>();
for (Contact conList:trigger.new)
    {
    NewEmailSet.add(conList.Email);
    }
List<Contact> duplicateConList =[Select Email from contact where Email In:NewEmailSet];
Set<String> OrgConMailsSet=New Set<String>();
for(contact conList : duplicateConList  )
    {
    OrgConMailsSet.add(conList.Email);
    }
for(contact conList : trigger.new)
    {
    If( OrgConMailsSet.Contains(conList.email ))
    conList.Email.addError('Record allready Exist with in the same Emailids');
    }   
}
/*
Trigger DuplicateCheckEmail on Contact (before insert) {
Set<String> st=new Set<String>();//get the ids
for(contact con:trigger.new)  
{
st.add(con.email);
}
List<contact> con1=[Select email from contact where email in:st];
Set<String>dupmailids=new Set<string>();
for(contact con:con1)
{
dupmailids.add(con.email);
}
for(contact con:trigger.new)
{
if(dupmailids.contains(con.email))
con.email.addError('record allready exist with in the same emailids');
}
}*/