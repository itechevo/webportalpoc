import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;
import 'package:webportaladmin/data/theme_repository_impl.dart';
import 'package:webportaladmin/domain/repository/auth_repository.dart';
import 'package:webportaladmin/ui/router/app_router.dart';

import 'data/auth_repository_impl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final AuthRepository authRepository = ref.watch(authRepositoryProvider);
    final ThemeRepositoryImpl themeRepository =
        ref.watch(themeRepositoryProvider);

    final router = AppRouter(authRepository.isUserLoggedIn);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'PoC Admin Portal',
      routeInformationParser: router.router.routeInformationParser,
      routeInformationProvider: router.router.routeInformationProvider,
      routerDelegate: router.router.routerDelegate,
      theme: themeRepository.currentTheme,
    );
  }
}
