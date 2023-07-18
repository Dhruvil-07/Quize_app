import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:my_quize/screen/question_screen.dart';
import 'package:my_quize/widget/text.dart';

class start_screen extends StatelessWidget {
  const start_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            algeriya_text(
                containt: 'My Quize',
              fontsize: 30,
              fontWeight: FontWeight.bold,
            ),

            SizedBox(height: 64.0,),

            Container(
              child: Image.network("https://www.shutterstock.com/image-vector/quiz-logo-speech-bubble-symbols-260nw-1639253587.jpg" ,
              )
            ),

            SizedBox(height: 64.0,),

          Container(
            height: 30.spMax,
            width: 100.spMax,
            child: ElevatedButton.icon(
                    onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> quetion_screen())); },
                    label: Center(child: cario_text(containt: "Start",
                      fontcolor: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.black,
                    )
                    ),
                    icon: Icon(Icons.arrow_right_rounded , size: 30.0,
                    color: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.black,
                    ),
                ),
          ),





          ],
        ),
      ),

    );
  }
}
