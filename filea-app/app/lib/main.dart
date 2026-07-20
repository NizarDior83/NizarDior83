import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'services/progress_service.dart';
import 'theme/filea_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final progress = await ProgressService.load();
  runApp(FileaApp(progress: progress));
}

class FileaApp extends StatelessWidget {
  final ProgressService progress;
  const FileaApp({super.key, required this.progress});

  /// Simple service locator for the MVP (no state-management package yet).
  static ProgressService progressOf(BuildContext context,
      {bool listen = true}) {
    final app = context.findAncestorWidgetOfExactType<FileaApp>();
    return app!.progress;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filea',
      debugShowCheckedModeBanner: false,
      theme: FileaTheme.light(),
      home: HomeScreen(progress: progress),
    );
  }
}
