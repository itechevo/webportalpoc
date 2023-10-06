import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../model/ui_action.dart';
import '../../router/app_screen.dart';
import '../../widget/user_item.dart';
import 'home_controller.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
  static final route = GoRoute(
    path: AppScreen.home.toPath,
    name: AppScreen.home.name,
    builder: (context, state) => HomeScreen(
      key: UniqueKey(),
    ),
  );
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.read(homeScreenControllerProvider.notifier);
    final state = ref.watch(homeScreenControllerProvider);

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
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: state.users.length,
          itemBuilder: (BuildContext context, int index) {
            return UserItem(
              user: state.users[index],
              onClickCallback: (user) {},
            );
          }),
    );
  }
}
