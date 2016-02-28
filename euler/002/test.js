function fibonacci(x){
var result = 2;
var left = 1;
var right = 2;

while(left + right < x){
	var temp = left + right;
	left = right;
	right = temp;
		if(right % 2 == 0){
			result += right;
			}
	}
	return result;
}

alert(fibonacci(4000000));