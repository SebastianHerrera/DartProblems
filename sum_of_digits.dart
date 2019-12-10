import 'dart:io';

main() {

  var line = stdin.readLineSync();
  var testCases = int.parse(line);


  for (var i = 0; i < testCases; i++) {
    var input = stdin.readLineSync();
    
    var intNums = [];

    intNums = ConvertStringArrayToIntArray(input.split(" "));
    var calculate = intNums[0] * intNums[1] + intNums[2];

    var stringCalculate = calculate.toString();
    var arrayCalculate = stringCalculate.split("");


    var sum = 0;
    for (var digit in arrayCalculate) {
      sum += int.parse(digit);
    }

    print(sum);

  }

}


ConvertStringArrayToIntArray(stringNums){
  var intNums = [];

  for (var item in stringNums) {
    intNums.add(int.parse(item));
  }

  return intNums;
}


