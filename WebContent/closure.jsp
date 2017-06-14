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
		// Excersise 1
		function foo() {
			var a = 2;
			function baz() {
				console.log(a); 
			}
			bar(baz);
		}
		function bar(fn) {
			fn(); // Closure : when transport inner function(foo) outside of it lexical scpe
					// It will maintain a scope reference to where original declare. And when execute, closure will be call
		}
		foo();

		//Ecersice 2
		var fn;
		function foo() {
			var a = 2;
			function baz() {
				console.log(a);
			}
			fn = baz; 
		}
		function bar() {
			fn(); // Closure : when transport inner function(foo) outside of it lexical scpe
				// It will maintain a scope reference to where original declare. And when execute, closure will be call
		}
		foo();
		bar(); 
	</script>
</body>
</html>