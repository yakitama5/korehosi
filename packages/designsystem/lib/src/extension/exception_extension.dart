import 'package:packages_designsystem/i18n/strings.g.dart';
import 'package:packages_domain/common.dart';

extension ErrorMeessageInObjectX on Object {
  String get errorMessage {
    if (this is BusinessException) {
      return i18n.exceptions.businessException(
        context: (this as BusinessException).exceptionType,
      );
    }

    return toString();
  }
}
