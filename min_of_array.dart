import 'dart:io';

main() {

  var line = stdin.readLineSync();
  var testCases = int.parse(line);

  for (var i = 0; i < testCases; i++) {
    
    var nums = stdin.readLineSync();
    var stringNums = nums.split(" ");
    
    var intNums = [];
    
    intNums = ConvertStringArrayToIntArray(stringNums);

    intNums.sort((num1, num2) => num1 - num2);

    print(intNums[0]);

  }


}

ConvertStringArrayToIntArray(stringNums){
  var intNums = [];

  for (var item in stringNums) {
    intNums.add(int.parse(item));
  }

  return intNums;
}
