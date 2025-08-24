import 'package:analyzer/error/error.dart' hide LintCode;
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

import 'constants.dart';

class ImportApplicationRule extends DartLintRule {
  const ImportApplicationRule() : super(code: _code);

  static const _code = LintCode(
    name: 'import_application_rule',
    problemMessage: 'アプリケーション層が外部の層に依存しています。',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    final path = resolver.source.uri;
    if (!path.toString().contains(applicationPath)) return;

    context.registry.addImportDirective((node) {
      final uri = node.uri.stringValue;
      final dependentOnPresentation = uri?.contains(presentationPath) == true;
      final dependentOnInfrastructure =
          uri?.contains(infrastructurePath) == true;
      if (dependentOnPresentation || dependentOnInfrastructure) {
        reporter.atNode(node, _code);
      }
    });
  }
}
