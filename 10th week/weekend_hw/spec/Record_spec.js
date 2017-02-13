var assert = require('assert');
var Record = require('../Record');

describe('Record', function(){
  var record = new Record('Never Gonna Give You Up', 'Rick Astley', 5.00);

  it('should have a title', function(){
    assert.equal('Never Gonna Give You Up', record.title);
  });

  it('should have an artist', function(){
    assert.equal('Rick Astley', record.artist);
  });

  it('should have a price', function(){
    assert.equal(5.00, record.price);
  });

});