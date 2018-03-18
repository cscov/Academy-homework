function madLib(verb, adjective, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
}
madLib('make', 'best', 'guac');

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}
isSubstring("time to program", "time");
isSubstring("Jump for joy", "joys");

// 3 and 5 are magic numbers.
// Define a function fizzBuzz(array) that takes an array and returns a new
// array of every number in the array that is divisible by either 3 or 5, but
// not both.
function fizzBuzz(array) {
  let divisibleArray = [];
  array.forEach(el => {
    if ((el % 3 === 0) && (el % 5 !== 0)) {
      divisibleArray.push(el);
    } else if ((el % 5 === 0) && (el % 3 !== 0)) {
      divisibleArray.push(el);
    }
  });
  return divisibleArray;
}
fizzBuzz([3, 5, 0, 15]);

// Define a function isPrime(number) that returns true if number is prime.
// Otherwise, false. Assume number is a positive integer.
function isPrime(number) {
  if ((number === 2) || (number === 3)) {
    return true;
  }
  for (let i = 2; i <= number / 2; i++) {
    if (number % i === 0) {
      return false;
    }
  }
  return true;
}

// Using firstNPrimes, write a function sumOfNPrimes(n) that returns the sum
// of the first n prime numbers. Hint: use isPrime as a helper method.
function sumOfNPrimes(n) {
  let primeCount = 0;
  let sum = 0;
  let i = 2;
  while (primeCount < n) {
    if (isPrime(i)) {
      sum += i;
      primeCount++;
    }
    i++;
  }
  return sum;
}

  const printCallback = function (arr){
    arr.forEach(name => console.log(name));
  };

  function titleize(array,  callback) {
    let titleArr = array.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    callback(titleArr);
  }

  function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
  }

  Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
  };

  Elephant.prototype.grow = function() {
    this.height += 12;
  };

  Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
  };

  Elephant.prototype.play = function () {
    console.log(`${this.name} is ${this.tricks[Math.round(Math.random(this.tricks.length - 1))]}!`);
  };
