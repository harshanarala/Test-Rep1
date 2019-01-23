trigger PopulateFullName on Student__c (before insert,before update) 
{
if(trigger.isInsert)
{
    Student__c Std=trigger.New[0];
    Std.Full_Name__c=Std.Name+' '+Std.Last_Name__c;
}

if(trigger.isupdate) 
{
   Student__c Std=trigger.New[0];
   Student__c Stdo=trigger.old[0];
   Std.Full_Name__c=Std.Name+' '+Std.Last_Name__c;
   Std.Old_Full_Name__c=Stdo.Full_Name__c;
}
}