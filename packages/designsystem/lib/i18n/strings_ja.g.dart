///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsCommonJa common = TranslationsCommonJa.internal(_root);
	late final TranslationsDesignsystemJa designsystem = TranslationsDesignsystemJa.internal(_root);
	late final TranslationsKEnumJa kEnum = TranslationsKEnumJa.internal(_root);
	late final TranslationsExceptionsJa exceptions = TranslationsExceptionsJa.internal(_root);
}

// Path: common
class TranslationsCommonJa {
	TranslationsCommonJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'Yes'
	String get yes => 'Yes';

	/// ja: 'No'
	String get no => 'No';

	/// ja: '・'
	String get itmizedTextPrefix => '・';

	/// ja: '保存'
	String get save => '保存';

	/// ja: '削除'
	String get delete => '削除';

	/// ja: '削除しました。'
	String get deletionComplete => '削除しました。';

	/// ja: '編集'
	String get edit => '編集';

	/// ja: '<未設定>'
	String get unset => '<未設定>';

	/// ja: '*'
	String get requiredMark => '*';

	/// ja: '*必須項目'
	String get requiredHelper => '*必須項目';

	/// ja: '次へ'
	String get next => '次へ';

	/// ja: '戻る'
	String get back => '戻る';

	/// ja: '前へ'
	String get prev => '前へ';

	/// ja: 'スキップ'
	String get skip => 'スキップ';

	/// ja: 'OK'
	String get ok => 'OK';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: 'リセット'
	String get reset => 'リセット';

	/// ja: '適用'
	String get apply => '適用';

	/// ja: 'すべて'
	String get all => 'すべて';

	/// ja: '名無し'
	String get noName => '名無し';

	late final TranslationsCommonDeleteConfirmDialogJa deleteConfirmDialog = TranslationsCommonDeleteConfirmDialogJa.internal(_root);
}

// Path: designsystem
class TranslationsDesignsystemJa {
	TranslationsDesignsystemJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsDesignsystemImageSourceSelectJa imageSourceSelect = TranslationsDesignsystemImageSourceSelectJa.internal(_root);
	late final TranslationsDesignsystemConfirmDiscardChangesJa confirmDiscardChanges = TranslationsDesignsystemConfirmDiscardChangesJa.internal(_root);
	late final TranslationsDesignsystemPermissionMessagesJa permissionMessages = TranslationsDesignsystemPermissionMessagesJa.internal(_root);
	late final TranslationsDesignsystemSendUrlErrorDialogJa sendUrlErrorDialog = TranslationsDesignsystemSendUrlErrorDialogJa.internal(_root);
	late final TranslationsDesignsystemAppUpdateJa appUpdate = TranslationsDesignsystemAppUpdateJa.internal(_root);
	late final TranslationsDesignsystemValidationErrorJa validationError = TranslationsDesignsystemValidationErrorJa.internal(_root);
	late final TranslationsDesignsystemFormatJa format = TranslationsDesignsystemFormatJa.internal(_root);
}

// Path: kEnum
class TranslationsKEnumJa {
	TranslationsKEnumJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '(system) {システム設定} (android) {Android} (ios) {iOS}'
	String uiStyle({required UIStyle context}) {
		switch (context) {
			case UIStyle.system:
				return 'システム設定';
			case UIStyle.android:
				return 'Android';
			case UIStyle.ios:
				return 'iOS';
		}
	}

	/// ja: '(appColor) {アプリ内カラー} (dynamicColor) {ダイナミックカラー} (blue) {ブルー} (purple) {パープル} (green) {グリーン} (red) {レッド} (pink) {ピンク} (yellow) {イエロー} (orange) {オレンジ}'
	String themeColor({required ThemeColor context}) {
		switch (context) {
			case ThemeColor.appColor:
				return 'アプリ内カラー';
			case ThemeColor.dynamicColor:
				return 'ダイナミックカラー';
			case ThemeColor.blue:
				return 'ブルー';
			case ThemeColor.purple:
				return 'パープル';
			case ThemeColor.green:
				return 'グリーン';
			case ThemeColor.red:
				return 'レッド';
			case ThemeColor.pink:
				return 'ピンク';
			case ThemeColor.yellow:
				return 'イエロー';
			case ThemeColor.orange:
				return 'オレンジ';
		}
	}

	/// ja: '(system) {システムテーマ} (light) {ライトテーマ} (dark) {ダークテーマ}'
	String themeMode({required ThemeMode context}) {
		switch (context) {
			case ThemeMode.system:
				return 'システムテーマ';
			case ThemeMode.light:
				return 'ライトテーマ';
			case ThemeMode.dark:
				return 'ダークテーマ';
		}
	}

	late final TranslationsKEnumViewLayoutJa viewLayout = TranslationsKEnumViewLayoutJa.internal(_root);

	/// ja: '(asc) {昇順} (desc) {降順}'
	String sortOrder({required SortOrder context}) {
		switch (context) {
			case SortOrder.asc:
				return '昇順';
			case SortOrder.desc:
				return '降順';
		}
	}

	/// ja: '(createdAt) {作成日時} (name) {名前} (wishRank) {欲しい度}'
	String itemOrderKey({required ItemOrderKey context}) {
		switch (context) {
			case ItemOrderKey.createdAt:
				return '作成日時';
			case ItemOrderKey.name:
				return '名前';
			case ItemOrderKey.wishRank:
				return '欲しい度';
		}
	}

	/// ja: '(child) {こども} (adult) {おとな}'
	String ageGroup({required AgeGroup context}) {
		switch (context) {
			case AgeGroup.child:
				return 'こども';
			case AgeGroup.adult:
				return 'おとな';
		}
	}

	/// ja: '(notPurchased) {未購入} (purchasePlan) {購入予定} (purchased) {購入済}'
	String purchaseStatus({required PurchaseStatus context}) {
		switch (context) {
			case PurchaseStatus.notPurchased:
				return '未購入';
			case PurchaseStatus.purchasePlan:
				return '購入予定';
			case PurchaseStatus.purchased:
				return '購入済';
		}
	}
}

// Path: exceptions
class TranslationsExceptionsJa {
	TranslationsExceptionsJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '(deleted) {削除済です。} (updateTargetNotFound) {保存に失敗しました、あらためて操作を行ってください。} (createDynamicLinkUnknown) {招待リンクの作成に失敗しました。} (joinGroupPolicyJoinedGroup) {すでに参加しています。} (joinGroupPolicyExpired) {招待リンクの有効期限が切れています。} (joinGroupPolicyNotAuth) {認証エラーが発生しました。} (joinGroupPolicyLimitOver) {グループの参加上限(5件)に達しました。} (joinGroupPolicyInvalidShareLink) {招待リンクが正しくありません。} (registrationItemPolicyLimitOver) {登録数の上限に達しました。 購入済のものを削除するか、プレミアムプランに変更して下さい。} (signInPolicyLinkedAccount) {すでに連携済のアカウントです。} (googleSignInUnknown) {Google認証に失敗しました。} (appInPurchasePolicyPackageNotExist) {購入処理に失敗しました。} (appInPurchasePolicyPackageNotActive) {購入処理に失敗しました。}'
	String businessException({required BusinessExceptionType context}) {
		switch (context) {
			case BusinessExceptionType.deleted:
				return '削除済です。';
			case BusinessExceptionType.updateTargetNotFound:
				return '保存に失敗しました、あらためて操作を行ってください。';
			case BusinessExceptionType.createDynamicLinkUnknown:
				return '招待リンクの作成に失敗しました。';
			case BusinessExceptionType.joinGroupPolicyJoinedGroup:
				return 'すでに参加しています。';
			case BusinessExceptionType.joinGroupPolicyExpired:
				return '招待リンクの有効期限が切れています。';
			case BusinessExceptionType.joinGroupPolicyNotAuth:
				return '認証エラーが発生しました。';
			case BusinessExceptionType.joinGroupPolicyLimitOver:
				return 'グループの参加上限(5件)に達しました。';
			case BusinessExceptionType.joinGroupPolicyInvalidShareLink:
				return '招待リンクが正しくありません。';
			case BusinessExceptionType.registrationItemPolicyLimitOver:
				return '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';
			case BusinessExceptionType.signInPolicyLinkedAccount:
				return 'すでに連携済のアカウントです。';
			case BusinessExceptionType.googleSignInUnknown:
				return 'Google認証に失敗しました。';
			case BusinessExceptionType.appInPurchasePolicyPackageNotExist:
				return '購入処理に失敗しました。';
			case BusinessExceptionType.appInPurchasePolicyPackageNotActive:
				return '購入処理に失敗しました。';
		}
	}

	late final TranslationsExceptionsErrorMessageJa errorMessage = TranslationsExceptionsErrorMessageJa.internal(_root);
}

// Path: common.deleteConfirmDialog
class TranslationsCommonDeleteConfirmDialogJa {
	TranslationsCommonDeleteConfirmDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '削除の確認'
	String get title => '削除の確認';

	/// ja: '「${name:String}」を削除しますか？'
	String message({required String name}) => '「${name}」を削除しますか？';
}

// Path: designsystem.imageSourceSelect
class TranslationsDesignsystemImageSourceSelectJa {
	TranslationsDesignsystemImageSourceSelectJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '写真を撮る'
	String get shoot => '写真を撮る';

	/// ja: 'ライブラリから画像を選択'
	String get chooseFromLibrary => 'ライブラリから画像を選択';
}

// Path: designsystem.confirmDiscardChanges
class TranslationsDesignsystemConfirmDiscardChangesJa {
	TranslationsDesignsystemConfirmDiscardChangesJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '変更を破棄しますか？'
	String get title => '変更を破棄しますか？';

	/// ja: 'すべての変更は失われます'
	String get message => 'すべての変更は失われます';

	/// ja: '破棄'
	String get discard => '破棄';

	/// ja: '破棄しない'
	String get notDiscard => '破棄しない';
}

// Path: designsystem.permissionMessages
class TranslationsDesignsystemPermissionMessagesJa {
	TranslationsDesignsystemPermissionMessagesJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ギャラリーへのアクセス'
	String get photos => 'ギャラリーへのアクセス';

	/// ja: 'カメラへのアクセス'
	String get camera => 'カメラへのアクセス';

	/// ja: 'プッシュ通知'
	String get pushNotification => 'プッシュ通知';

	late final TranslationsDesignsystemPermissionMessagesPermissionLackDialogJa permissionLackDialog = TranslationsDesignsystemPermissionMessagesPermissionLackDialogJa.internal(_root);
	late final TranslationsDesignsystemPermissionMessagesPermissionOffDialogJa permissionOffDialog = TranslationsDesignsystemPermissionMessagesPermissionOffDialogJa.internal(_root);
}

// Path: designsystem.sendUrlErrorDialog
class TranslationsDesignsystemSendUrlErrorDialogJa {
	TranslationsDesignsystemSendUrlErrorDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'エラー'
	String get title => 'エラー';

	/// ja: 'URLを開けませんでした。 頻発する場合はお問い合わせ下さい。'
	String get message => 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
}

// Path: designsystem.appUpdate
class TranslationsDesignsystemAppUpdateJa {
	TranslationsDesignsystemAppUpdateJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsDesignsystemAppUpdateUpdatePossibleJa updatePossible = TranslationsDesignsystemAppUpdateUpdatePossibleJa.internal(_root);
	late final TranslationsDesignsystemAppUpdateForceUpdateJa forceUpdate = TranslationsDesignsystemAppUpdateForceUpdateJa.internal(_root);

	/// ja: 'ストアを開く'
	String get navigateStore => 'ストアを開く';
}

// Path: designsystem.validationError
class TranslationsDesignsystemValidationErrorJa {
	TranslationsDesignsystemValidationErrorJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '必須項目を入力して下さい'
	String get required => '必須項目を入力して下さい';

	/// ja: '正しいURL形式で入力して下さい'
	String get url => '正しいURL形式で入力して下さい';
}

// Path: designsystem.format
class TranslationsDesignsystemFormatJa {
	TranslationsDesignsystemFormatJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '${percent:String}%'
	String percent({required String percent}) => '${percent}%';
}

// Path: kEnum.viewLayout
class TranslationsKEnumViewLayoutJa {
	TranslationsKEnumViewLayoutJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '表示形式'
	String get name => '表示形式';

	/// ja: '(grid) {グリッド表示} (list) {リスト表示}'
	String typeName({required ViewLayout context}) {
		switch (context) {
			case ViewLayout.grid:
				return 'グリッド表示';
			case ViewLayout.list:
				return 'リスト表示';
		}
	}
}

// Path: exceptions.errorMessage
class TranslationsExceptionsErrorMessageJa {
	TranslationsExceptionsErrorMessageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '予期せぬエラーが発生しました。'
	String get unexpected => '予期せぬエラーが発生しました。';
}

// Path: designsystem.permissionMessages.permissionLackDialog
class TranslationsDesignsystemPermissionMessagesPermissionLackDialogJa {
	TranslationsDesignsystemPermissionMessagesPermissionLackDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '${permission:String}が許可されていません'
	String title({required String permission}) => '${permission}が許可されていません';

	/// ja: '設定アプリを開いて${permission:String}を許可してください'
	String message({required String permission}) => '設定アプリを開いて${permission}を許可してください';

	/// ja: '設定アプリを開く'
	String get openSettings => '設定アプリを開く';
}

// Path: designsystem.permissionMessages.permissionOffDialog
class TranslationsDesignsystemPermissionMessagesPermissionOffDialogJa {
	TranslationsDesignsystemPermissionMessagesPermissionOffDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '${permission:String}をオフにしますか？'
	String title({required String permission}) => '${permission}をオフにしますか？';

	/// ja: '設定アプリを開いて${permission:String}をオフにしてください'
	String message({required String permission}) => '設定アプリを開いて${permission}をオフにしてください';

	/// ja: '設定アプリを開く'
	String get openSettings => '設定アプリを開く';
}

// Path: designsystem.appUpdate.updatePossible
class TranslationsDesignsystemAppUpdateUpdatePossibleJa {
	TranslationsDesignsystemAppUpdateUpdatePossibleJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？'
	String get message => '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';
}

// Path: designsystem.appUpdate.forceUpdate
class TranslationsDesignsystemAppUpdateForceUpdateJa {
	TranslationsDesignsystemAppUpdateForceUpdateJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。'
	String get message => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.yes': return 'Yes';
			case 'common.no': return 'No';
			case 'common.itmizedTextPrefix': return '・';
			case 'common.save': return '保存';
			case 'common.delete': return '削除';
			case 'common.deletionComplete': return '削除しました。';
			case 'common.edit': return '編集';
			case 'common.unset': return '<未設定>';
			case 'common.requiredMark': return '*';
			case 'common.requiredHelper': return '*必須項目';
			case 'common.next': return '次へ';
			case 'common.back': return '戻る';
			case 'common.prev': return '前へ';
			case 'common.skip': return 'スキップ';
			case 'common.ok': return 'OK';
			case 'common.cancel': return 'キャンセル';
			case 'common.reset': return 'リセット';
			case 'common.apply': return '適用';
			case 'common.all': return 'すべて';
			case 'common.noName': return '名無し';
			case 'common.deleteConfirmDialog.title': return '削除の確認';
			case 'common.deleteConfirmDialog.message': return ({required String name}) => '「${name}」を削除しますか？';
			case 'designsystem.imageSourceSelect.shoot': return '写真を撮る';
			case 'designsystem.imageSourceSelect.chooseFromLibrary': return 'ライブラリから画像を選択';
			case 'designsystem.confirmDiscardChanges.title': return '変更を破棄しますか？';
			case 'designsystem.confirmDiscardChanges.message': return 'すべての変更は失われます';
			case 'designsystem.confirmDiscardChanges.discard': return '破棄';
			case 'designsystem.confirmDiscardChanges.notDiscard': return '破棄しない';
			case 'designsystem.permissionMessages.photos': return 'ギャラリーへのアクセス';
			case 'designsystem.permissionMessages.camera': return 'カメラへのアクセス';
			case 'designsystem.permissionMessages.pushNotification': return 'プッシュ通知';
			case 'designsystem.permissionMessages.permissionLackDialog.title': return ({required String permission}) => '${permission}が許可されていません';
			case 'designsystem.permissionMessages.permissionLackDialog.message': return ({required String permission}) => '設定アプリを開いて${permission}を許可してください';
			case 'designsystem.permissionMessages.permissionLackDialog.openSettings': return '設定アプリを開く';
			case 'designsystem.permissionMessages.permissionOffDialog.title': return ({required String permission}) => '${permission}をオフにしますか？';
			case 'designsystem.permissionMessages.permissionOffDialog.message': return ({required String permission}) => '設定アプリを開いて${permission}をオフにしてください';
			case 'designsystem.permissionMessages.permissionOffDialog.openSettings': return '設定アプリを開く';
			case 'designsystem.sendUrlErrorDialog.title': return 'エラー';
			case 'designsystem.sendUrlErrorDialog.message': return 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
			case 'designsystem.appUpdate.updatePossible.message': return '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';
			case 'designsystem.appUpdate.forceUpdate.message': return 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';
			case 'designsystem.appUpdate.navigateStore': return 'ストアを開く';
			case 'designsystem.validationError.required': return '必須項目を入力して下さい';
			case 'designsystem.validationError.url': return '正しいURL形式で入力して下さい';
			case 'designsystem.format.percent': return ({required String percent}) => '${percent}%';
			case 'kEnum.uiStyle': return ({required UIStyle context}) {
				switch (context) {
					case UIStyle.system:
						return 'システム設定';
					case UIStyle.android:
						return 'Android';
					case UIStyle.ios:
						return 'iOS';
				}
			};
			case 'kEnum.themeColor': return ({required ThemeColor context}) {
				switch (context) {
					case ThemeColor.appColor:
						return 'アプリ内カラー';
					case ThemeColor.dynamicColor:
						return 'ダイナミックカラー';
					case ThemeColor.blue:
						return 'ブルー';
					case ThemeColor.purple:
						return 'パープル';
					case ThemeColor.green:
						return 'グリーン';
					case ThemeColor.red:
						return 'レッド';
					case ThemeColor.pink:
						return 'ピンク';
					case ThemeColor.yellow:
						return 'イエロー';
					case ThemeColor.orange:
						return 'オレンジ';
				}
			};
			case 'kEnum.themeMode': return ({required ThemeMode context}) {
				switch (context) {
					case ThemeMode.system:
						return 'システムテーマ';
					case ThemeMode.light:
						return 'ライトテーマ';
					case ThemeMode.dark:
						return 'ダークテーマ';
				}
			};
			case 'kEnum.viewLayout.name': return '表示形式';
			case 'kEnum.viewLayout.typeName': return ({required ViewLayout context}) {
				switch (context) {
					case ViewLayout.grid:
						return 'グリッド表示';
					case ViewLayout.list:
						return 'リスト表示';
				}
			};
			case 'kEnum.sortOrder': return ({required SortOrder context}) {
				switch (context) {
					case SortOrder.asc:
						return '昇順';
					case SortOrder.desc:
						return '降順';
				}
			};
			case 'kEnum.itemOrderKey': return ({required ItemOrderKey context}) {
				switch (context) {
					case ItemOrderKey.createdAt:
						return '作成日時';
					case ItemOrderKey.name:
						return '名前';
					case ItemOrderKey.wishRank:
						return '欲しい度';
				}
			};
			case 'kEnum.ageGroup': return ({required AgeGroup context}) {
				switch (context) {
					case AgeGroup.child:
						return 'こども';
					case AgeGroup.adult:
						return 'おとな';
				}
			};
			case 'kEnum.purchaseStatus': return ({required PurchaseStatus context}) {
				switch (context) {
					case PurchaseStatus.notPurchased:
						return '未購入';
					case PurchaseStatus.purchasePlan:
						return '購入予定';
					case PurchaseStatus.purchased:
						return '購入済';
				}
			};
			case 'exceptions.businessException': return ({required BusinessExceptionType context}) {
				switch (context) {
					case BusinessExceptionType.deleted:
						return '削除済です。';
					case BusinessExceptionType.updateTargetNotFound:
						return '保存に失敗しました、あらためて操作を行ってください。';
					case BusinessExceptionType.createDynamicLinkUnknown:
						return '招待リンクの作成に失敗しました。';
					case BusinessExceptionType.joinGroupPolicyJoinedGroup:
						return 'すでに参加しています。';
					case BusinessExceptionType.joinGroupPolicyExpired:
						return '招待リンクの有効期限が切れています。';
					case BusinessExceptionType.joinGroupPolicyNotAuth:
						return '認証エラーが発生しました。';
					case BusinessExceptionType.joinGroupPolicyLimitOver:
						return 'グループの参加上限(5件)に達しました。';
					case BusinessExceptionType.joinGroupPolicyInvalidShareLink:
						return '招待リンクが正しくありません。';
					case BusinessExceptionType.registrationItemPolicyLimitOver:
						return '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';
					case BusinessExceptionType.signInPolicyLinkedAccount:
						return 'すでに連携済のアカウントです。';
					case BusinessExceptionType.googleSignInUnknown:
						return 'Google認証に失敗しました。';
					case BusinessExceptionType.appInPurchasePolicyPackageNotExist:
						return '購入処理に失敗しました。';
					case BusinessExceptionType.appInPurchasePolicyPackageNotActive:
						return '購入処理に失敗しました。';
				}
			};
			case 'exceptions.errorMessage.unexpected': return '予期せぬエラーが発生しました。';
			default: return null;
		}
	}
}

