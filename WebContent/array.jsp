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
<h1>Array</h1>
<script type="text/javascript">
	Function.prototype.method = function(name,func) {
		if(!this.prototype[name]){
			this.prototype[name] = func;
		}
	}
	
	//Array literal
	console.log("*************Start Array Literal*************");
	var empty = [];
	var numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six'];
	console.log(empty[1]);
	console.log(numbers[3]);
	var numbersObject = {'0' : 'zero', '1' : 'one', '2' : 'two'};
	console.log(numbersObject.length);
	console.log(numbersObject[1]);
	var arrMix = [1,2,'xxx',{'a':'b'},9.8];
	console.log(arrMix.length);
	
	//Length
	console.log("*************Start Array Length*************");
	var arrLength = [0,1];
	arrLength[9] = 9;
	console.log(arrLength);
	arrLength.push(10);
	console.log(arrLength);
	
	//Length
	console.log("*************Start Array Length*************");
	var arrLength = [0,1];
	arrLength[9] = 9;
	console.log(arrLength);
	arrLength.push(10);
	console.log(arrLength);
	
	//Delete
	//Length
	console.log("*************Start Array Delete*************");
	var arrDel1 = [0,1,2,5,4,5,6];
	var arrDel2 = [0,1,2,3,4,5,6];
	delete arrDel1[3];
	console.log(arrDel1);
	arrDel2.splice(3,2);
	console.log(arrDel2);	
	
	//Detected Array and Object
	console.log("*************Start Array Confusion*************");
	var isArray = function(value) {
		return value && typeof value === 'object' && value.constructor === Array
					 && typeof value.length ==='number' && typeof value.splice === 'function'
					 && !(value.propertyIsEnumerable('length'));
	}
	
	//Method
	console.log("*************Start Array Method*************");
	Array.method('reduce', function(fun, value) {
		var i;
		for(i = 0; i < this.length; i++){
			value = fun(this[i],value);
		}
		return value;
	});
	
	var add = function(x,y) {
		return x + y;
	};
	
	var arrMethod = [1,2,3,4,5,6,7,8,9]; 
	console.log('sum arrMethod = ' + arrMethod.reduce(add,0));
	
	//Dimension
	Array.dim = function(dimension, value) {
		var a = [], i;
		for(i = 0 ; i < dimension; i++){
			a[i] = value;
		}
		return a;
	}
	var arrDim = Array.dim(10,3);
	console.log(arrDim);
	
	Array.matrix = function(m,n,initial) {
		var a = [], i, j;
		for(i = 0; i < m; i ++){
			a[i] = [];
			for(j = 0; j < n; j++){
				a[i][j] = initial;
			}
		}
		return a;
	}
	
	var matrix = Array.matrix(2, 3, 5);
	console.log(matrix);
</script>
</body>
</html>