import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light, //I want this to work off system prefs
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFFDD6762),
            onPrimary: Color(0xFFFFFFFF),
            primaryContainer: Color(0xFFBC5853),
            onPrimaryContainer: Color(0xFFFFFFFF),
            secondary: Color(0xFFFFFFFF),
            onSecondary: Color(0xFFDB524D),
            error: Color(0xFFE96D73),
            onError: Color(0xFFFFFFFF),
            background: Color(0xFFD85650),
            onBackground: Color(0xFFFFFFFF),
            surface: Color(0xFFDD6762),
            onSurface: Color(0xFFFFFFFF),
          ),
          textTheme: TextTheme(
            headline1: GoogleFonts.mPlusRounded1c(
                fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
            headline2: GoogleFonts.mPlusRounded1c(
                fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
            headline3: GoogleFonts.mPlusRounded1c(
                fontSize: 48, fontWeight: FontWeight.w400),
            headline4: GoogleFonts.mPlusRounded1c(
                fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            headline5: GoogleFonts.mPlusRounded1c(
                fontSize: 24, fontWeight: FontWeight.w400),
            headline6: GoogleFonts.mPlusRounded1c(
                fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
            subtitle1: GoogleFonts.mPlusRounded1c(
                fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
            subtitle2: GoogleFonts.mPlusRounded1c(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
            bodyText1: GoogleFonts.mPlusRounded1c(
                fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
            bodyText2: GoogleFonts.mPlusRounded1c(
                fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            button: GoogleFonts.mPlusRounded1c(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
            caption: GoogleFonts.mPlusRounded1c(
                fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
            overline: GoogleFonts.mPlusRounded1c(
                fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
          )),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  '24th, June',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DateWidget(date: '12',),
                  DateWidget(date: '13',),
                  DateWidget(date: '14',),
                  DateWidget(date: '15',),
                  DateWidget(date: '16',),
                  DateWidget(date: '17',),
                  DateWidget(date: '18',),
                ],
              ),
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: ListView(children: const [
                  ListTile(
                    leading: Icon(Icons.check_box_outline_blank_outlined),
                    title: Text('Take Out the Trash'),
                  )
                ],),
              ),
              ElevatedButton(
                child: Text(
                  'HomePage',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onPrimaryContainer),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateTaskPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    required this.date,
    Key? key,
  }) : super(key: key);

  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          date,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

class CreateTaskPage extends StatelessWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: ElevatedButton(
        child: const Text('Create Task'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
