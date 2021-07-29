//@dart=2.9
/* 4. Se necesita crear un programa que permita ingresar una lista
 de estudiantes de 1 a N con su nota final (0,0 a 5,0) al finalizar dicho 
 ingreso el programa debe mostrar en pantalla:
• Cuántos pasaron teniendo en cuenta que se pasar con una nota mayor a 3.8.
• Cuantos quedaron para recuperación si la nota esta entre 2.5 a 3.8.
• Cuantos perdieron si la nota está de 0,0 a 2,5. */

import 'dart:io';

main() {
  String nombre;
  double nota = 0;
  int perdedores = 0;
  int recuperar = 0;
  int ganadores = 0;
  String continuar = 'y';

  while (continuar == 'y') {
    stdout.writeln('Por favor ingrese un nombre.');
    nombre = stdin.readLineSync();

    stdout.writeln('Por favor ingrese una nota.');
    nota = double.parse(stdin.readLineSync());

    if ((nota > 0.0) && (nota < 2.5)) {
      perdedores++;
      print('Usted es: $nombre su nota es: $nota perdio el año.');
    } else if ((nota >= 2.5) && (nota < 3.8)) {
      recuperar++;
      print('Usted es: $nombre su nota es: $nota debes recurar.');
    } else if ((nota >= 3.8) && (nota <= 5.0)) {
      ganadores++;
      print('Usted es: $nombre su nota es: $nota gano el año');
    } else {
      print('La nota no existe.');
    }
    print('Si desea continuar ingrese "y".');
    continuar = stdin.readLineSync();
  }
  print(
      'Perdedores : $perdedores \n Deben recuperar: $recuperar\n Ganadores: $ganadores');
}
