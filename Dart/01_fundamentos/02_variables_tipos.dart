/// -------------------------------------------------------------------------
/// Tema: Variables y Tipos de Datos en Dart
/// Objetivo: Comprender el sistema de tipado, desde tipos primitivos hasta
///           la diferencia crucial entre inferencia (var) y dinamismo (dynamic).
/// Guía: Basics-Dart por Nyc Kevin
/// -------------------------------------------------------------------------

void main() {
  // =========================================================================
  // 1. NÚMEROS (int, double, num)
  // =========================================================================
  
  int miEntero = 2;
  double miReal = 1.856;
  
  // 'num' es la clase padre de int y double. Útil si el valor puede cambiar de tipo numérico.
  num unNumero = 318;
  num unNumeroDiferente = 3.265464;

  print('--- Números ---');
  print('Entero: $miEntero, Real: $miReal');
  print('Num Entero: $unNumero, Num Real: $unNumeroDiferente\n');


  // =========================================================================
  // 2. CADENAS DE CARACTERES (String)
  // =========================================================================
  
  String miCadena = 'Hello World';
  String minMay = "Hola"; // Dart acepta comillas simples o dobles indistintamente.

  print('--- Cadenas y Manipulación ---');
  // Demostración de métodos integrados de la clase String
  print('Original: $miCadena');
  print('Mayúsculas: ${miCadena.toUpperCase()}');
  print('Minúsculas: ${miCadena.toLowerCase()}');
  print('Fragmento (Substring): ${miCadena.substring(0, 5)}\n');
  print('segunda cadena: $minMay');


  // =========================================================================
  // 3. BOOLEANOS (bool)
  // =========================================================================
  
  bool opcion1 = true;
  bool opcion2 = false;

  print('--- Booleanos ---');
  print('Opción 1 es: $opcion1');
  print('Opción 2 es: $opcion2\n');


  // =========================================================================
  // 4. TIPOS FLEXIBLES (var vs dynamic)
  // =========================================================================
  
  // Con 'var', Dart infiere el tipo en tiempo de compilación y lo bloquea.
  var unaVariable = "Hello"; 
  // unaVariable = 10; // ❌ ERROR: No se puede asignar un 'int' a una variable 'String'.
  print('--- Variables Inferred (var) ---');
  print('Valor de unaVariable: $unaVariable\n');  
  // Con 'dynamic', la variable puede cambiar de tipo libremente en tiempo de ejecución.
  dynamic val = 'Hello'; // Inicialmente es un String
  print('--- Dinámicos ---');
  print('Valor dynamic inicial: $val (Tipo: ${val.runtimeType})');  
  
  val = 8; // Cambia a int sin problemas
  print('Valor dynamic modificado: $val (Tipo: ${val.runtimeType})\n');


  // Tip de experto: Aunque Dart es fuertemente tipado, 'dynamic' rompe la seguridad
  // del código si se abusa de él. Úsalo solo cuando sea estrictamente necesario, 
  // como al recibir respuestas JSON dinámicas de una API REST. Para el resto,
  // prefiere tipado explícito o inferencia con 'var'.
}