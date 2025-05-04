class UrlService {
  UrlService._();
  static final UrlService _instance = UrlService._();
  factory UrlService() => _instance;

  static final String _host = "192.168.43.36";

  static const String _port = "3000";

  String get baseUrl => "http://$_host:$_port";

  ////// Users //////
  String get users => "$baseUrl/users";

  ////// AUTH //////
  String get login => "$users/login";
  String get register => "$users/signup";
}
