import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quize/screen/question_screen.dart';
import 'package:my_quize/screen/start_screen.dart';
import 'package:my_quize/theme/theme_data.dart';

void main()
{
   WidgetsFlutterBinding.ensureInitialized();
   //set specific device orientation mode
   SystemChrome.setPreferredOrientations([
     DeviceOrientation.portraitUp,
   ]).then((value){
     runApp(my_quize());
   });

}

class my_quize extends StatelessWidget
{
    my_quize({super.key});

    @override
    Widget build(BuildContext context)
    {
        return ScreenUtilInit(
          builder: (context, child) =>
              MaterialApp(
            debugShowCheckedModeBanner: false,
              theme: light_themeData(context),
              darkTheme: dark_themeData(context),
              themeMode: ThemeMode.system,
              home: start_screen(),
          ),
        );
    }
}