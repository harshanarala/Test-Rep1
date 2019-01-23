public with sharing class CustPickListStnt18Controller {

public String SelectList{set;get;}
Public List<SelectOption> getStudents()
{
List<Student__c> Stdlist=[select id,name from student__c];
List<selectoption> students= new List<selectoption>();
for(student__c std:stdlist)
    {
        students.add(new selectoption (std.name,std.name));
    }
   return students;
}
}