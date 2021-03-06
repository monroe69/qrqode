import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gradient Opacity"),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              width: 400,
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO1XF04fNrnHwU1za5gDWfQ-xmsWjEHlr3LQ&usqp=CAU"),
            ),
          ),
        ),
      ),
    );
  }
}
