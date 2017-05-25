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
	alert("3+6 = " + add(3, 6));
	//Method invocation
	var obj = {	num1: 1,
				num2: 2,
				num3: 3,
				multi: function(a,b){
					return a*b;
				}
			  };
	console.log(obj.num3 + " * " + obj.num2 + " = " + obj.multi(obj.num3,obj.num2));
	
	//Function Invocation
	var myObj = {
					value : 5
				};
	myObj.doubles = function(){
// 		var that = this;
// 		var helper = function () {
// 			that.value = add(that.value, that.value);
// 		}
// 		helper();
		this.value = 2 * this.value;
	}
	myObj.doubles();
	console.log("myObj.value = " + myObj.value);
	//Constructor Invocation
	var Quo = function(str){
		this.status = str;
	}
	Quo.prototype.get_status = function(){
		return this.status;
	}
	var MyQuo = new Quo("xxx");
	console.log(MyQuo.get_status());
	
	//Apply Invocation
	var array = [3,4];
	var sum = add.apply(null,array);
	console.log("apply add: " + sum);
	var statusObj = {status: 'OK'};
	var status = Quo.prototype.get_status.apply(statusObj);
	console.log(status);
</script>
</body>
</html>