// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo!';

  @override
  String get flutter_demo_home_page => 'Página de inicio de la demostración de Flutter';

  @override
  String get flutter_demo => 'Demostración de Flutter';

  @override
  String get pushed_button_text => 'Has presionado el botón tantas veces:';

  @override
  String get increment => 'Incrementar';

  @override
  String get system => 'Sistema';

  @override
  String get light => 'Claro';

  @override
  String get dark => 'Oscuro';

  @override
  String get security => 'Seguridad';

  @override
  String get about => 'Acerca de';

  @override
  String get language => 'Idioma';

  @override
  String get contactUs => 'Contáctenos';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get termsOfUse => 'Términos de uso';

  @override
  String get appVersion => 'Versión de la aplicación';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get settings => 'Ajustes';

  @override
  String get help => 'Ayuda';

  @override
  String get feedback => 'Comentarios';

  @override
  String get profile => 'Perfil';

  @override
  String get general => 'General';

  @override
  String get more => 'Más';

  @override
  String get support => 'Soporte';

  @override
  String get theme => 'Tema';

  @override
  String get veryWeak => 'Muy débil';

  @override
  String get weak => 'Débil';

  @override
  String get moderate => 'Moderado';

  @override
  String get strong => 'Fuerte';

  @override
  String get veryStrong => 'Muy fuerte';

  @override
  String get password => 'Contraseña';

  @override
  String get length => 'Longitud';

  @override
  String get uppercase => 'Mayúsculas';

  @override
  String get lowercase => 'Minúsculas';

  @override
  String get numbers => 'Números';

  @override
  String get symbols => 'Símbolos';

  @override
  String get generatePassword => 'Generar contraseña';

  @override
  String get generate => 'Generar';

  @override
  String get copyToClipboard => 'Copiar al portapapeles';

  @override
  String get copy => 'Copiar';

  @override
  String get passwordManager => 'Gestión de Contraseñas';

  @override
  String get passwordGenerator => 'Generador de Contraseñas';

  @override
  String get passwordGeneratorDescription => 'Crea contraseñas ultra seguras.';

  @override
  String get securityChecker => 'Verificador de Seguridad';

  @override
  String get securityCheckerDescription => 'Analiza la robustez de tus contraseñas.';

  @override
  String get storageAndSharing => 'Almacenamiento y Compartición';

  @override
  String get secureNotes => 'Notas Seguras';

  @override
  String get secureNotesDescription => 'Almacena de forma segura tu información sensible.';

  @override
  String get secureAutofill => 'Autocompletar Seguro';

  @override
  String get secureAutofillDescription => 'Rellena automáticamente tus credenciales en sitios web.';

  @override
  String get secureQRCode => 'Código QR Seguro';

  @override
  String get secureQRCodeDescription => 'Comparte tus contraseñas de forma segura.';

  @override
  String get securityAndMonitoring => 'Seguridad y Monitoreo';

  @override
  String get twoFactorAuth => 'Autenticación 2FA';

  @override
  String get twoFactorAuthDescription => 'Añade una capa extra de seguridad.';

  @override
  String get leakDetector => 'Detector de Filtraciones';

  @override
  String get leakDetectorDescription => 'Verifica si tus credenciales han sido comprometidas.';

  @override
  String get darkWebMonitoring => 'Monitoreo de la Dark Web';

  @override
  String get darkWebMonitoringDescription => 'Supervisa si tus datos circulan en la dark web.';

  @override
  String get panicMode => 'Modo Pánico';

  @override
  String get panicModeDescription => 'Elimina rápidamente todos tus datos en caso de emergencia.';

  @override
  String get preferences => 'Preferencias';

  @override
  String get myProfile => 'Mi Perfil';

  @override
  String get seeAndEditProfile => 'Ver y editar tu perfil';

  @override
  String get changePassword => 'Cambiar contraseña';

  @override
  String get updateYourPassword => 'Actualizar tu contraseña';

  @override
  String get setupTwoFactorAuth => 'Configurar autenticación de dos factores';

  @override
  String get lightDark => 'Claro / Oscuro';

  @override
  String get legalNotices => 'Avisos legales';

  @override
  String get viewLegalNotices => 'Ver avisos legales';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get accountSettings => 'Configuración de la cuenta';

  @override
  String get anonymous_provider_disabled => 'Los inicios de sesión anónimos están desactivados.';

  @override
  String get bad_code_verifier => 'El verificador de código proporcionado en el flujo PKCE no coincide con el esperado. Indica un error en la implementación de la biblioteca cliente.';

  @override
  String get bad_json => 'Se utiliza cuando el cuerpo HTTP de la solicitud no es un JSON válido.';

  @override
  String get bad_jwt => 'El JWT enviado en el encabezado Authorization no es válido.';

  @override
  String get bad_oauth_callback => 'El callback OAuth del proveedor a Auth no tiene todos los atributos requeridos (state). Indica un problema con el proveedor OAuth o la implementación de la biblioteca cliente.';

  @override
  String get bad_oauth_state => 'El estado OAuth (datos devueltos por el proveedor OAuth a Supabase Auth) no tiene el formato correcto. Indica un problema en la integración del proveedor OAuth.';

  @override
  String get captcha_failed => 'No se pudo verificar el desafío de captcha con el proveedor. Verifica tu integración de captcha.';

  @override
  String get conflict => 'Conflicto general en la base de datos, como solicitudes concurrentes en recursos que no deben modificarse simultáneamente. Esto puede ocurrir cuando se envían demasiadas solicitudes de actualización de sesión a la vez. Revisa tu aplicación para detectar problemas de concurrencia.';

  @override
  String get email_address_invalid => 'La dirección de correo electrónico es inválida o utiliza un dominio de prueba no soportado. Por favor, usa otra dirección de correo.';

  @override
  String get email_address_not_authorized => 'No se permite enviar correos a esta dirección porque tu proyecto utiliza el servicio SMTP por defecto. Los correos solo se pueden enviar a miembros de tu organización Supabase. Si deseas enviar correos a otros, configura un proveedor SMTP personalizado.';

  @override
  String get email_conflict_identity_not_deletable => 'Desvincular esta identidad causaría que la cuenta del usuario cambie a una dirección de correo ya utilizada por otra cuenta. Indica que el usuario tiene dos cuentas diferentes con distintos correos principales. Puede ser necesario migrar los datos del usuario.';

  @override
  String get email_exists => 'La dirección de correo ya existe en el sistema.';

  @override
  String get email_not_confirmed => 'No se permite el inicio de sesión para este usuario porque el correo no ha sido confirmado.';

  @override
  String get email_provider_disabled => 'Las inscripciones mediante correo y contraseña están desactivadas.';

  @override
  String get flow_state_expired => 'El estado del flujo PKCE relacionado con la solicitud ha expirado. Pide al usuario que inicie sesión de nuevo.';

  @override
  String get flow_state_not_found => 'El estado del flujo PKCE relacionado con la solicitud ya no existe. Los estados expiran y se eliminan, por lo que se debe pedir al usuario que inicie sesión de nuevo.';

  @override
  String get hook_payload_invalid_content_type => 'La carga útil de Auth no tiene un encabezado Content-Type válido.';

  @override
  String get hook_payload_over_size_limit => 'La carga útil de Auth excede el límite máximo de tamaño.';

  @override
  String get hook_timeout => 'No se pudo alcanzar el hook en el tiempo máximo asignado.';

  @override
  String get hook_timeout_after_retry => 'No se pudo alcanzar el hook después del número máximo de reintentos.';

  @override
  String get identity_already_exists => 'La identidad relacionada ya está vinculada a un usuario.';

  @override
  String get identity_not_found => 'La identidad relacionada con la llamada API no existe, por ejemplo, cuando una identidad se ha desvinculado o eliminado.';

  @override
  String get insufficient_aal => 'Para llamar a esta API, el usuario debe tener un Nivel Superior de Garantía de Autenticación. Pide al usuario que resuelva un desafío MFA.';

  @override
  String get invite_not_found => 'La invitación ha expirado o ya ha sido utilizada.';

  @override
  String get invalid_credentials => 'Las credenciales de inicio de sesión o el tipo de grant no son reconocidos.';

  @override
  String get manual_linking_disabled => 'La vinculación manual (linkUser) no está habilitada en el servidor de autenticación.';

  @override
  String get mfa_challenge_expired => 'El desafío MFA ha expirado. Solicita un nuevo desafío cuando aparezca este error.';

  @override
  String get mfa_factor_name_conflict => 'Los factores MFA para un mismo usuario no deben tener el mismo nombre descriptivo.';

  @override
  String get mfa_factor_not_found => 'El factor MFA ya no existe.';

  @override
  String get mfa_ip_address_mismatch => 'El proceso de registro de factores MFA debe comenzar y terminar con la misma dirección IP.';

  @override
  String get mfa_phone_enroll_not_enabled => 'El registro de factores MFA por teléfono está desactivado.';

  @override
  String get mfa_phone_verify_not_enabled => 'El inicio de sesión mediante factores de teléfono y la verificación de nuevos factores telefónicos están desactivados.';

  @override
  String get mfa_totp_enroll_not_enabled => 'El registro de factores MFA TOTP está desactivado.';

  @override
  String get mfa_totp_verify_not_enabled => 'El inicio de sesión mediante TOTP y la verificación de nuevos factores TOTP están desactivados.';

  @override
  String get mfa_verification_failed => 'El desafío MFA no se pudo verificar: el código TOTP es incorrecto.';

  @override
  String get mfa_verification_rejected => 'La verificación MFA fue rechazada. Se devuelve únicamente si el hook de verificación MFA retorna una decisión de rechazo.';

  @override
  String get mfa_verified_factor_exists => 'Ya existe un factor telefónico verificado para este usuario. Desregistra el factor verificado existente para continuar.';

  @override
  String get mfa_web_authn_enroll_not_enabled => 'El registro de factores MFA WebAuthn está desactivado.';

  @override
  String get mfa_web_authn_verify_not_enabled => 'El inicio de sesión mediante WebAuthn y la verificación de nuevos factores WebAuthn están desactivados.';

  @override
  String get no_authorization => 'Esta solicitud HTTP requiere un encabezado Authorization, que no se ha proporcionado.';

  @override
  String get not_admin => 'El usuario que accede a la API no es administrador; el JWT no contiene una declaración de rol que lo identifique como administrador del servidor de Auth.';

  @override
  String get oauth_provider_not_supported => 'Se está utilizando un proveedor OAuth que está desactivado en el servidor de Auth.';

  @override
  String get otp_disabled => 'El inicio de sesión con OTP (enlace mágico, OTP de correo) está desactivado. Revisa la configuración del servidor.';

  @override
  String get otp_expired => 'El código OTP para este inicio de sesión ha expirado. Pide al usuario que inicie sesión nuevamente.';

  @override
  String get over_email_send_rate_limit => 'Se han enviado demasiados correos a esta dirección. Pide al usuario que espere antes de intentarlo de nuevo.';

  @override
  String get over_request_rate_limit => 'Se han enviado demasiadas solicitudes desde este cliente (dirección IP). Pide al usuario que intente de nuevo en unos minutos.';

  @override
  String get over_sms_send_rate_limit => 'Se han enviado demasiados SMS a este número. Pide al usuario que espere antes de intentarlo de nuevo.';

  @override
  String get phone_exists => 'El número de teléfono ya existe en el sistema.';

  @override
  String get phone_not_confirmed => 'No se permite el inicio de sesión para este usuario porque el número de teléfono no ha sido confirmado.';

  @override
  String get phone_provider_disabled => 'Las inscripciones mediante teléfono y contraseña están desactivadas.';

  @override
  String get provider_disabled => 'El proveedor OAuth está desactivado. Revisa la configuración del servidor.';

  @override
  String get provider_email_needs_verification => 'No todos los proveedores OAuth verifican el correo del usuario. Supabase Auth requiere verificación, por lo que se envía este error cuando se envía un correo de verificación tras el flujo OAuth.';

  @override
  String get reauthentication_needed => 'El usuario necesita reautenticarse para cambiar su contraseña. Pídele que se reautentique llamando a supabase.auth.reauthenticate().';

  @override
  String get reauthentication_not_valid => 'La reautenticación falló, el código es incorrecto. Pide al usuario que ingrese un nuevo código.';

  @override
  String get refresh_token_not_found => 'No se encontró la sesión que contiene el token de actualización.';

  @override
  String get refresh_token_already_used => 'El token de actualización ha sido revocado o ya no es reutilizable. Consulta la documentación de sesiones para más información.';

  @override
  String get request_timeout => 'El procesamiento de la solicitud tardó demasiado. Reintenta la solicitud.';

  @override
  String get same_password => 'El usuario que actualiza su contraseña debe usar una contraseña diferente a la actual.';

  @override
  String get saml_assertion_no_email => 'Se recibió una aserción SAML tras el inicio de sesión, pero no se encontró dirección de correo, lo cual es requerido. Revisa la configuración del proveedor.';

  @override
  String get saml_assertion_no_user_id => 'Se recibió una aserción SAML tras el inicio de sesión, pero no se encontró un ID de usuario (NameID), lo cual es requerido. Revisa la configuración del proveedor SAML.';

  @override
  String get saml_entity_id_mismatch => '(API Administrativa) No es posible actualizar los metadatos SAML porque el entity ID no coincide con el de la base de datos. Es equivalente a crear un nuevo proveedor de identidad.';

  @override
  String get saml_idp_already_exists => '(API Administrativa) El proveedor de identidad SAML ya está añadido.';

  @override
  String get saml_idp_not_found => 'No se encontró el proveedor de identidad SAML. Generalmente ocurre tras un inicio de sesión iniciado por el IdP con un proveedor SAML no registrado en Supabase Auth.';

  @override
  String get saml_metadata_fetch_failed => '(API Administrativa) Falló la obtención de metadatos desde la URL proporcionada para el proveedor SAML.';

  @override
  String get saml_provider_disabled => 'El uso de SSO Enterprise con SAML 2.0 no está habilitado en el servidor de Auth.';

  @override
  String get saml_relay_state_expired => 'El estado de retransmisión SAML ha expirado. Pide al usuario que inicie sesión de nuevo.';

  @override
  String get saml_relay_state_not_found => 'El estado de retransmisión SAML no se encontró o ha expirado. Pide al usuario que inicie sesión de nuevo.';

  @override
  String get session_expired => 'La sesión relacionada con la solicitud ha expirado. Esto puede ocurrir por inactividad o si la sesión ha excedido su tiempo límite.';

  @override
  String get session_not_found => 'La sesión relacionada con la solicitud ya no existe. Esto puede ocurrir si el usuario ha cerrado sesión o la sesión fue eliminada.';

  @override
  String get signup_disabled => 'Las inscripciones (creación de cuentas) están desactivadas en el servidor.';

  @override
  String get single_identity_not_deletable => 'Cada usuario debe tener al menos una identidad asociada, por lo que no se permite eliminar la única identidad.';

  @override
  String get sms_send_failed => 'El envío del SMS falló. Revisa la configuración de tu proveedor de SMS.';

  @override
  String get sso_domain_already_exists => '(API Administrativa) Solo se puede registrar un dominio SSO por cada proveedor de identidad SSO.';

  @override
  String get sso_provider_not_found => 'No se encontró el proveedor SSO. Revisa los parámetros en supabase.auth.signInWithSSO().';

  @override
  String get too_many_enrolled_mfa_factors => 'Un usuario solo puede tener un número limitado de factores MFA registrados.';

  @override
  String get unexpected_audience => '(Función obsoleta) La reclamación X-JWT-AUD de la solicitud no coincide con la audiencia del JWT.';

  @override
  String get unexpected_failure => 'El servicio de autenticación está degradado o presenta un error sin una razón específica.';

  @override
  String get user_already_exists => 'Un usuario con esta información (correo o teléfono) ya existe.';

  @override
  String get user_banned => 'El usuario relacionado con la solicitud está bloqueado hasta una fecha futura. No se deben realizar más solicitudes hasta que se levante el bloqueo.';

  @override
  String get user_not_found => 'El usuario relacionado con la solicitud ya no existe.';

  @override
  String get user_sso_managed => 'Cuando un usuario inicia sesión mediante SSO, ciertos campos (como el correo) no pueden ser actualizados.';

  @override
  String get validation_failed => 'Los parámetros proporcionados no están en el formato esperado.';

  @override
  String get weak_password => 'El usuario está registrándose o cambiando su contraseña sin cumplir los criterios de seguridad requeridos.';
}
