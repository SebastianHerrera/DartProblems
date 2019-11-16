import 'dart:io';

main() {
  var line = stdin.readLineSync();
  var testCases = int.parse(line);
  ConvertToCelcius(testCases);

}

ConvertToCelcius(testCases){
  for (var i = 1; i <= testCases; i++) {
    var fahrenheitDegreesString = stdin.readLineSync();

    var  split = fahrenheitDegreesString.split(" ");

    for (var degree in split) {
      
      var fahrenheitDegrees = int.parse(degree);

      var degreesCelsius = (fahrenheitDegrees- 32)/1.8;
      
      print(degreesCelsius.toStringAsFixed(0));
    }
  }
}