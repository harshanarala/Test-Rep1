trigger MyTrigger on Account (before insert) {
    system.debug('--This is from Mytrigger');
}