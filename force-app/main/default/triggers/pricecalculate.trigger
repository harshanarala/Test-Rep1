Trigger pricecalculate on Sold_item__c(after insert ,after update ,after delete, after undelete) 
{
    if(Trigger.isInsert)
    {
    Sold_item__c  SItem=Trigger.new[0];
    store__c Store=[Select Name ,quantity__c From store__c where id=:SItem.store__c];
    system.debug('---Store Present Quantity--------------'+Store.Quantity__c);
    system.debug('---Sold Item Quantity--------------'+SItem.Quantity__c);
    Store.quantity__c = Store.Quantity__c - SItem.Quantity__c;
    system.debug('---After Insert Store Quantity is--------------'+Store.Quantity__c );
    update Store;
    }
    
    if(Trigger.IsUpdate)
    {
        If(Trigger.New[0]!=Trigger.old[0])
        {
        Sold_item__c  SItemNew=Trigger.new[0];
        Sold_item__c  SItemold=Trigger.old[0];
        store__c Store=[Select Name ,quantity__c From store__c where id=:SItemNew.store__c];
        system.debug('---store Quantity--------------'+Store.Quantity__c);
        system.debug('---solditem Old Quantity--------------'+SItemold.Quantity__c);
        Store.quantity__c=Store.quantity__c+SItemold.quantity__c;
        update Store;
        system.debug('-After adding solditem Old Quantity to Store is------'+Store.quantity__c);
        system.debug('---solditem New Quantity--------------'+SItemNew.Quantity__c);
        Store.quantity__c=Store.quantity__c-SItemnew.quantity__c;
        update Store;
        system.debug('---After Update Store Quantity is--------------'+Store.Quantity__c );
        }
    }
    
    If(Trigger.isDelete)
    {
    Sold_item__c  SItemold=Trigger.old[0];
    store__c Store=[Select Name ,quantity__c From store__c where id=:SItemold.store__c];
    system.debug('---store Quantity--------------'+Store.Quantity__c);
    system.debug('---solditemold Quantity--------------'+SItemold.Quantity__c);
    Store.quantity__c=Store.quantity__c+SItemold.quantity__c;
    system.debug('---After Delete Store Quantity is--------------'+Store.Quantity__c );
    update Store;
    }
    
    If(Trigger.isundelete)
    {
    Sold_item__c  SItemNew=Trigger.new[0];
    store__c Store=[Select Name ,quantity__c From store__c where id=:SItemNew.store__c];
    system.debug('---store Quantity--------------'+Store.Quantity__c);
    system.debug('---solditemnew Quantity--------------'+SItemNew.Quantity__c);
    Store.quantity__c=Store.quantity__c - SItemNew.quantity__c;
    system.debug('---After Undelete Store Quantity is--------------'+Store.Quantity__c );
    update Store;
    }
}
/*Trigger UpdateStore on Sold_Item__c (After Insert, After Update, After Delete, After Undelete) 
{   
  If(Trigger.IsAfter)
  {    
    If(Trigger.IsInsert)
    {
    Sold_Item__c SoldItemNew=Trigger.new[0];
    Store__c Store= [Select id,name,Quantity__C from Store__c where id =:SItem.Store__r.id];
    Store.Quantity__C=Store.Quantity__C-SoldItemNew.Quantity__c;
    update Store;
    }
    
    If(Trigger.IsUpdate)
    {
        If(Trigger.New[0]!=Trigger.old[0])
        {
        Sold_Item__c SoldItemNew=Trigger.new[0];
        Sold_Item__c SoldItemOld=Trigger.old[0];
        Store__C Store=[Select Quantity__c from Store__C Where Id=:SoldItemNew.Store__c];
        Store.Quantity__c = Store.Quantity__c + SoldItemOld.Quantity__C;
        update Store;
        Store.Quantity__c = Store.Quantity__c - SoldItemNew.Quantity__C;
        Update Store;
        }
    }  
    
    If(trigger.isDelete)
    {
    Sold_Item__c SoldItemOld=Trigger.old[0];
    Store__C Store=[Select id,quantity__c from Store__C Where id=:SoldItemOld.Store__c];
    Store.Quantity__c=Store.Quantity__c + SoldItemOld.quantity__c;
    update Store;
    }
    
    If(trigger.IsUndelete)
    {
    Sold_Item__c SoldItemNew=Trigger.New[0];
    Store__C Store=[Select id,quantity__c from Store__C Where id=:SoldItemNew.Store__c];
    Store.Quantity__c=Store.Quantity__c - SoldItemNew.quantity__c;
    update Store;
    }
    
  }   
}*/