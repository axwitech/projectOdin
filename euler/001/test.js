
function multiples(x) {
        var sum=0;
        for (var i = 1; i < x; i++) {
            if ((i % 3 == 0) || (i % 5 == 0))
            {
                sum += i;
            }
        }
        return sum;
    }
alert("answer : " + multiples(1000));
