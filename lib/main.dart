    import 'package:flutter/material.dart';
import 'package:win11_efficient/core/theme/theme.dart';
import 'package:win11_efficient/views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomeView(),
    );
  }
}
