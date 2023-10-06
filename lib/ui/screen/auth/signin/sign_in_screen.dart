import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../model/ui_action.dart';
import '../../../router/app_screen.dart';
import 'sign_in_controller.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInScreenState();
  static final route = GoRoute(
    path: AppScreen.signIn.toPath,
    name: AppScreen.signIn.name,
    builder: (context, state) => SignInScreen(
      key: UniqueKey(),
    ),
  );
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final SignInScreenController controller =
        ref.read(signInScreenControllerProvider.notifier);
    final state = ref.watch(signInScreenControllerProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.uiAction is NavigateTo) {
        context.pushReplacementNamed((state.uiAction as NavigateTo).screen);
      } else if (state.uiAction is ShowError) {
        final snackBar = SnackBar(
          content: Text(
            (state.uiAction as ShowError).errorMsg,
            style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
          ),
          backgroundColor: Theme.of(context).colorScheme.error,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      controller.resetUiAction();
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  controller.signIn("TODO", "TODO");
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
