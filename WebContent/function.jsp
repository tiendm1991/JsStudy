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
<h1>Welcome Page</h1>
<button id="button1">Click1</button>
<button id="button2">Click2</button>
<button id="button3">Click3</button>
<script type="text/javascript">
	//Method invocation
	console.log('************Start of Method invocation************');
	var obj = {	num1: 1,
				num2: 2,
				num3: 3,
				increment: function(x){
					this.num1 += x;
					this.num2 += x;
					this.num3 += x;
					console.log(this);
				}
			  }
	obj.increment(3);
	console.log(this);
	
	
	//Function Invocation
	console.log('************Start of Function invocation************');
	var value = 100;
	var objFunction = {
		value : 30,
		increment : function(){
			var that = this;
			that.value++;
			var innerfunction = function(){
				console.log("value innerfunction = " + that.value);
				console.log(that);
				console.log(this);
			}
			innerfunction();
		}
	};
	objFunction.increment();
	
	//Constructor Invocation
	console.log('************Start of Constructor invocation************');
	var ObjConstruct = function(vName){
		this.name = vName;
	}
	
	ObjConstruct.prototype.getName = function(){
		return this.name+"extra";
	}
	
	var xxxConstruct = new ObjConstruct("xxx");//Note: new oprator will create an object bound the function
	console.log("name= " + xxxConstruct.name + ", getName= "+ xxxConstruct.getName());
	
	//Apply Invocation
	console.log('************Start of Apply invocation************');
	array = [3,4];
	var sum = add.apply(null,array); //7
	console.log("sum in apply: " + sum);
	var objApply = {
	    data:'Hello World'
	}
	var displayData = function() {
	    console.log(this.data);
	}
	displayData(); //undefined
	displayData.apply(objApply); //Hello World
	
	//Arguments
	console.log('************Start of Arguments************');
	var sumArg = function(){
		var i, sum = 0;
		for(i = 0; i < arguments.length; i++){
			sum += arguments[i];
		}
		console.log(arguments);
		return sum;
	}
	var s = sumArg(1,2,3,4,5,6,7,8,9);
	console.log("sum of array: " + s);
	
	//Exception
	console.log('************Start of Exception************');
	var addThrow = function(a,b) {
		if(typeof a !== 'number' || typeof b !== 'number'){
			throw {
				name : 'NaN Error',
				message: 'parameter is not a number!'
			};
		}
		return a+b;
	}
	
	var addTry = function() {
		try {
			console.log(addThrow('4', '6'));
		} catch (e) {
			console.log(e.name + ":" + e.message);
		}
	}
	addTry();
	
	//Augementing
	console.log('************Start of Augmenting************');
	Function.prototype.method = function(name, func) {
		if(!this.prototype[name]){
			this.prototype[name] = func;
		}
		return this;
	}
	Number.method('integer', function() {
		return this < 0 ? Math.ceil(this) : Math.floor(this);
	});
	console.log((-10/3).integer());
	
	//Recursion
	console.log('************Start of Augmenting************');
	var iTower = 1;
	var towerHanoi =  function(disc,src,aux,dest) {
		if(disc > 0){
			towerHanoi(disc-1, src, dest, aux);
			console.log("step " + (iTower++) + " : move " + disc +" from " + src + " to " + dest);
			towerHanoi(disc-1, aux, src, dest);
		}
	}
	towerHanoi(3, 'A', 'B', 'C');
	
	var factori = function factorial(n) {
		if(n == 1) return 1;
		return n * factori(n-1);
	}
	console.log("factori(5)= " + factori(5));
	
	//Scope
	console.log('************Start of Scope************');
	var foo = function() {
			var aScope = 3, bScope = 5, cScope;
			var bar = function () {
				var bScope = 7, cScope = 11;
				console.log("1. "+"a = " + aScope + " , b =" +bScope + " , c = " + cScope);
				aScope += bScope + cScope;
				console.log("2. "+"a = " + aScope + " , b =" +bScope + " , c = " + cScope);
			}
			console.log("3. "+"a = " + aScope + " , b =" +bScope + " , c = " + cScope);
			bar();
			console.log("4. "+"a = " + aScope + " , b =" +bScope + " , c = " + cScope);
			return bar;
	}
	foo();
	//Closure
	console.log('************Start of Closure************');
	//1. protectect object
	var objClouse = function() {
		var value = 2;
		return {
			increment : function() {
				value += 1;
			},
			getValue : function() {
				return value;
			}
		}
	}
	var closure = objClouse();
	closure.increment();
	console.log(closure.getValue());
	
	//2. Quo
	var Quo = function(status) {
		return {
			get_status : function() {
				return status;
			}
		}
	}
	var quo =  Quo('xxxQuoClosure');
	console.log(quo);
	//Note: new oprator will create an object bound the function
	var testNew = function(){
	  this.A = 1;
	  this.B = 2;
	  return this;
	};
	var testNew1 = testNew(); // return window object because this is function patterm
	var testNew2 = new testNew(); // return an object wrapper function have 2 prototype a=1, b=2
	console.log(testNew2);
	
	//Closure2
	console.log('************Start of Closure2************');
	var makeAdder = function(x) {
		var z = 11;
		if(true){
			var z = 22;
		}
		return function(y){
			console.log("lexical scope when duplicate var z. z = " + z);
			return x+y;
		}
		
	}
	var add5 = makeAdder(5);
	var add10 = makeAdder(10);
	console.log(add5(4));
	console.log(add10(8));
	
	var showLink = function(x){
		alert(x);
	}
	
	var createFunctionShow = function(x) {
		return function() {
			showLink(x);
		}
	}
	
	var closureClick = function() {
		var links = ['button1','button2','button3'];
		var i;
		for(i = 0; i < links.length; i++){
			document.getElementById(links[i]).onclick = createFunctionShow(links[i]);
		}
	}
	closureClick();
	
	//Memoization
	//1. fibonaci
	var fibonaci = function() {
		var memo = [0,1];
		var fib = function(n) {
			var x = memo[n];
			if(typeof x !== 'number'){
				x = fib(n-1) + fib(n-2);
				memo[n] = x;
			}
// 			console.log(memo);
			return x;
		};
		return fib;
	}
	
	var fibo = fibonaci();
	console.log("fibonaci of 8 = " + fibo(8)); 
	
	//2.Genalri
	var memoizer = function(memory, fundamental) {
		var shell = function(n) {
			var result = memory[n];
			if(typeof result !== 'number'){
				result = fundamental(shell,n);
				memory[n] = result;
			}
			return result;
		};
		return shell;
	}
	var fibo2 = memoizer([0,1], function(shell,n) {
		return shell(n-1) + shell(n-2);
	});
	console.log("fibonaci2 of 8 = " + fibo2(8));
</script>
</body>
</html>