//@dart=2.9

/* 2. Crear un programa que te permita ingresar una cantidad de años y el programa */
/* te definirá en que categoría se considera según la edad: */
/* • Prenatal va en números negativos desde -0,0 a 0,9. */
/* • Bebé debe estar entre 0,0 y 1,00. */
/* • Niño pequeño ente 3-5. */
/* • Escuela primaria de 5-12. */
/* • Adolescente 12-18. */
/* • Adulto Joven 18-21 */
/* El resultado debería ser para un niño que tenga 4 años “La categoría según */
/*  la edad es NIÑO porque tiene 4 años”. */
import 'dart:io';
import 'dart:core';

main() {
  stdout.writeln('Por favor ingrese un numero.');

  double numero = double.parse(stdin.readLineSync());

  if ((numero >= -0.0) && (numero <= 0.9)) {
    print('El niño esta en categoria prenatal y tiene: $numero Años');
  } else if ((numero >= 0.0) && (numero <= 1.00)) {
    print('El niño esta en la categoria Bebe y tiene: $numero Años');
  } else if (numero >= 3 && numero <= 5) {
    print('El niño esta en la categoria Niño pequeño y tiene: $numero Años');
  } else if (numero > 5 && numero <= 12) {
    print('El niño esta en la categoria Primaria y tiene: $numero Años');
  } else if (numero > 12 && numero < 18) {
    print('La persona esta en la categoria Adolecente y tiene: $numero Años');
  } else if (numero >= 18 && numero <= 21) {
    print('La persona esta en la categoria adulto joven y tiene: $numero Años');
  } else {
    print('La categoria no existe');
  }
}
