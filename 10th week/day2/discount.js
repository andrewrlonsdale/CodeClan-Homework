var discountPercentage = {
  calculate: function(){
    var amount = 0.10;
    return amount;
  }
};

var discountCustomer = {
  calculate: function(customer){
    var amount = 0.00;
    if(customer.loyaltyCard === true){
      amount = 0.05;
    } else {
      amount = 0.00;
    } return amount;
  }
};

var discountBOGOF = {
  calculate: function(){
    var amount = 0.5;
    return amount;
  }
};

var discounts = [discountPercentage, discountCustomer, discountBOGOF];

module.exports = discounts;