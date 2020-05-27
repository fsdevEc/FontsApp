import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fonts App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,        
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: double.infinity, height: 60,),
            _FontText(title: 'CHANGA', fontSize: 50, fontFamily: 'Changa',),

            SizedBox(width: double.infinity, height: 60,),
            _FontText(fontFamily: 'Montserrat_Alternates', title: 'Montserrat Alternates', fontSize: 40,),
            
            SizedBox(width: double.infinity, height: 60,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  children: [
                    TextSpan(
                      text: 'STRENGTH ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Changa'
                      )
                    ),
                    TextSpan(
                      text: 'AND ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Changa'
                      )
                    ),
                    TextSpan(
                      text: 'GROWTH ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat_Alternates'
                      )
                    ),
                    TextSpan(
                      text: 'COME ONLY ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat_Alternates'
                      )
                    ),                  
                    TextSpan(
                      text: 'THROUGH CONTINUOUS ',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Changa'
                      )
                    ),
                    TextSpan(
                      text: 'EFFORT ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Changa'
                      )
                    ),
                    TextSpan(
                      text: 'AND STRUGGLE ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat_Alternates'
                      )
                    ),
                  ]
                )
              ),
            )
          ],
        )
      ),
    );
  }
}

class _FontText extends StatelessWidget {

  final String fontFamily;
  final String title;
  final double fontSize;

  const _FontText({Key key, this.fontFamily, this.title, this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: double.infinity,),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: this.fontSize,
            fontFamily: fontFamily
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 25,
              fontFamily: fontFamily
            ),
            children: [
              TextSpan(
                text: 'LIGHT',
                style: TextStyle(
                  fontWeight: FontWeight.w100
                )
              ),
              TextSpan(
                text: ' / '
              ),
              TextSpan(
                text: 'SEMIBOLD',
                style: TextStyle(
                  fontWeight: FontWeight.w500
                )
              ),
              TextSpan(
                text: ' / '
              ),                  
              TextSpan(
                text: 'BOLD',
                style: TextStyle(
                  fontWeight: FontWeight.w900
                )
              ),
            ]
          )
        ),
      ],
    );
  }
}
