///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
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
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAppEn app = TranslationsAppEn.internal(_root);
}

// Path: app
class TranslationsAppEn {
	TranslationsAppEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Start'
	String get start => 'Start';

	/// en: 'Click here if you are a first time user.'
	String get firstTime => 'Click here if you are a first time user.';

	/// en: 'Account Linkage'
	String get accountLink => 'Account Linkage';

	/// en: 'Contact Us'
	String get contactUs => 'Contact Us';

	/// en: 'Terms of Use'
	String get termOfService => 'Terms of Use';

	/// en: 'Privacy Policy'
	String get privacyPolicy => 'Privacy Policy';

	/// en: 'By linking your account, you will be able to use the following features'
	String get accountLinkDescTitle => 'By linking your account, you will be able to use the following features';

	/// en: 'Data backup to the cloud'
	String get accountLinkDescBodyCloudBackup => 'Data backup to the cloud';

	/// en: 'Simultaneous use on multiple terminals'
	String get accountLinkDescBodyMultiDevice => 'Simultaneous use on multiple terminals';

	/// en: 'Data transfer due to device change'
	String get accountLinkDescBodyDataSend => 'Data transfer due to device change';

	/// en: 'Introduction.'
	String get onboardStartTitle => 'Introduction.';

	/// en: 'Register your profile first!'
	String get onboardStartMessage => 'Register your profile first!';

	/// en: 'What about you?'
	String get questionAgeGroup => 'What about you?';

	/// en: 'Gender.'
	String get questionSex => 'Gender.';

	/// en: 'What is your name?'
	String get questionName => 'What is your name?';

	/// en: 'or Nickname'
	String get questionNameCapiton => 'or Nickname';

	/// en: 'Is it correct?'
	String get questionConfirm => 'Is it correct?';

	/// en: 'Children (Please buy)'
	String get selectChild => 'Children (Please buy)';

	/// en: 'Adult (I want to buy it for you)'
	String get selectAdult => 'Adult (I want to buy it for you)';

	/// en: 'man's man'
	String get selectMan => 'man\'s man';

	/// en: 'woman'
	String get selectWoman => 'woman';

	/// en: 'Neither.'
	String get selectNeither => 'Neither.';

	/// en: 'Name or Nickname'
	String get nameLabel => 'Name or Nickname';

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Next.'
	String get next => 'Next.';

	/// en: 'return'
	String get back => 'return';

	/// en: 'Previous'
	String get prev => 'Previous';

	/// en: 'skip'
	String get skip => 'skip';

	/// en: 'man's man'
	String get sexMan => 'man\'s man';

	/// en: 'woman'
	String get sexWoman => 'woman';

	/// en: 'Neither.'
	String get sexNeither => 'Neither.';

	/// en: 'children'
	String get ageGroupChild => 'children';

	/// en: 'adult'
	String get ageGroupAdult => 'adult';

	/// en: 'age-group'
	String get ageGroup => 'age-group';

	/// en: 'gender'
	String get sex => 'gender';

	/// en: '<Unset'
	String get unset => '<Unset';

	/// en: '*'
	String get requiredIcon => '*';

	/// en: '*Required fields'
	String get requiredHelper => '*Required fields';

	/// en: 'Sign in with Google'
	String get signInWithGoogle => 'Sign in with Google';

	/// en: 'Sign in with Apple'
	String get signInWithApple => 'Sign in with Apple';

	/// en: 'wanted article'
	String get wishList => 'wanted article';

	/// en: 'quid pro quo'
	String get analyze => 'quid pro quo';

	/// en: 'posing (a problem)'
	String get settings => 'posing (a problem)';

	/// en: 'Add what you want'
	String get addWishList => 'Add what you want';

	/// en: 'Name'
	String get orderKeyName => 'Name';

	/// en: 'degree of desirability'
	String get orderKeyWishRank => 'degree of desirability';

	/// en: 'creation-day'
	String get orderKeyCreatedAt => 'creation-day';

	/// en: 'update date'
	String get orderKeyUpdatedAt => 'update date';

	/// en: 'sort'
	String get sortOrder => 'sort';

	/// en: 'ascending-order'
	String get sortOrderAsc => 'ascending-order';

	/// en: 'descending-order'
	String get sortOrderDesc => 'descending-order';

	/// en: 'status'
	String get status => 'status';

	/// en: 'degree of desirability'
	String get wishRank => 'degree of desirability';

	/// en: 'cancel'
	String get cancel => 'cancel';

	/// en: 'reset'
	String get reset => 'reset';

	/// en: 'adoption'
	String get apply => 'adoption';

	/// en: 'unpurchased'
	String get notPurchased => 'unpurchased';

	/// en: 'Planned purchases'
	String get purchasePlan => 'Planned purchases';

	/// en: 'already bought'
	String get purchased => 'already bought';

	/// en: 'all'
	String get all => 'all';

	/// en: 'nameless'
	String get noName => 'nameless';

	/// en: ' group of'
	String get groupInitialNameSuffix => ' group of';

	/// en: 'An unexpected error has occurred.'
	String get unexpectedErrorMessage => 'An unexpected error has occurred.';

	/// en: '${item:String}could not be found.'
	String searchEmptyMessage({required String item}) => '${item}could not be found.';

	/// en: 'trade (brand) name'
	String get merchandiseName => 'trade (brand) name';

	/// en: 'preservation'
	String get save => 'preservation';

	/// en: '${item:String}Edit the'
	String editPageTitle({required String item}) => '${item}Edit the';

	/// en: '${item:String}Create a'
	String createPageTitle({required String item}) => '${item}Create a';

	/// en: 'When do you want it?'
	String get wishSeasonLabel => 'When do you want it?';

	/// en: 'Examples: Christmas, birthdays'
	String get wishSeasonHint => 'Examples: Christmas, birthdays';

	/// en: 'uniform resouce locator'
	String get url => 'uniform resouce locator';

	/// en: 'Add URL'
	String get addUrl => 'Add URL';

	/// en: 'memo'
	String get memo => 'memo';

	/// en: 'take a picture'
	String get shoot => 'take a picture';

	/// en: 'Select an image from the library'
	String get chooseFromLibrary => 'Select an image from the library';

	/// en: 'star'
	String get star => 'star';

	/// en: 'deletion'
	String get delete => 'deletion';

	/// en: 'Deleted.'
	String get deletedMessage => 'Deleted.';

	/// en: 'Deleted.'
	String get completeDeleteMessage => 'Deleted.';

	/// en: 'Switched groups.'
	String get completeChangeGroupMessage => 'Switched groups.';

	/// en: 'Upload Photo'
	String get uploadImage => 'Upload Photo';

	/// en: '${permission:String}is not allowed'
	String lackOfPermission({required String permission}) => '${permission}is not allowed';

	/// en: '${permission:String}to be turned off?'
	String confirmPermissionOffTitle({required String permission}) => '${permission}to be turned off?';

	/// en: 'Open the Settings app and turn${permission:String} and turn off the'
	String confirmPermissionOffMessage({required String permission}) => 'Open the Settings app and turn${permission} and turn off the';

	/// en: 'Gallery Access'
	String get permissionPhotos => 'Gallery Access';

	/// en: 'Access to the camera'
	String get permissionCamera => 'Access to the camera';

	/// en: 'push notification'
	String get permissionPushNotification => 'push notification';

	/// en: 'Open the Settings app and${permission:String} Allow the'
	String permissionWarnMessage({required String permission}) => 'Open the Settings app and${permission} Allow the';

	/// en: 'Open the Settings application'
	String get openSettingsApp => 'Open the Settings application';

	/// en: 'OK'
	String get ok => 'OK';

	/// en: 'Discard changes?'
	String get confirmDiscardChangesTitle => 'Discard changes?';

	/// en: 'All changes will be lost'
	String get confirmDiscardChangesMessage => 'All changes will be lost';

	/// en: 'discard'
	String get discard => 'discard';

	/// en: 'not to be discarded'
	String get notDiscard => 'not to be discarded';

	/// en: 'Please fill in the required fields'
	String get validErrorMessageRequired => 'Please fill in the required fields';

	/// en: 'Please enter the correct URL format'
	String get validErrorMessageUrlPattern => 'Please enter the correct URL format';

	/// en: 'editing'
	String get edit => 'editing';

	/// en: 'Purchase/plan to purchase'
	String get purchaseOrpurchasePlan => 'Purchase/plan to purchase';

	/// en: 'Confirmation of deletion'
	String get deleteConfirmTitle => 'Confirmation of deletion';

	/// en: 'Do you want to delete "${item:String} Do you want to delete "?'
	String deleteCofirmMessage({required String item}) => 'Do you want to delete "${item} Do you want to delete "?';

	/// en: 'Do you want to delete "${name:String} Do you want to delete "? \All the wants registered in the ߋn group will be deleted. \ɑnThis operation cannot be undone.'
	String deleteGroupCofirmMessage({required String name}) => 'Do you want to delete "${name} Do you want to delete "? \All the wants registered in the ߋn group will be deleted. \ɑnThis operation cannot be undone.';

	/// en: 'Confirmation of withdrawal'
	String get leaveConfirmTitle => 'Confirmation of withdrawal';

	/// en: 'Do you want to leave the${group:String} Do you wish to leave the'
	String leaveCofirmMessage({required String group}) => 'Do you want to leave the${group} Do you wish to leave the';

	/// en: 'No group selected'
	String get notSelectedGroupDialogTitle => 'No group selected';

	/// en: 'Please select a group and then add what you want'
	String get notSelectedGroupDialogMessage => 'Please select a group and then add what you want';

	/// en: 'Purchase/Purchase Information'
	String get purchaseInfoTitle => 'Purchase/Purchase Information';

	/// en: 'Subsequent content will only be visible to adults in the group'
	String get purchaseInfoCaption => 'Subsequent content will only be visible to adults in the group';

	/// en: 'Amount of money'
	String get price => 'Amount of money';

	/// en: 'Expected Date of Purchase'
	String get purchasePlanDateTime => 'Expected Date of Purchase';

	/// en: '¥'
	String get yenMark => '¥';

	/// en: 'surprise'
	String get surprise => 'surprise';

	/// en: 'I don't want my kids to know what's going on.'
	String get surpriseCaption => 'I don\'t want my kids to know what\'s going on.';

	/// en: 'Enter "To be purchased".'
	String get purchasePlanDateTimeCaption => 'Enter "To be purchased".';

	/// en: 'Entering the information will make it "Purchased".'
	String get sentAtCaption => 'Entering the information will make it "Purchased".';

	/// en: 'Date given'
	String get sentAt => 'Date given';

	/// en: 'An authentication error has occurred. \Please log in after a few moments.'
	String get authErrorMessage => 'An authentication error has occurred. \Please log in after a few moments.';

	/// en: 'account'
	String get account => 'account';

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'group (usu. of people)'
	String get group => 'group (usu. of people)';

	/// en: 'help'
	String get help => 'help';

	/// en: 'Developer X (formerly Twitter)'
	String get developperTwitter => 'Developer X (formerly Twitter)';

	/// en: 'License'
	String get license => 'License';

	/// en: 'error'
	String get error => 'error';

	/// en: 'Could not open URL. \Please contact us if this occurs frequently.'
	String get urlErrorMessageCanNotOpen => 'Could not open URL. \Please contact us if this occurs frequently.';

	/// en: 'Participating Groups'
	String get joinGroup => 'Participating Groups';

	/// en: 'share'
	String get share => 'share';

	/// en: 'copy'
	String get copy => 'copy';

	/// en: 'Share and invite members!'
	String get shareCaption => 'Share and invite members!';

	/// en: '${user:String}from${group:String} You have been invited to \You can join the Wishlist group by clicking the URL below or scanning the QR code.${url:String}'
	String groupShareText({required String user, required String group, required String url}) => '${user}from${group} You have been invited to \You can join the Wishlist group by clicking the URL below or scanning the QR code.${url}';

	/// en: 'Copied.'
	String get copied => 'Copied.';

	/// en: 'Saved in.'
	String get saved => 'Saved in.';

	/// en: 'Group Name'
	String get groupName => 'Group Name';

	/// en: 'You cannot delete all the groups you have created. \You must have at least one group.'
	String get deleteErrorMessageRequiredExists => 'You cannot delete all the groups you have created. \You must have at least one group.';

	/// en: 'You are not authorized to delete.'
	String get deleteErrorMessagePermission => 'You are not authorized to delete.';

	/// en: 'Share/join groups'
	String get shareGroupHelpTitle => 'Share/join groups';

	/// en: 'Please "Share" from the [Share Group] group.'
	String get shareGroupHelpMessage => 'Please "Share" from the [Share Group] group.';

	/// en: 'Add Group'
	String get addGroup => 'Add Group';

	/// en: 'Other'
	String get other => 'Other';

	/// en: 'logout'
	String get logout => 'logout';

	/// en: 'withdrawal from a group'
	String get deleteAccount => 'withdrawal from a group';

	/// en: 'Google (WWW search engine)'
	String get google => 'Google (WWW search engine)';

	/// en: 'Apple'
	String get apple => 'Apple';

	/// en: 'You do not belong to any group. \Please create a group or join a group to which you have been invited.'
	String get notJoinedGroupMessage => 'You do not belong to any group. \Please create a group or join a group to which you have been invited.';

	/// en: '<Deleted User>.'
	String get deletedUser => '<Deleted User>.';

	/// en: '${length:int}selecting an option (from a test case, e.g. litmus test)'
	String selectNumberText({required int length}) => '${length}selecting an option (from a test case, e.g. litmus test)';

	/// en: 'The account must be linked to one or more external accounts.'
	String get authErrorMessageNotExistsProvider => 'The account must be linked to one or more external accounts.';

	/// en: 'This account has already been linked. \Please use another account or log out once and link it.'
	String get authErrorMessagAlreadyInUse => 'This account has already been linked. \Please use another account or log out once and link it.';

	/// en: 'interpoint (interword separation)'
	String get bullet => 'interpoint (interword separation)';

	/// en: 'Currently, the look-back function is not available.'
	String get notUseAnalytics => 'Currently, the look-back function is not available.';

	/// en: 'The following functions are available in the Reflection function.'
	String get analyticsFeatureTitle => 'The following functions are available in the Reflection function.';

	/// en: 'Change in Amount'
	String get priceAnalytics => 'Change in Amount';

	/// en: 'Percentage of people who bought'
	String get purchaseUserAnalytics => 'Percentage of people who bought';

	/// en: 'Percentage of purchases made'
	String get purchasedAnalytics => 'Percentage of purchases made';

	/// en: 'We will release it before the developer's child starts kindergarten.'
	String get analyticsPublishPlan => 'We will release it before the developer\'s child starts kindergarten.';

	/// en: 'Confirmation of withdrawal from membership'
	String get deleteAccountConfirmTitle => 'Confirmation of withdrawal from membership';

	/// en: 'Are you sure you want to cancel your membership? \Ўn this operation cannot be undone.'
	String get deleteAccountConfirmMessage => 'Are you sure you want to cancel your membership? \Ўn this operation cannot be undone.';

	/// en: 'Join Group'
	String get joinedGroupTitle => 'Join Group';

	/// en: 'I joined the group.'
	String get joinedGroupMessage => 'I joined the group.';

	/// en: 'The invitation link is incorrect.'
	String get joinGroupErrorMessageInvalidShareLink => 'The invitation link is incorrect.';

	/// en: 'I have already participated.'
	String get joinGroupErrorMessageJoinedGroup => 'I have already participated.';

	/// en: 'Invitation link has expired.'
	String get joinGroupErrorMessageInvalidDate => 'Invitation link has expired.';

	/// en: 'An authentication error has occurred.'
	String get joinGroupErrorMessageNotAuth => 'An authentication error has occurred.';

	/// en: 'The maximum number of participants (5) in the group has been reached.'
	String get joinGroupErrorMessageLimitOver => 'The maximum number of participants (5) in the group has been reached.';

	/// en: 'withdrawal'
	String get leave => 'withdrawal';

	/// en: 'selection'
	String get select => 'selection';

	/// en: 'Who do you want?'
	String get wanterName => 'Who do you want?';

	/// en: 'people who want something'
	String get wanterNameChipTitle => 'people who want something';

	/// en: 'You have reached your registration limit. \Please delete your ዄn-purchased items or change to a premium plan.'
	String get businessErrorMessageOverItemCount => 'You have reached your registration limit. \Please delete your ዄn-purchased items or change to a premium plan.';

	/// en: 'App Update'
	String get updateAppTitle => 'App Update';

	/// en: 'The latest version of the application has been released. \Would you like to go to the 팀n store?'
	String get updateAppMessage => 'The latest version of the application has been released. \Would you like to go to the 팀n store?';

	/// en: 'Go to Store'
	String get goStore => 'Go to Store';

	/// en: 'Purchased by'
	String get buyerName => 'Purchased by';

	/// en: 'treatment'
	String get howToUse => 'treatment';

	/// en: 'Release the limit on the number of want registrations.'
	String get joinPremiumGroup => 'Release the limit on the number of want registrations.';

	/// en: 'The limit on the number of want registrations has been released. (Unlimited)'
	String get joinedPremiumGroup => 'The limit on the number of want registrations has been released. (Unlimited)';

	/// en: 'Purchase Products'
	String get itemPurchase => 'Purchase Products';

	/// en: 'Purchasing an item will release the restrictions on the items you want to be able to register in the group you are viewing. \You can purchase up to 30 items for the free version.\nPrice:³³)${price:String} (${term:String} )'
	String itemLimitReleaseMessage({required String price, required String term}) => 'Purchasing an item will release the restrictions on the items you want to be able to register in the group you are viewing. \You can purchase up to 30 items for the free version.\nPrice:³³)${price} (${term} )';

	/// en: 'Purchase (¥)${price:String} )'
	String purchaseOkLabel({required String price}) => 'Purchase (¥)${price} )';

	/// en: 'indefinite'
	String get lifeful => 'indefinite';

	/// en: 'dark mode'
	String get darkMode => 'dark mode';

	/// en: 'light mode'
	String get lightMode => 'light mode';

	/// en: 'Purchase rate'
	String get purchaseRate => 'Purchase rate';

	/// en: 'Purchase rate (including planned)'
	String get purchaseRateAndPlan => 'Purchase rate (including planned)';

	/// en: '${percent:String}%'
	String formatPercent({required String percent}) => '${percent}%';

	/// en: 'Purchase price'
	String get purchasePrice => 'Purchase price';

	/// en: '${month:int}month'
	String formatMonth({required int month}) => '${month}month';

	/// en: '${molecule:int}/${denominator:int}'
	String formatFraction({required int molecule, required int denominator}) => '${molecule}/${denominator}';

	/// en: '${name:String}added what you want!'
	String notificationAddItemTitle({required String name}) => '${name}added what you want!';

	/// en: '${name:String}added what you want!'
	String notificationAddItemBody({required String name}) => '${name}added what you want!';

	/// en: 'push notification'
	String get pushNotification => 'push notification';

	/// en: 'Receive notifications when new items you want are added to the group'
	String get pushNotificationDescription => 'Receive notifications when new items you want are added to the group';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.start': return 'Start';
			case 'app.firstTime': return 'Click here if you are a first time user.';
			case 'app.accountLink': return 'Account Linkage';
			case 'app.contactUs': return 'Contact Us';
			case 'app.termOfService': return 'Terms of Use';
			case 'app.privacyPolicy': return 'Privacy Policy';
			case 'app.accountLinkDescTitle': return 'By linking your account, you will be able to use the following features';
			case 'app.accountLinkDescBodyCloudBackup': return 'Data backup to the cloud';
			case 'app.accountLinkDescBodyMultiDevice': return 'Simultaneous use on multiple terminals';
			case 'app.accountLinkDescBodyDataSend': return 'Data transfer due to device change';
			case 'app.onboardStartTitle': return 'Introduction.';
			case 'app.onboardStartMessage': return 'Register your profile first!';
			case 'app.questionAgeGroup': return 'What about you?';
			case 'app.questionSex': return 'Gender.';
			case 'app.questionName': return 'What is your name?';
			case 'app.questionNameCapiton': return 'or Nickname';
			case 'app.questionConfirm': return 'Is it correct?';
			case 'app.selectChild': return 'Children (Please buy)';
			case 'app.selectAdult': return 'Adult (I want to buy it for you)';
			case 'app.selectMan': return 'man\'s man';
			case 'app.selectWoman': return 'woman';
			case 'app.selectNeither': return 'Neither.';
			case 'app.nameLabel': return 'Name or Nickname';
			case 'app.name': return 'Name';
			case 'app.next': return 'Next.';
			case 'app.back': return 'return';
			case 'app.prev': return 'Previous';
			case 'app.skip': return 'skip';
			case 'app.sexMan': return 'man\'s man';
			case 'app.sexWoman': return 'woman';
			case 'app.sexNeither': return 'Neither.';
			case 'app.ageGroupChild': return 'children';
			case 'app.ageGroupAdult': return 'adult';
			case 'app.ageGroup': return 'age-group';
			case 'app.sex': return 'gender';
			case 'app.unset': return '<Unset';
			case 'app.requiredIcon': return '*';
			case 'app.requiredHelper': return '*Required fields';
			case 'app.signInWithGoogle': return 'Sign in with Google';
			case 'app.signInWithApple': return 'Sign in with Apple';
			case 'app.wishList': return 'wanted article';
			case 'app.analyze': return 'quid pro quo';
			case 'app.settings': return 'posing (a problem)';
			case 'app.addWishList': return 'Add what you want';
			case 'app.orderKeyName': return 'Name';
			case 'app.orderKeyWishRank': return 'degree of desirability';
			case 'app.orderKeyCreatedAt': return 'creation-day';
			case 'app.orderKeyUpdatedAt': return 'update date';
			case 'app.sortOrder': return 'sort';
			case 'app.sortOrderAsc': return 'ascending-order';
			case 'app.sortOrderDesc': return 'descending-order';
			case 'app.status': return 'status';
			case 'app.wishRank': return 'degree of desirability';
			case 'app.cancel': return 'cancel';
			case 'app.reset': return 'reset';
			case 'app.apply': return 'adoption';
			case 'app.notPurchased': return 'unpurchased';
			case 'app.purchasePlan': return 'Planned purchases';
			case 'app.purchased': return 'already bought';
			case 'app.all': return 'all';
			case 'app.noName': return 'nameless';
			case 'app.groupInitialNameSuffix': return ' group of';
			case 'app.unexpectedErrorMessage': return 'An unexpected error has occurred.';
			case 'app.searchEmptyMessage': return ({required String item}) => '${item}could not be found.';
			case 'app.merchandiseName': return 'trade (brand) name';
			case 'app.save': return 'preservation';
			case 'app.editPageTitle': return ({required String item}) => '${item}Edit the';
			case 'app.createPageTitle': return ({required String item}) => '${item}Create a';
			case 'app.wishSeasonLabel': return 'When do you want it?';
			case 'app.wishSeasonHint': return 'Examples: Christmas, birthdays';
			case 'app.url': return 'uniform resouce locator';
			case 'app.addUrl': return 'Add URL';
			case 'app.memo': return 'memo';
			case 'app.shoot': return 'take a picture';
			case 'app.chooseFromLibrary': return 'Select an image from the library';
			case 'app.star': return 'star';
			case 'app.delete': return 'deletion';
			case 'app.deletedMessage': return 'Deleted.';
			case 'app.completeDeleteMessage': return 'Deleted.';
			case 'app.completeChangeGroupMessage': return 'Switched groups.';
			case 'app.uploadImage': return 'Upload Photo';
			case 'app.lackOfPermission': return ({required String permission}) => '${permission}is not allowed';
			case 'app.confirmPermissionOffTitle': return ({required String permission}) => '${permission}to be turned off?';
			case 'app.confirmPermissionOffMessage': return ({required String permission}) => 'Open the Settings app and turn${permission} and turn off the';
			case 'app.permissionPhotos': return 'Gallery Access';
			case 'app.permissionCamera': return 'Access to the camera';
			case 'app.permissionPushNotification': return 'push notification';
			case 'app.permissionWarnMessage': return ({required String permission}) => 'Open the Settings app and${permission} Allow the';
			case 'app.openSettingsApp': return 'Open the Settings application';
			case 'app.ok': return 'OK';
			case 'app.confirmDiscardChangesTitle': return 'Discard changes?';
			case 'app.confirmDiscardChangesMessage': return 'All changes will be lost';
			case 'app.discard': return 'discard';
			case 'app.notDiscard': return 'not to be discarded';
			case 'app.validErrorMessageRequired': return 'Please fill in the required fields';
			case 'app.validErrorMessageUrlPattern': return 'Please enter the correct URL format';
			case 'app.edit': return 'editing';
			case 'app.purchaseOrpurchasePlan': return 'Purchase/plan to purchase';
			case 'app.deleteConfirmTitle': return 'Confirmation of deletion';
			case 'app.deleteCofirmMessage': return ({required String item}) => 'Do you want to delete "${item} Do you want to delete "?';
			case 'app.deleteGroupCofirmMessage': return ({required String name}) => 'Do you want to delete "${name} Do you want to delete "? \All the wants registered in the ߋn group will be deleted. \ɑnThis operation cannot be undone.';
			case 'app.leaveConfirmTitle': return 'Confirmation of withdrawal';
			case 'app.leaveCofirmMessage': return ({required String group}) => 'Do you want to leave the${group} Do you wish to leave the';
			case 'app.notSelectedGroupDialogTitle': return 'No group selected';
			case 'app.notSelectedGroupDialogMessage': return 'Please select a group and then add what you want';
			case 'app.purchaseInfoTitle': return 'Purchase/Purchase Information';
			case 'app.purchaseInfoCaption': return 'Subsequent content will only be visible to adults in the group';
			case 'app.price': return 'Amount of money';
			case 'app.purchasePlanDateTime': return 'Expected Date of Purchase';
			case 'app.yenMark': return '¥';
			case 'app.surprise': return 'surprise';
			case 'app.surpriseCaption': return 'I don\'t want my kids to know what\'s going on.';
			case 'app.purchasePlanDateTimeCaption': return 'Enter "To be purchased".';
			case 'app.sentAtCaption': return 'Entering the information will make it "Purchased".';
			case 'app.sentAt': return 'Date given';
			case 'app.authErrorMessage': return 'An authentication error has occurred. \Please log in after a few moments.';
			case 'app.account': return 'account';
			case 'app.profile': return 'Profile';
			case 'app.group': return 'group (usu. of people)';
			case 'app.help': return 'help';
			case 'app.developperTwitter': return 'Developer X (formerly Twitter)';
			case 'app.license': return 'License';
			case 'app.error': return 'error';
			case 'app.urlErrorMessageCanNotOpen': return 'Could not open URL. \Please contact us if this occurs frequently.';
			case 'app.joinGroup': return 'Participating Groups';
			case 'app.share': return 'share';
			case 'app.copy': return 'copy';
			case 'app.shareCaption': return 'Share and invite members!';
			case 'app.groupShareText': return ({required String user, required String group, required String url}) => '${user}from${group} You have been invited to \You can join the Wishlist group by clicking the URL below or scanning the QR code.${url}';
			case 'app.copied': return 'Copied.';
			case 'app.saved': return 'Saved in.';
			case 'app.groupName': return 'Group Name';
			case 'app.deleteErrorMessageRequiredExists': return 'You cannot delete all the groups you have created. \You must have at least one group.';
			case 'app.deleteErrorMessagePermission': return 'You are not authorized to delete.';
			case 'app.shareGroupHelpTitle': return 'Share/join groups';
			case 'app.shareGroupHelpMessage': return 'Please "Share" from the [Share Group] group.';
			case 'app.addGroup': return 'Add Group';
			case 'app.other': return 'Other';
			case 'app.logout': return 'logout';
			case 'app.deleteAccount': return 'withdrawal from a group';
			case 'app.google': return 'Google (WWW search engine)';
			case 'app.apple': return 'Apple';
			case 'app.notJoinedGroupMessage': return 'You do not belong to any group. \Please create a group or join a group to which you have been invited.';
			case 'app.deletedUser': return '<Deleted User>.';
			case 'app.selectNumberText': return ({required int length}) => '${length}selecting an option (from a test case, e.g. litmus test)';
			case 'app.authErrorMessageNotExistsProvider': return 'The account must be linked to one or more external accounts.';
			case 'app.authErrorMessagAlreadyInUse': return 'This account has already been linked. \Please use another account or log out once and link it.';
			case 'app.bullet': return 'interpoint (interword separation)';
			case 'app.notUseAnalytics': return 'Currently, the look-back function is not available.';
			case 'app.analyticsFeatureTitle': return 'The following functions are available in the Reflection function.';
			case 'app.priceAnalytics': return 'Change in Amount';
			case 'app.purchaseUserAnalytics': return 'Percentage of people who bought';
			case 'app.purchasedAnalytics': return 'Percentage of purchases made';
			case 'app.analyticsPublishPlan': return 'We will release it before the developer\'s child starts kindergarten.';
			case 'app.deleteAccountConfirmTitle': return 'Confirmation of withdrawal from membership';
			case 'app.deleteAccountConfirmMessage': return 'Are you sure you want to cancel your membership? \Ўn this operation cannot be undone.';
			case 'app.joinedGroupTitle': return 'Join Group';
			case 'app.joinedGroupMessage': return 'I joined the group.';
			case 'app.joinGroupErrorMessageInvalidShareLink': return 'The invitation link is incorrect.';
			case 'app.joinGroupErrorMessageJoinedGroup': return 'I have already participated.';
			case 'app.joinGroupErrorMessageInvalidDate': return 'Invitation link has expired.';
			case 'app.joinGroupErrorMessageNotAuth': return 'An authentication error has occurred.';
			case 'app.joinGroupErrorMessageLimitOver': return 'The maximum number of participants (5) in the group has been reached.';
			case 'app.leave': return 'withdrawal';
			case 'app.select': return 'selection';
			case 'app.wanterName': return 'Who do you want?';
			case 'app.wanterNameChipTitle': return 'people who want something';
			case 'app.businessErrorMessageOverItemCount': return 'You have reached your registration limit. \Please delete your ዄn-purchased items or change to a premium plan.';
			case 'app.updateAppTitle': return 'App Update';
			case 'app.updateAppMessage': return 'The latest version of the application has been released. \Would you like to go to the 팀n store?';
			case 'app.goStore': return 'Go to Store';
			case 'app.buyerName': return 'Purchased by';
			case 'app.howToUse': return 'treatment';
			case 'app.joinPremiumGroup': return 'Release the limit on the number of want registrations.';
			case 'app.joinedPremiumGroup': return 'The limit on the number of want registrations has been released. (Unlimited)';
			case 'app.itemPurchase': return 'Purchase Products';
			case 'app.itemLimitReleaseMessage': return ({required String price, required String term}) => 'Purchasing an item will release the restrictions on the items you want to be able to register in the group you are viewing. \You can purchase up to 30 items for the free version.\nPrice:³³)${price} (${term} )';
			case 'app.purchaseOkLabel': return ({required String price}) => 'Purchase (¥)${price} )';
			case 'app.lifeful': return 'indefinite';
			case 'app.darkMode': return 'dark mode';
			case 'app.lightMode': return 'light mode';
			case 'app.purchaseRate': return 'Purchase rate';
			case 'app.purchaseRateAndPlan': return 'Purchase rate (including planned)';
			case 'app.formatPercent': return ({required String percent}) => '${percent}%';
			case 'app.purchasePrice': return 'Purchase price';
			case 'app.formatMonth': return ({required int month}) => '${month}month';
			case 'app.formatFraction': return ({required int molecule, required int denominator}) => '${molecule}/${denominator}';
			case 'app.notificationAddItemTitle': return ({required String name}) => '${name}added what you want!';
			case 'app.notificationAddItemBody': return ({required String name}) => '${name}added what you want!';
			case 'app.pushNotification': return 'push notification';
			case 'app.pushNotificationDescription': return 'Receive notifications when new items you want are added to the group';
			default: return null;
		}
	}
}

