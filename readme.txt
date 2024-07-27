Pasos para poder ejecutar el proyecto.
1. Tener instalado las versiones de los aplicativos, java, maven, gradle
2. Configurar las variables de entorno para los aplicativos señalados
3. Instalar el ide intellij e importar el proyecto como proyecto gradle.
4. Actualizar las depencias de gradle para que se construya el proyecto y descargue las librerias
5. Una vez descargadas las librerias ir al archivo signup.csv en el primer registro
   incrementar en 1 el ultimo digito de los campos username y password
6. En la terminal ejecutar el comando
    gradle clean test -Dtest=UserRunner
    El mismo correra la automatización.
7. Una vez ejecutado se puede revisar el reporte en la carpeta build - en karate-reports o reports
8   En karate-reports abrir el archivo Karate-sumary.html
    En reports abrir el archivo index.html