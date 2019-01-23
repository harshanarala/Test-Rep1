global class MyWebserviceAccounts{
    
    Webservice static List<ResponseWrapper> displayAccounts(){
        List<ResponseWrapper> response = new List<ResponseWrapper>();
        
        for(Account a:[select id,name,AnnualRevenue from Account limit 10]){
            ResponseWrapper rew = new ResponseWrapper();
            rew.acc = a;
            
            response.add(rew);
            
        }
        
        
        return response;
    }
    
    global class ResponseWrapper{
        webservice Account acc;
    }
}