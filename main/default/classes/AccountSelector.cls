public class AccountSelector {

    public static List<Account> selectByIndustry(String industry) {
        return [
            SELECT Id, Name, Industry
            FROM Account
            WHERE Industry = :industry
        ];
    }
}