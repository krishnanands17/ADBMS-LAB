-- create a database Inventory and create an orders collection. Apply MapReduce operation for finding the total purchase of each customer.

db.orders.insert({CustId:111,Name:"Krishnanand",Item:"Phome",Price:15030})
db.orders.insert({CustId:121,Name:"Athira",Item:"Laptop",Price:52999})
db.orders.insert({CustId:131,Name:"Jaison",Item:"Phome",Price:45000})
db.orders.insert({CustId:141,Name:"Amala",Item:"RAM",Price:1299})
db.orders.insert({CustId:151,Name:"Basil",Item:"Graphics Card",Price:4320})

/*-------------------------------------------*/

var mapFunction = function() { emit(this.CustId,this.Price);};
var reduceFunction = function(keyCustId,valuesPrices){return Array.sum(valuesPrices);};


db.orders.mapReduce(mapFunction,reduceFunction,{out:"map_example"})