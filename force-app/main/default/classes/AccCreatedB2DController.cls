public with sharing class AccCreatedB2DController 
{

    
public date sdt{set;get;}
public date edt{set;get;}
public list<Account> ListAccQuery{get;set;}

    Public AccCreatedB2DController()
        {
        }

    public PageReference  queryAccRec()
        {
        if(sdt != null & edt != null)
            {
            List<Account> ListAcc = New List<Account>();
            ListAccQuery=[select id,name from account where Account.CreatedDate >: sdt and Account.CreatedDate <:  edt order by  Account.LastModifiedDate];
            system.debug(ListAccQuery);
            }
        return null;
        }
        
    public PageReference reset(){
        PageReference pg = new PageReference(System.currentPageReference().getURL());
        pg.setRedirect(true);
        return pg;
    }



}