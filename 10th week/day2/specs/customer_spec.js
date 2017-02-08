var customers = require('../customer');
var assert = require('assert');

describe('customer', function(){
  it('can return loyalty card for customer 1', function(){
    assert.equal(true, customers[0].loyaltyCard);
  });
  describe('customer', function(){
    it('can return loyalty card for customer 2', function(){
      assert.equal(false, customers[1].loyaltyCard);
    });
  });
});