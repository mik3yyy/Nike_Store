import 'package:flutter/material.dart';
import 'package:nike_store/welcome%20screens/welcome_screen_02.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen1 extends StatefulWidget {
  const WelcomeScreen1({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen1> createState() => _WelcomeScreen1State();
}

class _WelcomeScreen1State extends State<WelcomeScreen1> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF1483C2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1483C2),
      ),
      body: Column(
        children: [
            Center(
              child: SizedBox(
                width: 250,
                height: 100,
                child: Text(
                  'WELCOME TO NIKE',
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    fontFamily: 'Raleway',
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w800

                  ),
                ),
              ),
            ),
          Image.asset('assets/images/welcome_screen/prop6.png'),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 600,
            child: Stack(
              children: [
                Positioned(
                  left: 40,
                  top: 100,
                  child: Opacity(
                      opacity: 0.5,
                      child: Image.asset('assets/images/welcome_screen/prop2.png',fit: BoxFit.contain,),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: -100,
                  child: Image.asset('assets/images/welcome_screen/welcome_001png.png'),
                ),
                Positioned(
                  left: 75,
                  top: 320,
                  child: Image.asset('assets/images/welcome_screen/prop7.png'),
                ),
                Positioned(
                  left: 0,
                  top: 240,
                  child: Image.asset('assets/images/welcome_screen/prop5.png'),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width*0.35,
                  top: 550,
                  child: Image.asset('assets/images/welcome_screen/prop4.png'),
                ),
                Positioned(
                  left: 300,
                  top: 400,
                  child: Opacity( opacity:0.5, child: Image.asset('assets/images/welcome_screen/prop1.png')),
                ),
                Positioned(
                  left: 50,
                  top: 450,
                  child: Opacity( opacity: 0.5, child: Image.asset('assets/images/welcome_screen/prop3.png')),
                ),



              ],
            ),
          ),
          MaterialButton(
            onPressed: (){
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: WelcomeScreen2()));
            },
            padding: EdgeInsets.zero,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text('Get Started',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Raleway'
                 ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
