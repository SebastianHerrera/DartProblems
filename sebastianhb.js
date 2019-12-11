const readline = require("readline");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdin
});


function getReverseWords(words) {
  var reverseWords = [];

  for (let i = words.length - 1; i >= 0; i--) {
    reverseWords.push(words[i]);
  }

  return reverseWords;
}

function evaluateArrays(words, reverseWords) {
  aux = 0;
  for (let i = 0; i < words.length; i++) {
    if (words[i] == reverseWords[i]) {
      aux++;
    }
  }

  console.log(aux);

  if (aux == words.length) return true;
}

rl.question("", testCases => {
  for (let i = 0; i < testCases; i++) {

    const rl2 = readline.createInterface({
        input: process.stdin,
        output: process.stdin
    });

    rl2.question("", input => {
      var words = input.split("");

      console.log(words);

      reverseWords = getReverseWords(words);

      if (evaluateArrays(words, reverseWords)) {
        console.log("Y");
      } else {
        console.log("N");
      }

      console.log(reverseWords);
      //rl2.close()
    });
  }
  rl.close();
});
