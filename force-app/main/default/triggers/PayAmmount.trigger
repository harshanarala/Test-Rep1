trigger PayAmmount on Student__c(After insert)
{
    Student__c Stud = trigger.new[0];
    Payment__c Pay = New Payment__c(Student__c=Stud .id,Amount__c=200);
    insert Pay;
}