import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quize/questions/all_question_option.dart';
import 'package:my_quize/screen/start_screen.dart';
import 'package:my_quize/widget/card.dart';
import 'package:my_quize/widget/text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class result_screen extends StatefulWidget {
  result_screen({ required this.selected_ans , Key? key}) : super(key: key);

  //List of user selected answer
  List<String> selected_ans;


  //getting total right answer from user selected answer
  int right_ans_counter = 0;
  int _get_total_right_answer()
  {
     for(int i = 0 ; i<selected_ans.length; i++)
       {
           if(selected_ans[i] == questions[i].right_ans)
             {
                right_ans_counter++;
             }
       }

     return right_ans_counter;
  }


  @override
  State<result_screen> createState() => _result_screenState();
}

class _result_screenState extends State<result_screen> {


  @override
  Widget build(BuildContext context) {

    //store total right answer in result_summry variable
    var result_summry = widget._get_total_right_answer();

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(height: 30.h,),

                algeriya_text(
                  containt: "Your Score",
                  fontsize: 20.spMax,
                  fontWeight: FontWeight.bold
                  ,
                ),


                SizedBox(height: 30.h,),


                CircularPercentIndicator(
                   radius: 100.w,
                   backgroundColor: Colors.deepPurple.shade100,
                   lineWidth: 15.h,
                   animation: true,
                   animationDuration: 2000,
                   percent: result_summry / questions.length ,
                   progressColor: Colors.deepPurple[400],
                   animateFromLastPercent: true,
                   circularStrokeCap: CircularStrokeCap.round,
                    center: algeriya_text(containt: "${(result_summry / questions.length * 100).toStringAsFixed(2)}%" ,
                      fontsize: 30.spMin,
                      fontWeight: FontWeight.bold,
                     ),
                ),


                SizedBox(height: 30.h,),

                //display total question , right answer and wrng answer card
                result_card(text: "Total Questions" , number: questions.length),
                result_card(text: "Right Answer" , number: result_summry),
                result_card(text: "Wrong Answer" , number: questions.length - result_summry),


                SizedBox(height: 20.h,),

                ElevatedButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => start_screen(), ));
                    },
                    child: cario_text(containt: "Restat Quize", fontcolor: Colors.black,)
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}
