trigger BillingAdd2ShippingAdd on Account (after update) 
{
if(trigger.isInsert || trigger.isUpdate)
{
Account Acc=Trigger.new[0];
Account AccQ=[select id,BillingStreet,BillingCity,BillingState,BillingPostalCode,
                        ShippingStreet,ShippingCity,ShippingState,ShippingPostalCode
                 from Account where id=:Acc.id limit 1];
                 
if(AccQ.BillingStreet!=Null && AccQ.ShippingStreet == Null)
AccQ.ShippingStreet=AccQ.BillingStreet;

if(AccQ.BillingCity!=Null && AccQ.ShippingCity== Null)
AccQ.ShippingCity=AccQ.BillingCity;

if(AccQ.BillingState!=Null && AccQ.ShippingState== Null)
AccQ.ShippingState=AccQ.BillingState;

if(AccQ.BillingPostalCode!=Null && AccQ.ShippingPostalCode== Null)
AccQ.ShippingPostalCode=AccQ.BillingPostalCode;


update AccQ;
}
}
/*
trigger BillingAdd2ShippingAdd on Account (before insert) 
{
Account Acc=Trigger.new[0];
acc.ShippingStreet=acc.BillingStreet;
acc.ShippingCity=acc.BillingCity;
acc.ShippingState=acc.BillingState;
acc.ShippingPostalCode=acc.BillingPostalCode;
//acc.ShippingAddress=acc.BillingStreet+' '+acc.BillingCity+' '+acc.BillingCountry;

}
*/