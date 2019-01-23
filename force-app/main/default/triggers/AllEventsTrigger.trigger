//Here if we need the trigger event when it should work the piece of code by using isInsert, isUpdate,isDelete & isUndelete and They should fire if Before trigger or After trigger.

trigger AllEventsTrigger on Account (before insert,
                                     after insert,
                                     before update,
                                     after update,
                                     before delete,
                                     after delete, 
                                     After undelete) 
{
if(trigger.isBefore)
  {  
  if(trigger.isInsert)  
    system.debug('This is from Before Insert');
  if(trigger.isUpdate)  
    system.debug('This is from Before Update');
  if(trigger.isDelete)  
    system.debug('This is from Before Delete');
  }
if(trigger.isAfter)
  {   
  if(trigger.isInsert)  
    system.debug('This is from After Insert');
  if(trigger.isUpdate)  
    system.debug('This is from After Update');
  if(trigger.isDelete)  
    system.debug('This is from After Delete');
  if(trigger.isUndelete)  
    system.debug('This is from After Undelete');
  } 
}
/*
//Here if we need the trigger event when it should work the piece of code by using isInsert, isUpdate,isDelete & isUndelete.
trigger AllEventsTrigger on Account (before insert,
                                     after insert,
                                     before update,
                                     after update,
                                     before delete,
                                     after delete, 
                                     After undelete) 
{
  if(trigger.isInsert)  
    system.debug('This is from Insert');
  if(trigger.isUpdate)  
    system.debug('This is from Update');
  if(trigger.isDelete)  
    system.debug('This is from Delete');
  if(trigger.isUndelete)  
    system.debug('This is from Undelete');
}
*/
/*//1)Here when the action was done on a record(i.e. DML operation Insert, Update, Delete and Undelete) 
 //regarding to that they fire the trigger events
trigger AllEventsTrigger on Account (before insert,
                                     after insert,
                                     before update,
                                     after update,
                                     before delete,
                                     after delete, 
                                     After undelete) 
{
    system.debug('This is from Insert');
    system.debug('This is from Update');
    system.debug('This is from Delete');
    system.debug('This is from Undelete');
}
*/