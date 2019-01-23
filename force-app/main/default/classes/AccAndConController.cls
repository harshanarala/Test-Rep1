public with sharing class AccAndConController 
{
    Account Acc;
    
    Public Contact Con {Set;get;}
    
    public AccAndConController(ApexPages.StandardController controller) 
    {
    Acc=(Account) controller.getRecord();
    Con=New Contact();
    }
    
    Public Pagereference save()
    {
    insert Acc;
    Con.AccountId=Acc.id;
    insert Con;
    Pagereference p = New Pagereference ('/'+Acc.id);
    return p; 
    }
    
    Public Pagereference SaveAndNew()
    {
    insert Acc;
    Con.AccountId=Acc.id;
    insert Con;
    Pagereference p = ApexPages.CurrentPage();
    p.setRedirect(true); 
    return p; 
    } 
    

}