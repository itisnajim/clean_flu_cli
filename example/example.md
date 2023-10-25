# Example: Using clean_flu cli

This example demonstrates how to use the **clean_flu_cli** command-line tool to set up a clean and organized Flutter project structure.

## Installation

Before you get started, make sure you have the **clean_flu_cli** tool installed. If not, you can install it using the following command:

```bash
dart pub global activate clean_flu_cli
```

## Getting Started

1. Initialize your Flutter project with the clean architecture foundation:

```bash
clean_flu init
```

Follow the setup process to choose data sources, configure the project structure, and install necessary dependencies.

2. Generate Data Models and Domain Entities:

```bash
clean_flu model --name profile --properties "String firstName, String lastName, String? avatar, DateTime createdAt"
```

Use the `model` command to create data models for your application.

3. Generate Domain Repository Classes:

```bash
clean_flu repository --name product
```

Create domain repository classes for clean data access using the `repository` command.

4. Generate Domain Use Case Classes:

```bash
clean_flu usecase --name product_fetch --group product
```

Generate domain use case classes that encapsulate your application's business logic with the `usecase` command.

5. Generate Presentation Screens:

```bash
clean_flu screen --name home
```

Use the `screen` command to create presentation screens or pages for your Flutter app.

### Command-Line Arguments

You can also define options without being prompted with choices or questions using command-line arguments. For more details on available arguments and their usage, refer to the `--help` command:

```bash
clean_flu --help
```

