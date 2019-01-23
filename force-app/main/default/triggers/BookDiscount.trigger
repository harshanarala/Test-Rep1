trigger BookDiscount on Book__c (before insert) 
  {
    //List<Book__c> bList=trigger.new;
    Discount.applyDiscount(trigger.new);
  }

/*trigger BookDiscount on Book__c (before insert) 
  {
    Book__c b=trigger.new[0];
    b.Net_price__c=b.Price__c*0.9;
  }*/