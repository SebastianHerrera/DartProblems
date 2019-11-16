import 'dart:io';

main() {
  var line = stdin.readLineSync();
  var casosDePrueba = int.parse(line);
  Convertir(casosDePrueba);

}

Convertir(casosDePrueba){
  for (var i = 0; i < casosDePrueba; i++) {
    var gradosFrarenheitString = stdin.readLineSync();

    int gradosFrarenheit =  int.parse(gradosFrarenheitString); 

    var gradosCelcuis = (gradosFrarenheit - 32)/1.8;

    print(gradosCelcuis.toStringAsFixed(0));
  }
}