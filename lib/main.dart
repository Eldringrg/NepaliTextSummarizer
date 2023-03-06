import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './widgets/contact.dart';
import './widgets/NavBar.dart';
import './screens/summarize.dart';
import './widgets/aboutUs.dart';
import './screens/summary.dart';
import './widgets/settings.dart';
import 'package:provider/provider.dart';
import './provider/theme_settings.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  final isDark = sharedPreferences.getBool('is_dark') ?? false;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp(isDark: isDark));
}

MyApp newMethod(bool isDark) {
  return MyApp(
    isDark: isDark,
  );
}

class MyApp extends StatelessWidget {
  final bool isDark;

  const MyApp({
    @required this.isDark,
  });
  static const routeName = '/my-app';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeSettings(isDark),
      builder: (context, snapshot) {
        final settings = Provider.of<ThemeSettings>(context);
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: settings.currentTheme,
            home: Scaffold(
                drawer: NavBar(),
                appBar: AppBar(
                    backgroundColor: Colors.teal[600],
                    title: Container(
                      width: 280,
                      child: const Text(
                        'Nepali Text Summarizer',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'OpenSans'),
                      ),
                    )),
                body: Summarize()),
            routes: {
              MyApp.routeName: (ctx) => MyApp(
                    isDark: isDark,
                  ),
              Contact.routeName: (ctx) => Contact(),
              AboutUs.routeName: (ctx) => AboutUs(),
              Summary.routeName: (ctx) => Summary(),
              Settings.routeName: (ctx) => Settings(),
            },
          ),
        );
      },
    );
  }
}
