import React from 'react'
import NoPayType from './NoPayType';
import CreditCardPayType from './CreditCardPayType';
import CheckPayType from './CheckPayType';
import PurchaseOrderPayType from './PurchaseOrderPayType';

class PayTypeSelector extends React.Component {
  
   constructor(props){
     super(props)
     this.state={
      selectedPay: null
     }
     this.onPayTypeSelected = this.onPayTypeSelected.bind(this)
   }

  onPayTypeSelected(event){
    this.setState({selectedPay: event.target.value})
  }

  render() {
    let PayTypeCustomComponent = NoPayType
    switch (this.state.selectedPay) {
      case "Credit card":
        PayTypeCustomComponent = CreditCardPayType
      break;
      case "Check":
        PayTypeCustomComponent = CheckPayType
      break;
      case "Purchase order":
        PayTypeCustomComponent = PurchaseOrderPayType  
      break;
      default:
      break;
    }
    return (
      <div className="field">
        <label htmlFor="order_pay_type">Pay type</label>
        <select id="pay_type" onChange={this.onPayTypeSelected} name="order[pay_type]">
          <option value="">Select a payment method</option>
          <option value="Check">Check</option>
          <option value="Credit card">Credit card</option>
          <option value="Purchase order">Purchase order</option>
        </select>
        <PayTypeCustomComponent/>
      </div>
    );
  }
}
export default PayTypeSelector