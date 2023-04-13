import 'package:flutter_custom_archi/core/app_export.dart';

abstract class NetworkInfoI {
  Future<bool> isConnected();

  Future<ConnectivityResult> get connectivityResult;

  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  late Connectivity _connectivity;

  NetworkInfo(connectivity) {
    _connectivity = connectivity;
  }

  @override
  Future<ConnectivityResult> get connectivityResult async {
    return _connectivity.checkConnectivity();
  }

  @override
  Future<bool> isConnected() async {
    final result = await _connectivity.checkConnectivity();
    if (result != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged;
}