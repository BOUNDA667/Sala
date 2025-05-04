import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('zh')
  ];

  /// No description provided for @helloWorld.
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @flutter_demo_home_page.
  ///
  /// In en, this message translates to:
  /// **'Flutter Demo Home Page'**
  String get flutter_demo_home_page;

  /// No description provided for @flutter_demo.
  ///
  /// In en, this message translates to:
  /// **'Flutter Demo'**
  String get flutter_demo;

  /// No description provided for @pushed_button_text.
  ///
  /// In en, this message translates to:
  /// **'You have pushed the button this many times:'**
  String get pushed_button_text;

  /// No description provided for @increment.
  ///
  /// In en, this message translates to:
  /// **'Increment'**
  String get increment;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUse;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appVersion;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logout;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @veryWeak.
  ///
  /// In en, this message translates to:
  /// **'Very Weak'**
  String get veryWeak;

  /// No description provided for @weak.
  ///
  /// In en, this message translates to:
  /// **'Weak'**
  String get weak;

  /// No description provided for @moderate.
  ///
  /// In en, this message translates to:
  /// **'Moderate'**
  String get moderate;

  /// No description provided for @strong.
  ///
  /// In en, this message translates to:
  /// **'Strong'**
  String get strong;

  /// No description provided for @veryStrong.
  ///
  /// In en, this message translates to:
  /// **'Very Strong'**
  String get veryStrong;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @length.
  ///
  /// In en, this message translates to:
  /// **'Length'**
  String get length;

  /// No description provided for @uppercase.
  ///
  /// In en, this message translates to:
  /// **'Uppercase'**
  String get uppercase;

  /// No description provided for @lowercase.
  ///
  /// In en, this message translates to:
  /// **'Lowercase'**
  String get lowercase;

  /// No description provided for @numbers.
  ///
  /// In en, this message translates to:
  /// **'Numbers'**
  String get numbers;

  /// No description provided for @symbols.
  ///
  /// In en, this message translates to:
  /// **'Symbols'**
  String get symbols;

  /// No description provided for @generatePassword.
  ///
  /// In en, this message translates to:
  /// **'Generate password'**
  String get generatePassword;

  /// No description provided for @generate.
  ///
  /// In en, this message translates to:
  /// **'Generate'**
  String get generate;

  /// No description provided for @copyToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy to clipboard'**
  String get copyToClipboard;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @passwordManager.
  ///
  /// In en, this message translates to:
  /// **'Password Management'**
  String get passwordManager;

  /// No description provided for @passwordGenerator.
  ///
  /// In en, this message translates to:
  /// **'Password Generator'**
  String get passwordGenerator;

  /// No description provided for @passwordGeneratorDescription.
  ///
  /// In en, this message translates to:
  /// **'Create ultra-secure passwords.'**
  String get passwordGeneratorDescription;

  /// No description provided for @securityChecker.
  ///
  /// In en, this message translates to:
  /// **'Security Checker'**
  String get securityChecker;

  /// No description provided for @securityCheckerDescription.
  ///
  /// In en, this message translates to:
  /// **'Analyze the strength of your passwords.'**
  String get securityCheckerDescription;

  /// No description provided for @storageAndSharing.
  ///
  /// In en, this message translates to:
  /// **'Storage and Sharing'**
  String get storageAndSharing;

  /// No description provided for @secureNotes.
  ///
  /// In en, this message translates to:
  /// **'Secure Notes'**
  String get secureNotes;

  /// No description provided for @secureNotesDescription.
  ///
  /// In en, this message translates to:
  /// **'Safely store your sensitive information.'**
  String get secureNotesDescription;

  /// No description provided for @secureAutofill.
  ///
  /// In en, this message translates to:
  /// **'Secure Autofill'**
  String get secureAutofill;

  /// No description provided for @secureAutofillDescription.
  ///
  /// In en, this message translates to:
  /// **'Automatically fill in your credentials on websites.'**
  String get secureAutofillDescription;

  /// No description provided for @secureQRCode.
  ///
  /// In en, this message translates to:
  /// **'Secure QR Code'**
  String get secureQRCode;

  /// No description provided for @secureQRCodeDescription.
  ///
  /// In en, this message translates to:
  /// **'Share your passwords securely.'**
  String get secureQRCodeDescription;

  /// No description provided for @securityAndMonitoring.
  ///
  /// In en, this message translates to:
  /// **'Security and Monitoring'**
  String get securityAndMonitoring;

  /// No description provided for @twoFactorAuth.
  ///
  /// In en, this message translates to:
  /// **'2FA Authentication'**
  String get twoFactorAuth;

  /// No description provided for @twoFactorAuthDescription.
  ///
  /// In en, this message translates to:
  /// **'Add an extra layer of security.'**
  String get twoFactorAuthDescription;

  /// No description provided for @leakDetector.
  ///
  /// In en, this message translates to:
  /// **'Leak Detector'**
  String get leakDetector;

  /// No description provided for @leakDetectorDescription.
  ///
  /// In en, this message translates to:
  /// **'Check if your credentials have been compromised.'**
  String get leakDetectorDescription;

  /// No description provided for @darkWebMonitoring.
  ///
  /// In en, this message translates to:
  /// **'Dark Web Monitoring'**
  String get darkWebMonitoring;

  /// No description provided for @darkWebMonitoringDescription.
  ///
  /// In en, this message translates to:
  /// **'Monitor if your data is circulating on the dark web.'**
  String get darkWebMonitoringDescription;

  /// No description provided for @panicMode.
  ///
  /// In en, this message translates to:
  /// **'Panic Mode'**
  String get panicMode;

  /// No description provided for @panicModeDescription.
  ///
  /// In en, this message translates to:
  /// **'Quickly erase all your data in case of emergency.'**
  String get panicModeDescription;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get myProfile;

  /// No description provided for @seeAndEditProfile.
  ///
  /// In en, this message translates to:
  /// **'View and edit your profile'**
  String get seeAndEditProfile;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @updateYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Update your password'**
  String get updateYourPassword;

  /// No description provided for @setupTwoFactorAuth.
  ///
  /// In en, this message translates to:
  /// **'Set up two-factor authentication'**
  String get setupTwoFactorAuth;

  /// No description provided for @lightDark.
  ///
  /// In en, this message translates to:
  /// **'Light / Dark'**
  String get lightDark;

  /// No description provided for @legalNotices.
  ///
  /// In en, this message translates to:
  /// **'Legal Notices'**
  String get legalNotices;

  /// No description provided for @viewLegalNotices.
  ///
  /// In en, this message translates to:
  /// **'View legal notices'**
  String get viewLegalNotices;

  /// No description provided for @currentLanguage.
  ///
  /// In en, this message translates to:
  /// **'Current Language'**
  String get currentLanguage;

  /// No description provided for @accountSettings.
  ///
  /// In en, this message translates to:
  /// **'Account Settings'**
  String get accountSettings;

  /// No description provided for @anonymous_provider_disabled.
  ///
  /// In en, this message translates to:
  /// **'Anonymous sign-ins are disabled.'**
  String get anonymous_provider_disabled;

  /// No description provided for @bad_code_verifier.
  ///
  /// In en, this message translates to:
  /// **'Returned from the PKCE flow where the provided code verifier does not match the expected one. Indicates a bug in the client library implementation.'**
  String get bad_code_verifier;

  /// No description provided for @bad_json.
  ///
  /// In en, this message translates to:
  /// **'Usually used when the HTTP body of the request is not valid JSON.'**
  String get bad_json;

  /// No description provided for @bad_jwt.
  ///
  /// In en, this message translates to:
  /// **'JWT sent in the Authorization header is not valid.'**
  String get bad_jwt;

  /// No description provided for @bad_oauth_callback.
  ///
  /// In en, this message translates to:
  /// **'OAuth callback from provider to Auth does not have all the required attributes (state). Indicates an issue with the OAuth provider or client library implementation.'**
  String get bad_oauth_callback;

  /// No description provided for @bad_oauth_state.
  ///
  /// In en, this message translates to:
  /// **'OAuth state (data echoed back by the OAuth provider to Supabase Auth) is not in the correct format. Indicates an issue with the OAuth provider integration.'**
  String get bad_oauth_state;

  /// No description provided for @captcha_failed.
  ///
  /// In en, this message translates to:
  /// **'Captcha challenge could not be verified with the captcha provider. Check your captcha integration.'**
  String get captcha_failed;

  /// No description provided for @conflict.
  ///
  /// In en, this message translates to:
  /// **'General database conflict, such as concurrent requests on resources that should not be modified concurrently. Can often occur when too many session refresh requests fire at the same time. Check your app for concurrency issues.'**
  String get conflict;

  /// No description provided for @email_address_invalid.
  ///
  /// In en, this message translates to:
  /// **'The email address is invalid or uses an unsupported test domain. Please use a different email address.'**
  String get email_address_invalid;

  /// No description provided for @email_address_not_authorized.
  ///
  /// In en, this message translates to:
  /// **'Email sending is not allowed for this address as your project is using the default SMTP service. Emails can only be sent to members in your Supabase organization. If you want to send emails to others, please set up a custom SMTP provider.'**
  String get email_address_not_authorized;

  /// No description provided for @email_conflict_identity_not_deletable.
  ///
  /// In en, this message translates to:
  /// **'Unlinking this identity causes the user\'s account to change to an email address which is already used by another account. This indicates the user has two different accounts with different primary email addresses. You may need to migrate user data.'**
  String get email_conflict_identity_not_deletable;

  /// No description provided for @email_exists.
  ///
  /// In en, this message translates to:
  /// **'Email address already exists in the system.'**
  String get email_exists;

  /// No description provided for @email_not_confirmed.
  ///
  /// In en, this message translates to:
  /// **'Signing in is not allowed for this user as the email address is not confirmed.'**
  String get email_not_confirmed;

  /// No description provided for @email_provider_disabled.
  ///
  /// In en, this message translates to:
  /// **'Signups are disabled for email and password.'**
  String get email_provider_disabled;

  /// No description provided for @flow_state_expired.
  ///
  /// In en, this message translates to:
  /// **'PKCE flow state related to the API request has expired. Ask the user to sign in again.'**
  String get flow_state_expired;

  /// No description provided for @flow_state_not_found.
  ///
  /// In en, this message translates to:
  /// **'PKCE flow state related to the API request no longer exists. Flow states expire over time and are cleaned up, so ask the user to sign in again.'**
  String get flow_state_not_found;

  /// No description provided for @hook_payload_invalid_content_type.
  ///
  /// In en, this message translates to:
  /// **'Payload from Auth does not have a valid Content-Type header.'**
  String get hook_payload_invalid_content_type;

  /// No description provided for @hook_payload_over_size_limit.
  ///
  /// In en, this message translates to:
  /// **'Payload from Auth exceeds the maximum size limit.'**
  String get hook_payload_over_size_limit;

  /// No description provided for @hook_timeout.
  ///
  /// In en, this message translates to:
  /// **'Unable to reach hook within the maximum time allocated.'**
  String get hook_timeout;

  /// No description provided for @hook_timeout_after_retry.
  ///
  /// In en, this message translates to:
  /// **'Unable to reach hook after the maximum number of retries.'**
  String get hook_timeout_after_retry;

  /// No description provided for @identity_already_exists.
  ///
  /// In en, this message translates to:
  /// **'The identity related to the API request is already linked to a user.'**
  String get identity_already_exists;

  /// No description provided for @identity_not_found.
  ///
  /// In en, this message translates to:
  /// **'The identity related to the API call does not exist, such as when an identity is unlinked or deleted.'**
  String get identity_not_found;

  /// No description provided for @insufficient_aal.
  ///
  /// In en, this message translates to:
  /// **'To call this API, the user must have a higher Authenticator Assurance Level. Ask the user to solve an MFA challenge.'**
  String get insufficient_aal;

  /// No description provided for @invite_not_found.
  ///
  /// In en, this message translates to:
  /// **'Invite is expired or already used.'**
  String get invite_not_found;

  /// No description provided for @invalid_credentials.
  ///
  /// In en, this message translates to:
  /// **'Login credentials or grant type not recognized.'**
  String get invalid_credentials;

  /// No description provided for @manual_linking_disabled.
  ///
  /// In en, this message translates to:
  /// **'Manual linking (linkUser) is not enabled on the Auth server.'**
  String get manual_linking_disabled;

  /// No description provided for @mfa_challenge_expired.
  ///
  /// In en, this message translates to:
  /// **'MFA challenge has expired. Request a new challenge when encountering this error.'**
  String get mfa_challenge_expired;

  /// No description provided for @mfa_factor_name_conflict.
  ///
  /// In en, this message translates to:
  /// **'MFA factors for a single user should not have the same friendly name.'**
  String get mfa_factor_name_conflict;

  /// No description provided for @mfa_factor_not_found.
  ///
  /// In en, this message translates to:
  /// **'MFA factor no longer exists.'**
  String get mfa_factor_not_found;

  /// No description provided for @mfa_ip_address_mismatch.
  ///
  /// In en, this message translates to:
  /// **'The enrollment process for MFA factors must begin and end with the same IP address.'**
  String get mfa_ip_address_mismatch;

  /// No description provided for @mfa_phone_enroll_not_enabled.
  ///
  /// In en, this message translates to:
  /// **'Enrollment of MFA phone factors is disabled.'**
  String get mfa_phone_enroll_not_enabled;

  /// No description provided for @mfa_phone_verify_not_enabled.
  ///
  /// In en, this message translates to:
  /// **'Login via phone factors and verification of new phone factors is disabled.'**
  String get mfa_phone_verify_not_enabled;

  /// No description provided for @mfa_totp_enroll_not_enabled.
  ///
  /// In en, this message translates to:
  /// **'Enrollment of MFA TOTP factors is disabled.'**
  String get mfa_totp_enroll_not_enabled;

  /// No description provided for @mfa_totp_verify_not_enabled.
  ///
  /// In en, this message translates to:
  /// **'Login via TOTP factors and verification of new TOTP factors is disabled.'**
  String get mfa_totp_verify_not_enabled;

  /// No description provided for @mfa_verification_failed.
  ///
  /// In en, this message translates to:
  /// **'MFA challenge could not be verified – wrong TOTP code.'**
  String get mfa_verification_failed;

  /// No description provided for @mfa_verification_rejected.
  ///
  /// In en, this message translates to:
  /// **'Further MFA verification is rejected. Returned only if the MFA verification hook returns a reject decision.'**
  String get mfa_verification_rejected;

  /// No description provided for @mfa_verified_factor_exists.
  ///
  /// In en, this message translates to:
  /// **'A verified phone factor already exists for the user. Unenroll the existing verified phone factor to continue.'**
  String get mfa_verified_factor_exists;

  /// No description provided for @mfa_web_authn_enroll_not_enabled.
  ///
  /// In en, this message translates to:
  /// **'Enrollment of MFA WebAuthn factors is disabled.'**
  String get mfa_web_authn_enroll_not_enabled;

  /// No description provided for @mfa_web_authn_verify_not_enabled.
  ///
  /// In en, this message translates to:
  /// **'Login via WebAuthn factors and verification of new WebAuthn factors is disabled.'**
  String get mfa_web_authn_verify_not_enabled;

  /// No description provided for @no_authorization.
  ///
  /// In en, this message translates to:
  /// **'This HTTP request requires an Authorization header, which is not provided.'**
  String get no_authorization;

  /// No description provided for @not_admin.
  ///
  /// In en, this message translates to:
  /// **'The user accessing the API is not admin; the JWT does not contain a role claim identifying them as an admin of the Auth server.'**
  String get not_admin;

  /// No description provided for @oauth_provider_not_supported.
  ///
  /// In en, this message translates to:
  /// **'Using an OAuth provider which is disabled on the Auth server.'**
  String get oauth_provider_not_supported;

  /// No description provided for @otp_disabled.
  ///
  /// In en, this message translates to:
  /// **'Sign in with OTPs (magic link, email OTP) is disabled. Check your server\'s configuration.'**
  String get otp_disabled;

  /// No description provided for @otp_expired.
  ///
  /// In en, this message translates to:
  /// **'OTP code for this sign-in has expired. Ask the user to sign in again.'**
  String get otp_expired;

  /// No description provided for @over_email_send_rate_limit.
  ///
  /// In en, this message translates to:
  /// **'Too many emails have been sent to this email address. Ask the user to wait a while before trying again.'**
  String get over_email_send_rate_limit;

  /// No description provided for @over_request_rate_limit.
  ///
  /// In en, this message translates to:
  /// **'Too many requests have been sent by this client (IP address). Ask the user to try again in a few minutes.'**
  String get over_request_rate_limit;

  /// No description provided for @over_sms_send_rate_limit.
  ///
  /// In en, this message translates to:
  /// **'Too many SMS messages have been sent to this phone number. Ask the user to wait a while before trying again.'**
  String get over_sms_send_rate_limit;

  /// No description provided for @phone_exists.
  ///
  /// In en, this message translates to:
  /// **'Phone number already exists in the system.'**
  String get phone_exists;

  /// No description provided for @phone_not_confirmed.
  ///
  /// In en, this message translates to:
  /// **'Signing in is not allowed for this user as the phone number is not confirmed.'**
  String get phone_not_confirmed;

  /// No description provided for @phone_provider_disabled.
  ///
  /// In en, this message translates to:
  /// **'Signups are disabled for phone and password.'**
  String get phone_provider_disabled;

  /// No description provided for @provider_disabled.
  ///
  /// In en, this message translates to:
  /// **'OAuth provider is disabled for use. Check your server\'s configuration.'**
  String get provider_disabled;

  /// No description provided for @provider_email_needs_verification.
  ///
  /// In en, this message translates to:
  /// **'Not all OAuth providers verify their user\'s email address. Supabase Auth requires email verification, so this error is sent when a verification email is sent after completing the OAuth flow.'**
  String get provider_email_needs_verification;

  /// No description provided for @reauthentication_needed.
  ///
  /// In en, this message translates to:
  /// **'A user needs to reauthenticate to change their password. Ask the user to reauthenticate by calling supabase.auth.reauthenticate().'**
  String get reauthentication_needed;

  /// No description provided for @reauthentication_not_valid.
  ///
  /// In en, this message translates to:
  /// **'Reauthentication failed; the code is incorrect. Ask the user to enter a new code.'**
  String get reauthentication_not_valid;

  /// No description provided for @refresh_token_not_found.
  ///
  /// In en, this message translates to:
  /// **'Session containing the refresh token not found.'**
  String get refresh_token_not_found;

  /// No description provided for @refresh_token_already_used.
  ///
  /// In en, this message translates to:
  /// **'Refresh token has been revoked or is outside the reuse interval. Check session documentation for details.'**
  String get refresh_token_already_used;

  /// No description provided for @request_timeout.
  ///
  /// In en, this message translates to:
  /// **'Processing the request took too long. Retry the request.'**
  String get request_timeout;

  /// No description provided for @same_password.
  ///
  /// In en, this message translates to:
  /// **'A user updating their password must use a different password than the current one.'**
  String get same_password;

  /// No description provided for @saml_assertion_no_email.
  ///
  /// In en, this message translates to:
  /// **'SAML assertion received after sign-in, but no email address was found, which is required. Check the provider\'s attribute mapping and configuration.'**
  String get saml_assertion_no_email;

  /// No description provided for @saml_assertion_no_user_id.
  ///
  /// In en, this message translates to:
  /// **'SAML assertion received after sign-in, but no user ID (NameID) was found, which is required. Check the SAML provider\'s configuration.'**
  String get saml_assertion_no_user_id;

  /// No description provided for @saml_entity_id_mismatch.
  ///
  /// In en, this message translates to:
  /// **'(Admin API) Updating SAML metadata for a SAML identity provider is not possible because the entity ID in the update does not match the one in the database. Create a new identity provider instead.'**
  String get saml_entity_id_mismatch;

  /// No description provided for @saml_idp_already_exists.
  ///
  /// In en, this message translates to:
  /// **'(Admin API) A SAML identity provider is already added.'**
  String get saml_idp_already_exists;

  /// No description provided for @saml_idp_not_found.
  ///
  /// In en, this message translates to:
  /// **'SAML identity provider not found. Often returned after an IdP-initiated sign-in with an unregistered SAML provider in Supabase Auth.'**
  String get saml_idp_not_found;

  /// No description provided for @saml_metadata_fetch_failed.
  ///
  /// In en, this message translates to:
  /// **'(Admin API) Adding or updating a SAML provider failed as its metadata could not be fetched from the provided URL.'**
  String get saml_metadata_fetch_failed;

  /// No description provided for @saml_provider_disabled.
  ///
  /// In en, this message translates to:
  /// **'Enterprise SSO with SAML 2.0 is not enabled on the Auth server.'**
  String get saml_provider_disabled;

  /// No description provided for @saml_relay_state_expired.
  ///
  /// In en, this message translates to:
  /// **'SAML relay state tracking a supabase.auth.signInWithSSO() request has expired. Ask the user to sign in again.'**
  String get saml_relay_state_expired;

  /// No description provided for @saml_relay_state_not_found.
  ///
  /// In en, this message translates to:
  /// **'SAML relay state not found or expired. Ask the user to sign in again.'**
  String get saml_relay_state_not_found;

  /// No description provided for @session_expired.
  ///
  /// In en, this message translates to:
  /// **'The session related to the API request has expired. This may occur due to inactivity or the session exceeding its time limit.'**
  String get session_expired;

  /// No description provided for @session_not_found.
  ///
  /// In en, this message translates to:
  /// **'The session related to the API request no longer exists. This can happen if the user has signed out or the session was deleted.'**
  String get session_not_found;

  /// No description provided for @signup_disabled.
  ///
  /// In en, this message translates to:
  /// **'Signups (new account creation) are disabled on the server.'**
  String get signup_disabled;

  /// No description provided for @single_identity_not_deletable.
  ///
  /// In en, this message translates to:
  /// **'Every user must have at least one identity attached, so deleting (unlinking) the only identity is not allowed.'**
  String get single_identity_not_deletable;

  /// No description provided for @sms_send_failed.
  ///
  /// In en, this message translates to:
  /// **'Sending an SMS message failed. Check your SMS provider configuration.'**
  String get sms_send_failed;

  /// No description provided for @sso_domain_already_exists.
  ///
  /// In en, this message translates to:
  /// **'(Admin API) Only one SSO domain can be registered per SSO identity provider.'**
  String get sso_domain_already_exists;

  /// No description provided for @sso_provider_not_found.
  ///
  /// In en, this message translates to:
  /// **'SSO provider not found. Check the arguments in supabase.auth.signInWithSSO().'**
  String get sso_provider_not_found;

  /// No description provided for @too_many_enrolled_mfa_factors.
  ///
  /// In en, this message translates to:
  /// **'A user can only have a fixed number of enrolled MFA factors.'**
  String get too_many_enrolled_mfa_factors;

  /// No description provided for @unexpected_audience.
  ///
  /// In en, this message translates to:
  /// **'(Deprecated) The request\'s X-JWT-AUD claim does not match the JWT\'s audience.'**
  String get unexpected_audience;

  /// No description provided for @unexpected_failure.
  ///
  /// In en, this message translates to:
  /// **'Auth service is degraded or a bug is present, without a specific reason.'**
  String get unexpected_failure;

  /// No description provided for @user_already_exists.
  ///
  /// In en, this message translates to:
  /// **'A user with this information (email address, phone number) already exists.'**
  String get user_already_exists;

  /// No description provided for @user_banned.
  ///
  /// In en, this message translates to:
  /// **'The user related to the API request is banned until a future date. No further API requests should be attempted until the ban is lifted.'**
  String get user_banned;

  /// No description provided for @user_not_found.
  ///
  /// In en, this message translates to:
  /// **'The user related to the API request no longer exists.'**
  String get user_not_found;

  /// No description provided for @user_sso_managed.
  ///
  /// In en, this message translates to:
  /// **'When a user comes from SSO, certain fields (such as email) cannot be updated.'**
  String get user_sso_managed;

  /// No description provided for @validation_failed.
  ///
  /// In en, this message translates to:
  /// **'Provided parameters are not in the expected format.'**
  String get validation_failed;

  /// No description provided for @weak_password.
  ///
  /// In en, this message translates to:
  /// **'The user is signing up or changing their password without meeting the required password strength criteria.'**
  String get weak_password;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es', 'fr', 'hi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fr': return AppLocalizationsFr();
    case 'hi': return AppLocalizationsHi();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
