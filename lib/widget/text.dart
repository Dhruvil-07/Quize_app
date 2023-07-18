import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

//Alegariya text
class algeriya_text extends StatelessWidget {
  algeriya_text({
    required this.containt ,
    this.fontsize = 20 ,
    this.fontWeight = FontWeight.normal,
    this.fontcolor,
    Key? key}) : super(key: key);

  String containt;
  double fontsize;
  FontWeight fontWeight;
  Color? fontcolor;

  @override
  Widget build(BuildContext context) {

    Color default_theme_fontcolor = Theme.of(context).brightness == Brightness.light ?
                                Colors.black : Colors.white;

    return Text(containt,
    style: GoogleFonts.alegreya(
      fontSize: fontsize.sp,
      fontWeight: fontWeight,
      color: fontcolor == null ? default_theme_fontcolor : fontcolor,
    ),
    );
  }
}







//cario text
class cario_text extends StatelessWidget {
  cario_text({
    required this.containt ,
    this.fontsize = 15 ,
    this.fontWeight = FontWeight.normal,
    this.fontcolor,
    Key? key}) : super(key: key);

  String containt;
  double fontsize;
  FontWeight fontWeight;
  Color? fontcolor;

  @override
  Widget build(BuildContext context) {

    Color default_theme_fontcolor = Theme.of(context).brightness == Brightness.light ?
    Colors.black : Colors.white;

    return Text(containt,
      style: GoogleFonts.cairo(
        fontSize: fontsize.sp,
        fontWeight: fontWeight,
        color: fontcolor == null ? default_theme_fontcolor : fontcolor,
      ),
    );
  }
}

