# MarketStack Flutter App (with Fake Stock Data)

This Flutter application demonstrates working with a mock API for stock quotes and financial data. It provides convenient mechanisms for pagination and state management. The project is structured into separate packages to maintain a clean and modular architecture.

---

## Project Structure

The application is organized into three main layers (packages) to separate concerns and responsibilities:

1. **data**
2. **domain**
3. **core**

Additionally, the `lib/common/cubit` directory contains **generic base classes** and **related widgets** for managing network requests and pagination. This setup simplifies the reuse of logic in future projects.

---

## Code Quality & Style

All code in this project adheres to the latest Dart style guidelines. It passes lint checks using the **very good analyzer**, ensuring a high standard of code quality and no analyzer errors.

---

## Libraries & Technologies

- **[dio](https://pub.dev/packages/dio)** — For making HTTP requests.
- **[get_it](https://pub.dev/packages/get_it)** — Service locator for dependency injection.
- **[auto_route](https://pub.dev/packages/auto_route)** — Declarative routing and navigation.
- **[freezed](https://pub.dev/packages/freezed)** — For generating immutable classes with `copyWith()` and other utility methods.
- **[flutter_bloc](https://pub.dev/packages/flutter_bloc)** — State management using the BLoC (Business Logic Component) pattern.

---

## Environment Setup

To run this project, you need to define the following variable at build/run time using Dart define:

- `api_url` (e.g., `https://test-infinit-a7633306fd19.herokuapp.com`)

The `api_key` is no longer required, as the application now uses **fake stock data** for demonstration purposes.

### Example Run Command

```bash
flutter run \
  --dart-define=api_url=https://api.marketstack.com \
  --dart-define=api_key=YOUR_API_KEY
```