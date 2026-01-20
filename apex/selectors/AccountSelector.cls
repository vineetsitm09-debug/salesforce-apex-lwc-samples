public class AccountSelector {
    public static List<Account> getByIndustry(String industry){
        return [SELECT Id, Name FROM Account WHERE Industry = :industry];
    }
}