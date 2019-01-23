public with sharing class ListofReportsController {

    public list<report> reportList { get; set; }
    
    public ListofReportsController()
    {
        reportList =[SELECT CreatedById,CreatedDate,Description,DeveloperName,FolderName,Format,Id,IsDeleted,LastModifiedById,LastModifiedDate,LastReferencedDate,LastRunDate,LastViewedDate,Name,NamespacePrefix,OwnerId,SystemModstamp FROM Report];
    } 
    
}