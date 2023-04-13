class ServerException implements Exception {
  late String _message;

  ServerException([String message = 'ServerException Occured']) {
    _message = message;
  }

  @override
  String toString() {
    return _message;
  }
}

class CacheException implements Exception {
  late String _message;

  CacheException([String message = 'CacheException Occured']) {
    _message = message;
  }

  @override
  String toString() {
    return _message;
  }
}

class NetworkException implements Exception {
  late String _message;

  NetworkException([String message = 'NetworkException Occured']) {
    _message = message;
  }

  @override
  String toString() {
    return _message;
  }
}

///can be used for throwing [NoInternetException]
class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'NoInternetException Occurred']) {
    _message = message;
  }

  @override
  String toString() {
    return _message;
  }
}