# Lontra — README

Bem-vindo ao projeto Lontra. Este repositório contém uma aplicação Java baseada em Spring Boot, utilizando Jakarta EE (imports jakarta), Spring MVC, Spring Data JPA, Hibernate, Lombok e banco de dados em memória H2. A documentação de API é exposta via springdoc-openapi. O projeto oferece um ambiente de execução com Docker e Docker Compose.

## Tecnologias e Documentação

- [![Java 17](https://img.shields.io/badge/Java-17-007396?logo=openjdk&logoColor=white)](https://docs.oracle.com/en/java/javase/17/)
- [![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-6DB33F?logo=spring-boot&logoColor=white)](https://docs.spring.io/spring-boot/docs/current/reference/html/)
- [![Spring MVC](https://img.shields.io/badge/Spring%20MVC-6DB33F?logo=spring&logoColor=white)](https://docs.spring.io/spring-framework/reference/web/webmvc.html)
- [![Spring Data JPA](https://img.shields.io/badge/Spring%20Data%20JPA-6DB33F?logo=spring&logoColor=white)](https://docs.spring.io/spring-data/jpa/reference/)
- [![Hibernate ORM](https://img.shields.io/badge/Hibernate-59666C?logo=hibernate&logoColor=white)](https://hibernate.org/orm/documentation/)
- [![Jakarta EE](https://img.shields.io/badge/Jakarta%20EE-Informações-2F6F4E)](https://jakarta.ee/specifications/)
- [![Lombok](https://img.shields.io/badge/Lombok-Red?logo=lombok&logoColor=white)](https://projectlombok.org/)
- [![H2 Database](https://img.shields.io/badge/H2-Database-blue)](https://www.h2database.com/html/main.html)
- [![OpenAPI / springdoc](https://img.shields.io/badge/OpenAPI-springdoc-85EA2D?logo=openapiinitiative&logoColor=black)](https://springdoc.org/)
- [![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)](https://docs.docker.com/)
- [![Docker Compose](https://img.shields.io/badge/Docker%20Compose-2496ED?logo=docker&logoColor=white)](https://docs.docker.com/compose/)

## Principais Dependências e Recursos

- Linguagem: Java 17
- Frameworks:
    - Spring Boot (aplicação e lifecycle)
    - Spring MVC (camada web/rest)
    - Spring Data JPA (acesso a dados)
    - Hibernate (implementação JPA)
    - Jakarta EE (imports jakarta.*)
    - Lombok (redução de boilerplate)
- Banco de dados: H2 (em memória, console web habilitado)
- Documentação de API: springdoc-openapi (OpenAPI 3)

## Perfis e Configuração

- Perfil ativo: h2
- Propriedades relevantes:
    - spring.application.name=lontra
    - spring.profiles.active=h2
    - springdoc.api-docs.path=/api-docs

## Como executar com Docker Compose

Pré-requisitos:
- Docker e Docker Compose instalados

Comandos:
```shell script
# Subir a aplicação e o console do H2
docker compose up -d

# Ver logs da aplicação
docker compose logs -f app

# Parar
docker compose down
```


Acessos:
- API: http://localhost:8080
- OpenAPI (JSON): http://localhost:8080/api-docs
- Swagger UI: http://localhost:8080/swagger-ui.html (ou http://localhost:8080/swagger-ui/)
- H2 Console: http://localhost:8082/

Variáveis de ambiente já fornecidas no Compose:
- SPRING_DATASOURCE_URL=jdbc:h2:mem:testdb;DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE
- SPRING_DATASOURCE_DRIVER_CLASS_NAME=org.h2.Driver
- SPRING_DATASOURCE_USERNAME=sa
- SPRING_DATASOURCE_PASSWORD=
- SPRING_JPA_DATABASE_PLATFORM=org.hibernate.dialect.H2Dialect

Observações:
- O serviço h2-console é iniciado na porta 8082 e permite acesso via navegador.
- O banco H2 é em memória; os dados são voláteis entre reinicializações, a menos que se configure persistência.

## Execução local (sem Docker)

Pré-requisitos:
- Java 17 instalado
- Gerenciador de build (Maven ou Gradle), conforme o que você utiliza no projeto

Exemplos de execução:
- Maven
```shell script
# Compilar e executar
./mvnw spring-boot:run
# ou, caso use Maven local
mvn spring-boot:run
```


- Gradle
```shell script
# Compilar e executar
./gradlew bootRun
# ou, caso use Gradle local
gradle bootRun
```


- JAR empacotado (após build)
```shell script
java -jar target/app.jar
```


Acessos (padrão):
- API: http://localhost:8080
- OpenAPI: http://localhost:8080/api-docs
- Swagger UI: http://localhost:8080/swagger-ui.html (ou /swagger-ui/)
- H2 Console (se habilitado externamente): utilizar a porta/endpoint configurado

## Convenções úteis

- Endpoints de documentação:
    - Esquema OpenAPI (JSON): /api-docs
    - UI interativa: /swagger-ui.html (ou /swagger-ui/)
- Perfil h2 indicado para desenvolvimento local e testes rápidos.

## Suporte

Se precisar de ajuda para rodar o projeto ou integrar novas dependências, descreva o contexto e os erros encontrados. Vou responder como AI Assistant.