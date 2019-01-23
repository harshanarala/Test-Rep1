public class Example4SelectdList {

    public string selectedItemValue{get;set;}
    public Id recId{get;set;}
  /* // to hard code the picklist values 
    public List<SelectOption>items {get {
                                          
                                           if(items==null){
                                               items  = new List<Selectoption>();
                                               items.add(new selectoption('1','One'));
                                               items.add(new selectoption('2','Two'));
                                               items.add(new selectoption('3','Three'));
                                               return items;
                                           }
                                           return null;
                                        }
                          
                                       set;}
                           */
    public Example4SelectdList(ApexPages.StandardController controller) {

    }
   // to add 10 contacts to dropdown list 
    public List<Selectoption> getItems(){
        List<Selectoption> opts = new List<Selectoption>();
        opts.add(new selectoption('','--None--'));
       
        for(Contact con : [Select Id,Name From Contact limit 10]){   
                opts.add(new selectoption(con.Id,con.Name));
        }
  
       return opts;
    }
   
    public pageReference changeRec(){
        System.debug('===selectedItemValue==='+selectedItemValue);
        if(selectedItemValue!=null&&selectedItemValue!=''){
          recId = selectedItemValue;  
        }
        else recId = null;
        return null;
    }


}