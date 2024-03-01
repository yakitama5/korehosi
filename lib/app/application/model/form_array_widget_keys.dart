import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_array_widget_keys.freezed.dart';

@freezed
class FormArrayWidgetKeys with _$FormArrayWidgetKeys {
  const factory FormArrayWidgetKeys(
    List<String> keys,
  ) = _FormArrayWidgetKeys;
}

extension FormArrayWidgetKeysX on FormArrayWidgetKeys {
  FormArrayWidgetKeys add(String key) => FormArrayWidgetKeys([...keys, key]);
  FormArrayWidgetKeys remove(String key) =>
      FormArrayWidgetKeys([...keys]..remove(key));
  FormArrayWidgetKeys removeAt(int index) =>
      FormArrayWidgetKeys([...keys]..removeAt(index));
}
