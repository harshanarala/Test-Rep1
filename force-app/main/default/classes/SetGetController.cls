public class SetGetController 
  {
   public String name1;//{set;get;}
   
   public SetGetController ()//constructor
     {
        System.debug(' I am from Constr');
        name1='';
        
     }
     
    //public String name='Ctrl A';
    
    public String getName()
      {
        System.debug(' i am from getter');
        return name1;
      }
    public void setName(String name)
      {
        System.debug(' i am from setter');
        this.name1=name;
      }  
  }