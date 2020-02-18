enum LoginStatus {none,loading,success,error}

extension LoginStatusExt on LoginStatus{
  static String _message;
  set setMessage(String value) => _message = value;
  get getMessage => _message;
}