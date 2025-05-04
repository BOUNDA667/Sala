// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get flutter_demo_home_page => 'Flutter Demo Home Page';

  @override
  String get flutter_demo => 'Flutter Demo';

  @override
  String get pushed_button_text => 'You have pushed the button this many times:';

  @override
  String get increment => 'Increment';

  @override
  String get system => 'System';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get security => 'Security';

  @override
  String get about => 'About';

  @override
  String get language => 'Language';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfUse => 'Terms of Use';

  @override
  String get appVersion => 'App Version';

  @override
  String get logout => 'Log Out';

  @override
  String get settings => 'Settings';

  @override
  String get help => 'Help';

  @override
  String get feedback => 'Feedback';

  @override
  String get profile => 'Profile';

  @override
  String get general => 'General';

  @override
  String get more => 'More';

  @override
  String get support => 'Support';

  @override
  String get theme => 'Theme';

  @override
  String get veryWeak => 'Very Weak';

  @override
  String get weak => 'Weak';

  @override
  String get moderate => 'Moderate';

  @override
  String get strong => 'Strong';

  @override
  String get veryStrong => 'Very Strong';

  @override
  String get password => 'Password';

  @override
  String get length => 'Length';

  @override
  String get uppercase => 'Uppercase';

  @override
  String get lowercase => 'Lowercase';

  @override
  String get numbers => 'Numbers';

  @override
  String get symbols => 'Symbols';

  @override
  String get generatePassword => 'Generate password';

  @override
  String get generate => 'Generate';

  @override
  String get copyToClipboard => 'Copy to clipboard';

  @override
  String get copy => 'Copy';

  @override
  String get passwordManager => 'Password Management';

  @override
  String get passwordGenerator => 'Password Generator';

  @override
  String get passwordGeneratorDescription => 'Create ultra-secure passwords.';

  @override
  String get securityChecker => 'Security Checker';

  @override
  String get securityCheckerDescription => 'Analyze the strength of your passwords.';

  @override
  String get storageAndSharing => 'Storage and Sharing';

  @override
  String get secureNotes => 'Secure Notes';

  @override
  String get secureNotesDescription => 'Safely store your sensitive information.';

  @override
  String get secureAutofill => 'Secure Autofill';

  @override
  String get secureAutofillDescription => 'Automatically fill in your credentials on websites.';

  @override
  String get secureQRCode => 'Secure QR Code';

  @override
  String get secureQRCodeDescription => 'Share your passwords securely.';

  @override
  String get securityAndMonitoring => 'Security and Monitoring';

  @override
  String get twoFactorAuth => '2FA Authentication';

  @override
  String get twoFactorAuthDescription => 'Add an extra layer of security.';

  @override
  String get leakDetector => 'Leak Detector';

  @override
  String get leakDetectorDescription => 'Check if your credentials have been compromised.';

  @override
  String get darkWebMonitoring => 'Dark Web Monitoring';

  @override
  String get darkWebMonitoringDescription => 'Monitor if your data is circulating on the dark web.';

  @override
  String get panicMode => 'Panic Mode';

  @override
  String get panicModeDescription => 'Quickly erase all your data in case of emergency.';

  @override
  String get preferences => 'Preferences';

  @override
  String get myProfile => 'My Profile';

  @override
  String get seeAndEditProfile => 'View and edit your profile';

  @override
  String get changePassword => 'Change Password';

  @override
  String get updateYourPassword => 'Update your password';

  @override
  String get setupTwoFactorAuth => 'Set up two-factor authentication';

  @override
  String get lightDark => 'Light / Dark';

  @override
  String get legalNotices => 'Legal Notices';

  @override
  String get viewLegalNotices => 'View legal notices';

  @override
  String get currentLanguage => 'Current Language';

  @override
  String get accountSettings => 'Account Settings';

  @override
  String get anonymous_provider_disabled => 'Anonymous sign-ins are disabled.';

  @override
  String get bad_code_verifier => 'Returned from the PKCE flow where the provided code verifier does not match the expected one. Indicates a bug in the client library implementation.';

  @override
  String get bad_json => 'Usually used when the HTTP body of the request is not valid JSON.';

  @override
  String get bad_jwt => 'JWT sent in the Authorization header is not valid.';

  @override
  String get bad_oauth_callback => 'OAuth callback from provider to Auth does not have all the required attributes (state). Indicates an issue with the OAuth provider or client library implementation.';

  @override
  String get bad_oauth_state => 'OAuth state (data echoed back by the OAuth provider to Supabase Auth) is not in the correct format. Indicates an issue with the OAuth provider integration.';

  @override
  String get captcha_failed => 'Captcha challenge could not be verified with the captcha provider. Check your captcha integration.';

  @override
  String get conflict => 'General database conflict, such as concurrent requests on resources that should not be modified concurrently. Can often occur when too many session refresh requests fire at the same time. Check your app for concurrency issues.';

  @override
  String get email_address_invalid => 'The email address is invalid or uses an unsupported test domain. Please use a different email address.';

  @override
  String get email_address_not_authorized => 'Email sending is not allowed for this address as your project is using the default SMTP service. Emails can only be sent to members in your Supabase organization. If you want to send emails to others, please set up a custom SMTP provider.';

  @override
  String get email_conflict_identity_not_deletable => 'Unlinking this identity causes the user\'s account to change to an email address which is already used by another account. This indicates the user has two different accounts with different primary email addresses. You may need to migrate user data.';

  @override
  String get email_exists => 'Email address already exists in the system.';

  @override
  String get email_not_confirmed => 'Signing in is not allowed for this user as the email address is not confirmed.';

  @override
  String get email_provider_disabled => 'Signups are disabled for email and password.';

  @override
  String get flow_state_expired => 'PKCE flow state related to the API request has expired. Ask the user to sign in again.';

  @override
  String get flow_state_not_found => 'PKCE flow state related to the API request no longer exists. Flow states expire over time and are cleaned up, so ask the user to sign in again.';

  @override
  String get hook_payload_invalid_content_type => 'Payload from Auth does not have a valid Content-Type header.';

  @override
  String get hook_payload_over_size_limit => 'Payload from Auth exceeds the maximum size limit.';

  @override
  String get hook_timeout => 'Unable to reach hook within the maximum time allocated.';

  @override
  String get hook_timeout_after_retry => 'Unable to reach hook after the maximum number of retries.';

  @override
  String get identity_already_exists => 'The identity related to the API request is already linked to a user.';

  @override
  String get identity_not_found => 'The identity related to the API call does not exist, such as when an identity is unlinked or deleted.';

  @override
  String get insufficient_aal => 'To call this API, the user must have a higher Authenticator Assurance Level. Ask the user to solve an MFA challenge.';

  @override
  String get invite_not_found => 'Invite is expired or already used.';

  @override
  String get invalid_credentials => 'Login credentials or grant type not recognized.';

  @override
  String get manual_linking_disabled => 'Manual linking (linkUser) is not enabled on the Auth server.';

  @override
  String get mfa_challenge_expired => 'MFA challenge has expired. Request a new challenge when encountering this error.';

  @override
  String get mfa_factor_name_conflict => 'MFA factors for a single user should not have the same friendly name.';

  @override
  String get mfa_factor_not_found => 'MFA factor no longer exists.';

  @override
  String get mfa_ip_address_mismatch => 'The enrollment process for MFA factors must begin and end with the same IP address.';

  @override
  String get mfa_phone_enroll_not_enabled => 'Enrollment of MFA phone factors is disabled.';

  @override
  String get mfa_phone_verify_not_enabled => 'Login via phone factors and verification of new phone factors is disabled.';

  @override
  String get mfa_totp_enroll_not_enabled => 'Enrollment of MFA TOTP factors is disabled.';

  @override
  String get mfa_totp_verify_not_enabled => 'Login via TOTP factors and verification of new TOTP factors is disabled.';

  @override
  String get mfa_verification_failed => 'MFA challenge could not be verified – wrong TOTP code.';

  @override
  String get mfa_verification_rejected => 'Further MFA verification is rejected. Returned only if the MFA verification hook returns a reject decision.';

  @override
  String get mfa_verified_factor_exists => 'A verified phone factor already exists for the user. Unenroll the existing verified phone factor to continue.';

  @override
  String get mfa_web_authn_enroll_not_enabled => 'Enrollment of MFA WebAuthn factors is disabled.';

  @override
  String get mfa_web_authn_verify_not_enabled => 'Login via WebAuthn factors and verification of new WebAuthn factors is disabled.';

  @override
  String get no_authorization => 'This HTTP request requires an Authorization header, which is not provided.';

  @override
  String get not_admin => 'The user accessing the API is not admin; the JWT does not contain a role claim identifying them as an admin of the Auth server.';

  @override
  String get oauth_provider_not_supported => 'Using an OAuth provider which is disabled on the Auth server.';

  @override
  String get otp_disabled => 'Sign in with OTPs (magic link, email OTP) is disabled. Check your server\'s configuration.';

  @override
  String get otp_expired => 'OTP code for this sign-in has expired. Ask the user to sign in again.';

  @override
  String get over_email_send_rate_limit => 'Too many emails have been sent to this email address. Ask the user to wait a while before trying again.';

  @override
  String get over_request_rate_limit => 'Too many requests have been sent by this client (IP address). Ask the user to try again in a few minutes.';

  @override
  String get over_sms_send_rate_limit => 'Too many SMS messages have been sent to this phone number. Ask the user to wait a while before trying again.';

  @override
  String get phone_exists => 'Phone number already exists in the system.';

  @override
  String get phone_not_confirmed => 'Signing in is not allowed for this user as the phone number is not confirmed.';

  @override
  String get phone_provider_disabled => 'Signups are disabled for phone and password.';

  @override
  String get provider_disabled => 'OAuth provider is disabled for use. Check your server\'s configuration.';

  @override
  String get provider_email_needs_verification => 'Not all OAuth providers verify their user\'s email address. Supabase Auth requires email verification, so this error is sent when a verification email is sent after completing the OAuth flow.';

  @override
  String get reauthentication_needed => 'A user needs to reauthenticate to change their password. Ask the user to reauthenticate by calling supabase.auth.reauthenticate().';

  @override
  String get reauthentication_not_valid => 'Reauthentication failed; the code is incorrect. Ask the user to enter a new code.';

  @override
  String get refresh_token_not_found => 'Session containing the refresh token not found.';

  @override
  String get refresh_token_already_used => 'Refresh token has been revoked or is outside the reuse interval. Check session documentation for details.';

  @override
  String get request_timeout => 'Processing the request took too long. Retry the request.';

  @override
  String get same_password => 'A user updating their password must use a different password than the current one.';

  @override
  String get saml_assertion_no_email => 'SAML assertion received after sign-in, but no email address was found, which is required. Check the provider\'s attribute mapping and configuration.';

  @override
  String get saml_assertion_no_user_id => 'SAML assertion received after sign-in, but no user ID (NameID) was found, which is required. Check the SAML provider\'s configuration.';

  @override
  String get saml_entity_id_mismatch => '(Admin API) Updating SAML metadata for a SAML identity provider is not possible because the entity ID in the update does not match the one in the database. Create a new identity provider instead.';

  @override
  String get saml_idp_already_exists => '(Admin API) A SAML identity provider is already added.';

  @override
  String get saml_idp_not_found => 'SAML identity provider not found. Often returned after an IdP-initiated sign-in with an unregistered SAML provider in Supabase Auth.';

  @override
  String get saml_metadata_fetch_failed => '(Admin API) Adding or updating a SAML provider failed as its metadata could not be fetched from the provided URL.';

  @override
  String get saml_provider_disabled => 'Enterprise SSO with SAML 2.0 is not enabled on the Auth server.';

  @override
  String get saml_relay_state_expired => 'SAML relay state tracking a supabase.auth.signInWithSSO() request has expired. Ask the user to sign in again.';

  @override
  String get saml_relay_state_not_found => 'SAML relay state not found or expired. Ask the user to sign in again.';

  @override
  String get session_expired => 'The session related to the API request has expired. This may occur due to inactivity or the session exceeding its time limit.';

  @override
  String get session_not_found => 'The session related to the API request no longer exists. This can happen if the user has signed out or the session was deleted.';

  @override
  String get signup_disabled => 'Signups (new account creation) are disabled on the server.';

  @override
  String get single_identity_not_deletable => 'Every user must have at least one identity attached, so deleting (unlinking) the only identity is not allowed.';

  @override
  String get sms_send_failed => 'Sending an SMS message failed. Check your SMS provider configuration.';

  @override
  String get sso_domain_already_exists => '(Admin API) Only one SSO domain can be registered per SSO identity provider.';

  @override
  String get sso_provider_not_found => 'SSO provider not found. Check the arguments in supabase.auth.signInWithSSO().';

  @override
  String get too_many_enrolled_mfa_factors => 'A user can only have a fixed number of enrolled MFA factors.';

  @override
  String get unexpected_audience => '(Deprecated) The request\'s X-JWT-AUD claim does not match the JWT\'s audience.';

  @override
  String get unexpected_failure => 'Auth service is degraded or a bug is present, without a specific reason.';

  @override
  String get user_already_exists => 'A user with this information (email address, phone number) already exists.';

  @override
  String get user_banned => 'The user related to the API request is banned until a future date. No further API requests should be attempted until the ban is lifted.';

  @override
  String get user_not_found => 'The user related to the API request no longer exists.';

  @override
  String get user_sso_managed => 'When a user comes from SSO, certain fields (such as email) cannot be updated.';

  @override
  String get validation_failed => 'Provided parameters are not in the expected format.';

  @override
  String get weak_password => 'The user is signing up or changing their password without meeting the required password strength criteria.';
}
