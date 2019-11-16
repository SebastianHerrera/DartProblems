import 'dart:io';

main() {

  var line = stdin.readLineSync();
  var testCases = int.parse(line);

  int aux = 0;
  int sum = 0;

  while(aux < testCases){

    var string = stdin.readLineSync();
    var number = int.parse(string);
    
    sum += number;
    aux++;
  }

  print(sum);
}
