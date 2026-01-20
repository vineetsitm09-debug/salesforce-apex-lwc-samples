public class TriggerDispatcher {
    public static void run(Schema.SObjectType sobjectType) {
        if(sobjectType == Account.SObjectType) {
            new AccountTriggerHandler().run();
        }
    }
}