import 'package:flutter/material.dart';
import 'package:packages_designsystem/src/components/src/error_view.dart';
import 'package:packages_domain/common.dart';

/// 値がNULLの場合、削除済として表示を行うBuilder
class DeletedSafetyBuilder<T> extends StatelessWidget {
  const DeletedSafetyBuilder({
    super.key,
    required this.builder,
    required this.nullableValue,
  });

  final T? nullableValue;
  final Widget Function(BuildContext context, T value) builder;

  @override
  Widget build(BuildContext context) {
    // NULLの場合は削除済表示
    if (nullableValue == null) {
      return const ErrorView(
        BusinessException(BusinessExceptionType.deleted),
        null,
      );
    }

    return builder(context, nullableValue as T);
  }
}
