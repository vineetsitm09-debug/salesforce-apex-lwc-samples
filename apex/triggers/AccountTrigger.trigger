trigger AccountTrigger on Account (before insert, before update) {
    AccountTriggerHandler.run(Trigger.new, Trigger.oldMap);
}