import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_application/provider/launch_url_provider.dart';
import 'package:webview_application/screens/my_home_page_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LaunchUrlProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomeScreen(title: 'WebView Application'),
      ),
    );
  }
}
