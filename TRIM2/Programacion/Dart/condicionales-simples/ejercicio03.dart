import 'dart:io';

void main(List<String> args) {
  /*
  El jefe de un almacén de ropa, pone una promción en sus trajes por un periodo de tres dias para sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario. Si el cliente ordena tres o más trajes s ele hace un descuento 17%, si no se le cobra al preico normal.
  */
  //1. DEFINICION
  int cantTrajes;
  double descuento, precioUnidad, subtotal, precioTotal;
  String traje, teclado;

  //2. ENTRADA
  print("Ingrese el modelo del traje");
  traje = stdin.readLineSync() ?? "";
  print("Ingrese el valor unitario");
  teclado = stdin.readLineSync() ?? "";
  precioUnidad = double.parse(teclado);
  print("Ingrese la cantidad de trajes");
  teclado = stdin.readLineSync() ?? "";
  cantTrajes = int.parse(teclado);

  //3. PROCESO
  subtotal = cantTrajes * precioUnidad; // Subtotal
  descuento = 0;
  
  if (cantTrajes >= 3) {
    descuento = subtotal * 0.17; // 17 % del subtotal
  }
  precioTotal = subtotal - descuento;


  //4. SALIDA
  print("El precio total de la compra es: $precioTotal");
  print("Se aplicó un descuento de: $descuento");
}