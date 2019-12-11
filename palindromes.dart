/**
 * ➜  028 git:(sebasbeleno) ✗ dartanalyzer sebasbeleno.dart
 * Analyzing  sebasleno.dart
  No issues found!
 */
import 'dart:io';

void main() {
  var line = stdin.readLineSync();
  var testCases = int.parse(line);
  var answers = [];

  for (var i = 0; i < testCases; i++) {
    var strword = stdin.readLineSync();
    var wordsWithOutSpaces = strword.replaceAll(RegExp(r'\W'), '').toLowerCase();
    var words = wordsWithOutSpaces.split('');
    var reverseWords = getReverseWords(words);
    var isPalindrome = evaluateWords(words, reverseWords);

    if (isPalindrome) {
      answers.add('Y');
    } else {
      answers.add('N');
    }
  }

  for (var answer in answers) {
    stdout.write('${answer} ');
  }
}

List getReverseWords (words) {
  var reverseWords = [];
  for (var i = words.length - 1; i >= 0; i--) {
    reverseWords.add(words[i]);
  }
  
  return reverseWords;
}

bool evaluateWords (words, reverseWords) {
  var aux = 0;
  for (var i = 0; i < words.length; i++) {
    if (words[i] == reverseWords[i]) aux++;
  }
  if (aux == words.length) return true;
  
  return false;
}

/*  $ dart sebasbeleno.dart
  * over normal under obese obese obese obese over under normal
  normal under normal normal obese normal obese under normal obese obese
  normal obese under obese under under obese obese obese under obese normal
  normal under
*/
