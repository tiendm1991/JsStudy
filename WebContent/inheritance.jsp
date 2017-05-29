<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TienDM Page</title>
<script type="text/javascript" src="js/HelloWorld.js"></script>
</head>
<body>
<h1>Inheritance</h1>
<script type="text/javascript">
	Function.prototype.method = function(name,func) {
		if(!this.prototype[name]){
			this.prototype[name] = func;
		}
	}
	//PseudoClassical
	//1. Ex1
	console.log("**************Start PseudoClassical****************");
	var Mamal = function(name) {
		this.name = name;
	}
	Mamal.prototype.getName = function() {
		return this.name;
	}
	Mamal.prototype.says = function(){
		return this.saying || '';
	}
	var myMamal = new Mamal("This is Mamal");
	console.log(myMamal.getName());
	console.log("Mamal saying= "+ myMamal.says());
	//Cat
	var Cat = function(name) {
		this.name = name
		this.saying = 'meow';
	};
	Cat.prototype = new Mamal();
	Cat.prototype.purr = function(n) {
		var i, s = '';
		for(i = 0; i<n; i++){
			if(s){
				s += '-';
			}
			s+='r';
		}
		return s;
	};
	Cat.prototype.getName = function() {
		return this.says() + ' ' + this.name + ' ' + this.says();
	}
	var myCat = new Cat('Tom');
	console.log(myCat);
	//Override method getName of Mamal
	console.log(myCat.getName());
	//Using method says of Mamal
	console.log(myCat.says());
	console.log(myCat.purr(5));
	
	//Inherit
	Function.method('inherits', function(Parent) {
		this.prototype = new Parent();
		return this;
	});
	//Cascade
	var Cat2 = function(name) {
		this.name = name;
		this.saying = "meow2";
	};
	Cat2.inherits(Mamal).method('purr',function(n){
		var i, s = '';
		for(i = 0; i<n; i++){
			if(s){
				s += '-';
			}
			s+='r';
		}
		return s;
	});
	Cat2.method('getName',function(n){
		return this.name + ' ' + this.says();
	});
// 	Cat2.prototype.getName = function() {
// 		return this.name + ' ' + this.says();
// 	}
	var myCat2 = new Cat2('Tom2');
	console.log(myCat2);
	console.log(myCat2.says());
	console.log(myCat2.purr(3));
	console.log(myCat2.getName());
	
	
	//Prototypal
	console.log("**************Start Prototpal****************");
	var MamalPro = {
		name : 'Mamal',
		getName : function() {
			return this.name;
		},
		says : function() {
			return this.saying + ' ' + this.name;
		}
	};
	var myCatPro = Object.create(MamalPro);
	myCatPro.name = 'Tom Pro';
	myCatPro.saying = 'meow';
	myCatPro.purr = function(n) {
		var i, s = '';
		for(i = 0; i<n; i++){
			if(s){
				s += '-';
			}
			s+='r';
		}
		return s;
	}
	console.log(myCatPro);
	console.log(myCatPro.getName());
	console.log(myCatPro.purr(3));
	console.log(myCatPro.says());
	
	//Functional
	//purpose of functional is make a private for variable of object
	console.log("**************Start Functional****************");
	var mamalFun = function(spec) {
		var that = {};
		that.getName = function() {
			return spec.name;
		};
		that.says = function() {
			return spec.saying || '';
		};
		return that;
	}
	
	var myMamalFun = new Mamal({name:'mamal fun'});
	
	var catFun = function(spec) {
		spec.saying = 'meowFun';
		var that = mamalFun(spec);
		that.purr = function(n) {
			var i, s = '';
			for(i = 0; i<n; i++){
				if(s){
					s += '-';
				}
				s+='r';
			}
			return s;
		};
		that.getName = function() {
			return spec.name + ' ' + spec.saying;
		};
		return that;
	}
	var myCatFun = catFun({name: 'Tom Fun'});
	console.log(myCatFun);
	console.log(myCatFun.getName());
	console.log(myCatFun.purr(3));
	console.log(myCatFun.says());
</script>
</body>
</html>