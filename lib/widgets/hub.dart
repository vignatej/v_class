
import 'package:flutter/material.dart';


class Hub extends StatefulWidget {
  const Hub({ Key? key }) : super(key: key);

  @override
  State<Hub> createState() => _HubState();
}

class _HubState extends State<Hub> {
  @override
  Widget build(BuildContext context) {
    /*return SingleChildScrollView(
      child: Column(
        children: [
          // const SizedBox(height: 10,),
          // const Text("Virtual Class",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
          // const Divider(thickness: 3,color: Colors.grey,),
          // //SizedBox(height: 5,),
          
          post(
            class_name: "Algorithms",
            deadline: "3:00 pm 11-09-2022",
            photo: "assets/theory.jpg",
            text: "complete study of Complete the study ofdownload the websitedo it as soon as possibleI will be awarding marks according to time",
          ).card(),
          post(
            class_name: "COMp ORGANIZATION",
            
            photo: "assets/coa-tutorial.png",
            text: "asffdon't worry about the deadlineupdate itwhen you have free timedoors as soon as possiblecheck that if not done I will not be awarding marks until you will have time until final exams that is the semester exams",
          ).card(),
          post(
            class_name: "TOC",
            deadline: "3:00 pm 11-09-2022",
            photo: "assets/class.jpg",
            text: "asff",
          ).card(),
          post(
            class_name: "Algorithms",
            deadline: "3:00 pm 11-09-2022",
            photo: "assets/ALGORIM.png",
            text: "complete study of Complete the study ofdownload the websitedo it as soon as possibleI will be awarding marks according to time",
          ).card(),
          post(
            class_name: "COMP ORGANIZATION",
            
            photo: "assets/class.jpg",
            text: "asffdon't worry about the deadlineupdate itwhen you have free timedoors as soon as possiblecheck that if not done I will not be awarding marks until you will have time until final exams that is the semester exams",
          ).card(),
          post(
            class_name: "TOC",
            deadline: "3:00 pm 11-09-2022",
            photo: "assets/class.jpg",
            text: "asff",
          ).card(),
        ],
      ),
    );*/
    return Container(
      color: Colors.white,
      child: ListView(

        padding: EdgeInsets.all(8),
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
              class_name: "(COA) Computer organization",
              
              photo: "assets/coa-tutorial.png",
              text: "Please complete reading the book written by carl hamcher"
                ". please complete reading the first 9 chapters and also read lesson on "
                "'Embedded Architechure on Arm-x84'. Also please go through my slides"
                "For the final semister exam",
            ).card(),
            post(
              class_name: "(TOC) Theory of computation",
              deadline: "3:00 pm 11-09-2022",
              photo: "assets/class.jpg",
              text: "please complete the assignments given below also make sure to solve eacha nd every problem from"
                "the assignment",
              pdf: "https://www.nitandhra.ac.in/main/Announcements/2022/1st%20Year%20B.Tech%20Student%20Hostel%20Fee%20structure%20circular.pdf",
            ).card(),
            post(
              class_name: "(OOPS) Object Oriented Programming",
              deadline: "12-03-2022",
              photo: "assets/ALGORIM.jpg",
              text: "Submit the Assignment ASAP:\n"
                "1) hashing in java\n"
                "2) using thraeds in java\n"
                "3) generics and  GUI programming \n"
                "4) Flow Algorithms\n"
                "I will be conducting minor 2 exams on the topic of dynamic programming. "
                "take help from online resources and compete reading them as soon as possible"
                ,
            ).card(),

        ],
      ),
    );
  }
}



class post{
  post({this.pdf,this.text,required this.class_name,this.photo,this.deadline}){
    if (class_name.length>25){
      class_name = class_name.substring(0,25) + '..';
    }
  }
  String class_name;
  var photo;
  var deadline;
  var text;
  var pdf;
  card(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
      child: Card(
        elevation: 5,
        
        child: Column(
          children: [
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 20,),
                CircleAvatar(backgroundImage: AssetImage(photo),),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text(class_name,
                      overflow: TextOverflow.ellipsis,
                      
                      style: const TextStyle(
                        fontSize: 20,),
                            
                        ),
                    if(deadline!=null) Text("deadline: "+ deadline)],
                ),
              ],
            ),
            Divider(indent: 35,endIndent: 35,thickness: 3,),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Text(text),
            ),
            if(pdf!=null) Divider(indent: 35,endIndent: 35,thickness: 3,),
            if(pdf!=null) Container(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 39, 39, 39),
                ),
                child: Text("Midsem.pdf"),
                onPressed: (){},),
              height: 50,
            ),
          ]),
      ),
    );
  }


}