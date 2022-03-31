import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_class/widgets/class.dart';
import 'package:v_class/widgets/hub.dart';
import 'package:v_class/widgets/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VClass',
      debugShowCheckedModeBanner: false,
      home: MainPart(),
    );
  }
}

class MainPart extends StatefulWidget {
  const MainPart({ Key? key }) : super(key: key);

  @override
  State<MainPart> createState() => _MainPartState();
}

class _MainPartState extends State<MainPart> {
  int _selectedIndex = 0;
  void _onbottomNavigationbaritemtapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  static const List<Widget> _widgets = [
    Hub(),
    classes(),
    profile(),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          title: Text(
            "Virtual Class",
            // style: TextStyle(
            //   fontSize: 25,
            //   color: Colors.black,),
            // 
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          ),

          backgroundColor: Colors.white,
          
          actions: [
            Icon(Icons.message,color: Colors.black,),
            SizedBox(width: 10,),
            Icon(Icons.settings,color: Colors.black,),
            SizedBox(width: 10,),
          ],
          elevation: 0,
          ),

        body: _widgets.elementAt(_selectedIndex),

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.house,),
              label: "Hub",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business,),
              label: "Classes",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              label: "Profile",
              backgroundColor: Colors.black,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onbottomNavigationbaritemtapped,
          selectedItemColor: Colors.black,
        ),
        floatingActionButton: (_selectedIndex!=1)? null:FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
          ),
      ),
    );
  }
}