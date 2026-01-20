public class AccountService {
    public static void validateAccounts(List<Account> accounts) {
        for(Account acc : accounts){
            if(String.isBlank(acc.Name)){
                acc.addError('Account Name is required');
            }
        }
    }
}