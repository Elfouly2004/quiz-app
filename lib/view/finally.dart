import 'package:flutter/material.dart';


class finally1 extends StatefulWidget {
  @override
  State<finally1> createState() => _finally1State();
}


class _finally1State extends State<finally1> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
backgroundColor: Color(0xff004643),
       body: Column(
         children: [


           Directionality(
             textDirection: TextDirection.ltr,
             child: Row(
               mainAxisAlignment:MainAxisAlignment.start ,
               children: [

                 SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),

                 IconButton(onPressed: () { Navigator.pop(context,);},
                   icon:Icon(Icons.arrow_back_ios_new_rounded),color: Colors.white),
                 Text(" Previous",style: TextStyle(color: Colors.white)),


                 SizedBox(width: MediaQuery.sizeOf(context).width*0.2,),

                 Center(
                     child:Column(
                       children: [
                         Text("Leader board",style: TextStyle(color: Colors.white),)
                       ],
                     )
                 ),


               ],
             ),
           ),


           SizedBox(height:  MediaQuery.sizeOf(context).height*0.2,),


            Expanded(
              flex: 2,
              child: Container(
              width: double.infinity,
                // height:605 ,
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(150),)
                ),
              ),
            ),


         ],
       ),

    );
  }
}