// non-exercise helpers
function square(x) { return x*x; }

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
