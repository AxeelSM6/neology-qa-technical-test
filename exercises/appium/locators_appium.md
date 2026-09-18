Genera los referentes identificadores (xpath) para un mismo elemento en appium.
Ejemplo: identificar el mismo botón "Iniciar Sesión" mediante distintos XPath.

1. Por content-desc:
   //android.widget.Button[@content-desc='login_button']

2. Por resource-id:
   //*[@resource-id='com.neology.app:id/btnLogin']

3. Por texto exacto:
   //android.widget.Button[@text='Iniciar Sesión']

4. Por combinación de atributos:
   //android.widget.Button[@resource-id='com.neology.app:id/btnLogin' and @text='Iniciar Sesión']

5. Por texto parcial:
   //android.widget.Button[contains(@text, 'Iniciar')]

6. Por jerarquía:
   //android.widget.LinearLayout[1]/android.widget.Button[2]

   Nota: Mi experiencia práctica en automatización está principalmente orientada a Playwright.
   Para este ejercicio de Appium me apoyé en documentación técnica y una herramienta de IA para revisar las estrategias de localización. 
   En Playwright suelo priorizar localizadores semánticos como getByRole o getByLabel.
   A partir de ello, priorizaría selectores estables como Accessibility ID o resource-id sobre XPath basados en jerarquía cuando sea posible.