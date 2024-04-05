import 'package:flutter/material.dart';
import 'package:quizapp/quiz%20.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool ?check =true;
  bool pass_check=true;
  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor:Color(0xffB3004643),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),

           Center(child: Image.asset("assets/images/Group 3.png",)),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),

           Row(
             children: [
               Text("      Enter your name :",
               style: TextStyle(
                   fontSize: 18,
                   color: Colors.white
               ),
               ),
             ],
           ),


            SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),


            SizedBox(
             width: 380,
             height: 70,
              child: TextFormField(
              style: TextStyle(color: Colors.white),
               decoration: InputDecoration(

              enabledBorder: OutlineInputBorder(
                // borderSide: BorderSide(color: Colors.white,),
               borderRadius: BorderRadius.circular(30),
              ),
             focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
                ),
                hintText: "john Deh....",
               hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                suffixIcon: IconButton(
                 color: Colors.grey,
                 onPressed: (){
                  setState(() {
                   pass_check=!pass_check;
                 });
                 },
                  icon: pass_check? Icon(Icons.visibility_outlined)
                   : Icon(Icons.visibility_off_outlined),
             )
             ),
             keyboardType: TextInputType.number,
                obscureText: pass_check,
            ),
            ),

           SizedBox(height: MediaQuery.sizeOf(context).height*0.3,),

           InkWell(
               onTap: (){
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context){
                           return quiz();
                         }
                     )
                 );
               },
               child: Container(
                 width: 383,
                 height: 59,
                  child: Center(
                      child: Text("Start",
                        style: TextStyle(color: Colors.white,
                          fontSize: 24,fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                  // color: Color(0xffF8C660),
                 decoration: BoxDecoration(
                   color: Color(0xffF8C660),
                     borderRadius: BorderRadius.circular(20),
                 ),


               ),
             )
          ],
        ),
      ),


    );

  }
}


