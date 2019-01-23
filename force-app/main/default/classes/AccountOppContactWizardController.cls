public with sharing class AccountOppContactWizardController 
{
Public Account Acc{Set;Get;}
Public Contact Con{Set;Get;}
Public Opportunity Opp{set;get;}

Public AccountOppContactWizardController()
{
Acc= New Account();
Con= New Contact();
Opp= New Opportunity ();
} 

Public Pagereference Step1()
    {
    return new Pagereference ('/apex/AccountWizard22');
    }
Public Pagereference Step2()
    {
    return new Pagereference ('/apex/AccountWizardStep2_22');
    }
Public Pagereference  Step3()
    {
    return new Pagereference ('/apex/AccountWizardStep3_22');
    }
Public Pagereference save()
{
  insert Acc;
  Con.AccountID=Acc.id;
  insert Con;
  Opp.AccountID=Acc.id;
  insert Opp;
  return new Pagereference('/'+acc.id);
}
public Pagereference cancel()
  {
    return new Pagereference ('/001/o');
  }
    
}