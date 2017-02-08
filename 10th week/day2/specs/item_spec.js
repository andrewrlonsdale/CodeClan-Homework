var items = require('../item');
var assert = require('assert');

describe('item', function(){
  it('has name', function(){
    assert.equal("coke", items[0].name);
  });
  it('has value', function(){
    assert.equal(5.00, items[2].value);
  })
});