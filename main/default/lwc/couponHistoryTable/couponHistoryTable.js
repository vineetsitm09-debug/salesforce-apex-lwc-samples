import { LightningElement, track } from 'lwc';

export default class CouponHistoryTable extends LightningElement {
    @track data = [
        { id: '1', code: 'SAVE10', status: 'Valid' },
        { id: '2', code: 'OFF50', status: 'Expired' }
    ];

    columns = [
        { label: 'Coupon Code', fieldName: 'code' },
        { label: 'Status', fieldName: 'status' }
    ];
}