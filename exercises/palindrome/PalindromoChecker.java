public class PalindromoChecker {

    public static boolean esPalindromo(String palabra) {
        if (palabra == null) {
            return false;
        }

        // Normalizamos el texto para ignorar mayúsculas y espacios.
        String textoLimpio = palabra.replaceAll("\\s+", "").toLowerCase();

        int izquierda = 0;
        int derecha = textoLimpio.length() - 1;

        while (izquierda < derecha) {
            if (textoLimpio.charAt(izquierda) != textoLimpio.charAt(derecha)) {
                return false;
            }

            izquierda++;
            derecha--;
        }

        return true;
    }

    public static void main(String[] args) {
        // Casos básicos para validar el funcionamiento.
        System.out.println(esPalindromo("reconocer"));            // true
        System.out.println(esPalindromo("Neology"));              // false
        System.out.println(esPalindromo("Anita lava la tina"));   // true
    }
}
//Para este ejercicio utilicé una herramienta de IA como apoyo para estructurar y revisar la solución en Java. 
// Posteriormente revisé la lógica, compilé el programa y validé su funcionamiento con distintos casos de prueba.