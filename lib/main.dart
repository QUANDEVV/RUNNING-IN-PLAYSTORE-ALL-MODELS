import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



import 'Ports/Ports.dart';
import 'Nudes/Nudes.dart';
import 'Reels/Reels.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.black, //<-- SEE HERE
    ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('All Models',
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
       

        ),
        
        ),
        
        centerTitle: true,
        bottom: TabBar(tabs: [
          Tab(text: 'Portraits',
          
           
          ),
          Tab(text: 'Nudes'),
          Tab(text: 'Reels'),

  
        ]),
      ),
      body: TabBarView(children: [
          Ports(),
          Nude(),
          Reels(),
      ]),
  
    ),
  );
}
