abstract class Animal {}

abstract class Ave extends Animal {}

mixin Caminante {
  void caminar() => print('Estoy caminando!');
  void correr(double velocidadMax) => print('Este animal puede correr a una velocidad máxima de: ${velocidadMax} km/h!');
  void trotar(bool ritmoAlto) => print('Este animal puede trotar');
  void saltar(bool altura) => print('Este animal puede saltar hasta una altura de: ${altura}');
}

class Gato extends Animal with Caminante {}

void main() {
  final gatoAngora = Gato();

  print("Instanciando la clase de Gato Angora, y accediendo a sus funciones.");
  gatoAngora.caminar();
  gatoAngora.correr(15);
  gatoAngora.trotar(true);
  gatoAngora.saltar(true);
}
