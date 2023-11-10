// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

import 'constants.dart';

class ImportDomainRule extends DartLintRule {
  const ImportDomainRule() : super(code: _code);

  static const _code = LintCode(
    name: 'import_domain_rule',
    problemMessage: 'ドメイン層が外部の層に依存しています。',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    final path = resolver.source.uri;
    if (!path.toString().contains(domainPath)) return;

    context.registry.addImportDirective((node) {
      final uri = node.uri.stringValue;
      final dependentOnPresentation = uri?.contains(presentationPath) == true;
      final dependentOnApplication = uri?.contains(applicationPath) == true;
      final dependentOnInfrastructure =
          uri?.contains(infrastructurePath) == true;
      if (dependentOnPresentation ||
          dependentOnApplication ||
          dependentOnInfrastructure) {
        reporter.reportErrorForNode(_code, node, []);
      }
    });
  }
}
