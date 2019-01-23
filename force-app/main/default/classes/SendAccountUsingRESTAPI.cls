public class SendAccountUsingRESTAPI {
  @future(callout=true)
   public static void callcreateAcc (String accName, String accId)
   {
  System.debug('----------------Created Account Name:-----------------'+accName);
  System.debug('----------------Created Account Id:-------------------'+accId);
   }
}