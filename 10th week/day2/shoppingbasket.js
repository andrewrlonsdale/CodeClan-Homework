var shoppingbasket = {
  items: [],
  total: 0,
  countItems: function(){
    return this.items.length;
  },
  addItem: function(item){
    this.items.push(item);
    if(item.bogof === true){
      this.items.push(item);
    }
    this.total += item.value;
  },
  removeItem: function(item){
    var index = this.items.indexOf(item);
    this.items.splice(index, 1);
    this.total = (this.total - item.value);
  },
  empty: function(){
    this.items = [];
  },
  applyDiscounts: function(availableDiscounts, customer){
    for(item of this.items){
      if (item.bogof === true){
        item.value = (item.value*availableDiscounts[2].calculate());
      }
    }
      if(this.total >= 20.00){
        this.total -= (this.total*availableDiscounts[0].calculate());
        }
      if(customer){
        this.total -= (this.total*availableDiscounts[1].calculate(customer));
         }
        return this.total;
    }
};

module.exports = shoppingbasket;