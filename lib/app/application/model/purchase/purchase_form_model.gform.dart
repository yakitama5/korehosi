// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'purchase_form_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePurchaseFormModelFormConsumer extends StatelessWidget {
  const ReactivePurchaseFormModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, PurchaseFormModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePurchaseFormModelForm.of(context);

    if (formModel is! PurchaseFormModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PurchaseFormModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const PurchaseFormModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PurchaseFormModelForm form;
}

class ReactivePurchaseFormModelForm extends StatelessWidget {
  const ReactivePurchaseFormModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final PurchaseFormModelForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static PurchaseFormModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PurchaseFormModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PurchaseFormModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PurchaseFormModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PurchaseFormModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactivePurchaseFormModelFormExt on BuildContext {
  PurchaseFormModelForm? purchaseFormModelFormWatch() =>
      ReactivePurchaseFormModelForm.of(this);

  PurchaseFormModelForm? purchaseFormModelFormRead() =>
      ReactivePurchaseFormModelForm.of(this, listen: false);
}

class PurchaseFormModelFormBuilder extends StatefulWidget {
  const PurchaseFormModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PurchaseFormModel? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
          BuildContext context, PurchaseFormModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, PurchaseFormModelForm formModel)?
      initState;

  @override
  _PurchaseFormModelFormBuilderState createState() =>
      _PurchaseFormModelFormBuilderState();
}

class _PurchaseFormModelFormBuilderState
    extends State<PurchaseFormModelFormBuilder> {
  late PurchaseFormModelForm _formModel;

  @override
  void initState() {
    _formModel = PurchaseFormModelForm(
        PurchaseFormModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PurchaseFormModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactivePurchaseFormModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class PurchaseFormModelForm implements FormModel<PurchaseFormModel> {
  PurchaseFormModelForm(
    this.form,
    this.path,
  );

  static const String priceControlName = "price";

  static const String buyerNameControlName = "buyerName";

  static const String planDateControlName = "planDate";

  static const String surpriseControlName = "surprise";

  static const String sentAtControlName = "sentAt";

  static const String memoControlName = "memo";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String priceControlPath() => pathBuilder(priceControlName);

  String buyerNameControlPath() => pathBuilder(buyerNameControlName);

  String planDateControlPath() => pathBuilder(planDateControlName);

  String surpriseControlPath() => pathBuilder(surpriseControlName);

  String sentAtControlPath() => pathBuilder(sentAtControlName);

  String memoControlPath() => pathBuilder(memoControlName);

  String? get _priceValue => priceControl?.value;

  String? get _buyerNameValue => buyerNameControl?.value;

  DateTime? get _planDateValue => planDateControl?.value;

  bool get _surpriseValue => surpriseControl.value as bool;

  DateTime? get _sentAtValue => sentAtControl?.value;

  String? get _memoValue => memoControl?.value;

  bool get containsPrice {
    try {
      form.control(priceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBuyerName {
    try {
      form.control(buyerNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPlanDate {
    try {
      form.control(planDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSurprise {
    try {
      form.control(surpriseControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSentAt {
    try {
      form.control(sentAtControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMemo {
    try {
      form.control(memoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get priceErrors => priceControl?.errors;

  Map<String, Object>? get buyerNameErrors => buyerNameControl?.errors;

  Map<String, Object>? get planDateErrors => planDateControl?.errors;

  Map<String, Object> get surpriseErrors => surpriseControl.errors;

  Map<String, Object>? get sentAtErrors => sentAtControl?.errors;

  Map<String, Object>? get memoErrors => memoControl?.errors;

  void get priceFocus => form.focus(priceControlPath());

  void get buyerNameFocus => form.focus(buyerNameControlPath());

  void get planDateFocus => form.focus(planDateControlPath());

  void get surpriseFocus => form.focus(surpriseControlPath());

  void get sentAtFocus => form.focus(sentAtControlPath());

  void get memoFocus => form.focus(memoControlPath());

  void priceRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPrice) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          priceControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            priceControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void buyerNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsBuyerName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          buyerNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            buyerNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void planDateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPlanDate) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          planDateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            planDateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void sentAtRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsSentAt) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          sentAtControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            sentAtControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

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

  void priceValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    priceControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void buyerNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    buyerNameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void planDateValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    planDateControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void surpriseValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    surpriseControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void sentAtValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sentAtControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void memoValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    memoControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void priceValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    priceControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void buyerNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    buyerNameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void planDateValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    planDateControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void surpriseValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    surpriseControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void sentAtValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sentAtControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void memoValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    memoControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void priceValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      priceControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void buyerNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      buyerNameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void planDateValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      planDateControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void surpriseValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      surpriseControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void sentAtValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      sentAtControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void memoValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      memoControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String>? get priceControl => containsPrice
      ? form.control(priceControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get buyerNameControl => containsBuyerName
      ? form.control(buyerNameControlPath()) as FormControl<String>?
      : null;

  FormControl<DateTime>? get planDateControl => containsPlanDate
      ? form.control(planDateControlPath()) as FormControl<DateTime>?
      : null;

  FormControl<bool> get surpriseControl =>
      form.control(surpriseControlPath()) as FormControl<bool>;

  FormControl<DateTime>? get sentAtControl => containsSentAt
      ? form.control(sentAtControlPath()) as FormControl<DateTime>?
      : null;

  FormControl<String>? get memoControl => containsMemo
      ? form.control(memoControlPath()) as FormControl<String>?
      : null;

  void priceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      priceControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      priceControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void buyerNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      buyerNameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      buyerNameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void planDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      planDateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      planDateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void surpriseSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      surpriseControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      surpriseControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void sentAtSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      sentAtControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      sentAtControl?.markAsEnabled(
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
      memoControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      memoControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PurchaseFormModel get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'PurchaseFormModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PurchaseFormModel(
        price: _priceValue,
        buyerName: _buyerNameValue,
        planDate: _planDateValue,
        surprise: _surpriseValue,
        sentAt: _sentAtValue,
        memo: _memoValue);
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
  void submit({
    required void Function(PurchaseFormModel model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    PurchaseFormModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PurchaseFormModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PurchaseFormModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PurchaseFormModel? purchaseFormModel) =>
      FormGroup({
        priceControlName: FormControl<String>(
            value: purchaseFormModel?.price,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        buyerNameControlName: FormControl<String>(
            value: purchaseFormModel?.buyerName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        planDateControlName: FormControl<DateTime>(
            value: purchaseFormModel?.planDate,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        surpriseControlName: FormControl<bool>(
            value: purchaseFormModel?.surprise,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        sentAtControlName: FormControl<DateTime>(
            value: purchaseFormModel?.sentAt,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        memoControlName: FormControl<String>(
            value: purchaseFormModel?.memo,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactivePurchaseFormModelFormArrayBuilder<
    ReactivePurchaseFormModelFormArrayBuilderT> extends StatelessWidget {
  const ReactivePurchaseFormModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactivePurchaseFormModelFormArrayBuilderT>? formControl;

  final FormArray<ReactivePurchaseFormModelFormArrayBuilderT>? Function(
      PurchaseFormModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PurchaseFormModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactivePurchaseFormModelFormArrayBuilderT? item,
      PurchaseFormModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePurchaseFormModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactivePurchaseFormModelFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
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

class ReactivePurchaseFormModelFormFormGroupArrayBuilder<
        ReactivePurchaseFormModelFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactivePurchaseFormModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactivePurchaseFormModelFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactivePurchaseFormModelFormFormGroupArrayBuilderT>>
      Function(PurchaseFormModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PurchaseFormModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactivePurchaseFormModelFormFormGroupArrayBuilderT? item,
      PurchaseFormModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePurchaseFormModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactivePurchaseFormModelFormFormGroupArrayBuilderT>[])
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
