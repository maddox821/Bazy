var mysql = require('mysql');

var Car = mysql.createConnection({
	host:'localhost',
	user:'root',
	password:'password',
	database:'projekt'
})

Car.connect();

Car.getCars = function(callback){
		var sql = 'SELECT * FROM Car';	//ulubione samochody
		Car.query(sql,function(error,rows){
			callback(rows);
		});	
};

Car.addCar = function(car,callback){    
    var sql = 'INSERT INTO Car(model,engineCapacity,enginePower,fuel,wheelDrive,carDescription,modelYear,brandName,factoryName,picture_path) VALUES (?)';  
    var values = [car.model,car.engineCapacity,car.enginePower,car.fuel,car.wheelDrive,car.carDescription,car.modelYear,car.brandName,car.factoryName,car.picture_path];
    var tmp = Car.query(sql,[values],function(err,res){ 
        if(err) throw err;
    });  
};

Car.simpleShowCars = function(callback){
		var sql = 'SELECT * FROM car ORDER BY brandName ASC';	
		Car.query(sql,function(error,rows){
			callback(rows);
		});	
};

Car.simpleShowCars1 = function(callback){
		var sql = 'SELECT * FROM car ORDER BY brandName DESC';	
		Car.query(sql,function(error,rows){
			callback(rows);
		});	
};

Car.simpleShowCars2 = function(callback){
		var sql = 'SELECT * FROM car WHERE enginePower BETWEEN 150 AND 200';	
		Car.query(sql,function(error,rows){
			callback(rows);
		});	
};

Car.simpleShowCars3 = function(callback){
		var sql = 'UPDATE car SET enginePower = 200 WHERE id = 1';	
		Car.query(sql,function(error,rows){
			callback(rows);
		});	
};

Car.simpleShowCars4 = function(callback){
		var sql = 'DELETE FROM usercars WHERE userID=1';	
		Car.query(sql,function(error,rows){
			callback(rows);
		});	
};

Car.changePower = function(carID,callback){
		var sql = 'UPDATE car SET enginePower = 50 WHERE id = 1';
		var tmp = Car.query(sql,function(err,res){ 
        if(err) throw err;
    });  	
}
module.exports = Car;
