Bloque 3. Preguntas abiertas

1. ¿Cuál es la diferencia entre pruebas de carga y estrés?

Carga: Evalúa el comportamiento del sistema bajo un volumen de usuarios o transacciones esperado, incluyendo picos normales de operación. Permite revisar aspectos como tiempos de respuesta, estabilidad y consumo de recursos.

Estrés: Lleva al sistema más allá de su capacidad esperada para conocer sus límites, observar cómo falla y verificar si puede recuperarse correctamente después de una sobrecarga.

2. ¿Qué probarías si tuvieras que probar una nueva versión que solventa un bug crítico en producción?

Primero realizaría un retesting, reproduciendo los pasos originales que provocaban el bug para confirmar que la corrección funciona, después haría un análisis para identificar si las funcionalidades relacionadas pudieron verse afectadas por el cambio.

Finalmente ejecutaría pruebas de sanity y/o regresión sobre los flujos principales y las áreas relacionadas para comprobar que la solución no haya introducido nuevos problemas.

En caso de tratarse de una corrección urgente, priorizaría los escenarios de mayor riesgo antes de ampliar la regresión.

3. ¿Cómo reportarías los bugs encontrados hacia los desarrolladores?

Utilizaría una herramienta de seguimiento como Jira o Notion, procurando que el reporte contenga información suficiente para poder reproducir el problema:

Título claro y descriptivo.
Ambiente donde ocurrió.
Dispositivo, sistema operativo o navegador cuando aplique.
Versión de la aplicación.
Precondiciones necesarias.
Pasos para reproducir.
Resultado esperado.
Resultado obtenido.
Evidencia como capturas de pantalla, videos o logs cuando estén disponibles.
Severidad y prioridad.

También confirmaría previamente que el problema sea reproducible y que no se trate de un comportamiento esperado basandome en los criterios de aceptación.

4. ¿Cómo le darías seguimiento a bugs reportados a Desarrollo?

Daría seguimiento mediante la herramienta de gestión utilizada por el equipo y durante las ceremonias Ágiles cuando sea necesario comunicar bloqueos o problemas importantes.

Cuando Desarrollo indique que el defecto fue corregido y esté disponible para QA, realizaría un re-test utilizando los pasos originales, si el problema quedó solucionado, actualizaría el ticket de acuerdo con el flujo del equipo. Si continúa ocurriendo, lo reabriría incluyendo nueva evidencia y cualquier información adicional encontrada. También verificaría funcionalidades relacionadas cuando la corrección pudiera generar regresiones.

5. ¿Cuáles serían los niveles de severidad que manejarías para reportar bugs y con base en qué?

Los definiría principalmente con base en el impacto que tiene el defecto sobre el sistema y el usuario.

Crítica / Blocker: Impide utilizar una funcionalidad esencial, provoca caída del sistema, pérdida de información o no existe una alternativa para continuar.
Alta: Una funcionalidad importante no funciona correctamente y afecta considerablemente al usuario, aunque el sistema pueda seguir utilizándose.
Media: El problema afecta una funcionalidad secundaria o existe una alternativa para continuar trabajando.
Baja: Problemas menores que no afectan directamente la funcionalidad, como errores visuales, de texto o pequeños detalles de interfaz.

La severidad representa el impacto técnico o funcional del defecto, mientras que la prioridad determina qué tan pronto debería atenderse de acuerdo con las necesidades del proyecto o negocio.

6. ¿Qué es la metodología de pruebas Ágil y cuáles son sus principios fundamentales?

Las pruebas Ágiles integran las actividades de calidad durante todo el ciclo de desarrollo en lugar de dejarlas únicamente para el final.

QA colabora continuamente con desarrolladores, Product Owners y otros integrantes del equipo desde el análisis de requerimientos hasta la entrega, algunos principios importantes son:

Participación temprana de QA en el desarrollo.
Colaboración constante entre los integrantes del equipo.
Retroalimentación rápida.
Pruebas continuas durante cada iteración.
Adaptación a cambios en requerimientos.
Automatización cuando realmente aporte valor.
Prevención de defectos además de su detección.

7. ¿Cuál es la diferencia entre pruebas funcionales y pruebas no funcionales?

Pruebas funcionales: Verifican qué debe hacer el sistema de acuerdo con los requerimientos.

Ejemplos:

Inicio de sesión.
Registro de usuarios.
Validación de formularios.
Procesamiento de una transacción.
Integración entre frontend y backend.

Pruebas no funcionales: Evalúan características relacionadas con cómo se comporta el sistema.

Ejemplos:

Rendimiento.
Carga y estrés.
Seguridad.
Accesibilidad.
Usabilidad.
Compatibilidad.

8. ¿Qué es la automatización de pruebas y cuándo sería más beneficiosa?

La automatización de pruebas consiste en utilizar herramientas y scripts para ejecutar validaciones de forma automática y comparar los resultados obtenidos con los esperados.

Es beneficiosa cuando:

Hay pruebas de regresión que deben ejecutarse constantemente.
Con flujos repetitivos.
Smoke tests.
Funcionalidades críticas y estables.
Pruebas ejecutadas como parte de CI/CD.
Escenarios que necesitan probarse con diferentes conjuntos de datos.
Casos que deben ejecutarse en distintos navegadores o configuraciones.

La automatización complementa las pruebas manuales, pero no necesariamente las reemplaza.

9. Menciona algunas herramientas populares de automatización y describe en qué escenarios podrían ser útiles.

Playwright / Selenium / Cypress: Automatización de aplicaciones web y pruebas End-to-End.

Appium: Automatización de aplicaciones móviles en Android y iOS.

Postman: Pruebas y automatización de APIs.

JMeter: Pruebas de rendimiento, carga y estrés.

La elección de la herramienta dependería de la tecnología del proyecto, el tipo de prueba y las necesidades del equipo.

10. ¿Qué casos no automatizarías?

No priorizaría la automatización en casos como:

Pruebas exploratorias, debido a que requieren análisis y criterio humano.
Pruebas de usabilidad y experiencia de usuario.
Funcionalidades que cambian constantemente y provocarían un alto costo de mantenimiento.
Prototipos o funcionalidades aún inestables.
Casos que se ejecutarán únicamente una vez.
Escenarios donde automatizar implique más esfuerzo que realizarlos manualmente.

Antes de automatizar evaluaría factores como frecuencia de ejecución, estabilidad, criticidad y costo de mantenimiento.
