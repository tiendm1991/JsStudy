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
	
	var xxxConstruct = new ObjConstruct("xxx");
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
</script>
</body>
</html>