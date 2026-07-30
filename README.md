Basics-Dart/
├── 📂 01_fundamentos/
│   ├── 📄 01_hola_mundo.dart
│   ├── 📄 02_variables_tipos.dart        # int, double, String, bool
│   ├── 📄 03_final_const.dart           # Inmutabilidad a nivel de compilación/ejecución
│   ├── 📄 04_null_safety.dart           # ?, !, ??, late
│   └── 📄 05_operadores_compuestos.dart  # Cascadas (..), Spread (...), ??=
├── 📂 02_control_flujo/
│   ├── 📄 01_condicionales.dart         # if, else
│   └── 📄 02_iteraciones.dart           # for, for-in, while, do-while
├── 📂 03_funciones/
│   ├── 📄 01_basicas.dart
│   ├── 📄 02_parametros.dart            # Posicionales, opcionales y nombrados ({required})
│   └── 📄 03_callbacks_arrow.dart       # Funciones lambda, anónimas y de flecha
├── 📂 04_colecciones/
│   ├── 📄 01_listas.dart                # List, métodos interactivos (map, where, reduce)
│   ├── 📄 02_sets.dart                  # Set y operaciones de conjuntos
│   └── 📄 03_mapas.dart                 # Map (Estructura JSON)
├── 📂 05_poo_intermedio/
│   ├── 📄 01_clases.dart
│   ├── 📄 02_constructores.dart         # Factory, Nombrados y Const
│   ├── 📄 03_getters_setters.dart
│   └── 📄 04_records_patterns.dart      # ¡NUEVO! Dart 3 Records y desestructuración
├── 📂 06_poo_avanzado/
│   ├── 📄 01_mixins.dart                # Reutilización de código sin herencia
│   ├── 📄 02_extends_implements.dart    # Herencia vs Interfaces
│   ├── 📄 03_class_modifiers.dart       # ¡NUEVO! Dart 3 Sealed, Base, Interface (Clave para BLoC)
│   └── 📄 04_generics.dart              # Clases y métodos usando <T>
├── 📂 07_asincronia/
│   ├── 📄 01_futures.dart               # async / await
│   ├── 📄 02_streams.dart               # Stream, StreamController (Base de BLoC)
│   ├── 📄 03_async_asterisk.dart        # ¡NUEVO! Generadores asíncronas (async* / yield)
│   └── 📄 04_try_catch.dart             # Manejo correcto de errores asíncronos y AsyncSnapshot
├── 📂 08_extra/
│   ├── 📄 01_enums_enhanced.dart        # Enums con propiedades, constructores y métodos
│   └── 📄 02_extensions.dart            # Extension methods para tipos existentes
├── 📂 test/                             # ¡NUEVO! Pruebas de software
│   └── 📄 fundamentos_test.dart         # Unidades de prueba con el paquete 'test'
├── 📄 .gitignore
├── 📄 analysis_options.yaml             # Configuración estricta del Linter
└── 📄 README.md                         # Tu carta de presentación y bitácora de aprendizaje