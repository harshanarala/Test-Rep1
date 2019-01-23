public class S2S{
private String parseAccessToken(String responseBody) {
        JSONParser parser = JSON.createParser(responseBody);
        String accesstoken = '';
        while (parser.nextToken() != null) {
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME)){
                String fieldName = parser.getText();
                parser.nextToken();
                if(fieldName == 'access_token') {
                    accesstoken = parser.getText();
                }
            }
        }
        return accesstoken;
    }

     public String parseendPointURL(String responseBody) {
        JSONParser parser = JSON.createParser(responseBody);
        String endPointURL = '';
        while (parser.nextToken() != null) {
            if ((parser.getCurrentToken() == JSONToken.FIELD_NAME)){
                String fieldName = parser.getText();
                parser.nextToken();
                if(fieldName == 'instance_url') {
                    endPointURL = parser.getText();
                }
            }
        }
    
       return endPointURL;
       }
       private HttpRequest createGetRequestWithAccessToken(String accessToken, String endPointURL, List<String> urlParameters) {
    
       HttpRequest req = new HttpRequest();
try{       
        
           
            req.setMethod('POST');
            req.setEndpoint(endPointURL);
        System.debug('Request Endpoint = ' + req.getEndpoint());    
         req.setBody(' { "account" :  {"Name":"bukjhkin"    }  }');
         req.setHeader('Authorization','OAuth '+accessToken);           
            req.setTimeout(30000);
            
            req.setHeader('content-type', 'application/json');
        }
        catch(Exception e)
        {
        System.debug(e);
        }
        return req;
        
    }
    public void webservicecalling(){
    
try{       
        HttpRequest req = new HttpRequest();
        req.setMethod('POST');        
        req.setEndpoint('https://login.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9ZL0ppGP5UrA9Z1AMu3UJXwuhJtJf2sSabVFqBEDf8ZpKV13v653BZWm2rM1HJNWtH54h1VMc81YMeyiR&client_secret=2525224773389268235&username=sf.harsha@gmail.com&password=1@online');
        System.debug('Request Endpoint = ' + req.getEndpoint()); 
            req.setTimeout(30000);    
           Http http = new Http();                                      
           HttpResponse res = http.send(req);
          System.debug(res.getStatusCode());
 

        String accessToken=parseAccessToken(res.getBody());
        System.debug('******************** token*********************'+accessToken);
    String endPointURL=parseendPointURL(res.getBody())+'/services/apexrest/v2/accounts/';
    System.debug('******************** endPointURL*********************'+endPointURL);
    List<String> urlParameters=new List<String>();
    req = createGetRequestWithAccessToken(accessToken,endPointURL,urlParameters);
  try {
                        res = http.send(req);
                        System.debug('Request status code = ' + String.valueOf(res.getStatusCode())); 
                        System.debug('******************** Actual Result*********************'+res.getBody());
                        System.debug('******************** Actual Result*********************'+res.getBody());
                        System.debug(res.getBody());
}
 catch(Exception e){
                      System.debug(e); 
                     System.debug(res.toString());                    
                    }
        }
        catch(Exception e)
        {
        System.debug(e);
        }

    
    }
    
    }