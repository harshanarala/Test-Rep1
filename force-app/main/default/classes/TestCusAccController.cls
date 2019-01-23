public with sharing class TestCusAccController 
{
Public Account Acc{get;set;}
Public TestCusAccController()
    {
    Acc=new Account();
    } 
Public Pagereference save()
{
  insert Acc;
  
  return new Pagereference('/'+acc.id);
}
}