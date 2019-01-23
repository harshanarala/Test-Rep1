/*//For single
trigger DeleteEmployee on Student__c (before delete) 
{
Student__c Stud=Trigger.old[0];
List<Employee__c> EmppList= [Select Id from Employee__c where Student__C =: Stud.id];
delete EmppList; 

}
*/
//For Bulk
trigger DeleteEmployee on Student__c (before delete) 
{
list<Student__c> Stud=Trigger.old;
List<Employee__c> EmppList= [Select Id from Employee__c where Student__C IN:trigger.old];
delete EmppList; 
}