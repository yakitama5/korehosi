import 'package:packages_designsystem/i18n/strings.g.dart';
import 'package:packages_domain/common.dart';

extension ErrorMeessageInObjectX on Object {
  String get errorMessage {
    if (this is BusinessException) {
      return i18n.exceptions.businessException(
        context: (this as BusinessException).exceptionType,
      );
    } else if (this is UnknownException) {
      return i18n.exceptions.errorMessage.unexpected;
    }

    return toString();
  }
}
