var assert = require('assert');
var Customer = require('../Customer');
var RecordStore = require('../RecordStore');
var Record = require('../Record');

describe('Customer', function(){
  describe('Properties', function(){
    var customer = new Customer('Bob');

    it('should have a name', function(){
      assert.equal('Bob', customer.name);
    });
  });

  describe('Buying records', function(){
    var customer = new Customer('Bob');
    var record = new Record('Never Gonna Give You Up', 'Rick Astley', 5.00);
    var recordStore = new RecordStore('Rip Ripping Records', 'Edinburgh');

    it('should be able to buy records', function(){
      customer.cash = 15.00;
      recordStore.addRecord(record);
      customer.buyRecord(recordStore, record);

      assert.equal(1, customer.recordCount());
      assert.equal(10.0, customer.cash);
    });

    it('should not be able to buy records', function(){
      customer.cash = 0.00;
      recordStore.balance = 0;
      recordStore.inventory = [];
      customer.records = [];
      recordStore.addRecord(record);

      assert.equal('Insufficent funds to buy.', customer.buyRecord(recordStore, record));
      assert.equal(0, customer.recordCount());
    });

    it('should be able to sell records', function(){
      customer.cash = 0;
      recordStore.balance = 100.00;
      recordStore.inventory = [];
      customer.records.push(record);

      customer.sellRecord(recordStore, record);

      assert.equal(0, customer.recordCount());
      assert.equal(5.00, customer.cash);
    });

    it('Insufficent store funds to sell', function(){
      customer.cash = 0;
      recordStore.balance = 0.00;
      recordStore.inventory = [];
      customer.records.push(record);

      assert.equal('Insufficent funds to sell', customer.sellRecord(recordStore, record));
      assert.equal(1, customer.recordCount());
     
    });

  });

});