import 'package:go_router/go_router.dart';
import 'package:tilchoy/views/screens/auth/presentation/screens/login_screen.dart';
import 'package:tilchoy/views/screens/auth/presentation/screens/register_screen.dart';

class AppRouter {
  // Define the routes
  final GoRouter router = GoRouter(
    // Initial location when the app starts
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => LoginScreen(),
        routes: [
          GoRoute(
            path: '/register',
            name: 'register',
            builder: (context, state) => RegisterScreen(),
          ),
        ],
      ),
    ],
  );
}
