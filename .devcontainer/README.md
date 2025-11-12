# Dev Container for uPortal Messaging

This devcontainer provides a complete development environment for the uPortal Messaging Spring Boot application.

## What's Included

- **Java 8** (OpenJDK 8) - Required for Spring Boot 1.5.9
- **Maven 3.9.6** - Build tool
- **VS Code Java Extensions** - Full Java development support including:
  - Java Language Support
  - Spring Boot Tools
  - Debugger
  - Test Runner
  - Maven support

## Getting Started

1. Open this project in VS Code
2. When prompted, click "Reopen in Container" (or run command `Dev Containers: Reopen in Container`)
3. Wait for the container to build and dependencies to install
4. The application will automatically run `mvn clean install -DskipTests` after container creation

## Building and Running

### Build the project
```bash
mvn clean package
```

### Run the application
```bash
mvn spring-boot:run
```

The application will be available at http://localhost:8080

### Run tests
```bash
mvn test
```

### Run integration tests
```bash
mvn verify
```

## Port Forwarding

Port 8080 is automatically forwarded from the container to your local machine.

## Debugging

Use VS Code's built-in Java debugger:
1. Set breakpoints in your code
2. Press F5 or use the Debug view
3. Select "Spring Boot" launch configuration
