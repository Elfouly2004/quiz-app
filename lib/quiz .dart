import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:quizapp/finally.dart';
import 'package:quizapp/login.dart';
class quiz extends StatefulWidget {
  @override
  State<quiz> createState() => _quizState();
}
enum questions { Q1, Q2, Q3,Q4 }
class _quizState extends State<quiz> {
  int count1=60;
  bool ans =true;
CountDownController a7a=CountDownController();
  questions? quiz = questions.Q1;

  int count = 0;

  after(){
    if(count < ques.length-1){
      count += 1;
    }
  }

  Map ques={
    "كم عدد سور القران الكريم؟":["114", "120", "110", "100", "ali"],
    "كم عدد ايام الاسبوع ":["1", "4", "7", "8", "5"],
    " من هو أول مؤذن في الإسلام؟":["علي بن ابي طالب","بلال رضي الله عنه","عباس بن عبد المطلب","عثمان بن عفان"]
  };

int num=0;
  @override
  Widget build(BuildContext context) {
    

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        body: Column(
          children: [

            Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
               mainAxisAlignment:MainAxisAlignment.start ,
                children: [

                SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),

                IconButton(onPressed: () { Navigator.pop(context,);
                  }, icon:Icon(Icons.arrow_back_ios_new_rounded),),
                  Text(" Previous",style: TextStyle(color: Colors.black)),


                  SizedBox(width: MediaQuery.sizeOf(context).width*0.2,),

                  Center(
                      child:Column(
                       children: [
                       Text("${count+1}/10")
                ],
                )
                ),


              ],
        ),
            ),


        Stack(

          children: [


            // SizedBox(height:  MediaQuery.sizeOf(context).height*0.2,),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  // alignment: Alignment.topCenter,
                  height:200 ,
                  width: 350,

                  child: Center(
                      child: Text("${ques.keys.elementAt(count)}",
                      style: TextStyle(color: Colors.black,fontSize: 30),
                      textAlign: TextAlign.center)
                  ),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 30,
                        spreadRadius: 1,
                      )
                    ],
                  ),

                ),
              ),
            ),



         Center(
           child: CircularCountDownTimer(
               width: MediaQuery.sizeOf(context).width/5,
               height: MediaQuery.sizeOf(context).height/5,
               duration:  count1,
               fillColor: Color(0xffABD1C6),
               ringColor: Color(0xff004643),
               backgroundColor: Colors.white,
               controller: a7a,

               onComplete: (){
                 if (ques.length-1==count) {
                   Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder: (context){
                             return finally1();
                           }
                       )
                   );

                 }
                 setState(() {
                   after();
                   a7a. restart();
                 });
               },
               strokeWidth: 8.0,
               isReverse: true,
           ),
         )
          ],
        ),

            SizedBox(height:  MediaQuery.sizeOf(context).height*0.09,),


            InkWell(
              onTap: (){
                setState(() {
                  ans=false;
                });
              },

              child: Container(
                width:383 ,
                height: 53,
                decoration: BoxDecoration(borderRadius:  BorderRadius.circular(20),
                  color:(quiz == questions.Q1)?Color(0xffABD1C6):const Color(0xffffffff),
                  border: Border.all(color: Colors.black)
                ),
                child: RadioListTile<questions>(
                  value: questions.Q1,
                  groupValue: quiz,
                  onChanged: (questions? value) {
                    setState(() {
                      quiz = value;
                    });
                  },
                  title:  Text("${ques.values.elementAt(count)[0]}",style: TextStyle(color: Colors.black,fontSize: 20),),

                ),
              ),
            ),

            SizedBox(height:  MediaQuery.sizeOf(context).height*0.01,),


            InkWell(
              onTap: (){
                setState(() {
                  ans=false;
                });
              },


              child: Container(
                width:383 ,
                height: 53,
                decoration: BoxDecoration(borderRadius:  BorderRadius.circular(20),
                  color:(quiz == questions.Q2)?Color(0xffABD1C6):const Color(0xffffffff),
                    border: Border.all(color: Colors.black)

                ),

                child: RadioListTile<questions>(
                  // fillColor:MaterialStatePropertyAll(Colors. deepOrange) ,
                  value: questions.Q2,
                  groupValue: quiz,
                  onChanged: (questions? value) {
                    setState(() {
                      quiz = value;
                    });
                  },
                  title:  Text("${ques.values.elementAt(count)[1]}",style: TextStyle(color: Colors.black,fontSize: 20),
                  ),

                ),
              ),
            ),

            SizedBox(height:  MediaQuery.sizeOf(context).height*0.01,),


            InkWell(
              onTap: (){
                setState(() {
                  ans=false;
                });
              },

              child: Container(
                width:383 ,
                height: 53,
                decoration: BoxDecoration(borderRadius:  BorderRadius.circular(20),
                  color:(quiz == questions.Q3)?Color(0xffABD1C6):const Color(0xffffffff),                  border: Border.all(color: Colors.black)
              ),

                child: RadioListTile<questions>(
                  value: questions.Q3,
                  groupValue: quiz,
                  onChanged: (questions? value) {
                    setState(() {
                      quiz = value;
                    });
                  },
                  title:  Text("${ques.values.elementAt(count)[2]}",style: TextStyle(color: Colors.black,fontSize: 20),),

                ),
              ),
            ),

            SizedBox(height:  MediaQuery.sizeOf(context).height*0.01,),



            InkWell(
              onTap: (){
                setState(() {
                  ans=false;
                });
              },
              child: Container(
                width:383 ,
                height: 53,
                decoration: BoxDecoration(borderRadius:  BorderRadius.circular(20),
                  color:(quiz == questions.Q4)?Color(0xffABD1C6):const Color(0xffffffff),
                    border: Border.all(color: Colors.black)

                ),

                child: RadioListTile<questions>(
                  value: questions.Q4,
                  groupValue: quiz,
                  onChanged: (questions? value) {
                    setState(() {
                      quiz = value;
                    });
                  },
                  title:  Text("${ques.values.elementAt(count)[3]}",style: TextStyle(color: Colors.black,fontSize: 20),),

                ),
              ),
            ),


            SizedBox(height:  MediaQuery.sizeOf(context).height*0.04,),



            InkWell(
              onTap: (){
               if (ques.length-1==count) {
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context){
                           return finally1();
                         }
                     )
                 );

               }
               setState(() {

               });

               after();
              },
              child: Container(
                width: 383,
                height: 59,
                child: Center(
                    child: Text("Next",
                      style: TextStyle(color: Colors.white,
                          fontSize: 24,fontWeight: FontWeight.bold
                      ),
                    )
                ),
                // color: Color(0xffF8C660),
                decoration: BoxDecoration(
                  color: Color(0xff004643),
                  borderRadius: BorderRadius.circular(20),
                ),


              ),
            ),









          ],
        ),


      ),
    );
  }
  }