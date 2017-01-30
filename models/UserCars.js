var mysql = require('mysql');

var UserCars = mysql.createConnection({
	host:'localhost',
	user:'root',
	password:'password',
	database:'projekt'
})

UserCars.connect();

UserCars.getMyCars = function(callback){
	var sql = 'SELECT * FROM  (SELECT * FROM usercars WHERE userID=1) AS uc INNER JOIN car AS c ON uc.carID=c.id ';
	var tmp = UserCars.query(sql,function(err,res){ //ulubione samochody, userID = 1
		   if(err) throw err;
		   callback(res);
    }); 
}

UserCars.likeCar = function(carID,callback){
		var sql = 'INSERT INTO usercars(userID, carID) VALUES (?)';
		var values = [1,carID];
		var tmp = UserCars.query(sql,[values],function(err,res){ 
        if(err) throw err;
    });  	
}

module.exports = UserCars;