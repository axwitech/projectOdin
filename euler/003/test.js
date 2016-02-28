function isPrime(num) {

    if(num < 2) return false;
    for (var i = 2; i < num; i++) {
    	
        if(num%i==0){
        console.log("number: " + num  +" is diving by: " +  i) 
        num = num / i; 
        
        i = 1;
        console.log(num);
		}
		
	}
	console.log("Largest prime number is: " + num);
}

alert(isPrime(100));
