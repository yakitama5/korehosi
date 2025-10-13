// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_form_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveItemFormModelFormConsumer extends StatelessWidget {
  const ReactiveItemFormModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ItemFormModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveItemFormModelForm.of(context);

    if (formModel is! ItemFormModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ItemFormModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ItemFormModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ItemFormModelForm form;
}

class ReactiveItemFormModelForm extends StatelessWidget {
  const ReactiveItemFormModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvokedWithResult,
  }) : super(key: key);

  final Widget child;

  final ItemFormModelForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
      onPopInvokedWithResult;

  static ItemFormModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ItemFormModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ItemFormModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ItemFormModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ItemFormModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvokedWithResult: onPopInvokedWithResult,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveItemFormModelFormExt on BuildContext {
  ItemFormModelForm? itemFormModelFormWatch() =>
      ReactiveItemFormModelForm.of(this);

  ItemFormModelForm? itemFormModelFormRead() =>
      ReactiveItemFormModelForm.of(this, listen: false);
}

class ItemFormModelFormBuilder extends StatefulWidget {
  const ItemFormModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvokedWithResult,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ItemFormModel? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
      onPopInvokedWithResult;

  final Widget Function(
      BuildContext context, ItemFormModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ItemFormModelForm formModel)?
      initState;

  @override
  _ItemFormModelFormBuilderState createState() =>
      _ItemFormModelFormBuilderState();
}

class _ItemFormModelFormBuilderState extends State<ItemFormModelFormBuilder> {
  late ItemFormModelForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        ItemFormModelForm(ItemFormModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logItemFormModelForm.onRecord.listen((LogRecord e) {
      // use `dumpErrorToConsole` for severe messages to ensure that severe
      // exceptions are formatted consistently with other Flutter examples and
      // avoids printing duplicate exceptions
      if (e.level >= Level.SEVERE) {
        final Object? error = e.error;
        FlutterError.dumpErrorToConsole(
          FlutterErrorDetails(
            exception: error is Exception ? error : Exception(error),
            stack: e.stackTrace,
            library: e.loggerName,
            context: ErrorDescription(e.message),
          ),
        );
      } else {
        log(
          e.message,
          time: e.time,
          sequenceNumber: e.sequenceNumber,
          level: e.level.value,
          name: e.loggerName,
          zone: e.zone,
          error: e.error,
          stackTrace: e.stackTrace,
        );
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ItemFormModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    _logSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveItemFormModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

final _logItemFormModelForm = Logger.detached('ItemFormModelForm');

class ItemFormModelForm implements FormModel<ItemFormModel, ItemFormModel> {
  ItemFormModelForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String wanterNameControlName = "wanterName";

  static const String wishRankControlName = "wishRank";

  static const String wishSeasonControlName = "wishSeason";

  static const String memoControlName = "memo";

  static const String urlsControlName = "urls";

  static const String imagesControlName = "images";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String nameControlPath() => pathBuilder(nameControlName);

  String wanterNameControlPath() => pathBuilder(wanterNameControlName);

  String wishRankControlPath() => pathBuilder(wishRankControlName);

  String wishSeasonControlPath() => pathBuilder(wishSeasonControlName);

  String memoControlPath() => pathBuilder(memoControlName);

  String urlsControlPath() => pathBuilder(urlsControlName);

  String imagesControlPath() => pathBuilder(imagesControlName);

  String? get _nameValue => nameControl.value;

  String? get _wanterNameValue => wanterNameControl.value;

  double? get _wishRankValue => wishRankControl.value;

  String? get _wishSeasonValue => wishSeasonControl.value;

  String? get _memoValue => memoControl.value;

  List<String>? get _urlsValue =>
      urlsControl.rawValue.whereType<String>().toList();

  List<SelectedImageModel?>? get _imagesValue =>
      imagesControl.rawValue.whereType<SelectedImageModel?>().toList();

  String? get _nameRawValue => nameControl.value;

  String? get _wanterNameRawValue => wanterNameControl.value;

  double? get _wishRankRawValue => wishRankControl.value;

  String? get _wishSeasonRawValue => wishSeasonControl.value;

  String? get _memoRawValue => memoControl.value;

  List<String>? get _urlsRawValue =>
      urlsControl.rawValue.whereType<String>().toList();

  List<SelectedImageModel?>? get _imagesRawValue =>
      imagesControl.rawValue.whereType<SelectedImageModel?>().toList();

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsWanterName {
    try {
      form.control(wanterNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsWishRank {
    try {
      form.control(wishRankControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsWishSeason {
    try {
      form.control(wishSeasonControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsMemo {
    try {
      form.control(memoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsUrls {
    try {
      form.control(urlsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsImages {
    try {
      form.control(imagesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get nameErrors => nameControl.errors;

  Map<String, Object>? get wanterNameErrors => wanterNameControl.errors;

  Map<String, Object>? get wishRankErrors => wishRankControl.errors;

  Map<String, Object>? get wishSeasonErrors => wishSeasonControl.errors;

  Map<String, Object>? get memoErrors => memoControl.errors;

  Map<String, Object>? get urlsErrors => urlsControl.errors;

  Map<String, Object>? get imagesErrors => imagesControl.errors;

  void get nameFocus => form.focus(nameControlPath());

  void get wanterNameFocus => form.focus(wanterNameControlPath());

  void get wishRankFocus => form.focus(wishRankControlPath());

  void get wishSeasonFocus => form.focus(wishSeasonControlPath());

  void get memoFocus => form.focus(memoControlPath());

  void get urlsFocus => form.focus(urlsControlPath());

  void get imagesFocus => form.focus(imagesControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void nameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void wanterNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsWanterName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          wanterNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            wanterNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void wishRankRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsWishRank) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          wishRankControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            wishRankControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void wishSeasonRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsWishSeason) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          wishSeasonControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            wishSeasonControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void memoRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMemo) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          memoControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            memoControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void urlsRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsUrls) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          urlsControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            urlsControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void imagesRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsImages) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          imagesControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            imagesControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void wanterNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    wanterNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void wishRankValueUpdate(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    wishRankControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void wishSeasonValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    wishSeasonControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void memoValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    memoControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void urlsValueUpdate(
    List<String>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    urlsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imagesValueUpdate(
    List<SelectedImageModel?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imagesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void wanterNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    wanterNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void wishRankValuePatch(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    wishRankControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void wishSeasonValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    wishSeasonControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void memoValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    memoControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void urlsValuePatch(
    List<String>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    urlsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imagesValuePatch(
    List<SelectedImageModel?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imagesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void wanterNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      wanterNameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void wishRankValueReset(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      wishRankControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void wishSeasonValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      wishSeasonControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void memoValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      memoControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void urlsValueReset(
    List<String>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      urlsControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void imagesValueReset(
    List<SelectedImageModel?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      imagesControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormControl<String> get wanterNameControl =>
      form.control(wanterNameControlPath()) as FormControl<String>;

  FormControl<double> get wishRankControl =>
      form.control(wishRankControlPath()) as FormControl<double>;

  FormControl<String> get wishSeasonControl =>
      form.control(wishSeasonControlPath()) as FormControl<String>;

  FormControl<String> get memoControl =>
      form.control(memoControlPath()) as FormControl<String>;

  FormArray<String> get urlsControl =>
      form.control(urlsControlPath()) as FormArray<String>;

  FormArray<SelectedImageModel> get imagesControl =>
      form.control(imagesControlPath()) as FormArray<SelectedImageModel>;

  List<FormControl<String>?> get urlsControlControls =>
      urlsControl.controls.cast<FormControl<String>?>();

  List<FormControl<SelectedImageModel>?> get imagesControlControls =>
      imagesControl.controls.cast<FormControl<SelectedImageModel>?>();

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void wanterNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      wanterNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      wanterNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void wishRankSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      wishRankControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      wishRankControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void wishSeasonSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      wishSeasonControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      wishSeasonControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void memoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      memoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      memoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void urlsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      urlsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      urlsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void imagesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      imagesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      imagesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addUrlsItem(
    String value, {
    List<AsyncValidator<dynamic>>? asyncValidators,
    List<Validator<dynamic>>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<Validator<dynamic>> resultingValidators = [UrlValidator()];
    List<AsyncValidator<dynamic>> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    urlsControl.add(FormControl<String>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addImagesItem(
    SelectedImageModel? value, {
    List<AsyncValidator<dynamic>>? asyncValidators,
    List<Validator<dynamic>>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<Validator<dynamic>> resultingValidators = [];
    List<AsyncValidator<dynamic>> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    imagesControl.add(FormControl<SelectedImageModel>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  ItemFormModel get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logItemFormModelForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ItemFormModel(
        name: _nameValue,
        wanterName: _wanterNameValue,
        wishRank: _wishRankValue,
        wishSeason: _wishSeasonValue,
        memo: _memoValue,
        urls: _urlsValue,
        images: _imagesValue);
  }

  @override
  ItemFormModel get rawModel {
    return ItemFormModel(
        name: _nameRawValue,
        wanterName: _wanterNameRawValue,
        wishRank: _wishRankRawValue,
        wishSeason: _wishSeasonRawValue,
        memo: _memoRawValue,
        urls: _urlsRawValue,
        images: _imagesRawValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(ItemFormModel? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      ItemFormModelForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ItemFormModel model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logItemFormModelForm.info('Errors');
      _logItemFormModelForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ItemFormModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ItemFormModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ItemFormModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ItemFormModel? itemFormModel) => FormGroup({
        nameControlName: FormControl<String>(
            value: itemFormModel?.name,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        wanterNameControlName: FormControl<String>(
            value: itemFormModel?.wanterName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        wishRankControlName: FormControl<double>(
            value: itemFormModel?.wishRank,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        wishSeasonControlName: FormControl<String>(
            value: itemFormModel?.wishSeason,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        memoControlName: FormControl<String>(
            value: itemFormModel?.memo,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        urlsControlName: FormArray<String>(
            (itemFormModel?.urls ?? [])
                .map((e) => FormControl<String>(
                      value: e,
                      validators: [UrlValidator()],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        imagesControlName: FormArray<SelectedImageModel>(
            (itemFormModel?.images ?? [])
                .map((e) => FormControl<SelectedImageModel>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveItemFormModelFormArrayBuilder<
    ReactiveItemFormModelFormArrayBuilderT> extends StatelessWidget {
  const ReactiveItemFormModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveItemFormModelFormArrayBuilderT>? formControl;

  final FormArray<ReactiveItemFormModelFormArrayBuilderT>? Function(
      ItemFormModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ItemFormModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveItemFormModelFormArrayBuilderT> control,
      ReactiveItemFormModelFormArrayBuilderT? item,
      ItemFormModelForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveItemFormModelFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveItemFormModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<ReactiveItemFormModelFormArrayBuilderT>(
      formControl: formControl ?? control?.call(formModel),
      builder: builder != null
          ? (context, itemList) => builder(
                context,
                itemList,
                formModel,
              )
          : null,
      itemBuilder: (
        context,
        i,
        control,
        item,
      ) =>
          itemBuilder(context, i, control, item, formModel),
      emptyBuilder: emptyBuilder,
      controlFilter: controlFilter,
    );
  }
}

class ReactiveItemFormModelFormArrayBuilder2<
    ReactiveItemFormModelFormArrayBuilderT> extends StatelessWidget {
  const ReactiveItemFormModelFormArrayBuilder2({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveItemFormModelFormArrayBuilderT>? formControl;

  final FormArray<ReactiveItemFormModelFormArrayBuilderT>? Function(
      ItemFormModelForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        ItemFormModelForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveItemFormModelFormArrayBuilderT> control,
        ReactiveItemFormModelFormArrayBuilderT? item,
        ItemFormModelForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveItemFormModelFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveItemFormModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<ReactiveItemFormModelFormArrayBuilderT>(
      formControl: formControl ?? control?.call(formModel),
      builder: builder != null
          ? (context, itemList) => builder((
                context: context,
                itemList: itemList,
                formModel: formModel,
              ))
          : null,
      itemBuilder: (
        context,
        i,
        control,
        item,
      ) =>
          itemBuilder((
        context: context,
        i: i,
        control: control,
        item: item,
        formModel: formModel
      )),
      emptyBuilder: emptyBuilder,
      controlFilter: controlFilter,
    );
  }
}

class ReactiveItemFormModelFormFormGroupArrayBuilder<
    ReactiveItemFormModelFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveItemFormModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveItemFormModelFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveItemFormModelFormFormGroupArrayBuilderT>>
      Function(ItemFormModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ItemFormModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveItemFormModelFormFormGroupArrayBuilderT? item,
      ItemFormModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveItemFormModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveItemFormModelFormFormGroupArrayBuilderT>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
