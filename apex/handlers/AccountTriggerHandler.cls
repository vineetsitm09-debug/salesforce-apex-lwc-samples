public class AccountTriggerHandler {
    public static void run(List<Account> newList, Map<Id, Account> oldMap) {
        AccountService.validateAccounts(newList);
    }
}