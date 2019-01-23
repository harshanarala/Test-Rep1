public with sharing class ExtForCC13 {
    public Account acc{set;get;}
    
    //controller
    public ExtForCC13(CustomController13 controller) 
    {
    acc = (Account)controller.acc; //Here acc getting the fields as getrecords()
    }
    
    public pagereference save()
    {
    insert acc;
    pagereference p = new pagereference('http://www.google.com');
    return p; 
    }
    public pagereference cancel()
    {
    pagereference p = new pagereference('/001/o');
    return p; 
    } 
}