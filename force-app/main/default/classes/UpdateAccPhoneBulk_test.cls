@isTest
private class UpdateAccPhoneBulk_test{
static testmethod void UpdateAccPhoneBulk_test()
 {
  Account acc=New Account();
  acc.name='Name1';
  Acc.Phone='989898';
  insert acc;
  Contact con=New Contact();
  con.lastname='Name2';
  con.accountid=acc.id;
  con.phone='777777';
  insert con;
  Account acc1= New account();
  acc1.name='hgdafh';
  acc1.Phone='1212121';
  insert acc1;
  try
  {
  update acc1;
  }catch(exception e)
   {
   } 
  
  
 }
}