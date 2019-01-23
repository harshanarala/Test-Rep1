public with sharing class Ext2Cancel 
{
public Account Acc{set;Get;}
    
    public Ext2Cancel(ApexPages.StandardController controller) 
    {
    acc=(Account)controller.getRecord();
    }
    public pagereference cancel()
    {
    pagereference p= New pagereference('/001/o');
    return p;
    }
    
    
}