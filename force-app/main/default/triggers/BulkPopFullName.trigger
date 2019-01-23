trigger BulkPopFullName on Student__c (before insert) 
{
    //List<Student__c> StdList=trigger.New;
    //List<Student__c> StdUPList=New List<Student__c>();
    for(Student__c Std:trigger.New)
    {
    Std.Full_Name__c=Std.Name+' '+Std.Last_Name__c;
    Std.First_Name__c=Std.Name;
    
    }
    //insert StdUPList;    
}