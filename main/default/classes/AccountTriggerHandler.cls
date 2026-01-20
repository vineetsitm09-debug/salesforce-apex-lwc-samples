public class AccountTriggerHandler extends BaseTriggerHandler {

    public override void beforeInsert() {
        AccountService.validateAccounts((List<Account>)Trigger.new);
    }

    public override void beforeUpdate() {
        AccountService.validateAccounts((List<Account>)Trigger.new);
    }

    public override void afterInsert() {
        System.enqueueJob(new AccountQueueable());
    }
}