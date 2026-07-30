/// -------------------------------------------------------------------------
/// Tema: Inmutabilidad con 'final' y 'const'
/// Objetivo: Comprender la diferencia entre constantes en tiempo de compilación 
///           (const) y constantes en tiempo de ejecución (final).
/// Guía: Basics-Dart por Nyc Kevin
/// -------------------------------------------------------------------------

void main() {
  // =========================================================================
  // 1. PALABRA CLAVE: final (Tiempo de Ejecución / Runtime)
  // =========================================================================
  
  // Se inicializa en el momento exacto en que la aplicación corre esta línea.
  final DateTime fechaActual = DateTime.now();
  final String nombreUsuario = 'Kevin';

  print('--- Uso de final ---');
  print('Usuario: $nombreUsuario');
  print('Fecha/Hora actual: $fechaActual\n');

  // Intentar modificar una variable final dará error de compilación:
  // nombreUsuario = 'Otro Nombre'; // ❌ ERROR: 'final' variable can only be set once.


  // =========================================================================
  // 2. PALABRA CLAVE: const (Tiempo de Compilación / Compile-time)
  // =========================================================================
  
  // El valor DEBE ser conocido antes de ejecutar la aplicación.
  const double pi = 3.14159;
  const String urlApi = 'https://api.github.com';

  print('--- Uso de const ---');
  print('Valor de PI: $pi');
  print('URL Base: $urlApi\n');

  // Esto NO es válido para const porque DateTime.now() depende de cuándo se ejecute la app:
  // const DateTime fechaError = DateTime.now(); // ❌ ERROR: Const variables must be initialized with a constant value.


  // =========================================================================
  // 3. LISTAS CONSTANTES vs LISTAS FINALES (Detalle Avanzado)
  // =========================================================================
  
  // Con 'final', la referencia a la lista es fija, pero el contenido SÍ puede cambiar.
  final List<String> equiposFinal = ['Red Bull', 'Ferrari'];
  equiposFinal.add('McLaren'); // 🟢 Permitido modificar el contenido interior.
  // equiposFinal = ['Mercedes']; // ❌ ERROR: No se puede reasignar la variable.

  // Con 'const', ni la referencia ni el contenido pueden cambiar NUNCA.
  const List<String> equiposConst = ['Red Bull', 'Ferrari'];
  // equiposConst.add('McLaren'); // ❌ ERROR en runtime: Unmodifiable list.

  print('--- Listas Inmutables ---');
  print('Lista Final modificada: $equiposFinal');
  print('Lista Const (Inmutable total): $equiposConst\n');


  // Tip de experto: En Flutter, usar 'const' en los Widgets que no cambian 
  // (ej. const Text('Hola')) le dice a Flutter que no necesita redibujar 
  // ese Widget, lo que ahorra memoria y aumenta el rendimiento de la App.

  // =========================================================================
// 💡 GUÍA TÉCNICA Y BUENAS PRÁCTICAS: ¿CUÁNDO USAR CADA UNO Y POR QUÉ?
// =========================================================================

/*
 🔵 ¿CUÁNDO USAR 'final'?
 ---------------------------------------------------------------------------
 • Usa 'final' para valores que NO cambian una vez asignados, pero cuyo valor 
   se calcula en tiempo de ejecución (runtime).
 • Ejemplos: Respuestas de APIs HTTP, datos ingresados por el usuario, 
   fechas del sistema (DateTime.now()), o IDs generados al momento.

 🔴 ¿CUÁNDO USAR 'const'?
 ---------------------------------------------------------------------------
 • Usa 'const' para valores estáticos que son conocidos en tiempo de compilación 
   y que NUNCA cambiarán durante toda la vida de la aplicación.
 • Ejemplos: Configuración de la App (URLs base, claves de API fijas), 
   constantes matemáticas (PI), colores predefinidos o dimensiones de diseño.


 ⚠️ ¿SE DEBERÍAN UTILIZAR MUCHO O POCO?
 ---------------------------------------------------------------------------
 
 🟢 'final' y 'const' SE DEBERÍAN UTILIZAR LO MÁS POSIBLE (Inmutabilidad por defecto):
 
 1. PREVENCIÓN DE BUGS:
    Al hacer una variable 'final' o 'const', evitas reasignaciones accidentales 
    en otras partes del código. Si un valor no tiene razón para cambiar, 
    bloquéalo.

 2. RENDIMIENTO OPTIMIZADO EN FLUTTER:
    • 'const' es el rey del rendimiento. Cuando colocas 'const' antes de un 
      Widget en Flutter (ej. const Text('Guardar')), Flutter sabe que ese 
      elemento jamás cambiará y NO gasta recursos en volver a dibujarlo (re-render) 
      cuando la pantalla se actualiza.
    • 'const' guarda el objeto en una única dirección de memoria compartida, 
      reduciendo dramáticamente el consumo de RAM.

 🔴 ¿CUÁNDO NO DEBERÍAS USARLOS?
 ---------------------------------------------------------------------------
 • NO uses 'final' ni 'const' cuando el valor de la variable deba evolucionar 
   o cambiar a lo largo del flujo del programa.
 • Ejemplos: Un contador de clics, un toggle/switch de ON/OFF, o el índice 
   de un bucle 'for'. En esos casos, usa tipado normal con 'var' o el tipo directo 
   (int, String, bool).
*/
}