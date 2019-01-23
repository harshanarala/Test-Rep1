public with sharing class TejaController 
{

    
    
    //Boolean values to render
    public boolean pbtablepnl{set;get;}
    public boolean pbsessionpnl{set;get;}
    
    //Page block list values
    public List<Team__c> mtlst{get;set;}
    public List<Team__c> mt{get;set;}
    //Constructor
    public TejaController ()
    {
     List<Team__c> mtlst=new List<Team__c>();
     pbtablepnl = false;
     pbsessionpnl = false;
    }
    // To get Team name action method
    public void MyTeam()
    {
        
        mtlst=[select id,name from Team__c]; 
        system.debug('This is from My Team & Size of list is '+mtlst.size());
        if(mtlst.size() > 0)
        {
         system.debug('This is from My Team & Size of list is '+mtlst[0].name);
         //mtlst = mt;
        pbtablepnl=true;
        pbsessionpnl=true;
        }
    }
    //
    Public void MyMembers()
    {
        
    }
    

}