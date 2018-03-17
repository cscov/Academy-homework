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
  for (let i = 2; i < number / 2; i++) {
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
