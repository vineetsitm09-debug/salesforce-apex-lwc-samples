public with sharing class CouponService {
    @AuraEnabled
    public static String validateCoupon(String couponCode) {
        if(String.isBlank(couponCode)) {
            return 'Coupon code cannot be empty';
        }
        if(couponCode == 'SAVE10') {
            return 'Coupon is valid. You get 10% off.';
        }
        return 'Invalid coupon';
    }
}