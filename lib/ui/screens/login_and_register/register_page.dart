import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/blocs/register_bloc/register_bloc.dart';
import 'package:recipe_app/ui/screens/login_and_register/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const RegisterPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => RegisterBloc(
            authenticationRepository: context.read<AuthenticationRepository>(),
          ),
          child: const RegisterForm(),
        ),
      ),
    );
  }
}
