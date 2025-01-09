import 'package:get_it/get_it.dart';

/// Service locator global instance to easily call from other packages which
/// are not aware of the service locator instance.
final get = GetIt.instance;

/// Locate a service from the service locator.
T locate<T extends Object>() => get<T>();
