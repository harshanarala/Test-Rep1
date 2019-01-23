trigger pricecalculateFromClass on Sold_Item__c (after insert) 
{
    if(Trigger.isInsert)
    {
    Sold_Item__c SItem= trigger.New[0];
    pricecalculateClass.AfterInsert(SItem);
    }
    
    if(Trigger.IsUpdate)
    {
    Sold_item__c  SItemNew=Trigger.new[0];
    Sold_item__c  SItemold=Trigger.old[0];
    pricecalculateClass.AfterUpdate(SItemNew,SItemold);
    }
    
    if(Trigger.IsDelete)
    {
    Sold_item__c  SItemold=Trigger.old[0];
    pricecalculateClass.AfterDelete(SItemold);
    }
    
    if(Trigger.IsUnDelete)
    {
    Sold_item__c  SItemNew=Trigger.New[0];
    pricecalculateClass.AfterUnDelete(SItemNew);
    }
    
    
    
      
}