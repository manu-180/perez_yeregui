import 'package:go_router/go_router.dart';
import 'package:perezyeregui/screens/quienes_somos_screen.dart';

import '../../screens/home_screen.dart';


final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/quienes-somos",
      builder: (context, state) => const QuienesSomosScreen(),
    ),
    
    
  ],
);
