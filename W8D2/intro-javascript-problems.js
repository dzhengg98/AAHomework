// Phase 1

// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping1();

// 'in block'
// 'in block'

// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping2();

// 'in block'
// 'out of block'


// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping3();

// errors, cannot redeclare block scope variable 'x'

// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping4();

// 'in block'
// 'out of block'

// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';  
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }

// mysteryScoping5();

// errors, cannot redeclare block scope variable 'x'

// madLib
let madLib = function(verb, adjective, noun) {
  return "We shall " + verb.toUpperCase() + " the " + adjective.toUpperCase() + " " + noun.toUpperCase() + ".";
};

console.log(madLib('make', 'best', 'guac'));

// isSubstring
let isSubstring = function(searchString, subString) {
  return (searchString.indexOf(subString) > -1)
}

console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"));

// fizzBuzz
let fizzBuzz = function(array) {
  let newArray = [];
  for(i=0; i<array.length; i++) {
    let num = array[i];
    if (((num % 3 === 0) || (num % 5 === 0)) && !((num % 3 === 0) && (num % 5 === 0))) {
      newArray.push(num);
    };
  };
  return newArray;
};

console.log(fizzBuzz([3,5,11,16, 15]));

// isPrime
let isPrime = function(number) {
  for(i=2; i<number; i++) {
    if (number % i === 0) {
      return false;
    };
  };
  return true;
};

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));

// sumOfNPrimes
let firstNPrimes = function(number) {
  let array = [];
  let i = 2;
  while(array.length < number) {
    if (isPrime(i)) {
      array.push(i);
    };
    i++;
  };
  return array;
};

let sumOfNPrimes = function(number) {
  let sum = 0;
  let array = firstNPrimes(number);
  for(i=0; i<array.length; i++) {
    sum += array[i];
  };
  return sum;
};

// console.log(firstNPrimes(3));
console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
