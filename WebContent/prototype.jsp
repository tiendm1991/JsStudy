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
	function Person(name,age){
		this.name = name;
	  	this.age = age;
	}
	Person.prototype.gender = 'male';
	var per1 = new Person('tiendm',27);
	console.log(per1);
	
	var per2 = Object.create(new Person());
	console.log(per2);
	
	function SubPerson(name,age){
	  Person.call(this,name,age);
	}
	
	SubPerson.prototype = Object.create(Person.prototype);
	SubPerson.prototype.gender = 'female';
	var per3 = new SubPerson('abc',22);
	console.log(per3);
</script>
</body>
</html>