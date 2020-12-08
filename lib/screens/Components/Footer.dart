import 'package:flutter/material.dart';


class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(

      size: Size(800,100), //You can Replace this with your desired WIDTH and HEIGHT
      painter: RPSCustomPainter(),
    );
  }
}
class RPSCustomPainter extends CustomPainter{



  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()

      ..color = Colors.purple

      ..style = PaintingStyle.fill
      ..strokeWidth = 4.95;



    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.20);
    path_0.quadraticBezierTo(size.width*0.07,size.height*0.73,size.width*0.25,size.height*0.70);
    path_0.cubicTo(size.width*0.36,size.height*0.70,size.width*0.58,size.height*0.70,size.width*0.69,size.height*0.70);
    path_0.quadraticBezierTo(size.width*0.97,size.height*0.64,size.width,0);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(0,size.height);
    path_0.lineTo(0,size.height*0.20);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}