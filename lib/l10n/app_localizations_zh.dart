// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get helloWorld => '你好，世界！';

  @override
  String get flutter_demo_home_page => 'Flutter 演示主页';

  @override
  String get flutter_demo => 'Flutter 演示';

  @override
  String get pushed_button_text => '你已经按下了这个按钮这么多次：';

  @override
  String get increment => '递增';

  @override
  String get system => '系统';

  @override
  String get light => '光明';

  @override
  String get dark => '黑暗';

  @override
  String get security => '安全';

  @override
  String get about => '关于';

  @override
  String get language => '语言';

  @override
  String get contactUs => '联系我们';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get termsOfUse => '使用条款';

  @override
  String get appVersion => '应用版本';

  @override
  String get logout => '注销';

  @override
  String get settings => '设置';

  @override
  String get help => '帮助';

  @override
  String get feedback => '反馈';

  @override
  String get profile => '个人资料';

  @override
  String get general => '常规';

  @override
  String get more => '更多';

  @override
  String get support => '支持';

  @override
  String get theme => '主题';

  @override
  String get veryWeak => '非常弱';

  @override
  String get weak => '弱';

  @override
  String get moderate => '中等';

  @override
  String get strong => '强';

  @override
  String get veryStrong => '非常强';

  @override
  String get password => '密码';

  @override
  String get length => '长度';

  @override
  String get uppercase => '大写字母';

  @override
  String get lowercase => '小写字母';

  @override
  String get numbers => '数字';

  @override
  String get symbols => '符号';

  @override
  String get generatePassword => '生成密码';

  @override
  String get generate => '生成';

  @override
  String get copyToClipboard => '复制到剪贴板';

  @override
  String get copy => '复制';

  @override
  String get passwordManager => '密码管理';

  @override
  String get passwordGenerator => '密码生成器';

  @override
  String get passwordGeneratorDescription => '创建超安全的密码。';

  @override
  String get securityChecker => '安全检查器';

  @override
  String get securityCheckerDescription => '分析您的密码强度。';

  @override
  String get storageAndSharing => '存储与分享';

  @override
  String get secureNotes => '安全笔记';

  @override
  String get secureNotesDescription => '安全存储您的敏感信息。';

  @override
  String get secureAutofill => '安全自动填充';

  @override
  String get secureAutofillDescription => '自动填充您在网站上的凭证。';

  @override
  String get secureQRCode => '安全二维码';

  @override
  String get secureQRCodeDescription => '安全分享您的密码。';

  @override
  String get securityAndMonitoring => '安全与监控';

  @override
  String get twoFactorAuth => '2FA认证';

  @override
  String get twoFactorAuthDescription => '添加额外的安全层。';

  @override
  String get leakDetector => '泄漏检测器';

  @override
  String get leakDetectorDescription => '检查您的凭证是否被泄露。';

  @override
  String get darkWebMonitoring => '暗网监控';

  @override
  String get darkWebMonitoringDescription => '监控您的数据是否在暗网上流通。';

  @override
  String get panicMode => '紧急模式';

  @override
  String get panicModeDescription => '在紧急情况下快速删除所有数据。';

  @override
  String get preferences => '偏好设置';

  @override
  String get myProfile => '我的个人资料';

  @override
  String get seeAndEditProfile => '查看和编辑您的个人资料';

  @override
  String get changePassword => '更改密码';

  @override
  String get updateYourPassword => '更新您的密码';

  @override
  String get setupTwoFactorAuth => '设置双因素认证';

  @override
  String get lightDark => '明亮 / 黑暗';

  @override
  String get legalNotices => '法律声明';

  @override
  String get viewLegalNotices => '查看法律声明';

  @override
  String get currentLanguage => '当前语言';

  @override
  String get accountSettings => '账户设置';

  @override
  String get anonymous_provider_disabled => '匿名登录已被禁用。';

  @override
  String get bad_code_verifier => '在 PKCE 流程中提供的 code verifier 与预期不符，表明客户端库实现存在问题。';

  @override
  String get bad_json => '通常用于 HTTP 请求体不是有效 JSON 的情况。';

  @override
  String get bad_jwt => 'Authorization 头中发送的 JWT 无效。';

  @override
  String get bad_oauth_callback => '来自 OAuth 提供商的回调缺少所需的属性（state），表明 OAuth 提供商或客户端库实现存在问题。';

  @override
  String get bad_oauth_state => 'OAuth 状态（由 OAuth 提供商返回给 Supabase Auth 的数据）格式不正确，表明 OAuth 集成存在问题。';

  @override
  String get captcha_failed => '验证码验证失败，请检查您的验证码集成。';

  @override
  String get conflict => '数据库发生冲突，例如对不应同时修改的资源发起并发请求。当会话刷新请求过多时可能会出现此错误，请检查应用中的并发问题。';

  @override
  String get email_address_invalid => '邮箱地址无效或使用了不受支持的测试域，请使用其他邮箱地址。';

  @override
  String get email_address_not_authorized => '此地址不允许发送邮件，因为您的项目使用默认 SMTP 服务。邮件仅限于发送给您 Supabase 组织的成员。如果需要发送给其他人，请设置自定义 SMTP 提供商。';

  @override
  String get email_conflict_identity_not_deletable => '解绑该身份会导致用户账户更改为已被其他账户使用的邮箱地址，表明该用户存在两个使用不同主邮箱的账户，可能需要迁移用户数据。';

  @override
  String get email_exists => '邮箱地址已存在。';

  @override
  String get email_not_confirmed => '由于邮箱未确认，不允许该用户登录。';

  @override
  String get email_provider_disabled => '邮箱和密码注册已被禁用。';

  @override
  String get flow_state_expired => '与该 API 请求相关的 PKCE 流程状态已过期，请要求用户重新登录。';

  @override
  String get flow_state_not_found => '与该 API 请求相关的 PKCE 流程状态不存在。流程状态会在一段时间后过期并清理，请要求用户重新登录。';

  @override
  String get hook_payload_invalid_content_type => 'Auth 返回的载荷缺少有效的 Content-Type 头。';

  @override
  String get hook_payload_over_size_limit => 'Auth 返回的载荷超出最大大小限制。';

  @override
  String get hook_timeout => '在规定的最长时间内无法连接到 hook。';

  @override
  String get hook_timeout_after_retry => '多次重试后仍无法连接到 hook。';

  @override
  String get identity_already_exists => '与该 API 请求相关的身份已绑定到某个用户。';

  @override
  String get identity_not_found => '与 API 调用相关的身份不存在，例如身份已解绑或删除。';

  @override
  String get insufficient_aal => '调用此 API 需要用户具有更高的身份验证保证级别，请要求用户完成 MFA 挑战。';

  @override
  String get invite_not_found => '邀请已过期或已使用。';

  @override
  String get invalid_credentials => '登录凭据或授权类型不被识别。';

  @override
  String get manual_linking_disabled => 'Auth 服务器未启用手动链接（linkUser）相关 API。';

  @override
  String get mfa_challenge_expired => 'MFA 挑战已过期，请请求新的挑战。';

  @override
  String get mfa_factor_name_conflict => '同一用户的 MFA 因子不应具有相同的名称。';

  @override
  String get mfa_factor_not_found => 'MFA 因子不存在。';

  @override
  String get mfa_ip_address_mismatch => 'MFA 因子的注册过程必须始于并终止于同一 IP 地址。';

  @override
  String get mfa_phone_enroll_not_enabled => 'MFA 电话因子注册已禁用。';

  @override
  String get mfa_phone_verify_not_enabled => '通过电话因子登录及验证新电话因子已被禁用。';

  @override
  String get mfa_totp_enroll_not_enabled => 'MFA TOTP 因子注册已禁用。';

  @override
  String get mfa_totp_verify_not_enabled => '通过 TOTP 因子登录及验证新 TOTP 因子已被禁用。';

  @override
  String get mfa_verification_failed => 'MFA 挑战验证失败——TOTP 代码错误。';

  @override
  String get mfa_verification_rejected => 'MFA 验证被拒绝，仅在验证 hook 返回拒绝决策时返回。';

  @override
  String get mfa_verified_factor_exists => '该用户已存在已验证的电话因子，请先取消已验证的因子再继续。';

  @override
  String get mfa_web_authn_enroll_not_enabled => 'MFA WebAuthn 因子注册已禁用。';

  @override
  String get mfa_web_authn_verify_not_enabled => '通过 WebAuthn 因子登录及验证新 WebAuthn 因子已被禁用。';

  @override
  String get no_authorization => '此 HTTP 请求需要提供 Authorization 头，但未提供。';

  @override
  String get not_admin => '访问 API 的用户不是管理员；JWT 中未包含标识其为 Auth 服务器管理员的角色声明。';

  @override
  String get oauth_provider_not_supported => '使用的 OAuth 提供商在 Auth 服务器上已被禁用。';

  @override
  String get otp_disabled => 'OTP 登录（魔法链接、邮箱 OTP）已被禁用，请检查服务器配置。';

  @override
  String get otp_expired => '该登录的 OTP 代码已过期，请要求用户重新登录。';

  @override
  String get over_email_send_rate_limit => '该邮箱地址已发送过多邮件，请要求用户稍候再试。';

  @override
  String get over_request_rate_limit => '此客户端（IP 地址）发送的请求过多，请几分钟后再试。';

  @override
  String get over_sms_send_rate_limit => '该手机号已发送过多短信，请要求用户稍候再试。';

  @override
  String get phone_exists => '手机号已存在。';

  @override
  String get phone_not_confirmed => '由于手机号未确认，该用户无法登录。';

  @override
  String get phone_provider_disabled => '电话和密码注册已被禁用。';

  @override
  String get provider_disabled => 'OAuth 提供商已被禁用，请检查服务器配置。';

  @override
  String get provider_email_needs_verification => '并非所有 OAuth 提供商都验证用户邮箱。Supabase Auth 需要邮箱验证，因此在 OAuth 流程后发送验证邮件时返回此错误。';

  @override
  String get reauthentication_needed => '用户需要重新认证以更改密码，请要求用户调用 supabase.auth.reauthenticate() 重新认证。';

  @override
  String get reauthentication_not_valid => '重新认证失败，代码不正确，请要求用户输入新代码。';

  @override
  String get refresh_token_not_found => '未找到包含刷新令牌的会话。';

  @override
  String get refresh_token_already_used => '刷新令牌已被撤销或超出可重用间隔，请参阅会话文档。';

  @override
  String get request_timeout => '处理请求花费时间过长，请重试。';

  @override
  String get same_password => '更新密码时，用户必须使用与当前密码不同的新密码。';

  @override
  String get saml_assertion_no_email => '登录后收到 SAML 断言，但未找到所需的邮箱地址，请检查提供商的属性映射及配置。';

  @override
  String get saml_assertion_no_user_id => '登录后收到 SAML 断言，但未找到用户 ID (NameID)，请检查 SAML 提供商配置。';

  @override
  String get saml_entity_id_mismatch => '(管理 API) 无法更新 SAML 身份提供商的元数据，因为更新中的实体 ID 与数据库中的不匹配，请创建新的身份提供商。';

  @override
  String get saml_idp_already_exists => '(管理 API) SAML 身份提供商已存在。';

  @override
  String get saml_idp_not_found => '未找到 SAML 身份提供商。通常在 IdP 发起的登录且该提供商未在 Supabase Auth 中注册时返回。';

  @override
  String get saml_metadata_fetch_failed => '(管理 API) 添加或更新 SAML 提供商失败，无法从提供的 URL 获取元数据。';

  @override
  String get saml_provider_disabled => 'Auth 服务器未启用 SAML 2.0 企业 SSO。';

  @override
  String get saml_relay_state_expired => 'SAML 中继状态已过期，请要求用户重新登录。';

  @override
  String get saml_relay_state_not_found => '未找到 SAML 中继状态或已过期，请要求用户重新登录。';

  @override
  String get session_expired => '与该 API 请求相关的会话已过期，可能因非活动或超过时间限制，请参阅会话文档了解详情。';

  @override
  String get session_not_found => '与该 API 请求相关的会话已不存在，可能用户已登出或会话被删除。';

  @override
  String get signup_disabled => '服务器已禁用注册（新账户创建）。';

  @override
  String get single_identity_not_deletable => '每个用户必须至少关联一个身份，因此不能删除唯一的身份。';

  @override
  String get sms_send_failed => '短信发送失败，请检查您的 SMS 提供商配置。';

  @override
  String get sso_domain_already_exists => '(管理 API) 每个 SSO 身份提供商只能注册一个 SSO 域。';

  @override
  String get sso_provider_not_found => '未找到 SSO 提供商，请检查 supabase.auth.signInWithSSO() 的参数。';

  @override
  String get too_many_enrolled_mfa_factors => '每个用户只能注册固定数量的 MFA 因子。';

  @override
  String get unexpected_audience => '(已弃用) 请求中的 X-JWT-AUD 声明与 JWT 的受众不匹配。';

  @override
  String get unexpected_failure => 'Auth 服务出现故障或存在未知错误。';

  @override
  String get user_already_exists => '使用该信息（邮箱地址、手机号）的用户已存在，无法创建新用户。';

  @override
  String get user_banned => '相关 API 请求的用户已被禁用，直到指定日期之前不得进行更多请求。';

  @override
  String get user_not_found => '相关 API 请求的用户已不存在。';

  @override
  String get user_sso_managed => '当用户通过 SSO 登录时，某些字段（如邮箱）不可更新。';

  @override
  String get validation_failed => '提供的参数格式不正确。';

  @override
  String get weak_password => '用户注册或更改密码时未满足密码强度要求。';
}
