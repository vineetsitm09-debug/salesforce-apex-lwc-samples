@IsTest
public class AccountServiceTest {

    @IsTest
    static void testAccountValidation() {
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        Account fetched = [SELECT Id FROM Account LIMIT 1];
        System.assertNotEquals(null, fetched.Id);
    }
}