Escribe un escenario de prueba Gherkin para verificar el proceso de registro de un nuevo usuario desde ambas aplicaciones móviles (iOS y Android).
Asegúrate de incluir condiciones y resultados esperados.

Feature: Registro de nuevos usuarios en la aplicación móvil
  Como un nuevo usuario
  Quiero registrarme en la aplicación móvil (iOS o Android)
  Para poder acceder a las funcionalidades de la plataforma

  @registro @mobile
  Scenario: Registro exitoso con datos válidos

    Given que el usuario tiene instalada la aplicación en un dispositivo "<plataforma>"
    And se encuentra en la pantalla de Registro
    When ingresa un correo electrónico válido "<correo>"
    And ingresa una contraseña válida "<password>"
    And acepta los términos y condiciones
    And presiona el botón "Crear Cuenta"
    Then la cuenta debe registrarse correctamente
    And la aplicación debe mostrar una confirmación de registro exitoso
    And el usuario registrado debe quedar disponible en el sistema backend

    Examples:
      | plataforma | correo             | password    |
      | iOS        | test_ios@neo.com   | S3cur3P@ss! |
      | Android    | test_and@neo.com   | S3cur3P@ss! |