import 'dart:io';

main() {

  var line = stdin.readLineSync();
  var testCases = int.parse(line);


  for (var i = 0; i < testCases; i++) {
    
    var nums = stdin.readLineSync();
    var array = nums.split(" ");
    

    var n1;
    var n2;
    var sum = 0;
    for (var item in array) {
      sum += int.parse(item);
    }

    print(" ");
    print(sum);
    print(" ");
  }


}
