abstract class Animal {}

abstract class Ave extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando!');
  void planear(int distanciaMaxima) => print('Este animal puede planear hasta: ${distanciaMaxima}!');
  void ascender(double alturaMax) => print('Este animal puede ascender hasta una altura de: ${alturaMax} mts. sobre el nivel del mar!');
  void descender(int velocidadMax) => print('Este animal puede descender hasta: ${velocidadMax}!');
}

mixin Caminante {
  void caminar() => print('Estoy caminando!');
  void correr(double velocidadMax) => print('Este animal puede correr a una velocidad máxima de: ${velocidadMax} km/h!');
  void trotar(bool ritmoAlto) => print('Este animal puede trotar');
  void saltar(bool altura) => print('Este animal puede saltar hasta una altura de: ${altura}');
}

mixin Nadador {
  void nadar() => print('Estoy nadando!');
  void sumergir(int profundidadMax) => print('Este animal se puede sumergir hasta una profundidad de: ${profundidadMax} mts.');
  void respirar(bool enSuperficie) => print('El animal está respirando en la superficie.');
}

class Pato extends Ave with Volador, Caminante, Nadador {}

void main() {
  final pato = Pato();

  print("Instanciando la clase de Pato, y accediendo a sus funciones.");
  patoNegro.volar();        // El pato negro comienza a volar
  patoNegro.planear(100);   // Planea a una altura de 100 metros
  patoNegro.ascender(30);   // Asciende 30 metros
  patoNegro.descender(5);   // Desciende 5 metros
  patoNegro.caminar();      // Comienza a caminar
  patoNegro.correr(10);     // Corre a 10 km/h
  patoNegro.trotar(true);   // Trote activo
  patoNegro.saltar(true);   // Salta
  patoNegro.nadar();        // Neda
  patoNegro.sumergir(1);    // Se sumerge a 1 metro de profundidad
  patoNegro.respirar(true); // Respira normalmente

}
