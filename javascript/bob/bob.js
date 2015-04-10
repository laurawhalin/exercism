//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};


Bob.prototype.hey = function(input) {
  var lastChar = input.slice(-1);
  var hasLetters = /[a-zA-Z]/;
  var whitespace = /^\s/;

  function fancyPunctuation(input) {
    return lastChar === "!" || lastChar === "?";
  }

  function shouting(input) {
    return input === input.toUpperCase();
  }

  function noNumbers(input, re) {
    return re.test(input);
  }

  function silence(input, re) {
    if (re.test(input) || input === input.slice(-1)) {
      return true;
    }
  }

  if ((fancyPunctuation(input) && shouting(input) && noNumbers(input, hasLetters))
    || (shouting(input) && noNumbers(input, hasLetters))) {
    return "Whoa, chill out!";
  } else if (lastChar === "?") {
    return "Sure.";
  } else if (silence(input, whitespace)) {
    return "Fine. Be that way!"
  } else{
    return "Whatever.";
  };
};

module.exports = Bob;
