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
	function Person(first, last, age, gender, interests) {
	  this.name = {
	    first,
	    last
	  };
	  this.age = age;
	  this.gender = gender;
	  this.interests = interests;
	};
	Person.prototype.greeting = function() {
	  alert('Hi! I\'m ' + this.name.first + '. From Person');
	};

	function Teacher(first, last, age, gender, interests,subject){
		Person.call(this,first, last, age, gender, interests);
	    this.subject = subject;
	}
	Teacher.prototype = Object.create(Person.prototype);
	Teacher.prototype.constructor = Teacher;
	Teacher.prototype.greeting = function(){
		alert('Hi! I\'m ' + this.name.first + '. From Teacher');
	}

	var teacher = new Teacher('Dave', 'Griffiths', 31, 'male', ['football', 'cookery'], 'mathematics');

	console.log(teacher);
	teacher.greeting();
</script>
</body>
</html>