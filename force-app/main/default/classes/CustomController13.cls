public with sharing class CustomController13  {

    public Account acc{set;get;}
    
    Public CustomController13 ()
    {
    acc=new Account();
    }
    
    public pagereference save()
    {
    Upsert acc;
    return new pagereference('/'+acc.id);
    }
    
    Public Pagereference SaveAndNew()
    {
    insert Acc;
    pagereference p= apexpages.currentpage();
    p.setRedirect(true);
    return p;
    }
     
}