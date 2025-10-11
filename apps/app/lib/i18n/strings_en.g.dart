///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:packages_application/item.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/user.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAppEn app = _TranslationsAppEn._(_root);
	@override late final _TranslationsSettingsEn settings = _TranslationsSettingsEn._(_root);
}

// Path: app
class _TranslationsAppEn extends TranslationsAppJa {
	_TranslationsAppEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get start => 'Start';
	@override String get firstTime => 'Click here if you are a first time user.';
	@override String get accountLink => 'Account Linkage';
	@override String get contactUs => 'Contact Us';
	@override String get termOfService => 'Terms of Use';
	@override String get privacyPolicy => 'Privacy Policy';
	@override String get accountLinkDescTitle => 'By linking your account, you will be able to use the following features';
	@override String get accountLinkDescBodyCloudBackup => 'Data backup to the cloud';
	@override String get accountLinkDescBodyMultiDevice => 'Simultaneous use on multiple terminals';
	@override String get accountLinkDescBodyDataSend => 'Data transfer due to device change';
	@override String get onboardStartTitle => 'Introduction.';
	@override String get onboardStartMessage => 'Register your profile first!';
	@override String get questionAgeGroup => 'What about you?';
	@override String get questionSex => 'Gender.';
	@override String get questionName => 'What is your name?';
	@override String get questionNameCapiton => 'or Nickname';
	@override String get questionConfirm => 'Is it correct?';
	@override String get selectChild => 'Children (Please buy)';
	@override String get selectAdult => 'Adult (I want to buy it for you)';
	@override String get selectMan => 'man\'s man';
	@override String get selectWoman => 'woman';
	@override String get selectNeither => 'Neither.';
	@override String get nameLabel => 'Name or Nickname';
	@override String get name => 'Name';
	@override String get next => 'Next.';
	@override String get back => 'return';
	@override String get prev => 'Previous';
	@override String get skip => 'skip';
	@override String get sexMan => 'man\'s man';
	@override String get sexWoman => 'woman';
	@override String get sexNeither => 'Neither.';
	@override String get ageGroup => 'age-group';
	@override String get sex => 'gender';
	@override String get unset => '<Unset';
	@override String get requiredIcon => '*';
	@override String get requiredHelper => '*Required fields';
	@override String get signInWithGoogle => 'Sign in with Google';
	@override String get signInWithApple => 'Sign in with Apple';
	@override String get wishList => 'wanted article';
	@override String get analyze => 'quid pro quo';
	@override String get settings => 'posing (a problem)';
	@override String get addWishList => 'Add what you want';
	@override String get sortOrder => 'sort';
	@override String get status => 'status';
	@override String get wishRank => 'degree of desirability';
	@override String get cancel => 'cancel';
	@override String get reset => 'reset';
	@override String get apply => 'adoption';
	@override String get all => 'all';
	@override String get noName => 'nameless';
	@override String get groupInitialNameSuffix => ' group of';
	@override String get unexpectedErrorMessage => 'An unexpected error has occurred.';
	@override String searchEmptyMessage({required String item}) => '${item}could not be found.';
	@override String get merchandiseName => 'trade (brand) name';
	@override String get save => 'preservation';
	@override String editPageTitle({required String item}) => '${item}Edit the';
	@override String createPageTitle({required String item}) => '${item}Create a';
	@override String get wishSeasonLabel => 'When do you want it?';
	@override String get wishSeasonHint => 'Examples: Christmas, birthdays';
	@override String get url => 'uniform resouce locator';
	@override String get addUrl => 'Add URL';
	@override String get memo => 'memo';
	@override String get shoot => 'take a picture';
	@override String get chooseFromLibrary => 'Select an image from the library';
	@override String get star => 'star';
	@override String get delete => 'deletion';
	@override String get deletedMessage => 'Deleted.';
	@override String get completeDeleteMessage => 'Deleted.';
	@override String get completeChangeGroupMessage => 'Switched groups.';
	@override String get uploadImage => 'Upload Photo';
	@override String lackOfPermission({required String permission}) => '${permission}is not allowed';
	@override String confirmPermissionOffTitle({required String permission}) => '${permission}to be turned off?';
	@override String confirmPermissionOffMessage({required String permission}) => 'Open the Settings app and turn${permission} and turn off the';
	@override String get permissionPhotos => 'Gallery Access';
	@override String get permissionCamera => 'Access to the camera';
	@override String get permissionPushNotification => 'push notification';
	@override String permissionWarnMessage({required String permission}) => 'Open the Settings app and${permission} Allow the';
	@override String get openSettingsApp => 'Open the Settings application';
	@override String get ok => 'OK';
	@override String get confirmDiscardChangesTitle => 'Discard changes?';
	@override String get confirmDiscardChangesMessage => 'All changes will be lost';
	@override String get discard => 'discard';
	@override String get notDiscard => 'not to be discarded';
	@override String get validErrorMessageRequired => 'Please fill in the required fields';
	@override String get validErrorMessageUrlPattern => 'Please enter the correct URL format';
	@override String get edit => 'editing';
	@override String get purchaseOrpurchasePlan => 'Purchase/plan to purchase';
	@override String get deleteConfirmTitle => 'Confirmation of deletion';
	@override String deleteCofirmMessage({required String item}) => 'Do you want to delete "${item} Do you want to delete "?';
	@override String deleteGroupCofirmMessage({required String name}) => 'Do you want to delete "${name} Do you want to delete "? \All the wants registered in the ߋn group will be deleted. \ɑnThis operation cannot be undone.';
	@override String get leaveConfirmTitle => 'Confirmation of withdrawal';
	@override String leaveCofirmMessage({required String group}) => 'Do you want to leave the${group} Do you wish to leave the';
	@override String get notSelectedGroupDialogTitle => 'No group selected';
	@override String get notSelectedGroupDialogMessage => 'Please select a group and then add what you want';
	@override String get purchaseInfoTitle => 'Purchase/Purchase Information';
	@override String get purchaseInfoCaption => 'Subsequent content will only be visible to adults in the group';
	@override String get price => 'Amount of money';
	@override String get purchasePlanDateTime => 'Expected Date of Purchase';
	@override String get yenMark => '¥';
	@override String get surprise => 'surprise';
	@override String get surpriseCaption => 'I don\'t want my kids to know what\'s going on.';
	@override String get purchasePlanDateTimeCaption => 'Enter "To be purchased".';
	@override String get sentAtCaption => 'Entering the information will make it "Purchased".';
	@override String get sentAt => 'Date given';
	@override String get authErrorMessage => 'An authentication error has occurred. \Please log in after a few moments.';
	@override String get account => 'account';
	@override String get profile => 'Profile';
	@override String get group => 'group (usu. of people)';
	@override String get help => 'help';
	@override String get developperTwitter => 'Developer X (formerly Twitter)';
	@override String get license => 'License';
	@override String get error => 'error';
	@override String get urlErrorMessageCanNotOpen => 'Could not open URL. \Please contact us if this occurs frequently.';
	@override String get joinGroup => 'Participating Groups';
	@override String get share => 'share';
	@override String get copy => 'copy';
	@override String get shareCaption => 'Share and invite members!';
	@override String groupShareText({required String user, required String group, required String url}) => '${user}from${group} You have been invited to \You can join the Wishlist group by clicking the URL below or scanning the QR code.${url}';
	@override String get copied => 'Copied.';
	@override String get saved => 'Saved in.';
	@override String get groupName => 'Group Name';
	@override String get deleteErrorMessageRequiredExists => 'You cannot delete all the groups you have created. \You must have at least one group.';
	@override String get deleteErrorMessagePermission => 'You are not authorized to delete.';
	@override String get shareGroupHelpTitle => 'Share/join groups';
	@override String get shareGroupHelpMessage => 'Please "Share" from the [Share Group] group.';
	@override String get addGroup => 'Add Group';
	@override String get other => 'Other';
	@override String get logout => 'logout';
	@override String get deleteAccount => 'withdrawal from a group';
	@override String get google => 'Google (WWW search engine)';
	@override String get apple => 'Apple';
	@override String get notJoinedGroupMessage => 'You do not belong to any group. \Please create a group or join a group to which you have been invited.';
	@override String get deletedUser => '<Deleted User>.';
	@override String selectNumberText({required int length}) => '${length}selecting an option (from a test case, e.g. litmus test)';
	@override String get authErrorMessageNotExistsProvider => 'The account must be linked to one or more external accounts.';
	@override String get authErrorMessagAlreadyInUse => 'This account has already been linked. \Please use another account or log out once and link it.';
	@override String get bullet => 'interpoint (interword separation)';
	@override String get notUseAnalytics => 'Currently, the look-back function is not available.';
	@override String get analyticsFeatureTitle => 'The following functions are available in the Reflection function.';
	@override String get priceAnalytics => 'Change in Amount';
	@override String get purchaseUserAnalytics => 'Percentage of people who bought';
	@override String get purchasedAnalytics => 'Percentage of purchases made';
	@override String get analyticsPublishPlan => 'We will release it before the developer\'s child starts kindergarten.';
	@override String get deleteAccountConfirmTitle => 'Confirmation of withdrawal from membership';
	@override String get deleteAccountConfirmMessage => 'Are you sure you want to cancel your membership? \Ўn this operation cannot be undone.';
	@override String get joinedGroupTitle => 'Join Group';
	@override String get joinedGroupMessage => 'I joined the group.';
	@override String get joinGroupErrorMessageInvalidShareLink => 'The invitation link is incorrect.';
	@override String get joinGroupErrorMessageJoinedGroup => 'I have already participated.';
	@override String get joinGroupErrorMessageInvalidDate => 'Invitation link has expired.';
	@override String get joinGroupErrorMessageNotAuth => 'An authentication error has occurred.';
	@override String get joinGroupErrorMessageLimitOver => 'The maximum number of participants (5) in the group has been reached.';
	@override String get leave => 'withdrawal';
	@override String get select => 'selection';
	@override String get wanterName => 'Who do you want?';
	@override String get wanterNameChipTitle => 'people who want something';
	@override String get businessErrorMessageOverItemCount => 'You have reached your registration limit. \Please delete your ዄn-purchased items or change to a premium plan.';
	@override String get updateAppTitle => 'App Update';
	@override String get updateAppMessage => 'The latest version of the application has been released. \Would you like to go to the 팀n store?';
	@override String get goStore => 'Go to Store';
	@override String get buyerName => 'Purchased by';
	@override String get howToUse => 'treatment';
	@override String get joinPremiumGroup => 'Release the limit on the number of want registrations.';
	@override String get joinedPremiumGroup => 'The limit on the number of want registrations has been released. (Unlimited)';
	@override String get itemPurchase => 'Purchase Products';
	@override String itemLimitReleaseMessage({required String price, required String term}) => 'Purchasing an item will release the restrictions on the items you want to be able to register in the group you are viewing. \You can purchase up to 30 items for the free version.\nPrice:³³)${price} (${term} )';
	@override String purchaseOkLabel({required String price}) => 'Purchase (¥)${price} )';
	@override String get lifeful => 'indefinite';
	@override String get darkMode => 'dark mode';
	@override String get lightMode => 'light mode';
	@override String get purchaseRate => 'Purchase rate';
	@override String get purchaseRateAndPlan => 'Purchase rate (including planned)';
	@override String formatPercent({required String percent}) => '${percent}%';
	@override String get purchasePrice => 'Purchase price';
	@override String formatMonth({required int month}) => '${month}month';
	@override String formatFraction({required int molecule, required int denominator}) => '${molecule}/${denominator}';
	@override String notificationAddItemTitle({required String name}) => '${name}added what you want!';
	@override String notificationAddItemBody({required String name}) => '${name}added what you want!';
	@override String get pushNotification => 'push notification';
	@override String get pushNotificationDescription => 'Receive notifications when new items you want are added to the group';
	@override String get purchased => 'already bought';
}

// Path: settings
class _TranslationsSettingsEn extends TranslationsSettingsJa {
	_TranslationsSettingsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsSettingsPageEn settingsPage = _TranslationsSettingsSettingsPageEn._(_root);
	@override late final _TranslationsSettingsAccountPageEn accountPage = _TranslationsSettingsAccountPageEn._(_root);
}

// Path: settings.settingsPage
class _TranslationsSettingsSettingsPageEn extends TranslationsSettingsSettingsPageJa {
	_TranslationsSettingsSettingsPageEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override late final _TranslationsSettingsSettingsPageAccountEn account = _TranslationsSettingsSettingsPageAccountEn._(_root);
	@override late final _TranslationsSettingsSettingsPageLayoutEn layout = _TranslationsSettingsSettingsPageLayoutEn._(_root);
	@override late final _TranslationsSettingsSettingsPageHelpEn help = _TranslationsSettingsSettingsPageHelpEn._(_root);
}

// Path: settings.accountPage
class _TranslationsSettingsAccountPageEn extends TranslationsSettingsAccountPageJa {
	_TranslationsSettingsAccountPageEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Account';
	@override late final _TranslationsSettingsAccountPageLinkEn link = _TranslationsSettingsAccountPageLinkEn._(_root);
	@override late final _TranslationsSettingsAccountPageOtherEn other = _TranslationsSettingsAccountPageOtherEn._(_root);
	@override late final _TranslationsSettingsAccountPageLeaveConfirmDialogEn leaveConfirmDialog = _TranslationsSettingsAccountPageLeaveConfirmDialogEn._(_root);
}

// Path: settings.settingsPage.account
class _TranslationsSettingsSettingsPageAccountEn extends TranslationsSettingsSettingsPageAccountJa {
	_TranslationsSettingsSettingsPageAccountEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get head => 'Account';
	@override String get account => 'Account';
}

// Path: settings.settingsPage.layout
class _TranslationsSettingsSettingsPageLayoutEn extends TranslationsSettingsSettingsPageLayoutJa {
	_TranslationsSettingsSettingsPageLayoutEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get haed => 'Layout';
	@override String get uiStyle => 'UI Style';
	@override String get themeMode => 'ThemeMode';
	@override String get colorTheme => 'Colors';
}

// Path: settings.settingsPage.help
class _TranslationsSettingsSettingsPageHelpEn extends TranslationsSettingsSettingsPageHelpJa {
	_TranslationsSettingsSettingsPageHelpEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get head => 'Help';
	@override String get howToUse => 'HowToUse';
	@override String get contactUs => 'Contact us';
	@override String get developperTwitter => 'Developper';
	@override String get privacyPollicy => 'PrivacyPollicy';
	@override String get licencse => 'License';
}

// Path: settings.accountPage.link
class _TranslationsSettingsAccountPageLinkEn extends TranslationsSettingsAccountPageLinkJa {
	_TranslationsSettingsAccountPageLinkEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get head => 'Account link';
	@override String get google => 'Google';
	@override String get apple => 'Apple';
}

// Path: settings.accountPage.other
class _TranslationsSettingsAccountPageOtherEn extends TranslationsSettingsAccountPageOtherJa {
	_TranslationsSettingsAccountPageOtherEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get head => 'Other';
	@override String get logout => 'Logout';
	@override String get leave => 'Leave';
}

// Path: settings.accountPage.leaveConfirmDialog
class _TranslationsSettingsAccountPageLeaveConfirmDialogEn extends TranslationsSettingsAccountPageLeaveConfirmDialogJa {
	_TranslationsSettingsAccountPageLeaveConfirmDialogEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leave?';
	@override String get body => 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
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
			case 'app.sortOrder': return 'sort';
			case 'app.status': return 'status';
			case 'app.wishRank': return 'degree of desirability';
			case 'app.cancel': return 'cancel';
			case 'app.reset': return 'reset';
			case 'app.apply': return 'adoption';
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
			case 'app.purchased': return 'already bought';
			case 'settings.settingsPage.title': return 'Settings';
			case 'settings.settingsPage.account.head': return 'Account';
			case 'settings.settingsPage.account.account': return 'Account';
			case 'settings.settingsPage.layout.haed': return 'Layout';
			case 'settings.settingsPage.layout.uiStyle': return 'UI Style';
			case 'settings.settingsPage.layout.themeMode': return 'ThemeMode';
			case 'settings.settingsPage.layout.colorTheme': return 'Colors';
			case 'settings.settingsPage.help.head': return 'Help';
			case 'settings.settingsPage.help.howToUse': return 'HowToUse';
			case 'settings.settingsPage.help.contactUs': return 'Contact us';
			case 'settings.settingsPage.help.developperTwitter': return 'Developper';
			case 'settings.settingsPage.help.privacyPollicy': return 'PrivacyPollicy';
			case 'settings.settingsPage.help.licencse': return 'License';
			case 'settings.accountPage.title': return 'Account';
			case 'settings.accountPage.link.head': return 'Account link';
			case 'settings.accountPage.link.google': return 'Google';
			case 'settings.accountPage.link.apple': return 'Apple';
			case 'settings.accountPage.other.head': return 'Other';
			case 'settings.accountPage.other.logout': return 'Logout';
			case 'settings.accountPage.other.leave': return 'Leave';
			case 'settings.accountPage.leaveConfirmDialog.title': return 'Leave?';
			case 'settings.accountPage.leaveConfirmDialog.body': return 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
			default: return null;
		}
	}
}

