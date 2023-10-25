# clean_flu

**CleanFlu** CLI is a command-line tool designed to help you build clean and organized Flutter app structures quickly and efficiently. With Clean_Flu_CLI, you can streamline the development of your Flutter applications by generating key components, ensuring clean architecture, and improving code maintainability.

### Installation
To install CleanFlu CLI, ensure that you have the latest version of Flutter/Dart SDK installed on your machine. Then, run the following command:

```bash
dart pub global activate clean_flu_cli
```

### Commands

#### Init
The `init` command will initialize the project and guide you through the setup process. You will be able to choose data sources (local and/or remote) and create the necessary structure and configurations. Additionally, the required dependencies, such as `Riverpod` for state management, `Chopper` for HTTP requests, and `Isar` for local database, will be automatically installed. (additional options may be available in the future).

```bash
clean_flu init
```

#### Model
The `model` command allows you to generate data models and domain entities easily. It helps you define the data structures required for your application.

```bash
clean_flu model --name profile --properties "String firstName, String lastName, String? avatar, DateTime createdAt"
```

#### Repository
The `repository` command generates domain repository classes that facilitate clean data access.

```bash
clean_flu repository --name product
```

#### UseCase
The `usecase` command generates domain use case classes, encapsulating business logic.


```bash
clean_flu usecase --name product_fetch --group product
```

#### Screen
The `screen` command is used to generate presentation screens or `pages` for your Flutter app. It helps you create the user interface components for your application quickly.

```bash
clean_flu screen --name home
```

### Getting Started

To start using Clean_Flu_CLI, follow these simple steps:

1. Install Clean_Flu_CLI globally using the installation command provided above.
2. Initialize your project with the init command to set up the clean architecture foundation.
3. Use the other commands like model, repository, screen, and usecase to generate necessary components for your Flutter app.

Continue developing your app while following the principles of clean architecture.


### Help & Tips

To define options without being prompted with choices or questions, you can utilize command-line arguments. For more details on available arguments and their usage, refer to the `help` command:

```console
clean_flu --help
```

### Contributions and Issues

If you encounter any issues, have suggestions, or want to contribute to `CleanFlu`, please visit the [GitHub repository](https://github.com/itisnajim/clean_flu_cli). We welcome your feedback and contributions to help make this tool even better.

### License
This project is licensed under the MIT License. See the LICENSE file for details.
