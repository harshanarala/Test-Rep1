//Delete Payment related to Students
//----After delete----
Trigger DeletePayment on Student__c (before delete,After delete)  
{
List<Student__c> s= trigger.old;
    if(trigger.isBefore)
    {
    system.debug(s[0].id +'Iam from Before');
    system.debug (trigger.old);
    }
    if(trigger.isAfter)
    {
    system.debug(s[0].id +'Iam from After');
    system.debug (trigger.old);
    }

List<Payment__c> PayList = [Select id from Payment__c where STudent__c IN:trigger.old];
system.debug (paylist);
Delete Paylist;
    
}

//----before delete----

/*
//Single record related
Trigger DeletePayment on Student__c (before delete) 
{
Student__c s = trigger.old[0];
List<Payment__c> PayList = [Select id from Payment__c where STudent__c=:s.id];
Delete Paylist;
}

//Bulk records related
Trigger DeletePayment on Student__c (before delete) 
{
List<Student__c> s = trigger.old;
List<Payment__c> PayList = [Select id from Payment__c where STudent__c IN:trigger.old];
Delete Paylist;
}*/