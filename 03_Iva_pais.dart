//@dart=2.9

/* 3. Se necesita hacer un programa que nos calcule el IVA de un producto teniendo en cuenta que vamos a manejar */
/*  3 países Colombia – 19%, Argentina 20% y Chile 9 %. */
/* • Tenga en cuenta que el valor y el país los debe ingresar el usuario y calcular el resultado,  */
/* en caso de que el país ingresado no coincida se deberá notificar al usuario que el país no existe. */
/* • Se espera un resultado similar a este ingresando un valor de 1000 “El IVA que se le cobrará */
/*  en COLOMBIA ese de 190 con base al total suministrado de 1000”. */
import 'dart:io';

main() {
  stdout.writeln(
      'Por favor ingrese un nombre de pais entre Colombia, Argentina o Chile.');
  String pais = stdin.readLineSync().toLowerCase();
  stdout.writeln('Por favor ingrese un valor de producto.');
  double valor = double.parse(stdin.readLineSync());

  if (pais == 'colombia') {
    double iva = valor * 19 / 100;
    print('El valor del producto es: $valor  El valor iva es: $iva');
  } else if (pais == 'argentina') {
    double iva = valor * 20 / 100;
    print('El valor del producto es: $valor  El valor iva es: $iva');
  } else if (pais == 'chile') {
    double iva = valor * 9 / 100;
    print('El valor del producto es: $valor  El valor del  iva es: $iva');
  } else {
    print('El pais no existe.');
  }
}
