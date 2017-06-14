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
	//a();
	//b();
	a();
	a = function b(){
		console.log('xxxxxx');
	}
	function a(){
		console.log('yyyyyy');
	var a;
	}
	function a(){
		console.log('override');
	}
</script>
</body>
</html>