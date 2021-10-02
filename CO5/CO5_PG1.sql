-- In database Employee.


db.empDetails.updateMany({Name:"Mohan"},{$set:{Department:"Developer"}})
db.empDetails.updateMany({Name:"Raju"},{$set:{Department:"Tester"}})
db.empDetails.updateMany({Name:"Bhuvan"},{$set:{Department:"Designer"}})
db.empDetails.updateMany({Name:"Chandran"},{$set:{Department:"Developer"}})
/*-------------------------------------------------------------------------*/

-- 1) find the average salary of each dept.
	db.empDetails.aggregate([{$group:{_id:"$Department","Salary":{$avg:"$Salary"}}}])

-- 2)find the minimum salary of each dept.
	db.empDetails.aggregate([{$group:{_id:"$Department","Minimum Salary":{$min:"$Salary"}}}])

-- 3)find the average salary of each dept.
	db.empDetails.aggregate([{$group:{_id:"$Department","Maximum Salary":{$max:"$Salary"}}}])

-- 4)find the no.of employees of each dept.
	db.empDetails.aggregate([{$group:{_id:"Department","N0: of Emplyees":{$sum:1}}}])

-- 5)sort the collection empDetails in descending order of name
	db.empDetails.find().sort({"Name":-1})

-- 6)Create a text index for ‘name’ and search for names mohan and bhuvan
	db.empDetails.createIndex({Name:"text"})
	db.empDetails.find({$text:{$search:"Mohan Bhuvan"}})
