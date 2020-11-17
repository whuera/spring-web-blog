# Web Blog

## Resumen

Proyecto Web, para generar un sistema de Web Blog, donde se genere blog's por usuario registrado.

## Configuración
**Pre requisito:**
Java 1.8
Maven

Paso 1: clonar el repositorio github, utilizar los comandos desde la consola Windows / Linux
git init
git clone https://github.com/whuera/spring-web-blog.git.


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
| Linux | mvn spring-boot:run | ![Result2](https://github.com/whuera/assets/blob/main/2020-11-16%2020_17_36-Window.png) |
| | | |



Una vez ejecutado el comando ir al browser y tipear el url: `http://localhost:8090/home`
Para probar el dashboard usar o seguir los pasos para registrarse como usuario
Admin username: **admin**

Admin password: **admin**

**Registro primera vez**
desde el url: `http://localhost:8090/registration`
| Acción | Url | Pantalla |
|--------|-----|----------|
| Registrarse | `http://localhost:8090/registration` | ![image1](https://github.com/whuera/assets/blob/main/2020-11-16%2020_27_55-Window.png) |
| | |



### Maven Wrapper

#### Using the Maven Plugin

Go to the root folder of the application and type:
```bash
$ chmod +x scripts/mvnw
$ scripts/mvnw spring-boot:run
```

#### Using Executable Jar

Or you can build the JAR file with 
```bash
$ scripts/mvnw clean package
``` 

Then you can run the JAR file:
```bash
$ java -jar target/blog-demo-0.0.1-SNAPSHOT.jar
```

### Maven

Open a terminal and run the following commands to ensure that you have valid versions of Java and Maven installed:

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
Java version: 1.8.0_102, vendor: Oracle Corporation
```

#### Using the Maven Plugin

The Spring Boot Maven plugin includes a run goal that can be used to quickly compile and run your application. 
Applications run in an exploded form, as they do in your IDE. 
The following example shows a typical Maven command to run a Spring Boot application:
 
```bash
$ mvn spring-boot:run
``` 

#### Using Executable Jar

To create an executable jar run:

```bash
$ mvn clean package
``` 

To run that application, use the java -jar command, as follows:

```bash
$ java -jar target/blog-demo-0.0.1-SNAPSHOT.jar
```

To exit the application, press **ctrl-c**.

### Docker

It is possible to run **blog-demo** using Docker:

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

## Docker 

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

## Helper Tools

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
