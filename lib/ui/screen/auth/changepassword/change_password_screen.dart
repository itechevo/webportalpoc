import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../router/app_screen.dart';

class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChangePasswordScreenState();
  static final route = GoRoute(
    path: AppScreen.changePassword.toPath,
    name: AppScreen.changePassword.name,
    builder: (context, state) => ChangePasswordScreen(
      key: UniqueKey(),
    ),
  );
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    // final controller = ref.read(changePasswordScreenControllerProvider.notifier);
    // final state = ref.watch(changePasswordScreenControllerProvider);
    //
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   if (state.uiAction is NavigateTo) {
    //     context.pushReplacementNamed((state.uiAction as NavigateTo).screen);
    //   } else if (state.uiAction is ShowError) {
    //     final snackBar = SnackBar(
    //       content: Text(
    //         (state.uiAction as ShowError).errorMsg,
    //         style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
    //       ),
    //       backgroundColor: Theme.of(context).colorScheme.error,
    //     );
    //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //   }
    //   controller.resetUiAction();
    // });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Change Password"),
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
                    labelText: 'New Password',
                    hintText: 'Enter secure new password'),
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
                    labelText: 'Confirm Password',
                    hintText: 'Confirm new password'),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Update',
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
