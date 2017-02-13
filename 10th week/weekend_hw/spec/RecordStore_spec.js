var assert = require('assert');
var RecordStore = require('../RecordStore');
var Record = require('../Record');

describe('Record Store', function(){
  var recordStore = new RecordStore('Rip Ripping Records', 'Edinburgh');
  var record = new Record('Never Gonna Give You Up', 'Rick Astley', 5.00);

  describe('Properties', function(){
    
    it('should have a name', function(){
      assert.equal('Rip Ripping Records', recordStore.name);
    });

    it('should have a city', function(){
      assert.equal('Edinburgh', recordStore.city);
    });

    it('should have a balance', function(){
      assert.equal(0, recordStore.balance);
    });
  });

  describe('Inventory', function(){
    beforeEach('Setup', function(){
      recordStore = new RecordStore('Rip Ripping Records', 'Edinburgh');
    });

    it('should start empty', function(){
      assert.equal(0, recordStore.recordCount());
    });

    it('should be able to add records', function(){
      recordStore.addRecord(record);
      assert.equal(1, recordStore.recordCount());
    });

    it('should be able to list records', function(){
      recordStore.addRecord(record);
      assert.deepEqual(
        [{title: 'Never Gonna Give You Up', artist: 'Rick Astley', price: 5.00}],
        recordStore.listRecords());
    });

    it('should be able to list records', function(){
      recordStore.addRecord(record);
      recordStore.sellRecord(record);

      assert.equal(0, recordStore.recordCount());
    });

    it('should be able to show totals', function(){
      recordStore.addRecord(record);
      recordStore.addRecord(record);
      recordStore.sellRecord(record);

      var report = recordStore.total();
      assert.deepEqual({
        balance: 5.00,
        inventoryValue: 5.00,
        totalValue: 10.00
      }, report);
    });

    
  });

});