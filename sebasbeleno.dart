import 'dart:io';

import 'dart:math';

void main() {
  var line = stdin.readLineSync();
  var testCases = int.parse(line);

  List<String> answers = new List();

  for (var i = 0; i < testCases; i++) {
    var strWeight = stdin.readLineSync();
    var strHeight = stdin.readLineSync();

    var weight = int.parse(strWeight);
    var height = double.parse(strHeight);

    var BMI = getBMI(height, weight);

    answers.add( evalueData(BMI));

 
  }

 
  for (var answer in answers) {
    print(answer);
  }
}

getBMI(height, weight) {
  var BMI = weight / pow(height, 2);

  return BMI;
}


evalueData(BMI){
  if(BMI < 18.5){
    return "under";
  }else if(BMI >= 18.5 && BMI < 25.0){
    return "normal";
  }else if(BMI >= 25.0 && BMI < 30.0){
    return "over";
  }else{
    return "obese";
  }
}
