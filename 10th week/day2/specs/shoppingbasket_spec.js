var shoppingbasket = require('../shoppingbasket');
var discounts = require('../discount');
var items = require('../item');
var customers = require('../customer');
var assert = require('assert');

describe('shoppingbasket', function(){
  beforeEach(function(){
    shoppingbasket.empty();
    shoppingbasket.total = 0;
  });
  it('can starts with no items', function(){
    assert.equal(0, shoppingbasket.countItems());
  });
  it('can starts with 0 value', function(){
    assert.equal(0, shoppingbasket.total);
  });
  it('can add item to shoppingbasket', function(){
    shoppingbasket.addItem(items[1]);
    assert.equal(1, shoppingbasket.countItems());
  });
  it('can increase value in basket', function(){
    shoppingbasket.addItem(items[1]);
    assert.equal(15.00, shoppingbasket.total);
  });
  it('can remove item from shoppingbasket count', function(){
    shoppingbasket.addItem(items[1]);
    shoppingbasket.addItem(items[2]);
    shoppingbasket.removeItem(items[1]);
    assert.equal(1, shoppingbasket.countItems());
  });
  it('can remove item from shoppingbasket total', function(){
    shoppingbasket.addItem(items[1]);
    shoppingbasket.addItem(items[2]);
    shoppingbasket.removeItem(items[1]);
    assert.equal(5.00, shoppingbasket.total.toFixed(2));
  });
  it('can apply discounts  correctly', function(){
    shoppingbasket.addItem(items[1]);
    shoppingbasket.addItem(items[2]);
    assert.equal(17.10, shoppingbasket.applyDiscounts(discounts, customers[0]).toFixed(2));
  });
});