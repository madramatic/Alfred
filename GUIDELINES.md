# Project Guidelines

## Architecture
- Follow the **Riverpod Architecture** with the following layers:
  - **Presentation Layer**: Contains UI widgets, screens, and controllers.
  - **Application Layer**: Contains services that mediate between controllers and repositories.
  - **Domain Layer**: Contains immutable model classes and business logic.
  - **Data Layer**: Contains repositories and data sources (e.g., APIs, databases).

## Folder Structure
- `lib/`
  - `presentation/`: UI and controllers.
  - `application/`: Services.
  - `domain/`: Models and business logic.
  - `data/`: Repositories and data sources.

## Coding Standards
- Use **Flutter best practices**.
- Follow **Dart Effective Practices** (e.g., avoid unnecessary `var`, prefer `final`).
- Use **Riverpod** for state management and **go_router** for navigation.
- Write **clean, readable, and maintainable code** with proper comments where necessary.

## Naming Conventions
- Use `PascalCase` for class names (e.g., `LandingScreen`).
- Use `camelCase` for variables and methods (e.g., `fetchData`).
- Use `snake_case` for file names (e.g., `landing_screen.dart`).

## Navigation
- Use **go_router** for all navigation.
- Define routes in the **Presentation Layer**.

## State Management
- Use **Riverpod** for state management.
- Declare providers in the appropriate layer:
  - **Presentation Layer**: UI-specific providers.
  - **Application Layer**: Shared services providers.
  - **Data Layer**: Repository providers.

## Testing
- Write unit tests for all layers.
- Use mock dependencies for testing.

## General Rules
- Adhere strictly to the Riverpod architecture.
- Avoid creating unnecessary folders or files.
- Keep the code modular and reusable.

## Commit Message Guidelines

We follow **Conventional Commits** to maintain a consistent commit history. All commit messages must adhere to the following format:

```
<type>(<scope>): <description>

[optional body]

[optional footer(s)]
```

### Commit Types
- **feat**: A new feature.
- **fix**: A bug fix.
- **docs**: Documentation changes.
- **style**: Code style changes (e.g., formatting, missing semi-colons).
- **refactor**: Code changes that neither fix a bug nor add a feature.
- **perf**: Performance improvements.
- **test**: Adding or updating tests.
- **build**: Changes to the build system or dependencies.
- **ci**: Changes to CI configuration files or scripts.
- **chore**: Other changes that don't modify `src` or `test` files.
- **revert**: Reverts a previous commit.

### Examples
- `feat(router): add navigation guard`
- `fix(auth): resolve login issue`
- `docs(readme): update installation instructions`

### Rules
1. Use **lowercase** for `<type>` and `<scope>`.
2. Keep the `<description>` concise and in **present tense**.
3. Use the **body** to explain the "why" behind the change, if necessary.
4. Use the **footer** for breaking changes or referencing issues (e.g., `BREAKING CHANGE:`, `Closes #123`).

### Breaking Changes
For breaking changes, include a footer with the `BREAKING CHANGE:` keyword followed by a description of the change, its impact, and migration instructions.

Example:
```
feat(auth): update token validation logic

BREAKING CHANGE: The `validateToken` method now requires an additional `issuer` parameter.
```