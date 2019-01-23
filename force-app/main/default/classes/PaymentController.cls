public with sharing class PaymentController 
{
    Public Payment__c pay{Set;get;}
    Public Student__c s{Set;get;}
    
    public PaymentController(ApexPages.StandardController controller) 
    {
    pay=(Payment__c)Controller.getRecord();
    }
    
    Public Void studentInfo()
    {
    s=[select Mobile__c,Email__C,Address__c from Student__c where id =: pay.Student__c];
    system.debug('This is from student info');
    }    
    Public Pagereference SaveAndNew()
    {
    insert pay;
    Pagereference p=ApexPages.Currentpage();
    p.setRedirect(true);
    return p;
    }
    

}