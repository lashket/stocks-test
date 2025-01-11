import 'package:flutter/material.dart';
import 'package:infinit_stocks_test_task/generated/l10n.dart';

extension ContextX on BuildContext {
  S get localization => S.of(this);
}
