import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quize/questions/all_question_option.dart';
import 'package:my_quize/widget/text.dart';


//quetion card
class question_card extends StatelessWidget {
  question_card({ required this.question_text , Key? key}) : super(key: key);

   String question_text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 400.w,
      child: Card(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.sp,
                    vertical: 8.sp,
                  ),
                  child: Center(
                      child: cario_text(
                        containt: question_text ,
                        fontsize: 18,
                        fontcolor: Colors.black,
                      ),
                  ),
                ),
              )
          ),
    );
  }
}



//option_card
class option_card extends StatelessWidget {

  option_card({
    this.radio_val ,
    required this.radio_hold_val ,
    required this.index ,
    this.selected_index,
    required this.selected_ans,
    Key? key}) : super(key: key);

  final String radio_hold_val;
   String? radio_val;
  int? selected_index;
  int index;
  final void Function(String val , int index) selected_ans;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 8.h,
      ),
      child: AnimatedContainer(
        decoration: BoxDecoration(
          border: Border.all(
              width: 2.0 ,
              color:  Theme.of(context).brightness == Brightness.light ?
                      Colors.black :  Colors.white
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: selected_index == index ? Colors.deepPurple.shade300 : null ,
        ),
        height: 50.spMax,
        width: 100.spMax,
        duration: Duration(milliseconds: 1000),

        child: ListTile(
          onTap: (){
            selected_ans( radio_hold_val , index);
          },
          leading: Radio<String>(
              activeColor: Colors.white,
              value: radio_hold_val,
              groupValue: radio_val,
              onChanged: (val){
                selected_ans( radio_hold_val , index);
              }
          ),
          title: cario_text(containt: radio_hold_val),
        ),
      ),
    );;
  }
}


//result card
class result_card extends StatefulWidget
{
   result_card({ required this.text , required this.number  , Key? key}) : super(key: key);

  final String text;
  final int number;

  @override
  State<result_card> createState() => _result_cardState();
}

class _result_cardState extends State<result_card> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical : 12.w,
      ),
      child: Container(
        height: 75.h,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: Theme.of(context).brightness == Brightness.light ? Colors.deepPurple[100] : Colors.deepPurple[400],
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                algeriya_text(containt: widget.text , fontWeight: FontWeight.bold,),
                SizedBox(width: 30.w,),
                algeriya_text(containt: "${widget.number}" , fontWeight: FontWeight.bold, fontsize: 23,),

              ],
            ),
        ),
      ),
    );
  }
}

