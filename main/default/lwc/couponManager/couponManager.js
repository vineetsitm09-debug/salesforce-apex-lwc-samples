import { LightningElement, track } from 'lwc';
import validateCouponApex from '@salesforce/apex/CouponService.validateCoupon';

export default class CouponManager extends LightningElement {
    @track couponCode = '';
    @track message = '';
    @track isLoading = false;

    handleChange(event) {
        this.couponCode = event.target.value;
    }

    validateCoupon() {
        this.isLoading = true;
        validateCouponApex({ couponCode: this.couponCode })
            .then(result => {
                this.message = result;
            })
            .catch(error => {
                this.message = error.body.message;
            })
            .finally(() => {
                this.isLoading = false;
            });
    }
}