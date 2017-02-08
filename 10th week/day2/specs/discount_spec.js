var customers = require('../customer');
var discounts = require('../discount');
var assert = require('assert');

describe('discount', function(){
  it('can return multiplier', function(){
    assert.equal(0.10, discounts[0].calculate());
  });
  it('can return correct multiplier for customer 1', function(){
    assert.equal(0.05, discounts[1].calculate(customers[0]));
  });
  it('can return correct multiplier for customer 2', function(){
    assert.equal(0.00, discounts[1].calculate(customers[1]));
  });
  it('can return multiplier', function(){
    assert.equal(0.50, discounts[2].calculate());
  });
});
