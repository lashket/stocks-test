# MarketStack Flutter App

This Flutter application demonstrates working with the [MarketStack API](https://marketstack.com) (quotes and financial data). It showcases convenient mechanisms for pagination and state management. The project is structured into separate packages to isolate responsibilities and maintain a clean architecture.

---

## Project Structure

The application is split into three main layers (packages) to separate concerns and responsibilities:

1. **data**  
2. **domain**  
3. **core**  

Within the `lib/common/cubit` directory, you will also find **generic base classes** and **related widgets** for managing network requests and pagination. This setup makes it easier to reuse the logic in the future.

---
## Code Quality & Style

All code in this project has been formatted according to the latest Dart style guidelines. It also passes lint checks with the very good analyzer, ensuring there are no analyzer errors and maintaining a high standard of code quality.

---
## Libraries & Technologies

- **[dio](https://pub.dev/packages/dio)** — For making HTTP requests.
- **[get_it](https://pub.dev/packages/get_it)** — Service locator for dependency injection.
- **[auto_route](https://pub.dev/packages/auto_route)** — Declarative routing and navigation.
- **[freezed](https://pub.dev/packages/freezed)** — Generating immutable classes with `copyWith()` and other utility methods.
- **[flutter_bloc](https://pub.dev/packages/flutter_bloc)** — State management following the BLoC (Business Logic Component) pattern.

---

## Environment Setup

To run this project, you need to define two variables at build/run time using Dart define:

- `api_url` eg. https://api.marketstack.com
- `api_key`

These values can be obtained by registering at [MarketStack](https://marketstack.com).

### Example Run Command

```bash
flutter run \
  --dart-define=api_url=https://api.marketstack.com \
  --dart-define=api_key=YOUR_API_KEY
```