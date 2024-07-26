import 'package:flutter/material.dart';

class LoginController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  Future<bool> login() async {
    await Future.delayed(Duration(seconds: 2));

    if (usernameController.text == 'admin' &&
        passwordController.text == 'admin') {
      return true;
    } else {
      return false;
    }
  }

  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
  }
}
