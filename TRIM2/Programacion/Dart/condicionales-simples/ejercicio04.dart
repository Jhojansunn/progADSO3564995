import 'dart:io';

void main(List<String> args) {
  /*
  Hacer un algoritmo que imprima el nombre de un artiuclo, clave, precio original y su precio con descuento. EL descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento es del 20% (Solo existen dos claves).
  */
  //1. DEFINICION VBLES
  String nombreArticulo, teclado;
  int clave;
  double precioOriginal, precioDescuento, descuento;

  // 2. ENTRADA ALG
  print("Cual es el nombre del artículo?");
  nombreArticulo = stdin.readLineSync() ?? "";
  print("Cual es el precio del articulo");
  teclado = stdin.readLineSync() ?? "";
  precioOriginal = double.parse(teclado);
  print("Cual es la CLAVE");
  teclado = stdin.readLineSync() ?? "";
  clave = int.parse(teclado);

  // 3. PROCESO
  descuento = 0.1; // Clave = 1
  if(clave == 2){
    descuento = 0.2;
  }
  precioDescuento = precioOriginal - descuento;

  //4. SALIDA
  print("El precio con el descuento del artículo $nombreArticulo es: $precioDescuento");
  
}