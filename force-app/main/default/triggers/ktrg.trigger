trigger ktrg on Contact (before insert) {

contact c=trigger.new[0];
list<contact> c1=[select id,name,accountid from contact];
list<contact> l=new list<contact>();
for(contact c2:c1){
if(c2.accountid==c.accountid){
l.add(c2);

}
for (contact cn:l)
{
cn.accountid='';
}
update l;
//contact c=new contact();
//c.lastname=c.lastname;
//c.accountid=c.accountid;
}
}