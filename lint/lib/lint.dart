library lint;

import 'package:custom_lint_builder/custom_lint_builder.dart';

import 'import_domain_rule.dart';

PluginBase createPlugin() => _ImportLinter();

// Lint Ruleを登録するためのクラス
// PluginBaseクラスのメソッドをオーバーライドしてルールを登録していく
class _ImportLinter extends PluginBase {
  // このメソッドでルールを登録
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) {
    return [
      const ImportDomainRule(),
    ];
  }
}
