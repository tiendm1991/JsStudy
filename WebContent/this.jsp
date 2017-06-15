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
	<h1>METHOD STANDARD</h1>
	<script type="text/javascript">
		Function.prototype.method = function(name, func) {
			if (!this.prototype[name]) {
				this.prototype[name] = func;
			}
		}
		//Default binding -- function invocation
		function foo() {
			console.log(this.a);
		}
		var a = 'a global';
		foo(); // 2

		//Implicit binding -- Method invocation
		function foo() {
			console.log(this.a);
		}
		var obj = {
			a : 3,
			foo : foo
		};
		var obj2 = {
			a : 33,
			obj : obj
		}
		obj.foo();
		obj2.obj.foo();// 3 :  Only top/last leval of an object properties chain can apply
		var implicitLost = obj.foo;
		implicitLost(); // a global :  If lost the implicit, default will be apply or undefined
		function doFoo(fn) {
			fn();
		}
		doFoo(obj.foo); // a global : if function is passing, not apply implicit, instead by default

		//Explicit binding : using call -- apply invocation
		var objCall = {
			a : 'a is called'
		}
		foo.call(objCall);
		var bar = function() {
			foo.call(objCall);
		}
		console.log('***call bar()***');
		bar();
		console.log('***call bar setTimeout***');
		// 		setTimeout(bar, 100);
		console.log('***call bar by call***');
		bar.call(window);

		console.log('using helper');
		function fooReturn(something) {
			console.log(this.a + " - " + something);
			return this.a + something;
		}
		var objhelper = {
			a : 10
		};
		function bind(fn, obj) {
			return function() {
				return fn.apply(obj, arguments);
			};
		}
		var barHelper = bind(fooReturn, objhelper); //bind will return new function that call function have hard binding obj to this
		var x = barHelper(8);
		console.log(x);

		// new binding : constructor invocation

		// Order
		// Explicit -> implicit . Bind -> construtor -> implicit
		console.log('order');
		function fooOrder(something) {
			this.a = something;
		}
		var obj1 = {
			fooOrder : fooOrder
		};
		var obj2 = {};
		obj1.fooOrder(2);
		console.log(obj1.a); // 2
		obj1.fooOrder.call(obj2, 3);
		console.log(obj2.a); // 3
		var bar = new obj1.fooOrder(4);
		console.log(obj1.a); // 2
		console.log(bar.a); //4
		console.log(obj1); // obj1
		console.log(obj2); // obj1
		console.log(bar); // bar
		bar.foo = fooOrder;
		bar.foo(5);
		console.log(bar); // bar New
		var bar2 = fooOrder.bind( obj1 );
		bar2( 2 );
		console.log('obj1');
		console.log( obj1 ); // 2
		var baz = new bar2( 3 );
		console.log('bar2');
		console.log( bar2 ); // 2
		console.log('baz');
		console.log( baz); // 3
	</script>
</body>
</html>