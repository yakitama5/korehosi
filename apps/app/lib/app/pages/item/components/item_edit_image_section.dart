part of '../item_edit_page.dart';

/// 画像選択とURLサムネイルの表示を担当するセクション。
class _ImageFields extends HookConsumerWidget {
  const _ImageFields({required this.urlThumbnails});

  final ValueNotifier<Map<String, String?>> urlThumbnails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formModel = ReactiveItemFormModelForm.of(context)!;
    final thumbnails = useValueListenable(urlThumbnails);

    return ReactiveFormArray<SelectedImageModel>(
      formArray: formModel.imagesControl,
      builder: (context, formArray, child) {
        final radius = BorderRadius.circular(16);
        return ItemImageCarouselSlider(
          items: [
            ...formArray.controls.mapIndexed(
              (i, key) => ClipRRect(
                borderRadius: radius,
                child: ReactiveImagePicker(
                  key: ObjectKey(formArray.control('$i')),
                  formControlName: '$i',
                  inputBuilder: (onPressed) => InkWell(
                    borderRadius: radius,
                    onTap: onPressed,
                    child: const ItemsEmptyImage(
                      width: double.infinity,
                      height: double.infinity,
                      showAddIcon: true,
                    ),
                  ),
                  onSelected: () => formModel.addImagesItem(null),
                  onDeleted: () => formModel.imagesControl.removeAt(i),
                  selectedBuilder: (onPressed, selectedFile) {
                    final uploaded = selectedFile.savedImage != null;
                    return InkWell(
                      borderRadius: radius,
                      onTap: onPressed,
                      child: uploaded
                          ? NetworkImageWithPlaceholder(
                              imageUrl: selectedFile.savedImage!.url,
                            )
                          : XFileImage(xFile: selectedFile.uploadFile!),
                    );
                  },
                ),
              ),
            ),
            ...thumbnails.entries.expand((entry) {
              final imageUrl = entry.value;
              return imageUrl == null
                  ? const <Widget>[]
                  : [
                      ClipRRect(
                        borderRadius: radius,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            NetworkImageWithPlaceholder(imageUrl: imageUrl),
                            PositionedDirectional(
                              top: 8,
                              end: 8,
                              child: IconButton.filled(
                                onPressed: () {
                                  urlThumbnails.value = {
                                    ...urlThumbnails.value,
                                    entry.key: null,
                                  };
                                },
                                icon: const Icon(Icons.delete),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ];
            }),
          ],
        );
      },
    );
  }
}
