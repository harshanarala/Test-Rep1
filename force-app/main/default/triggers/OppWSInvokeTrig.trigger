trigger OppWSInvokeTrig on Opportunity (after insert) 
{
OppWSInvokeTrigCls.OppWSInvokeTrigClsMtd(trigger.new[0].id);
}