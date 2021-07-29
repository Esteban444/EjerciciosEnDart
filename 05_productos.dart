//@dart=2.9
/* 5. Se necesita crear un programa que permita ingresar los productos de 1 a N de un mercado 
con su valor y cantidad dónde:
• Se debe mostrar el total del mercado calculando cantidad y valor, teniendo en cuenta un IVA del 19%
• Se debe mostrar el total bruto y neto, al igual que el valor del IVA
• Se debe mostrar el producto más caro y el más barato.
• Se debe crear una funcionalidad que permita listar todos los productos ordenados de mayor a menor 
precio que fueron incluidos en el mercado. */

import 'dart:io';

main() {
  String producto;
  double valor = 0;
  double cantidad = 0;
  String continuar = 'y';
  List listado = [];

  while (continuar == 'y') {
    stdout.writeln('Por favor ingrese un nombre producto.');
    producto = stdin.readLineSync();

    stdout.writeln('Por favor ingrese una cantidad.');
    cantidad = double.parse(stdin.readLineSync());

    stdout.writeln('Por favor ingrese un valor.');
    valor = double.parse(stdin.readLineSync());

    print('Si desea continuar ingrese "y".');
    continuar = stdin.readLineSync();

    listado = [producto, cantidad, valor];
  }
  print(listado);
}
