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
	Function.prototype.method = function(name,func) {
		if(!this.prototype[name]){
			this.prototype[name] = func;
		}
	}
	//1. Array
	console.log('*********1.ARRAY*********');
	console.log('Start concat');
	var a = ['1','2','3'];
	var b = ['a','b'];
	var c = a.concat(b,true,'5',9);
	console.log(c);
	console.log('Start join');
	var d = a.join('-');
	console.log(d);
	console.log('Start pop');
	var e = a.pop();
	console.log(e);
	console.log(a);
	console.log(c);
	console.log('Start push');
	var f = a.push('3');
	console.log(f);
	console.log(a);
	console.log('Start shift');
	var g = a.shift();
	console.log(g);
	console.log(a);
</script>
</body>
</html>