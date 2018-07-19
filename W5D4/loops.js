function fizzBuzz(arr) {
  let result = []

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] % 3 === 0) {
      if (arr[i] % 5 !== 0) {
        result.push(arr[i])
      }
    } else if (arr[i] % 5 === 0) {
      result.push(arr[i])
    }
  }

  return result
}

function isPrime(number) {
  if (number < 2) {
    return false
  }

  for (var i = 2; i < number; i++) {
    if (number % i === 0) {
      return false
    }
  }

  return true
}

function firstNPrimes(number) {
  result = []

  for (var i = 2; result.length < number; i++) {
    if (isPrime(i)) {
      result.push(i)
    }
  }

  return result
}

function sumOfFirstNPrimes(number) {
  primes = firstNPrimes(number)
  sum = 0

  for (var i = 0; i < primes.length; i++) {
    sum += primes[i]
  }

  return sum
}
