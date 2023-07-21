import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quize/questions/all_question_option.dart';
import 'package:my_quize/screen/result_screen.dart';
import 'package:my_quize/screen/start_screen.dart';
import 'package:my_quize/widget/card.dart';
import 'package:my_quize/widget/snakbar.dart';
import 'package:my_quize/widget/text.dart';

class quetion_screen extends StatefulWidget {
  const quetion_screen({Key? key}) : super(key: key);

  @override
  State<quetion_screen> createState() => _quetion_screenState();
}

class _quetion_screenState extends State<quetion_screen> {

  //for change question
  int index_counter = 0;
  void _increase_index()
  {
        setState(() {
          index_counter++;
          selected_index = null;
        });
  }


  //for display selected answer dark
  String? radio_val;
  int? selected_index;
  void _answer_select(String val , int index)
  {
    setState(() {
      radio_val = val;
      selected_index = index;
    });
  }


  //user selected answer list
  List<String> selected_ans = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selected_ans = [];
  }



  @override
  Widget build(BuildContext context) {

    //get curent instance of question (questo_model class construcotre)
    var current_question = questions[index_counter];

    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          title: algeriya_text(containt: "My Quize"),
        ),

        body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding:EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: Column(
                children: [

                  SizedBox(height: 32.h,),
                  //question number
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                         cario_text(containt: "Question :- ${index_counter + 1}" ,
                          fontsize: 20,
                           fontWeight: FontWeight.bold,
                         ),
                    ],
                  ),

                  SizedBox(height: 32.0,),

                  //quesstion show
                  question_card(question_text: current_question.qustion),


                  SizedBox( height: 32.0,),

                  //options show
                  ListView.builder(
                      shrinkWrap: true,
                       itemCount: current_question.options.length,
                        itemBuilder: (context, index) {
                         return option_card(
                           index: index ,
                           radio_hold_val:  current_question.options[index],
                           radio_val: radio_val,
                           selected_index: selected_index,
                           selected_ans: _answer_select,
                         );
                        },
                    ),


                  SizedBox( height: 32.0,),


                  ElevatedButton(
                        onPressed: (){
                          if(selected_index != null )
                            {
                              selected_ans.add(current_question.options[selected_index!]);
                              if(index_counter < questions.length - 1)
                              {
                                _increase_index();
                              }
                              else
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=> result_screen(selected_ans: selected_ans)));
                              }
                            }
                          else
                            {
                              //clear earlier snakbar
                               ScaffoldMessenger.of(context).clearSnackBars();
                               //show snakbar
                               showsnakbar(context);
                            }

                           },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.spMax,
                          ),
                          child: cario_text(containt: "Next" ,
                           fontcolor: Colors.black,
                          ),
                        )
                    ),

                ],
              ),
            ),
          ),

      ),
    );
  }
}
