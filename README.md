# uPortal Messaging - Java Upgrade Modernization Project

[![Build Status](https://travis-ci.org/UW-Madison-DoIT/uportal-messaging.svg?branch=master)](https://travis-ci.org/UW-Madison-DoIT/uportal-messaging)
[![Coverage Status](https://coveralls.io/repos/github/UW-Madison-DoIT/uportal-messaging/badge.svg?branch=master)](https://coveralls.io/github/UW-Madison-DoIT/uportal-messaging?branch=master)
[![Java](https://img.shields.io/badge/Java-8%2B-orange?logo=openjdk)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-1.5.9-6DB33F?logo=springboot)](https://spring.io/projects/spring-boot)
[![Azure](https://img.shields.io/badge/Azure-Ready-0078D4?logo=microsoftazure)](https://azure.microsoft.com/)
[![Microsoft](https://img.shields.io/badge/Microsoft-Learn-5E5E5E?logo=microsoft)](https://learn.microsoft.com/en-us/java/upgrade/)
[![GitHub Copilot](https://img.shields.io/badge/GitHub%20Copilot-Enabled-8957E5?logo=github)](https://github.com/features/copilot)
[![Anthropic Claude](https://img.shields.io/badge/Claude-Sonnet-191919?logo=anthropic)](https://www.anthropic.com/claude)
[![DevContainer](https://img.shields.io/badge/Dev%20Container-Ready-2496ED?logo=docker)](https://code.visualstudio.com/docs/devcontainers/containers)
[![Maven](https://img.shields.io/badge/Maven-Build-C71A36?logo=apachemaven)](https://maven.apache.org/)

A Spring Boot microservice for determining messages (notifications and announcements) for a user, optimized as a demonstration project for [Java application modernization and upgrade scenarios](https://learn.microsoft.com/en-us/java/upgrade/).

## 📋 Overview

This project is based on [uPortal](https://en.wikipedia.org/wiki/UPortal), an open-source enterprise portal framework. The messaging service provides a REST API for managing user-targeted notifications and announcements with audience filtering, time-based delivery, and action buttons.

**Primary Purpose**: This repository serves as a reference implementation for modernizing legacy Java applications, demonstrating upgrade patterns, dependency management, and containerized development workflows.

## 🚀 Quick Start with DevContainers

This project is **optimized for DevContainers**, providing a consistent, reproducible development environment with all required tools pre-configured.

### Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Getting Started

1. Clone this repository
2. Open in VS Code
3. When prompted, click "Reopen in Container" (or use Command Palette: `Dev Containers: Reopen in Container`)
4. The devcontainer will automatically set up Java, Maven, and all dependencies
5. Build the project: `mvn clean install`
6. Run the application: `mvn spring-boot:run`

## 🔧 Technology Stack

- **Java**: 1.8 (legacy version - upgrade target)
- **Spring Boot**: 1.5.9.RELEASE (legacy version)
- **Build Tool**: Maven
- **Packaging**: WAR
- **Framework**: Spring MVC, Spring Data REST

## 🎯 Java Upgrade Focus

This project demonstrates common challenges and solutions for upgrading legacy Java applications:

- Upgrading from Java 8 to modern LTS versions (Java 11, 17, 21)
- Migrating Spring Boot 1.x to Spring Boot 3.x
- Resolving deprecated dependencies and APIs
- Modernizing build configurations
- Containerization and cloud-native patterns
- Testing strategies during upgrades

### Microsoft Learn Resources

- [Upgrade Java Applications](https://learn.microsoft.com/en-us/java/upgrade/)
- [Spring Boot Migration Guide](https://learn.microsoft.com/en-us/java/upgrade/spring-boot)
- [Java on Azure](https://learn.microsoft.com/en-us/azure/developer/java/)

## 📚 Project Structure

```text
src/
├── main/
│   ├── java/edu/wisc/my/messages/
│   │   ├── controller/      # REST API endpoints
│   │   ├── service/         # Business logic & filtering
│   │   ├── model/          # Data models
│   │   ├── data/           # Data access layer
│   │   ├── exception/      # Custom exceptions
│   │   └── time/           # Time-based predicates
│   └── resources/
│       ├── application.properties
│       └── messages.json    # Message data store
└── test/                    # Unit and integration tests
```

## 🔨 Building and Running

### Local Development (without DevContainer)

```bash
# Build the project
mvn clean package

# Run tests
mvn test

# Run integration tests
mvn verify

# Start the application
mvn spring-boot:run
```

### API Endpoints

- `GET /messages` - Retrieve messages for authenticated user
- Message filtering based on audience, date ranges, and user groups

## 🧪 Testing

The project includes comprehensive test coverage:

- **Unit Tests**: `*Test.java`
- **Integration Tests**: `*IT.java`
- Code coverage reports via Cobertura

## 📖 Documentation

For detailed API documentation and usage examples, see [docs](https://uw-madison-doit.github.io/uportal-messaging/).

## 🤝 Contributing

This is a demonstration project for Java upgrade scenarios. Feel free to use it as a reference for your own modernization efforts.

## 📄 License

See [LICENSE](LICENSE) file for details.

## 🔗 Related Resources

- [uPortal Project](https://en.wikipedia.org/wiki/UPortal)
- [Microsoft Java Upgrade Documentation](https://learn.microsoft.com/en-us/java/upgrade/)
- [Spring Boot Migration Guide](https://github.com/spring-projects/spring-boot/wiki/Spring-Boot-3.0-Migration-Guide)
