part of '../item_edit_page.dart';

/// 欲しい日入力を担当するセクション。
class _WishDateField extends StatelessWidget {
  const _WishDateField({required this.control});

  final FormControl<DateTime> control;

  @override
  Widget build(BuildContext context) => ReactiveDateTimePicker(
    formControl: control,
    fieldLabelText: i18n.item.common.wishDate,
    keyboardType: TextInputType.datetime,
    decoration: InputDecoration(
      labelText: i18n.item.common.wishDate,
      border: const OutlineInputBorder(),
      suffixIcon: const Icon(Icons.calendar_today),
      helperText: i18n.item.itemEditPage.wishDate.hint,
    ),
  );
}

/// URL入力・サムネイル取得を担当するセクション。
class _UrlFields extends HookConsumerWidget {
  const _UrlFields({required this.urlThumbnails});

  final ValueNotifier<Map<String, String?>> urlThumbnails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formModel = ReactiveItemFormModelForm.of(context)!;
    return ReactiveItemFormModelFormArrayBuilder(
      formControl: formModel.urlsControl,
      itemBuilder: (_, i, _, _, formModel) => _UrlField(
        key: ObjectKey(formModel.urlsControl.control('$i')),
        index: i,
        urlThumbnails: urlThumbnails,
      ),
    );
  }
}

class _UrlField extends HookWidget {
  const _UrlField({
    super.key,
    required this.index,
    required this.urlThumbnails,
  });

  final int index;
  final ValueNotifier<Map<String, String?>> urlThumbnails;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveItemFormModelForm.of(context)!;
    final control =
        formModel.urlsControl.control('$index') as FormControl<String>;
    final previousUrl = useRef(control.value);
    final debounce = useRef<Timer?>(null);
    final attemptedUrls = useRef(<String>{});

    Future<void> fetchThumbnail(String? value) async {
      final url = value?.trim();
      final uri = Uri.tryParse(url ?? '');
      if (url == null ||
          url.isEmpty ||
          uri == null ||
          !{'http', 'https'}.contains(uri.scheme) ||
          urlThumbnails.value.containsKey(url) ||
          !attemptedUrls.value.add(url)) {
        return;
      }

      final imageUrl = await fetchUrlThumbnail(url);
      if (!context.mounted || control.value?.trim() != url) {
        return;
      }
      if (imageUrl != null && !urlThumbnails.value.containsKey(url)) {
        urlThumbnails.value = {...urlThumbnails.value, url: imageUrl};
      }
    }

    void scheduleFetch(FormControl<String> changedControl) {
      final url = changedControl.value;
      final previous = previousUrl.value;
      if (previous != null && previous != url) {
        final updated = Map<String, String?>.from(urlThumbnails.value)
          ..remove(previous);
        urlThumbnails.value = updated;
      }
      previousUrl.value = url;

      debounce.value?.cancel();
      debounce.value = Timer(
        const Duration(milliseconds: 700),
        () => fetchThumbnail(url),
      );
    }

    useEffect(() {
      scheduleFetch(control);
      return () => debounce.value?.cancel();
    }, [control]);

    return ReactiveOutlinedTextField<String>(
      formControlName: '$index',
      labelText: i18n.item.common.url,
      maxLength: itemConfig.maxUrlLength,
      textInputType: TextInputType.url,
      counterText: '',
      onChanged: scheduleFetch,
    );
  }
}

class _UrlAddButton extends HookConsumerWidget {
  const _UrlAddButton({required this.onAdd});

  final void Function() onAdd;

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextButton.icon(
    onPressed: onAdd,
    icon: const Icon(Icons.add),
    label: Text(i18n.item.itemEditPage.addUrl),
  );
}
