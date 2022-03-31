import 'package:flutter/material.dart';

import 'hub.dart';

class openclass extends StatefulWidget {
  const openclass({ Key? key }) : super(key: key);

  @override
  State<openclass> createState() => _openclassState();
}

class _openclassState extends State<openclass> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DAA"),backgroundColor: Colors.black,),
      body: Column(children: [
        SizedBox(height: 20,),
        Row(
          children: [
            SizedBox(width: 10,),
            CircleAvatar(backgroundImage: AssetImage("assets/theory.jpg"),radius: 50,),
            SizedBox(width: 10,),
            Column(
              children: [
                Text("Dr. Karhik Seshadri",style: TextStyle(fontSize: 20,),),
                Text("Design and Analysis of Algorithms",style: TextStyle(color: Colors.black),),
              ],
            )
          ],
        ),
        SizedBox(height: 15,),
        Divider(color: Colors.black, thickness: 3,),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                post(
                  class_name: "(DAA) Algorithms",
                  deadline: "3:00 pm 11-09-2022",
                  photo: "assets/theory.jpg",
                  text: "Complete studying the fallowing topics:\n"
                    "1) Divide And Conquer\n"
                    "2) Greedy Algorithms\n"
                    "3) Dynamic programming\n"
                    "4) Flow Algorithms\n"
                    "I will be conducting minor 2 exams on the topic of dynamic programming. "
                    "take help from online resources and compete reading them as soon as possible"
                    ,
                  ).card(),
                post(
                  class_name: "(DAA) Algorithms",
                  deadline: "12.00 AM 19-03-2022",
                  photo: "assets/theory.jpg",
                  text: "please solve the given assignment. it is your midsem paper. solve it as soon as possible",
                  pdf: "sgzfsfj",
                  ).card(),
                post(
                  class_name: "(DAA) Algorithms",
                  deadline: "12.00 AM 9-01-2022",
                  photo: "assets/theory.jpg",
                  text: "please solve the questions given in classroom."
                    "also please go through greek for greeks and w3 schools"
                    'and even once refer CLRS book for reference',
                  ).card(),
                  
                
          
              ],
            ),
            
          ),
        ),
      ]),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'POSTS',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'pending',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'completed',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}