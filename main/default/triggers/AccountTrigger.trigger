trigger AccountTrigger on Account (before insert, before update, after insert) {
    TriggerDispatcher.run(Account.SObjectType);
}