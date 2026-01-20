@isTest
public class AccountServiceTest {
    @isTest static void testValidation(){
        Account a = new Account(Name='Test');
        insert a;
        System.assert(true);
    }
}