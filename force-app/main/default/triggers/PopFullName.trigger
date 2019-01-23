Trigger PopFullName on Student__c (before insert, before update)
{
// these are Before Insert event operation code 
Student__c StudentNew = Trigger.New [0];
Student__c StudentOld = Trigger.Old [0];
If (trigger.isInsert)
{
System.debug ('New values of Student = '+ StudentNew);
StudentNew.Full_Name__C = StudentNew.Name + StudentNew.Last_Name__c;
}
// these are Before Update event operation code
If (trigger.isUpdate)
{
System.debug ('Old values of Student = '+ StudentOld);
StudentNew.Old_Full_Name__C = StudentOld.Name + StudentOld.Last_Name__c;
}

}