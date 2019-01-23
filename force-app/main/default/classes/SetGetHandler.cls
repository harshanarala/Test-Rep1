public with sharing class SetGetHandler {
    Public id searchId{set;get;}
    Public Account s{set;get;}
    public SetGetHandler(ApexPages.StandardController controller) {
    }
    Public Pagereference Ac()
    {
    s=[select Name from Account where id=:searchId];
    return Null;
    }
}