import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_app/providers/savenote_provider.dart';
import 'package:note_app/providers/theme_provider.dart';
import 'package:note_app/screens/home_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(changeThemeProvider);
    final notes = ref.watch(saveProvider); // Lấy danh sách ghi chú từ provider

    return MaterialApp(
      theme: theme,
      home: HomePage(notes: notes), // Truyền danh sách ghi chú vào HomePage
      debugShowCheckedModeBanner: false,
    );
  }
}
