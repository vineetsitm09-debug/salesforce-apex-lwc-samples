@IsTest
public class CouponServiceTest {
    @IsTest
    static void testValidateCoupon() {
        Test.startTest();
        String result = CouponService.validateCoupon('SAVE10');
        Test.stopTest();
        System.assert(result.contains('valid'));
    }
}