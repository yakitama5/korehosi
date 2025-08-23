import 'package:analyzer/error/error.dart' hide LintCode;
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

import 'constants.dart';

class ImportPresentationRule extends DartLintRule {
  const ImportPresentationRule() : super(code: _code);

  static const _code = LintCode(
    name: 'import_presentation_rule',
    problemMessage: 'プレゼンテーション層がインフラ層に依存しています。',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    final path = resolver.source.uri;
    if (!path.toString().contains(presentationPath)) return;

    context.registry.addImportDirective((node) {
      final uri = node.uri.stringValue;
      final dependentOnInfrastructure =
          uri?.contains(infrastructurePath) == true;
      if (dependentOnInfrastructure) {
        reporter.atNode(node, _code);
      }
    });
  }
}
