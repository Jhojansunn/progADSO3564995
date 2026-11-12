import 'dart:io';

void main(List<String> args) {
  // Pedir 2 números reales al usuario
  // Y preguntar al usuario si quiere sumarlos, restarlos
  // multiplicarlo o dividirlos y mostrar el resultado
  int numero1;
  int numero2;
  int suma;
  int resta;
  int multiplicacion;
  int operacion;
  double division;


  // 2. Entrada
  String teclado = stdin.readLineSync() ?? '';
  stdout.writeln("Ingrese el numero 1");
  teclado = stdin.readLineSync() ?? '';
  numero1 = int.parse(teclado);
  stdout.writeln("Ingrese el numero 2");
  teclado = stdin.readLineSync() ?? '';
  numero2 = int.parse(teclado);
  stdout.writeln("1) suma. 2) resta. 3) multiplicacion. 4) Division");
  teclado = stdin.readLineSync() ?? '';
  operacion = int.parse(teclado);

  //3. Proceso / salida
  suma = (numero1 + numero2);
  resta = (numero1 - numero2);
  multiplicacion = (numero1 * numero2);
  division = (numero1 / numero2);

if(operacion==1){
  print("La suma es: $suma");
}else{
  if(operacion==2){
    print("La resta es: $resta");
  }else{
    if (operacion==3){
      print("La multiplicacion es: $multiplicacion");
    }else{
      if (operacion==4){
        print("La division es: $division");
      }
    }
  }
}


 

}