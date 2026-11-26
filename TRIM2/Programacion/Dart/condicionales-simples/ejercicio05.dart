import 'dart:io';

void main(List<String> args) {
  /*
  Calcular el total que una persona debe pagar en un almacen, si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más.
  */
//1. DEF VBLS
int cantidad ;
double precio, total;
String teclado;

//2. ENTRADA VBLS

print("Cuantas llantas compro");
  teclado = stdin.readLineSync() ?? "";
  cantidad = int.parse(teclado);
//3. PROCESO
  precio = 80000;
  if (cantidad >= 5) {
    precio = 70000;
  }
  total = cantidad * precio;

  //4. SALIDA
  print("La cantidad de llantas fueron: $cantidad , y el total es de \$$total");
}