import 'dart:async';

import 'package:login_bloc_approch/src/bloc/validation.dart';

class Bloc with Validation {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get email =>
      _emailController.stream.transform(emailvalidation);
  Stream<String> get password =>
      _passwordController.stream.transform(passwordvalidation);

  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;
}

final bloc = Bloc();
