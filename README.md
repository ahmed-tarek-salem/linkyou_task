# Linkyou Task

## Overview

Linkyou Task is structured using a simplified version of clean architecture with a feature-first approach. This documentation provides an in-depth look at the project's structure, dependencies, state management, service locator, environment configuration, navigation, and task requirements.

## Project Structure

The project is organized into several main directories:

- **lib/src**: Contains all the source code.
  - **application**: Includes global data and presentation logic.
    - **data**: Global data models.
    - **presentation**: Global UI and UX components.
  - **core**: Core functionalities and services.
    - **extensions**: Custom extensions.
    - **services**: Core services like API and environment configuration.
    - **utilities**: Utility functions and classes.
  - **features**: Contains feature-specific code.
    - **login**: Login feature.
      - **data**: Data layer for login.
        - **data_sources**: Interfaces and remote data sources.
        - **models**: Models specific to the login feature.
        - **repo**: Repository pattern implementation.
      - **presentation**: Presentation layer for login.
        - **ui**: UI components.
        - **ux**: State management and routes.
    - **users_list**: Users list feature.
      - **data**: Data layer for users list.
        - **data_sources**: Interfaces and remote data sources.
        - **models**: Models specific to the users list feature.
        - **repo**: Repository pattern implementation.
      - **presentation**: Presentation layer for users list.
        - **ui**: UI components.
        - **ux**: State management and routes.
- **lib/myapp.dart**: The root of the application.

## Dependencies

The project utilizes the following dependencies, each serving a specific purpose to enhance the functionality, maintainability, and scalability of the application:

- **cupertino_icons**: A collection of iOS-style icons that are used to give the application a consistent look and feel on iOS devices. These icons are part of the Cupertino design language.
- **dio**: A powerful HTTP client for Dart, used for making API calls. It supports features like interceptors, global configuration, and FormData, making it easier to handle network requests and responses.
- **flutter_bloc**: A state management library that implements the BLoC (Business Logic Component) pattern. It helps to separate business logic from UI, making the application more modular and testable.
- **flutter_dotenv**: A library for loading environment variables from a `.env` file. It allows you to manage configuration settings and secret keys securely without hardcoding them into the source code.
- **flutter_smart_dialog**: A dialog library that provides a variety of customizable pre-built dialog widgets, including loading indicators, toasts, and more.
- **freezed**: A code generation library for creating unions (sealed classes) and pattern matching. It simplifies the process of writing immutable classes and helps in reducing boilerplate code.
- **freezed_annotation**: Annotations for the `freezed` package.
- **get_it**: A service locator for dependency injection. It helps to manage dependencies and provides a way to decouple the creation and usage of dependencies, making the code more modular and testable.
- **go_router**: A declarative routing library for Flutter. It simplifies the process of defining and managing routes in the application.
- **google_sign_in**: A library for integrating Google authentication into the application. It provides an easy way to authenticate users using their Google accounts, handling the OAuth2 flow and retrieving user information.
- **infinite_scroll_pagination**: A library for implementing infinite scroll with pagination. It provides a set of widgets and utilities to handle loading more items as the user scrolls, making it easy to implement efficient and user-friendly lists.

## State Management

State management is handled using Cubit and Freezed. Cubit is used for state management, and Freezed is used for defining state classes with unions and pattern matching. This combination allows for a robust and maintainable state management solution that is easy to use and understand.

## Service Locator

The `get_it` package is used as a service locator for dependency injection. It ensures that dependencies are registered and resolved efficiently throughout the application, promoting loose coupling and easier testing.

## Environment Configuration

The `flutter_dotenv` package is used for environment configuration, allowing sensitive data and environment-specific settings to be managed securely. This approach helps in keeping sensitive information like API keys out of the source code and managing different configurations for various environments.

## Navigation

Navigation is managed using the `go_router` package, providing a declarative approach to routing. The routes are defined for each feature, ensuring a clear and maintainable navigation structure. This allows for easy management of navigation logic and support for complex routing scenarios.

## Simplified Clean Architecture

The application uses a simplified version of clean architecture, omitting the domain layer for the sake of simplicity and faster development. This approach focuses on two main layers: data and presentation.

- **Data Layer**: Manages data sources, models, and repositories. This layer is responsible for data handling and abstracting the data sources (e.g., remote APIs).
- **Presentation Layer**: Manages UI components, state management, and routing. This layer is responsible for displaying data and handling user interactions.

This simplified architecture maintains a clean separation of concerns, making the codebase more maintainable and easier to understand without the added complexity of a domain layer.

## Task Requirements

The application fulfills the following task requirements:

1. **Google Login**: A screen with Google login functionality.
2. **Post User to API**: After logging in with Google, the user's information is posted to the API.
3. **Fetch and Display Users List**: A new screen that displays a list of users fetched from the API.

### Folder and File Structure

#### Application

- **application/data/models**: Contains global models such as `pagination_request_model.dart` and `error_response_model.dart`.
- **application/presentation/ui**: Contains global UI components.
- **application/presentation/ux**: Contains global UX components, including the router.

#### Core

- **core/extensions**: Custom extensions.
- **core/services**: Core services like `api_service.dart` and `env_service.dart`.
- **core/utilities**: Utility functions and classes.

#### Features

Each feature follows a similar structure with `data` and `presentation` directories.

- **features/feature_name/data**: Contains data sources, models, and repositories.
  - **data_sources**: Interfaces and remote data sources.
  - **models**: Feature-specific models.
  - **repo**: Repository pattern implementation.

- **features/feature_name/presentation**: Contains UI and UX components.
  - **ui**: UI components such as screens, widgets, and containers.
  - **ux**: State management (Cubit) and routes.

### Examples

- **Login Feature**:
  - **data/data_sources**: `login_data_source_interface.dart`, `login_remote_data_source.dart`.
  - **data/models**: `user_request_model.dart`.
  - **data/repo**: `login_repo_interface.dart`, `login_repo.dart`.
  - **presentation/ui**: Contains screens, widgets, and containers related to login.
  - **presentation/ux**: Contains `login_cubit.dart`, `login_state.dart`, and `login_route.dart`.

- **Users List Feature**:
  - **data/data_sources**: `users_list_data_source_interface.dart`, `users_list_remote_data_source.dart`.
  - **data/models**: `user_model.dart`.
  - **data/repo**: `users_list_repo_interface.dart`, `users_list_repo.dart`.
  - **presentation/ui**: Contains screens, widgets, and containers related to the users list.
  - **presentation/ux**: Contains `users_list_cubit.dart`, `users_list_state.dart`, and `users_list_route.dart`.

## Testing

Currently, this project does not include tests due to time constraints. However, in a live project, tests are crucial for ensuring code quality, maintainability, and reliability. Including unit tests, integration tests, and UI tests can help catch bugs early, facilitate refactoring, and provide documentation for expected behaviors.



