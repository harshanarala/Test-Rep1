public class OppWSInvokeTrigCls{
 @future(callout=true)
  public static void OppWSInvokeTrigClsMtd(Id d)
  {
    Opportunity optrec=[select name, description, account.name from Opportunity where id=:d];
  System.debug(optrec);
    PartnerCls3.Soap obj1  = new PartnerCls3.Soap();
    PartnerCls3.LoginResult lr    = obj1.login('sf.harsha@gmail.com','1@online');

    GeneralWsCls.OppReq   obj = new GeneralWsCls.OppReq();

    obj.sessionHeader = new GeneralWsCls.sessionHeader_element();
    obj.sessionHeader.sessionid = lr.sessionId;

    obj.servmethod(optrec.name, optrec.description, optrec.account.name);
  }
  }