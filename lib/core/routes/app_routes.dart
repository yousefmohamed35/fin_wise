import 'package:fin_wise/feature/auth/presentation/view/login_view.dart';
import 'package:go_router/go_router.dart';

import '../../feature/auth/presentation/view/launch_view.dart';
import '../../feature/auth/presentation/view/signup_view.dart';
import '../../feature/onboarding/presentation/views/onboarding_view.dart';
import '../../feature/splash/presentation/view/splash_view.dart';
import 'routes.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => OnboardingView(),
      ),
      GoRoute(
        path: Routes.launch,
        builder: (context, state) => const LaunchView(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: Routes.signup,
        builder: (contex, state) => const SignupView(),
      ),
    ],
  );
}
