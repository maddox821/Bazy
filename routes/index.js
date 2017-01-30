var Car = require('../models/Car.js');
var UserCars = require('../models/UserCars.js');
var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
		res.render('index');
});

router.get('/addcar.html', function(req, res, next) {
        res.render('addcar');
});

router.get('/test.html', function(req, res, next) {
      Car.simpleShowCars(function(dane){
        res.render('cars',{dane:dane});
    });
});

router.get('/test1.html', function(req, res, next) {
      Car.simpleShowCars1(function(dane){
        res.render('cars',{dane:dane});
    });
});

router.get('/test2.html', function(req, res, next) {
      Car.simpleShowCars2(function(dane){
        res.render('cars',{dane:dane});
    });
});

router.get('/test3.html', function(req, res, next) {
      Car.simpleShowCars3(function(dane){
        res.render('test');
    });
});

router.get('/test4.html', function(req, res, next) { 
        res.render('delete');  
});

router.get('/ulubione.html', function(req, res, next) {
         UserCars.getMyCars(function(dane){
        res.render('cars',{dane:dane});
    });
});

router.get('/cars.html',function(req,res,next){
	Car.getCars(function(dane){
		res.render('cars',{dane:dane});
	});
});

router.post('/addnewcar.html',function(req,res,next){

    var car = { 
            id: req.body.id,
            model: req.body.model,
            engineCapacity: req.body.engineCapacity,
            enginePower: req.body.enginePower,
            fuel: req.body.fuel,
            wheelDrive: req.body.wheelDrive,
            carDescription: req.body.carDescription,
            modelYear: req.body.modelYear,
            brandName: req.body.brandName,
            factoryName: req.body.factoryName,
            picture_path: req.body.picture_path
            };
    Car.addCar(car,function(callback){
        console.log('Dodano pomyslnie samochod');
    });
Car.getCars(function(dane){
        res.render('cars',{dane:dane});
    });
});

router.post('/changepower.html',function(req,res,next){
    Car.changePower(function(callback){
    });
        res.render('test'); 
});

router.post('/backpower.html',function(req,res,next){
    Car.simpleShowCars3(function(callback){
    });
        res.render('test'); 
});

router.post('/addcar.html',function(req,res,next){
        var value = req.body.carID;
    UserCars.likeCar([value],function(callback){
        console.log('Dodano pomyslnie samochod');
    });
Car.getCars(function(dane){
        res.render('cars',{dane:dane});
    });
});

router.post('/deletecar.html',function(req,res,next){
    Car.simpleShowCars4(function(callback){
    });
        res.render('delete');
});

module.exports = router;
