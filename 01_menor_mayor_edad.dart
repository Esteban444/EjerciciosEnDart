//@dart=2.9

/* 1. Crear un programa que te permita ingresar una cantidad de años y el programa  */
/* te diga si es menor o mayor de edad, teniendo en cuenta que se considera que si */
/*  es mayor a 18 años es un mayor de edad.El resultado debería ser para una edad  */
/*  de 15 años “Usted es menor de edad porque tiene 15 años”. */
import 'dart:io';

main() {
  stdout.writeln('Por favor ingrese un numero.');

  int numero = int.parse(stdin.readLineSync());
  if (numero < 18) {
    print('Usted es menor de edad y tiene: $numero Años');
  } else {
    print('Usted es mayor de edad y tiene: $numero Años');
  }
}
