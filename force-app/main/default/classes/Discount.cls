Public Class Discount
{
Public Static Void ApplyDiscount(List<Book__c> BList)
    {
    For(Book__c B:BList)
    B.Net_Price__c=B.Price__c*0.9;
    }
}