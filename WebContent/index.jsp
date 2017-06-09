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
<script type="text/javascript">
	console.log("3+6 = " + add(3, 6));
	var obj = {	num1: 1,
				num2: 2,
				num3: 3
			  };
	obj.xxx = 'xxx';
	var another = Object.create(obj);
	another.yyy = 'yyy';
	var anotherOfAnother = Object.create(another);
	console.log(anotherOfAnother);
	console.log(anotherOfAnother.xxx);
	console.log(anotherOfAnother.yyy);
	console.log(typeof anotherOfAnother.num3);
	console.log(obj.hasOwnProperty('num1'));
	var name;
	for(name in anotherOfAnother){
		console.log(name + " : " + anotherOfAnother[name]);
	}
	delete obj.xxx;
	console.log(anotherOfAnother);
	//Check global
	console.log("test global");
	var global = 5;
	
	var funUsingGlobal = function() {
		var global = 6;
		console.log("in function: "+global);
		console.log(this);
	}
	funUsingGlobal();
	console.log("outer function: "+global);
	console.log(parseInt("09"));
	var another_stooge = {
		x : 'xxx',
		y : 'yyy'
	};
	var name;
// 	another_stooge.hasOwnProperty = null; // trouble
	for (name in another_stooge) {
		if (another_stooge.hasOwnProperty(name)) { // boom
			console.log(name + ': ' + another_stooge[name]);
		}
	}
</script>
</body>
</html>