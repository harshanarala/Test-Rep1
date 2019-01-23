Public Class AccSaveAndNew
 {
    Public Account Acc{set;get;}
    public AccSaveAndNew(CustomController13 controller) 
    {
     //controller = new CustomController13(); 
     
    }

 public pagereference save1()
    {
    insert acc;
   
   return new pagereference('/'+acc.id);
    }
 
  Public Pagereference SaveAndNew()
  {
      insert Acc;
      pagereference p= apexpages.currentpage();
      p.setRedirect(true);
      return p;
  }
 }