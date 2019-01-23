@isTest
Private class MyVFListController_Test
{
static testmethod void MyVFListController_Test()
//public @isTest static void MyVFListController_Test()
 {
    apexPage p = new apexPage();
    p.name='RelatedList2';
   // insert p;
    MyVFListController mvf =New MyVFListController();
    
    mvf.getVFpgs();
    mvf.controlleraction();

    
    
 }
}