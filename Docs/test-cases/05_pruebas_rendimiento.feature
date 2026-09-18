Escribe un escenario de prueba Gherkin para evaluar el rendimiento del sistema al manejar una carga alta de transacciones simultáneas.
Asegúrate de considerar la integración entre todas las partes del sistema.

Feature: Rendimiento bajo alta carga de transacciones

  Como responsable de calidad
  Quiero validar el comportamiento del sistema ante una alta carga de transacciones
  Para asegurar que el servicio se mantenga estable y responda adecuadamente

  @performance @load_testing
  Scenario: Procesamiento de múltiples transacciones simultáneas

    Given que el sistema se encuentra disponible en un ambiente de pruebas
    And se ha definido una carga alta de usuarios concurrentes
    When múltiples usuarios envían transacciones simultáneamente desde las aplicaciones móviles
    Then el backend debe recibir y procesar las transacciones sin interrupciones críticas
    And las transacciones procesadas deben quedar registradas correctamente
    And la información debe estar disponible para su consulta en el Back Office
    And los tiempos de respuesta deben mantenerse dentro de los límites de rendimiento definidos

    La cantidad de usuarios concurrentes, el tiempo máximo de respuesta y el porcentaje aceptable de errores
    deberían definirse de acuerdo con los requisitos no funcionales o SLA del sistema.