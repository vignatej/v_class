import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20,),
        const Center(
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/class.jpg"),
            radius: 120,),
        ),
        SizedBox(height: 30,),
        const Text("PADURU VIGNA TEJ REDDY",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            ),),
        Text("420217@student.nitandhra.ac.in",
        style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            ),),
        Text("7330776599",
        style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            ),),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){}, 
              child: Text("classes created",style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
            ),
            SizedBox(width: 20,),
            TextButton(
              onPressed: (){}, 
              child: Text("classes joined",style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
            ),
          ],
        )
        
        
      ],
    );
  }
}