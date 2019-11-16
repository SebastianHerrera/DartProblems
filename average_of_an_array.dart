import 'dart:io';

main() {
  var line = stdin.readLineSync();
  var testCases = int.parse(line);
  GetAverage(testCases);

}

GetAverage(testCases){
  for (var i = 1; i <= testCases; i++){

    var array = stdin.readLineSync();
    var splitedArray = array.split(" ");

    int sum = 0;
    int aux = 0;

    for (var number in splitedArray) {
      aux = int.parse(number);
      sum  += aux;
    }

    var average = sum/(splitedArray.length -1);
    print(average.toStringAsFixed(0));
  }
}