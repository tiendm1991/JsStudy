/**
 * 
 */

function add(a, b) {
	return a+b;
}

function addObject(obj){
	var x = obj.num1;
	var y = obj.num2;
	var z = obj.num3;
	var objTotal = {sum1 : x+y, sum2 : y+z, sum3 : x+z};
	return objTotal;
}

function updateObject(obj){
	var x = obj;
	x.num1 = 9;
	return obj;
}