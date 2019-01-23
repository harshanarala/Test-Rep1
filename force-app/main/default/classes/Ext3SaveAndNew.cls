public with sharing class Ext3SaveAndNew {

    public Ext3SaveAndNew(CustomController13 controller) {

    }

public Account Acc{set;Get;}
    
    public Ext3SaveAndNew(ApexPages.StandardController controller) 
    {
    acc=(Account)controller.getRecord();
    }
    public pagereference SaveAndNew()
    {
    insert Acc;
    pagereference p=ApexPages.CurrentPage();
    p.setRedirect(true);
    return p;
    }
    

}