Public class pricecalculateClass
{
    Public Static void AfterInsert(Sold_Item__c SItem)
    {
    store__c Store=[Select Name ,quantity__c From store__c where id=:SItem.store__c];
    Store.quantity__c = Store.Quantity__c - SItem.Quantity__c;
    update Store;
    } 
    
    Public Static void AfterUpdate(Sold_Item__c SItemNew,Sold_Item__c SItemold)
    {
    store__c Store=[Select Name ,quantity__c From store__c where id=:SItemNew.store__c];
    Store.quantity__c=Store.quantity__c+SItemold.quantity__c;
    update Store;
    Store.quantity__c=Store.quantity__c-SItemnew.quantity__c;
    update Store;
    }
    
    Public Static Void AfterDelete(Sold_Item__c SItemold)
    {
    store__c Store=[Select Name ,quantity__c From store__c where id=:SItemold.store__c];
    Store.quantity__c=Store.quantity__c+SItemold.quantity__c;
    update Store;
    }
    
    Public Static Void AfterUnDelete(Sold_Item__c SItemNew)
    {
    store__c Store=[Select Name ,quantity__c From store__c where id=:SItemNew.store__c];
    Store.quantity__c=Store.quantity__c - SItemNew.quantity__c;
    update Store;
    }
}