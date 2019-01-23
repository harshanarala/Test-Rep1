public with sharing class Ext1Save {
    public Account Acc{set;Get;}
    public Ext1Save(ApexPages.StandardController controller) {
    
    acc=(Account)controller.getRecord();

    }
    public pagereference save()
    {
    insert Acc;
    pagereference p= New pagereference('/'+Acc.id);
    return p;
    }

}