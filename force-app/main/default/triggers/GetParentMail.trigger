trigger GetParentMail on Payment__c (After update) 
{
Payment__c PayNew=trigger.New[0];
Payment__c PayOld=trigger.Old[0];
System.debug(PayNew);
Payment__c PayQ=[Select Parent_Mail__c,Student__r.Batch__r.Group_Mail_ID__c from Payment__c where id=:PayNew.id];
System.debug(PayQ.Parent_Mail__c);
System.debug(PayQ.Student__r.Batch__r.Group_Mail_ID__c);

Payment__c PayVar=New Payment__c(Parent_Mail__c=PayQ.Student__r.Batch__r.Group_Mail_ID__c);
System.debug('Var-------'+PayVar.Parent_Mail__c);
Payq.Parent_Mail__c=PayVar.Parent_Mail__c ;
System.debug('-------'+PayQ.Parent_Mail__c);
update PayNew;
}

/*
trigger GetParentMail on Payment__c (Before update) 
{
Payment__c Pay=trigger.New[0];
System.debug(Pay);
Payment__c PayQ=[Select Parent_Mail__c,Student__r.Batch__r.Group_Mail_ID__c from Payment__c where id=:Pay.id];
System.debug(PayQ.Parent_Mail__c);
System.debug(PayQ.Student__r.Batch__r.Group_Mail_ID__c);


Pay.Parent_Mail__c=PayQ.Student__r.Batch__r.Group_Mail_ID__c;

System.debug(PayQ.Parent_Mail__c);
}*/