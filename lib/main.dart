import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/note_service.dart';
import 'services/question_service.dart';
import 'services/analytics_service.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NoteService.initialize();
  await QuestionService.initialize();
  await AnalyticsService.initialize();
  runApp(NEETBioGeniusApp());
}

class NEETBioGeniusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NoteService.instance),
        ChangeNotifierProvider(create: (_) => QuestionService.instance),
        ChangeNotifierProvider(create: (_) => AnalyticsService.instance),
      ],
      child: MaterialApp(
        title: 'BIOLOGY🧬',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xFF6A7059),
          accentColor: Color(0xFFB4A582),
          scaffoldBackgroundColor: Color(0xFFF4F1DE),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xFF3E4C3A),
          accentColor: Color(0xFF8B7D6B),
          scaffoldBackgroundColor: Color(0xFF121212),
        ),
        themeMode: ThemeMode.system,
        home: HomeScreen(),
      ),
    );
  }
}