// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get start => 'Start';

  @override
  String get firstTime => 'Click here if you are a first time user.';

  @override
  String get accountLink => 'Account Linkage';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get termOfService => 'Terms of Use';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get accountLinkDescTitle =>
      'By linking your account, you will be able to use the following features';

  @override
  String get accountLinkDescBodyCloudBackup => 'Data backup to the cloud';

  @override
  String get accountLinkDescBodyMultiDevice =>
      'Simultaneous use on multiple terminals';

  @override
  String get accountLinkDescBodyDataSend =>
      'Data transfer due to device change';

  @override
  String get onboardStartTitle => 'Introduction.';

  @override
  String get onboardStartMessage => 'Register your profile first!';

  @override
  String get questionAgeGroup => 'What about you?';

  @override
  String get questionSex => 'Gender.';

  @override
  String get questionName => 'What is your name?';

  @override
  String get questionNameCapiton => 'or Nickname';

  @override
  String get questionConfirm => 'Is it correct?';

  @override
  String get selectChild => 'Children (Please buy)';

  @override
  String get selectAdult => 'Adult (I want to buy it for you)';

  @override
  String get selectMan => 'man\'s man';

  @override
  String get selectWoman => 'woman';

  @override
  String get selectNeither => 'Neither.';

  @override
  String get nameLabel => 'Name or Nickname';

  @override
  String get name => 'Name';

  @override
  String get next => 'Next.';

  @override
  String get back => 'return';

  @override
  String get prev => 'Previous';

  @override
  String get skip => 'skip';

  @override
  String get sexMan => 'man\'s man';

  @override
  String get sexWoman => 'woman';

  @override
  String get sexNeither => 'Neither.';

  @override
  String get ageGroupChild => 'children';

  @override
  String get ageGroupAdult => 'adult';

  @override
  String get ageGroup => 'age-group';

  @override
  String get sex => 'gender';

  @override
  String get unset => '<Unset';

  @override
  String get requiredIcon => '*';

  @override
  String get requiredHelper => '*Required fields';

  @override
  String get signInWithGoogle => 'Sign in with Google';

  @override
  String get signInWithApple => 'Sign in with Apple';

  @override
  String get wishList => 'wanted article';

  @override
  String get analyze => 'quid pro quo';

  @override
  String get settings => 'posing (a problem)';

  @override
  String get addWishList => 'Add what you want';

  @override
  String get orderKeyName => 'Name';

  @override
  String get orderKeyWishRank => 'degree of desirability';

  @override
  String get orderKeyCreatedAt => 'creation-day';

  @override
  String get orderKeyUpdatedAt => 'update date';

  @override
  String get sortOrder => 'sort';

  @override
  String get sortOrderAsc => 'ascending-order';

  @override
  String get sortOrderDesc => 'descending-order';

  @override
  String get status => 'status';

  @override
  String get wishRank => 'degree of desirability';

  @override
  String get cancel => 'cancel';

  @override
  String get reset => 'reset';

  @override
  String get apply => 'adoption';

  @override
  String get notPurchased => 'unpurchased';

  @override
  String get purchasePlan => 'Planned purchases';

  @override
  String get purchased => 'already bought';

  @override
  String get all => 'all';

  @override
  String get noName => 'nameless';

  @override
  String get groupInitialNameSuffix => ' group of';

  @override
  String get unexpectedErrorMessage => 'An unexpected error has occurred.';

  @override
  String searchEmptyMessage(String item) {
    return '${item}could not be found.';
  }

  @override
  String get merchandiseName => 'trade (brand) name';

  @override
  String get save => 'preservation';

  @override
  String editPageTitle(String item) {
    return '${item}Edit the';
  }

  @override
  String createPageTitle(Object item) {
    return '${item}Create a';
  }

  @override
  String get wishSeasonLabel => 'When do you want it?';

  @override
  String get wishSeasonHint => 'Examples: Christmas, birthdays';

  @override
  String get url => 'uniform resouce locator';

  @override
  String get addUrl => 'Add URL';

  @override
  String get memo => 'memo';

  @override
  String get shoot => 'take a picture';

  @override
  String get chooseFromLibrary => 'Select an image from the library';

  @override
  String get star => 'star';

  @override
  String get delete => 'deletion';

  @override
  String get deletedMessage => 'Deleted.';

  @override
  String get completeDeleteMessage => 'Deleted.';

  @override
  String get completeChangeGroupMessage => 'Switched groups.';

  @override
  String get uploadImage => 'Upload Photo';

  @override
  String lackOfPermission(Object permission) {
    return '${permission}is not allowed';
  }

  @override
  String confirmPermissionOffTitle(Object permission) {
    return '${permission}to be turned off?';
  }

  @override
  String confirmPermissionOffMessage(Object permission) {
    return 'Open the Settings app and turn$permission and turn off the';
  }

  @override
  String get permissionPhotos => 'Gallery Access';

  @override
  String get permissionCamera => 'Access to the camera';

  @override
  String get permissionPushNotification => 'push notification';

  @override
  String permissionWarnMessage(Object permission) {
    return 'Open the Settings app and$permission Allow the';
  }

  @override
  String get openSettingsApp => 'Open the Settings application';

  @override
  String get ok => 'OK';

  @override
  String get confirmDiscardChangesTitle => 'Discard changes?';

  @override
  String get confirmDiscardChangesMessage => 'All changes will be lost';

  @override
  String get discard => 'discard';

  @override
  String get notDiscard => 'not to be discarded';

  @override
  String get validErrorMessageRequired => 'Please fill in the required fields';

  @override
  String get validErrorMessageUrlPattern =>
      'Please enter the correct URL format';

  @override
  String get edit => 'editing';

  @override
  String get purchaseOrpurchasePlan => 'Purchase/plan to purchase';

  @override
  String get deleteConfirmTitle => 'Confirmation of deletion';

  @override
  String deleteCofirmMessage(Object item) {
    return 'Do you want to delete \"$item Do you want to delete \"?';
  }

  @override
  String deleteGroupCofirmMessage(Object name) {
    return 'Do you want to delete \"$name Do you want to delete \"? \\All the wants registered in the ߋn group will be deleted. \\ɑnThis operation cannot be undone.';
  }

  @override
  String get leaveConfirmTitle => 'Confirmation of withdrawal';

  @override
  String leaveCofirmMessage(Object group) {
    return 'Do you want to leave the$group Do you wish to leave the';
  }

  @override
  String get notSelectedGroupDialogTitle => 'No group selected';

  @override
  String get notSelectedGroupDialogMessage =>
      'Please select a group and then add what you want';

  @override
  String get purchaseInfoTitle => 'Purchase/Purchase Information';

  @override
  String get purchaseInfoCaption =>
      'Subsequent content will only be visible to adults in the group';

  @override
  String get price => 'Amount of money';

  @override
  String get purchasePlanDateTime => 'Expected Date of Purchase';

  @override
  String get yenMark => '¥';

  @override
  String get surprise => 'surprise';

  @override
  String get surpriseCaption =>
      'I don\'t want my kids to know what\'s going on.';

  @override
  String get purchasePlanDateTimeCaption => 'Enter \"To be purchased\".';

  @override
  String get sentAtCaption =>
      'Entering the information will make it \"Purchased\".';

  @override
  String get sentAt => 'Date given';

  @override
  String get authErrorMessage =>
      'An authentication error has occurred. \\Please log in after a few moments.';

  @override
  String get account => 'account';

  @override
  String get profile => 'Profile';

  @override
  String get group => 'group (usu. of people)';

  @override
  String get help => 'help';

  @override
  String get developperTwitter => 'Developer X (formerly Twitter)';

  @override
  String get license => 'License';

  @override
  String get error => 'error';

  @override
  String get urlErrorMessageCanNotOpen =>
      'Could not open URL. \\Please contact us if this occurs frequently.';

  @override
  String get joinGroup => 'Participating Groups';

  @override
  String get share => 'share';

  @override
  String get copy => 'copy';

  @override
  String get shareCaption => 'Share and invite members!';

  @override
  String groupShareText(Object user, Object group, Object url) {
    return '${user}from$group You have been invited to \\You can join the Wishlist group by clicking the URL below or scanning the QR code.$url';
  }

  @override
  String get copied => 'Copied.';

  @override
  String get saved => 'Saved in.';

  @override
  String get groupName => 'Group Name';

  @override
  String get deleteErrorMessageRequiredExists =>
      'You cannot delete all the groups you have created. \\You must have at least one group.';

  @override
  String get deleteErrorMessagePermission =>
      'You are not authorized to delete.';

  @override
  String get shareGroupHelpTitle => 'Share/join groups';

  @override
  String get shareGroupHelpMessage =>
      'Please \"Share\" from the [Share Group] group.';

  @override
  String get addGroup => 'Add Group';

  @override
  String get other => 'Other';

  @override
  String get logout => 'logout';

  @override
  String get deleteAccount => 'withdrawal from a group';

  @override
  String get google => 'Google (WWW search engine)';

  @override
  String get apple => 'Apple';

  @override
  String get notJoinedGroupMessage =>
      'You do not belong to any group. \\Please create a group or join a group to which you have been invited.';

  @override
  String get deletedUser => '<Deleted User>.';

  @override
  String selectNumberText(Object length) {
    return '${length}selecting an option (from a test case, e.g. litmus test)';
  }

  @override
  String get authErrorMessageNotExistsProvider =>
      'The account must be linked to one or more external accounts.';

  @override
  String get authErrorMessagAlreadyInUse =>
      'This account has already been linked. \\Please use another account or log out once and link it.';

  @override
  String get bullet => 'interpoint (interword separation)';

  @override
  String get notUseAnalytics =>
      'Currently, the look-back function is not available.';

  @override
  String get analyticsFeatureTitle =>
      'The following functions are available in the Reflection function.';

  @override
  String get priceAnalytics => 'Change in Amount';

  @override
  String get purchaseUserAnalytics => 'Percentage of people who bought';

  @override
  String get purchasedAnalytics => 'Percentage of purchases made';

  @override
  String get analyticsPublishPlan =>
      'We will release it before the developer\'s child starts kindergarten.';

  @override
  String get deleteAccountConfirmTitle =>
      'Confirmation of withdrawal from membership';

  @override
  String get deleteAccountConfirmMessage =>
      'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';

  @override
  String get joinedGroupTitle => 'Join Group';

  @override
  String get joinedGroupMessage => 'I joined the group.';

  @override
  String get joinGroupErrorMessageInvalidShareLink =>
      'The invitation link is incorrect.';

  @override
  String get joinGroupErrorMessageJoinedGroup => 'I have already participated.';

  @override
  String get joinGroupErrorMessageInvalidDate => 'Invitation link has expired.';

  @override
  String get joinGroupErrorMessageNotAuth =>
      'An authentication error has occurred.';

  @override
  String get joinGroupErrorMessageLimitOver =>
      'The maximum number of participants (5) in the group has been reached.';

  @override
  String get leave => 'withdrawal';

  @override
  String get select => 'selection';

  @override
  String get wanterName => 'Who do you want?';

  @override
  String get wanterNameChipTitle => 'people who want something';

  @override
  String get businessErrorMessageOverItemCount =>
      'You have reached your registration limit. \\Please delete your ዄn-purchased items or change to a premium plan.';

  @override
  String get updateAppTitle => 'App Update';

  @override
  String get updateAppMessage =>
      'The latest version of the application has been released. \\Would you like to go to the 팀n store?';

  @override
  String get goStore => 'Go to Store';

  @override
  String get buyerName => 'Purchased by';

  @override
  String get howToUse => 'treatment';

  @override
  String get joinPremiumGroup =>
      'Release the limit on the number of want registrations.';

  @override
  String get joinedPremiumGroup =>
      'The limit on the number of want registrations has been released. (Unlimited)';

  @override
  String get itemPurchase => 'Purchase Products';

  @override
  String itemLimitReleaseMessage(Object term, Object price) {
    return 'Purchasing an item will release the restrictions on the items you want to be able to register in the group you are viewing. \\You can purchase up to 30 items for the free version.\\nPrice:³³)$price ($term )';
  }

  @override
  String purchaseOkLabel(Object price) {
    return 'Purchase (¥)$price )';
  }

  @override
  String get lifeful => 'indefinite';

  @override
  String get darkMode => 'dark mode';

  @override
  String get lightMode => 'light mode';

  @override
  String get purchaseRate => 'Purchase rate';

  @override
  String get purchaseRateAndPlan => 'Purchase rate (including planned)';

  @override
  String formatPercent(Object num) {
    return '$num%';
  }

  @override
  String get purchasePrice => 'Purchase price';

  @override
  String formatMonth(Object month) {
    return '${month}month';
  }

  @override
  String formatFraction(Object molecule, Object denominator) {
    return '$molecule/$denominator';
  }

  @override
  String notificationAddItemTitle(Object name) {
    return '${name}added what you want!';
  }

  @override
  String notificationAddItemBody(Object name) {
    return '${name}added what you want!';
  }

  @override
  String get pushNotification => 'push notification';

  @override
  String get pushNotificationDescription =>
      'Receive notifications when new items you want are added to the group';
}
