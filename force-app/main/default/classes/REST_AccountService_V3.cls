@RestResource(urlMapping='/v3/contacts/*')
global with sharing class REST_AccountService_V3 {
    
    @HttpPost
    global static Contactwrapper doPost(Contact contact) {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        Contactwrapper response= new Contactwrapper ();
        try
        {    
        insert contact;
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
  global class Contactwrapper {
        //public List<Case> caseList;
        public String status;
        public String message;
        
        public Contactwrapper (){
          //  caseList = new List<Case>();
        }
    }
  }