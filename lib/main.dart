import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task_manager/features/auth/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main () async {
  await Supabase.initialize(
    anonKey: "sb_publishable_WksmkskdreF5Svbqylp7-w_yglC_Veo",
    url: "https://kyxrutftmlbtrrdanpvt.supabase.co"
  );
  runApp(ProviderScope(
    child: 
    const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen()
    );
  }
}
