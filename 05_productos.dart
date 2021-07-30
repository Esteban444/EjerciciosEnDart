//@dart=2.9
/* 5. Se necesita crear un programa que permita ingresar los productos 
de 1 a N de un mercado con su valor y cantidad dónde:
• Se debe mostrar el total del mercado calculando cantidad y valor, teniendo 
en cuenta un IVA del 19%
• Se debe mostrar el total bruto y neto, al igual que el valor del IVA
• Se debe mostrar el producto más caro y el más barato.
• Se debe crear una funcionalidad que permita listar todos los productos ordenados de mayor a menor 
precio que fueron incluidos en el mercado. */

import 'dart:io';

main() {
  String producto;
  double valorUnidad = 0.0;
  double cantidad = 0.0;
  String continuar = 'y';
  List listado = [];
  double valor = 0.0;
  double iva = 0.0;
  double valorBruto = 0.0;
  double valorNeto = 0.0;
  double total = 0.0;
  List<double> listadoValor = [];

  while (continuar == 'y') {
    stdout.writeln('Por favor ingrese un nombre producto.');
    producto = stdin.readLineSync();

    stdout.writeln('Por favor ingrese una cantidad.');
    cantidad = double.parse(stdin.readLineSync());

    stdout.writeln('Por favor ingrese un valor.');
    valorUnidad = double.parse(stdin.readLineSync());

    print('Si desea continuar ingrese "y".');
    continuar = stdin.readLineSync();

    valor = valorUnidad * cantidad;
    listadoValor.add(valor);

    listado.add(
        'Producto: $producto, Cantidad: $cantidad,  Valor productos: $valor');
  }
  for (var item in listadoValor) {
    total = total + item;
    iva = total * 0.19;
    valorBruto = total - iva;
    valorNeto = total;
  }
  listadoValor.sort((a, b) => b.compareTo(a));

  for (var item in listado) {
    print(item);
  }
  print('Valor bruto: $valorBruto');
  print('Valor neto: $valorNeto');
  print('Valor iva: $iva');
  print('Lista de precios ordenada de mayor a menor: $listadoValor');
  print('Producto de menor valor: ${listadoValor.last}');
  print('Producto de mayor valor: ${listadoValor.first}');
}
