public with sharing class Accountdeatil 
{
public List<Account> account{get;set;}
public Accountdeatil ()
{
account=[select name from Account];
}
public List<Account> getdetails()
{
return account;
}
}