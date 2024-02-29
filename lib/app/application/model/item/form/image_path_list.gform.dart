// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'image_path_list.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveImagePathListFormConsumer extends StatelessWidget {
  const ReactiveImagePathListFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ImagePathListForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveImagePathListForm.of(context);

    if (formModel is! ImagePathListForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ImagePathListFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ImagePathListFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ImagePathListForm form;
}

class ReactiveImagePathListForm extends StatelessWidget {
  const ReactiveImagePathListForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ImagePathListForm form;

  final WillPopCallback? onWillPop;

  static ImagePathListForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ImagePathListFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ImagePathListFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ImagePathListFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ImagePathListFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveImagePathListFormExt on BuildContext {
  ImagePathListForm? imagePathListFormWatch() =>
      ReactiveImagePathListForm.of(this);

  ImagePathListForm? imagePathListFormRead() =>
      ReactiveImagePathListForm.of(this, listen: false);
}

class ImagePathListFormBuilder extends StatefulWidget {
  const ImagePathListFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ImagePathList? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ImagePathListForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ImagePathListForm formModel)?
      initState;

  @override
  _ImagePathListFormBuilderState createState() =>
      _ImagePathListFormBuilderState();
}

class _ImagePathListFormBuilderState extends State<ImagePathListFormBuilder> {
  late ImagePathListForm _formModel;

  @override
  void initState() {
    _formModel =
        ImagePathListForm(ImagePathListForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ImagePathListFormBuilder oldWidget) {
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
    return ReactiveImagePathListForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ImagePathListForm implements FormModel<ImagePathList> {
  ImagePathListForm(
    this.form,
    this.path,
  );

  static const String imagePathListControlName = "imagePathList";

  final FormGroup form;

  final String? path;

  String imagePathListControlPath() => pathBuilder(imagePathListControlName);

  List<String> get _imagePathListValue =>
      imagePathListControl.value?.whereType<String>().toList() ?? [];

  bool get containsImagePathList {
    try {
      form.control(imagePathListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get imagePathListErrors => imagePathListControl.errors;

  void get imagePathListFocus => form.focus(imagePathListControlPath());

  void imagePathListValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imagePathListControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imagePathListValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imagePathListControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imagePathListValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      imagePathListControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormArray<String> get imagePathListControl =>
      form.control(imagePathListControlPath()) as FormArray<String>;

  void imagePathListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      imagePathListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      imagePathListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addImagePathListItem(
    String value, {
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

    imagePathListControl.add(FormControl<String>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  ImagePathList get model {
    if (!currentForm.valid) {
      debugPrintStack(
          label:
              '[${path ?? 'ImagePathListForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ImagePathList(imagePathList: _imagePathListValue);
  }

  @override
  void submit({
    required void Function(ImagePathList model) onValid,
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
    ImagePathList? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ImagePathListForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ImagePathList? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ImagePathList? imagePathList) => FormGroup({
        imagePathListControlName: FormArray<String>(
            (imagePathList?.imagePathList ?? [])
                .map((e) => FormControl<String>(
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

class ReactiveImagePathListFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveImagePathListFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ImagePathListForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ImagePathListForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ImagePathListForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveImagePathListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
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

class ReactiveImagePathListFormFormGroupArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveImagePathListFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<T>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<T>> Function(
      ImagePathListForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ImagePathListForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ImagePathListForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveImagePathListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <T>[])
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
