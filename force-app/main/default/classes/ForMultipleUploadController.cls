public with sharing class ForMultipleUploadController 
{
    Patent_2__c ptnt;
    
    //Selected count
    public String FileCount{get;set;}
    //To hold attachment count
    public List<SelectOption> filesCountList{get;set;}
    public List<Attachment> allFileList{get;set;}
    
    public ForMultipleUploadController(ApexPages.StandardController controller) 
    {
        ptnt=(Patent_2__c)controller.getRecord();
        filesCountList = new List<SelectOption>() ;
        FileCount = '' ;
        allFileList = new List<Attachment>() ;
        for(Integer i = 1 ; i < 11 ; i++)
        filesCountList.add(new SelectOption(''+i , ''+i)) ;
    }
    
    public Pagereference SaveAttachments()
    {   
        insert ptnt;
        
        String ptId=ptnt.id;
        //Adding Errors
        if(ptId == null || ptId == '')
            ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.ERROR,'No record is associated. Please pass record Id in parameter.'));
        if(FileCount == null || FileCount == '')
            ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.ERROR,'Please select how many files you want to upload.'));
        
        List<Attachment> listToInsert = new List<Attachment>() ;
        for(Attachment a: allFileList)
        {
            if(a.name != '' && a.name != '' && a.body != null)
            listToInsert.add(new Attachment(parentId = ptId, name = a.name, body = a.body)) ;
        }
        
        //Inserting attachments
        if(listToInsert.size() > 0)
        {
            insert listToInsert ;
            ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.INFO, listToInsert.size() + ' file(s) are uploaded successfully'));
            FileCount = '' ;
            pagereference p = New Pagereference ('/'+ptnt.id);
            return p;
        }
        else
            ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.ERROR,'Please select at-least one file'));
            
        return null;
    }
    
    public PageReference ChangeCount()
    {
        allFileList.clear() ;
        //Adding multiple attachments instance
        for(Integer i = 1 ; i <= Integer.valueOf(FileCount) ; i++)
            allFileList.add(new Attachment()) ;
        return null ;
    }

}