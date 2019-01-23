//Best Practice for Bulk records related by MAP, that here fires only when the Phone field is modified and saved
Trigger UpdateConsPhoneBulk on Account (After update) 
  {
    List<Contact> updateConList=new List<Contact>();
    if( TriggerStopClass.StopTriggerFlag == False )//here it will make to continue to execute programm
    {
    List<Account> AccWithCons = [Select Phone,(Select Phone From Contacts) From Account 
                                                    Where id IN:Trigger.NewMap.KeySet()];
    for(Account newAcc : AccWithCons )
    {
    Account OldAcc= trigger.oldMap.get(newAcc.id);
    for(Contact con:NewAcc.Contacts)
        {
         con.Phone=newacc.Phone;
         updateconList.add(con);
        }
           
    }
    TriggerStopClass.StopTriggerFlag = True;//after executing the above line it will make class value to false
    update  updateconList;
    }//from if 
 }//from trigger
 

//Best Practice but poor logic for Bulk records related, that here fires only when the Phone field is modified and saved
/*
Trigger UpdateConsPhoneBulk on Account (After update) 
  {
    List<Account> newAccList=trigger.new;
    List<Account> oldAccList=trigger.old;
     List<Contact> updateconList=new List<Contact>();
    //integer shouldRepeat=0;//---------
    //integer shouldNotRepeat=0;//---------------
    for(Account newAcc : newAccList)
      {
       for(Account OldAcc : oldAccList)
       {
       if(newAcc.id==oldAcc.id)
         {
          // System.debug('necessary Count'+ ++shouldRepeat );//---------
           if(newAcc.Phone!=oldAcc.Phone)
           {
             
             List<Contact> conList=[Select Phone from contact where AccountId=:newacc.id];
            
             For(Contact con: conList)
               {
                 con.Phone=newacc.Phone;
                 updateconList.add(con);
               }
            }
            break;
         }
        //else
        //System.debug('Unnecessary Count'+ ++shouldNotRepeat );//---------
      }
    }
    update  updateconList;
 }
 */

//BestPractice, But here it even fires every time when the record is edited and Updated
/*
Trigger UpdateConsPhoneBulk on Account (After update) 
{
List<Account> AccList = Trigger.new;//here we are getting account
List<Account> AccWithContacts = [Select phone,(select phone from contacts) from Account where ID IN:trigger.new];
//In above line we are getting contacts which are related to accounts from the Acclist
List<Contact> updateConList=New List<Contact>(); 
for(Account acc:AccWithContacts )
{
    for(contact Con:acc.contacts)
    {
        con.phone=acc.phone;
        updateConList.add(con);
    }   
}
update updateConList;
system.debug (updateConList);
}
*/  
  
//Best practice but Poor Logic
/*
Trigger UpdateConsPhoneBulk on Account (After update) 
{
List<Account> AccList = Trigger.New;
//Set<ID> AccountIds = New Set<ID>();//here we are making a Accounts as a setby using for loop
//for(Account acc:AccList)
//    {
//    accountids.add(acc.id);
//   }
//List<Contact> ConList=[Select phone from Contact wher AccountID IN:Accountids];
//at above line we are making ConList with account Ids   
//-------------or--------------
List<Contact> ConList = [Select phone from contact where accountID IN:trigger.new];
//-----------------------or--------------
//List<Account> ConList=[Select phone from contact where accountID IN:trigger.newMap.keySet];
//By the above lines we are going to inserting ids directly with ot need of SET and its for loop 

List <Contact> UpdateConList = new List <contact>();
for(Account acc:accList)
{
    for(contact Con:Conlist)
    {
        if(con.Accountid==acc.id)
        {
        con.phone=acc.phone;
        UpdateConList .add(con);
        }
    }   
}
update UpdateConList ;
system.debug (updateConList);
}
*/

//Bad Practice
/*
Trigger UpdateConsPhoneBulk on Account (After update)  
{
    list<Account> AccList = Trigger.New;
    list<contact> UpdateConList = new list<contact>();
    for(Account Acc:AccList)
     {
      List <Contact> ConList = [select phone from Contact where AccountId=:Acc.Id ];
   // Here by the list we will get error of toomany SOQL errors    
      for(Contact Con:ConList)
         {
         con.phone=acc.phone;
         updateConList.add(con);
         }
     }
    update updateConList;
}
*/