Escribe un escenario de prueba Gherkin para verificar la capacidad de la aplicación móvil en iOS para reportar transacciones.
Asegúrate de considerar la integración con el backend y el procesamiento en el back office.

Feature: Reporte de transacciones desde la aplicación móvil

  Como usuario de iOS
  Quiero reportar una transacción desde la aplicación
  Para que sea registrada y procesada correctamente por el sistema

  @transaccion @ios
  Scenario: Reporte exitoso de una transacción desde iOS

    Given que el usuario está autenticado en la aplicación iOS
    And se encuentra en la sección para reportar una nueva transacción
    When completa los datos requeridos de la transacción con información válida
    And presiona el botón "Reportar"
    Then la aplicación debe confirmar que la transacción fue enviada correctamente
    And el backend debe registrar la transacción
    And la transacción debe estar disponible para su consulta y procesamiento en el Back Office