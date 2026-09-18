Escribe un escenario de prueba Gherkin para verificar la funcionalidad que permite a los usuarios ver su historial de transacciones en el sitio web.
Asegúrate de considerar la integración entre el frontend del sitio web y el backend.

Feature: Visualización del historial de transacciones en el sitio web

  Como usuario registrado
  Quiero consultar mi historial de transacciones en el portal web
  Para revisar las transacciones asociadas a mi cuenta

  @web @frontend @backend
  Scenario: Visualización correcta del historial de transacciones

    Given que el usuario ha iniciado sesión en el portal web
    And existen transacciones asociadas a su cuenta
    When el usuario accede a la sección "Historial de Transacciones"
    Then el frontend debe solicitar la información correspondiente al backend
    And el backend debe devolver las transacciones asociadas al usuario
    And el sitio web debe mostrar correctamente el historial de transacciones
    And la información mostrada debe coincidir con los datos registrados en el backend

    Como validaciones adicionales, revisaría ordenamiento, paginación, filtros, historial vacío 
    y manejo de errores del backend si estas funcionalidades están contempladas en los requerimientos.