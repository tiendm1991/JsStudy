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
<h1>REGEX</h1>
<script type="text/javascript">
	Function.prototype.method = function(name,func) {
		if(!this.prototype[name]){
			this.prototype[name] = func;
		}
	}
	var parse_url = /^(?:([A-Za-z]+):)?(\/{0,3})([0-9.\-A-Za-z]+)(?::(\d+))?(?:\/([^?#]*))?(?:\?([^#]*))?(?:#(.*))?$/;
	var url = 'xttp://www.ora.com:8080/goodparts?q#fragment';
	var result = parse_url.exec(url);
	var names = ['url', 'scheme', 'slash', 'host', 'port','path', 'query', 'hash'];
	var i;
	for (i = 0; i < names.length; i += 1) {
		console.log(names[i] + ': ' + result[i] + "\n");
	}
	
	var parse_number = /^-?\d+(?:\.\d*)?(?:e[+\-]?\d+)?$/i;
	var test = function (num) {
		return parse_number.test(num);
	};
	var nums = ['1', 'number', '98.6', '132.21.86.100', '123.45E-67','123.45D-67'];
	for(i = 0; i < nums.length; i++){
		console.log(nums[i] + ' : ' + test(nums[i]));	
	}
</script>
</body>
</html>