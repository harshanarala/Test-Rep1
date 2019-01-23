trigger PayForAll on Student__c(After insert)
{
    List<Student__c> StdList=trigger.new;
    List <Payment__c> PayList =New List <Payment__c>();
    for(Student__c Stud :StdList)// trigger.new)
    {
    Payment__c Pay = New Payment__c(Student__c=Stud.id,Amount__c=200);
    PayList.Add(Pay);
    }
insert PayList; 
}