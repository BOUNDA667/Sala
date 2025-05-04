class ApiResponse<T> {
  final int statusCode;
  final T? data;
  final String? errorMessage;
  final bool success;

  ApiResponse({
    required this.statusCode,
    this.data,
    this.errorMessage,
  }) : success = statusCode >= 200 && statusCode < 300;

  // Une méthode pour afficher le message d'erreur ou de succès pour faciliter le debug
  @override
  String toString() {
    return 'ApiResponse(statusCode: $statusCode, success: $success, errorMessage: $errorMessage, data: $data)';
  }
}
