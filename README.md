# Web Blog

## Resumen

Proyecto Web, para generar un sistema de Web Blog, donde se genere blog's por usuario registrado.

## Configuración
**Pre requisito:**
Java 1.8
Maven
validar si tiene instalado dentro de su sistema los pre requisitos:

```bash
$ java -version
java version "1.8.0_102"
Java(TM) SE Runtime Environment (build 1.8.0_102-b14)
Java HotSpot(TM) 64-Bit Server VM (build 25.102-b14, mixed mode)
```

```bash
$ mvn -v
Apache Maven 3.3.9 (bb52d8502b132ec0a5a3f4c09453c07478323dc5; 2015-11-10T16:41:47+00:00)
Maven home: /usr/local/Cellar/maven/3.3.9/libexec
Java version: 1.8.0_102, vendor: Oracle Corporation.
```

**Pasos**
Paso 1: clonar el repositorio github, utilizar los comandos desde la consola Windows / Linux.

``git init``
``git clone https://github.com/whuera/spring-web-blog.git``

**Referencia GitHub**

para efectos de desarrollo usar la rama develop (Gestión GitHub / usuarios avanzados).
cambiarse a develop usando lo siguiente:

| Comando |  Pantalla  |
| --------- | -------- |
| git checkout develop | ![image1](https://github.com/whuera/assets/blob/main/2020-11-16%2020_51_53-Git%20Graph%20-%20spring-web-blog%20-%20Visual%20Studio%20Code.png) |
| | |


una vez descargado el repo ubicarse dentro de la carpeta:

| Escenario |  Comando  |
| --------- | -------- |
| Windows | cd spring-web-blog/ |
| Linux | spring-web-blog/ |
| | |

## Referencia técnica:

El sistema, funciona sobre la plataforma Spring-boot y contiene una implementación web con thymeleaf, más una base de datos en memoria H2

## Como ejecutar

Una vez clonado el repo desde GitHub, y habernos ubicado dentro de la carpeta spring-web-blog, ejecutamos el siguiente comendo.
mvn spring-boot:run
| Escenario |  Comando  | Resultado |
| --------- | -------- |-------- |
| Windows | mvn spring-boot:run | ![Result1](https://github.com/whuera/assets/blob/main/2020-11-16%2020_15_38-Window.png) |
| | | |
| Linux | chmod +x scripts/mvnw & mvnw spring-boot:run | ![Result2](https://github.com/whuera/assets/blob/main/2020-11-16%2020_17_36-Window.png) |
| | | |

```bash
$ chmod +x scripts/mvnw
$ scripts/mvnw spring-boot:run
```

Una vez ejecutado el comando ir al browser y tipear el url: `http://localhost:8090/home`
Para probar el dashboard usar o seguir los pasos para registrarse como usuario
Admin username: **admin**

Admin password: **admin**

**Registro primera vez**
desde el url: `http://localhost:8090/registration`.
desde AWS url: <http://34.239.114.195:8090/home>.

| Acción | Url | Pantalla |
|--------|-----|----------|
| Registrarse | `http://localhost:8090/registration` | ![image1](https://github.com/whuera/assets/blob/main/2020-11-16%2020_27_55-Window.png) |
| | |
| Login | ``http://localhost:8090/login`` | ![image2](https://github.com/whuera/assets/blob/main/2020-11-16%2020_33_50-Window.png) |
| | |
| Home | ``http://localhost:8090/home`` | ![image3](https://github.com/whuera/assets/blob/main/2020-11-16%2020_36_37-Window.png) |



#### Ejecución manual "Executable Jar"

limpiar instalaciones anteriores de maven:
```bash
$ scripts/mvnw clean package
``` 

Ubicarse dentro de la carpeta spring-web-blog/target y Ejecutar el archivo .jar :
```bash
$ java -jar target/blog-demo-0.0.1-SNAPSHOT.jar
```

Para terminar la aplicación, presionar / digitar  **ctrl-c**.
### Usuario Avanzado
**Ejecución en Docker**

using Docker:

Build Docker image:
```bash
$ mvn clean package
$ docker build -t blog-demo:dev -f docker/Dockerfile .
```

Run Docker container:
```bash
$ docker run --rm -i -p 8090:8090 \
      --name blog-demo \
      blog-demo:dev
```

##### Helper script

It is possible to run all of the above with helper script:

```bash
$ chmod +x scripts/run_docker.sh
$ scripts/run_docker.sh
```

## Docker (Especificaciones en Ingles)

Folder **docker** contains:

* **docker/blog-demo/Dockerfile** - Docker build file for executing blog-demo Docker image. 
Instructions to build artifacts, copy build artifacts to docker image and then run app on proper port with proper configuration file.

## Util Scripts

* **scripts/run_docker.sh.sh** - util script for running blog-demo Docker container using **docker/Dockerfile**

## Tests

Tests can be run by executing following command from the root of the project:

```bash
$ mvn test
```

## Tools

### HAL REST Browser

Go to the web browser and visit `http://localhost:8090/`

You will need to be authenticated to be able to see this page.

### H2 Database web interface

Go to the web browser and visit `http://localhost:8090/h2-console`

In field **JDBC URL** put 
```
jdbc:h2:mem:blog_simple_db
```

In `/src/main/resources/application.properties` file it is possible to change both
web interface url path, as well as the datasource url.
