@RestResource(urlMapping='/v2/accounts/*')
global with sharing class REST_AccountService_V2 {
    
    @HttpPost
    global static Accountwrapper doPost(Account account) {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        Accountwrapper response= new Accountwrapper();
        try
        {    
        insert Account;
          response.status = 'Success';
            response.message = 'Your Case was created successfully';
            }           
        catch(Exception exc) {
            res.StatusCode = 500;
            //response.caseList = null;
            response.status = 'Error';
            response.message = 'Your request failed with the following error: ' + exc.getMessage();
           
        }
        return response;
       
  
    }
  global class AccountWrapper {
        //public List<Case> caseList;
        public String status;
        public String message;
        
        public AccountWrapper(){
          //  caseList = new List<Case>();
        }
    }
  }