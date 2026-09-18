
Escribe un escenario de prueba Gherkin para verificar la capacidad de la aplicación móvil en Android para actualizar el estado de una transacción.
Asegúrate de incluir pasos, condiciones y resultados esperados.

Feature: Actualización de estado de una transacción en un sistema Android

  Como usuario de Android
  Quiero actualizar el estado de una transacción
  Para mantener actualizada la información asociada a mis transacciones

  @android @update
  Scenario: Actualización exitosa del estado de una transacción

    Given que el usuario ha iniciado sesión en la aplicación Android
    And existe una transacción asociada a su cuenta
    When el usuario selecciona la transacción
    And realiza una actualización válida de su estado
    And confirma la acción
    Then la aplicación debe mostrar el nuevo estado de la transacción
    And el cambio debe quedar registrado correctamente en el sistema
    And el estado actualizado debe estar disponible para su consulta en el Back Office

    Validaciones adicionales: verificar intentos de actualización con estados no permitidos, 
    pérdida de conexión durante la actualización y consistencia del estado entre la aplicación, backend y Back Office.