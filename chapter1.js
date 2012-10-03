// non-exercise helpers
function square(x) { return x*x; }

function average(x, y) {
  return (x + y) / 2;
}

function improve(guess, x) {
  return average(guess, x / guess);
}

// Exercises

// 1.1
10;
//= 10
5 + 3 + 4;
//= 12
9 - 1;
//= 8
6 / 2;
//= 3
(2 * 4) + (4 - 6);
//= 6
var a = 3;
var b = a + 1;
a + b + (a * b);
//= 19
a === b;
//= false
(b > a && b < (a * b)) ? b : a;
//= 4
if (a === 4) {
  6;
} else if (b === 4) {
  6 + 7 + a;
} else {
  25;
}
//= 16
2 + (b > a ? b : a);
//= 6
(a > b ? a : (a < b ? b : -1)) * (a + 1);
//= 16

// 1.2 (No equivalent in javascript)

// 1.3
function sum_of_squares(x, y) {
  return square(x) + square(y);
}

function sum_of_larger_squares(x, y, z) {
  if (x > z && y > z) {
    return sum_of_squares(x, y);
  } else if (x > y && z > y) {
    return sum_of_squares(x, z);
  } else {
    return sum_of_squares(y, z);
  }
}

// 1.4
// This procedure tests the sign of b then applys either the addition or 
// subtraction operator to a and b to add the absolute value of b to a.

// 1.5
// For applicative-order evaluation, the test will try to evaluate p before
// the predicate, resulting in an infinite loop during evaluation of p.
// For normal-order evaluation, the test will evaluate to 0 and never try
// to evaluate the function p.

// 1.6
// Since javascript uses applicative-order evaluation, the arguments to
// new_if will try to be evaluated before new_if itself, resulting in
// infinite recursion when trying to evaluate sqrt_iter by improving the guess.

// 1.7
// Small numbers will not calculate correctly because when the radicand is
// small enough, the guess can become small enough such that the difference
// between its square and that of the radicand is smaller than the specified
// precision.
// Large numbers will not calculate correctly because rounding due to finite
// precision results in insignificant digits being lost, so the good_enough
// condition will never be met.
function good_enough(guess, x) {
  return Math.abs(improve(guess, x) - guess) < (guess * 0.001);
}

function sqrt_iter(guess, x) {
  return good_enough(guess, x) ?
    guess :
    sqrt_iter(improve(guess, x), x);
}

function sqrt(x) {
  return sqrt_iter(1.0, x);
}
