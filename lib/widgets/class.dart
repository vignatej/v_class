
import 'package:flutter/material.dart';

import 'openclass.dart';

class classes extends StatefulWidget {
  const classes({ Key? key }) : super(key: key);

  @override
  State<classes> createState() => _classesState();
}

class _classesState extends State<classes> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: [
        Room(
          contxt: context,
          lead1: "assets/theory.jpg",
          title: "(DAA) Design and analysis of algorithms",
          subtitle: "Karthik seshadri",
        ).give(),
        Room(
          contxt: context,
          lead1: "assets/ALGORIM.jpg",
          title: "(OOPS) Object Oriented Programming",
          subtitle: "Gireesh",
        ).give(),
        Room(
          contxt: context,
          lead1: "assets/coa-tutorial.png",
          title: "(COA) computer organization",
          subtitle: "sirisha",
        ).give(),
        Room(
          contxt: context,
          title: "(TOC) Theory of computation",
          subtitle: "Dipanwita",
        ).give(),
        Room(
          contxt: context,
          lead1: "assets/unix.jpg",
          title: "(UTS) unix tools lab",
          subtitle: "sirisha",
        ).give(),
        Room(
          contxt: context,
          lead1: "assets/dbms.png",
          title: "(DBMS) Database management systems",
          subtitle: "karthikeyan",
        ).give(),
        
      ],
    );
  }
}


class Room{
  Room({required this.contxt,this.lead1,this.subtitle,this.title});
  var contxt;
  var lead1;
  var title;
  var subtitle;
  String lead = "assets/file.png";
  ListTile give(){
    if(lead1!=null){lead = lead1;}
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(lead),),
      title: Text("${this.title}"),
      subtitle: Text("${this.subtitle}"),
       onTap: () => Navigator.push(contxt,
        MaterialPageRoute(
           builder: (context) => openclass()))
    );
  }
}


/*
class openClass extends StatefulWidget {
  var class_name;
  openClass({
     Key? key,
     this.class_name }) : super(key: key);

  @override
  State<openClass> createState() => _openClassState();
}

class _openClassState extends State<openClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello")),
    );
  }
}

*/