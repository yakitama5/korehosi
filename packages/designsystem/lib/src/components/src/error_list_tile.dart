import 'package:flutter/material.dart';

class ErrorListTile extends StatelessWidget {
  const ErrorListTile({
    super.key,
    required this.indexInPage,
    required this.isLoading,
    required this.error,
    this.onRetry,
  });

  final int indexInPage;
  final bool isLoading;
  final String error;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return indexInPage == 0
        ? ListTile(
          leading: const Icon(Icons.warning_rounded),
          title: SelectableText(error),
          trailing:
              onRetry != null
                  ? FilledButton.icon(
                    onPressed: isLoading ? null : onRetry,
                    // TODO(yakitama5): 多言語化対応
                    label: const Text('Retry'),
                    icon: const Icon(Icons.refresh_rounded),
                  )
                  : const SizedBox.shrink(),
        )
        : const SizedBox.shrink();
  }
}
