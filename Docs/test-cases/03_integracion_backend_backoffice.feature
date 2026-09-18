Escribe un escenario de prueba Gherkin para asegurar que las transacciones reportadas desde las aplicaciones móviles (iOS y Android)
se procesen correctamente en el backend y el back office.

Feature: Procesamiento de transacciones entre Backend y Back Office

  Como usuario del Back Office
  Quiero consultar las transacciones reportadas desde las aplicaciones móviles
  Para verificar que sean procesadas correctamente por el sistema

  @backend @backoffice @integration
  Scenario: Procesamiento correcto de una transacción móvil

    Given que un usuario ha reportado una transacción válida desde la aplicación "<plataforma>"
    And la transacción fue recibida correctamente por el backend
    When el backend procesa la transacción
    Then la información de la transacción debe quedar registrada correctamente
    And los datos registrados deben coincidir con los enviados desde la aplicación móvil
    And la transacción debe estar disponible para su consulta en el Back Office

    Examples:
      | plataforma |

      | iOS        |
      | Android    |